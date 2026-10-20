package modmenu;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.Layout;
import android.text.Spannable;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import android.widget.Toast;

import org.appplay.lib.CommonNatives;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

/**
 * The Lua code editor for the map's own script editor.
 *
 * The game ships a script editor (DeveloperScriptEditor) with an API panel
 * backed by scriptapi.csv but no highlighting, no completion and no lint
 * while you type. This dialog reads the open editor's contentBox, edits it
 * with Lua 5.1 highlighting over the game's own API catalog (baked into
 * MwApi at build time), suggests keywords/signatures and checks block,
 * bracket and string balance plus unknown Namespace:method names - then
 * fills back through view:SetContentText and, for save, fires the game's
 * own SaveBtnClick handler so compile/validate/persist stay the game's.
 *
 * The script text travels through a payload file (not the event string) so
 * large scripts cannot hit dispatch size limits; javaCallLuaEvent is
 * fire-and-forget, so the script answers through a json result file the way
 * the gamemode switch does, and failures breadcrumb MWLE into logcat.
 */
final class LuaEditor {
    private static final String TAG = "ModMenu";
    private static final String FILE = "mw_le.json";
    private static final String PAYLOAD = "mw_le_payload.lua";
    private static final long TIMEOUT_MS = 6000;
    private static final long POLL_MS = 60;

    private static final int C_KW = 0xFFC678DD;
    private static final int C_STR = 0xFF98C379;
    private static final int C_COM = 0xFF6B7280;
    private static final int C_NUM = 0xFFD19A66;
    private static final int C_API = 0xFF61AFEF;
    private static final int C_NS = 0xFFE5C07B;

    private static final Set<String> STD = new HashSet<String>(Arrays.asList(
            "assert", "collectgarbage", "coroutine", "debug", "dofile",
            "error", "gcinfo", "getfenv", "getmetatable", "io", "ipairs",
            "load", "loadfile", "loadstring", "math", "module", "newproxy",
            "next", "os", "package", "pairs", "pcall", "print", "rawequal",
            "rawget", "rawset", "require", "select", "setfenv",
            "setmetatable", "string", "table", "tonumber", "tostring",
            "type", "unpack", "xpcall"));

    private final Activity host;
    private final Palette p;
    private final Dialog dialog;
    private final EditText code;
    private final LineGutter gutter;
    private final TextView status;
    private final ListView suggestList;
    private final LinearLayout suggestBox;
    private final Button fillBtn;
    private final Button saveBtn;
    private final Button checkBtn;
    private final List<Sug> sugs = new ArrayList<Sug>();

    static void show(Activity host, Palette p) {
        new LuaEditor(host, p);
    }

    private LuaEditor(Activity host, Palette p) {
        this.host = host;
        this.p = p;
        dialog = new Dialog(host, android.R.style.Theme_Translucent_NoTitleBar);

        LinearLayout root = new LinearLayout(host);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(14), dp(14), dp(14), dp(14));
        root.setBackground(round(dp(16), p.surface));

        TextView title = new TextView(host);
        title.setText(I18n.t(host, "mod_le_label"));
        title.setTextColor(p.onSurface);
        title.setTextSize(16);
        root.addView(title, match(wrap()));

        LinearLayout body = new LinearLayout(host);
        body.setOrientation(LinearLayout.HORIZONTAL);
        code = new EditText(host);
        gutter = new LineGutter(host, code);
        setupCode();
        body.addView(gutter, new LinearLayout.LayoutParams(dp(30),
                LinearLayout.LayoutParams.MATCH_PARENT));
        body.addView(code, new LinearLayout.LayoutParams(
                0, LinearLayout.LayoutParams.MATCH_PARENT, 1f));
        root.addView(body, new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f));

        status = new TextView(host);
        status.setTextColor(p.onSurfaceVariant);
        status.setTextSize(12);
        status.setMaxLines(2);
        status.setEllipsize(android.text.TextUtils.TruncateAt.END);
        LinearLayout.LayoutParams sLp = match(wrap());
        sLp.topMargin = dp(6);
        root.addView(status, sLp);

        suggestBox = new LinearLayout(host);
        suggestBox.setOrientation(LinearLayout.VERTICAL);
        suggestBox.setVisibility(View.GONE);
        suggestList = new ListView(host);
        suggestList.setAdapter(new ArrayAdapter<Sug>(host,
                android.R.layout.simple_list_item_1, sugs) {
            @Override
            public View getView(int pos, View cv, android.view.ViewGroup par) {
                TextView v = (TextView) super.getView(pos, cv, par);
                v.setText(sugs.get(pos).label);
                v.setTextColor(p.onSurface);
                v.setTextSize(13);
                return v;
            }
        });
        suggestList.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View v,
                                    int pos, long id) {
                acceptSug(pos);
            }
        });
        suggestBox.addView(suggestList, match(new LinearLayout.LayoutParams(
                0, dp(150), 1f)));
        LinearLayout.LayoutParams gLp = match(wrap());
        gLp.topMargin = dp(6);
        root.addView(suggestBox, gLp);

        LinearLayout actions = new LinearLayout(host);
        actions.setOrientation(LinearLayout.HORIZONTAL);
        fillBtn = actionBtn(I18n.t(host, "mod_le_fill"));
        fillBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dispatch("write");
            }
        });
        saveBtn = actionBtn(I18n.t(host, "mod_le_save"));
        saveBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dispatch("save");
            }
        });
        checkBtn = actionBtn(I18n.t(host, "mod_le_check"));
        checkBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showIssues();
            }
        });
        Button closeBtn = actionBtn(I18n.t(host, "mod_close"));
        closeBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dialog.cancel();
            }
        });
        Button[] btns = {fillBtn, saveBtn, checkBtn, closeBtn};
        for (int i = 0; i < btns.length; i++) {
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    0, dp(38), 1f);
            lp.rightMargin = dp(4);
            actions.addView(btns[i], lp);
        }
        LinearLayout.LayoutParams aLp = match(wrap());
        aLp.topMargin = dp(10);
        root.addView(actions, aLp);

        code.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int a, int b, int c) {
            }

            @Override
            public void onTextChanged(CharSequence s, int a, int b, int c) {
            }

            @Override
            public void afterTextChanged(Editable s) {
                highlight();
                gutter.invalidate();
                updateSuggest();
                setStatusLines();
            }
        });

        dialog.getWindow().setLayout(WindowManager.LayoutParams.MATCH_PARENT,
                WindowManager.LayoutParams.MATCH_PARENT);
        FrameLayout frame = new FrameLayout(host);
        frame.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dialog.cancel();
            }
        });
        FrameLayout.LayoutParams fLp = new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.MATCH_PARENT);
        fLp.gravity = Gravity.CENTER;
        fLp.leftMargin = dp(16);
        fLp.rightMargin = dp(16);
        fLp.topMargin = dp(16);
        fLp.bottomMargin = dp(16);
        frame.addView(root, fLp);
        dialog.setContentView(frame);
        dialog.show();

        dispatch("read");
    }

    private void setupCode() {
        code.setTypeface(Typeface.MONOSPACE);
        code.setTextSize(13);
        code.setTextColor(p.onSurface);
        code.setHintTextColor(p.onSurfaceVariant);
        code.setHint(I18n.t(host, "mod_le_hint"));
        code.setGravity(Gravity.START | Gravity.TOP);
        code.setBackground(round(dp(10), 0x00000000));
        code.setPadding(dp(6), dp(4), dp(6), dp(4));
        code.setInputType(android.text.InputType.TYPE_CLASS_TEXT
                | android.text.InputType.TYPE_TEXT_FLAG_MULTI_LINE
                | android.text.InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        code.setSingleLine(false);
        code.setHorizontallyScrolling(true);
        code.getViewTreeObserver().addOnScrollChangedListener(
                new android.view.ViewTreeObserver.OnScrollChangedListener() {
                    @Override
                    public void onScrollChanged() {
                        gutter.invalidate();
                    }
                });
    }

    private Button actionBtn(String text) {
        Button b = new Button(host);
        b.setText(text);
        b.setAllCaps(false);
        b.setTextSize(13);
        b.setTextColor(p.onSurface);
        b.setGravity(Gravity.CENTER);
        b.setMinHeight(0);
        b.setMinWidth(0);
        b.setPadding(dp(6), 0, dp(6), 0);
        b.setBackground(round(dp(10), 0x14000000));
        return b;
    }

    // ------------------------------------------------------------------
    // highlighting / issues
    // ------------------------------------------------------------------

    private void highlight() {
        Editable e = code.getText();
        LuaScan.Result sc = luaScan().scan(e.toString());
        for (ForegroundColorSpan s : e.getSpans(0, e.length(),
                ForegroundColorSpan.class)) {
            e.removeSpan(s);
        }
        for (LuaScan.Tok t : sc.toks) {
            int col = 0;
            switch (t.kind) {
                case LuaScan.KW:
                    col = C_KW;
                    break;
                case LuaScan.STR:
                    col = C_STR;
                    break;
                case LuaScan.COM:
                    col = C_COM;
                    break;
                case LuaScan.NUM:
                    col = C_NUM;
                    break;
                case LuaScan.API:
                    col = C_API;
                    break;
                case LuaScan.NAME:
                    if (namespaces().contains(t.text)) {
                        col = C_NS;
                    } else if (STD.contains(t.text)) {
                        col = C_API;
                    }
                    break;
                default:
                    break;
            }
            if (col != 0) {
                e.setSpan(new ForegroundColorSpan(col), t.start,
                        Math.min(t.end, e.length()),
                        Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
            }
        }
    }

    private void showIssues() {
        final List<LuaScan.Issue> issues =
                luaScan().scan(code.getText().toString()).issues;
        if (issues.isEmpty()) {
            toast(host, I18n.t(host, "mod_le_noissues"));
            return;
        }
        new Dialog(host, android.R.style.Theme_Translucent_NoTitleBar) {
            {
                LinearLayout box = new LinearLayout(host);
                box.setOrientation(LinearLayout.VERTICAL);
                box.setPadding(dp(14), dp(14), dp(14), dp(14));
                box.setBackground(round(dp(16), p.surface));
                TextView title = new TextView(host);
                title.setText(I18n.t(host, "mod_le_check"));
                title.setTextColor(p.onSurface);
                title.setTextSize(16);
                box.addView(title, match(wrap()));
                ListView list = new ListView(host);
                list.setAdapter(new ArrayAdapter<LuaScan.Issue>(host,
                        android.R.layout.simple_list_item_1, issues) {
                    @Override
                    public View getView(int pos, View cv,
                                        android.view.ViewGroup par) {
                        TextView v = (TextView) super.getView(pos, cv, par);
                        v.setText(issueText(issues.get(pos)));
                        v.setTextColor(p.onSurface);
                        v.setTextSize(13);
                        return v;
                    }
                });
                list.setOnItemClickListener(
                        new AdapterView.OnItemClickListener() {
                            @Override
                            public void onItemClick(AdapterView<?> par,
                                                    View v, int pos, long id) {
                                jumpToIssue(issues.get(pos).line);
                                dismiss();
                            }
                        });
                box.addView(list, new LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.MATCH_PARENT, dp(300)));
                setContentView(box);
            }
        }.show();
    }

    private String issueText(LuaScan.Issue is) {
        if (LuaScan.MISSING_END.equals(is.code)) {
            return fmt("mod_le_i_missing_end", Integer.parseInt(is.arg));
        }
        if (LuaScan.UNCLOSED_STR.equals(is.code)) {
            return fmt("mod_le_i_unclosed_str", is.line);
        }
        if (LuaScan.UNCLOSED_LONG.equals(is.code)) {
            return fmt("mod_le_i_unclosed_long", is.line);
        }
        if (LuaScan.UNCLOSED_BR.equals(is.code)) {
            return fmt("mod_le_i_unclosed_br", is.line, is.arg);
        }
        if (LuaScan.EXTRA_END.equals(is.code)) {
            return fmt("mod_le_i_extra_end", is.line);
        }
        if (LuaScan.BAD_CLOSE.equals(is.code)) {
            return fmt("mod_le_i_bad_close", is.line, is.arg);
        }
        if (LuaScan.EXTRA_CLOSE.equals(is.code)) {
            return fmt("mod_le_i_extra_close", is.line, is.arg);
        }
        if (LuaScan.UNKNOWN_API.equals(is.code)) {
            return fmt("mod_le_i_unknown_api", is.line, is.arg);
        }
        return is.code;
    }

    private String fmt(String key, Object... args) {
        try {
            return String.format(Locale.getDefault(), I18n.t(host, key),
                    args);
        } catch (RuntimeException e) {
            return key;
        }
    }

    private void jumpToIssue(int line) {
        Layout lay = code.getLayout();
        if (lay == null || line < 1) {
            return;
        }
        int idx = Math.min(line - 1, lay.getLineCount() - 1);
        int start = lay.getLineStart(idx);
        code.requestFocus();
        code.setSelection(start);
        code.requestRectangleOnScreen(new android.graphics.Rect(0,
                lay.getLineTop(idx), 1, lay.getLineBottom(idx)));
    }

    // ------------------------------------------------------------------
    // completion
    // ------------------------------------------------------------------

    private static final class Sug {
        final String insert;
        final String label;

        Sug(String insert, String label) {
            this.insert = insert;
            this.label = label;
        }
    }

    private void updateSuggest() {
        Editable e = code.getText();
        int cur = code.getSelectionStart();
        if (cur < 0) {
            cur = e.length();
        }
        int i = cur;
        while (i > 0 && isWord(e.charAt(i - 1))) {
            i--;
        }
        String prefix = e.subSequence(i, cur).toString();
        sugs.clear();
        if (!prefix.isEmpty()) {
            String qual = null;
            if (i > 0 && (e.charAt(i - 1) == ':' || e.charAt(i - 1) == '.')) {
                int endq = i - 1;
                int j = endq;
                while (j > 0 && isWord(e.charAt(j - 1))) {
                    j--;
                }
                if (j < endq) {
                    qual = e.subSequence(j, endq).toString();
                }
            }
            if (qual != null) {
                List<String[]> rows = byNs().get(qual);
                if (rows != null) {
                    for (String[] row : rows) {
                        if (row[1].regionMatches(true, 0, prefix, 0,
                                prefix.length())) {
                            sugs.add(new Sug(row[1],
                                    row[2] + "  " + desc(row)));
                        }
                    }
                }
            } else {
                for (String k : LuaScan.KEYWORDS) {
                    if (k.regionMatches(true, 0, prefix, 0, prefix.length())) {
                        sugs.add(new Sug(k, k));
                    }
                }
                for (String s : STD) {
                    if (s.regionMatches(true, 0, prefix, 0, prefix.length())) {
                        sugs.add(new Sug(s, s));
                    }
                }
                for (String ns : namespaces()) {
                    if (ns.regionMatches(true, 0, prefix, 0,
                            prefix.length())) {
                        sugs.add(new Sug(ns + ":", ns + ":"));
                    }
                }
                for (String[] row : catalog()) {
                    if (row[1].regionMatches(true, 0, prefix, 0,
                            prefix.length())) {
                        sugs.add(new Sug(row[1], row[0] + ":" + row[2]
                                .substring(row[2].indexOf(':') + 1)));
                    }
                }
            }
            while (sugs.size() > 8) {
                sugs.remove(sugs.size() - 1);
            }
        }
        ((ArrayAdapter<?>) suggestList.getAdapter()).notifyDataSetChanged();
        suggestBox.setVisibility(sugs.isEmpty() ? View.GONE : View.VISIBLE);
    }

    private void acceptSug(int pos) {
        Editable e = code.getText();
        int cur = code.getSelectionStart();
        if (cur < 0) {
            cur = e.length();
        }
        int i = cur;
        while (i > 0 && isWord(e.charAt(i - 1))) {
            i--;
        }
        Sug s = sugs.get(pos);
        e.replace(i, cur, s.insert);
        suggestBox.setVisibility(View.GONE);
    }

    private static boolean isWord(char c) {
        return Character.isLetterOrDigit(c) || c == '_';
    }

    // ------------------------------------------------------------------
    // catalog access
    // ------------------------------------------------------------------

    private static volatile String[][] catalog;
    private static volatile Map<String, List<String[]>> nsIndex;
    private static volatile Set<String> nsNames;
    private static volatile LuaScan luaScan;

    private static String[][] catalog() {
        if (catalog == null) {
            synchronized (LuaEditor.class) {
                if (catalog == null) {
                    String[][] rows = new String[MwApi.ROWS.length][];
                    Map<String, List<String[]>> idx =
                            new HashMap<String, List<String[]>>();
                    Set<String> ns = new HashSet<String>();
                    for (int i = 0; i < MwApi.ROWS.length; i++) {
                        String[] f = MwApi.ROWS[i].split(
                                String.valueOf((char) 1), -1);
                        rows[i] = f;
                        ns.add(f[0]);
                        List<String[]> list = idx.get(f[0]);
                        if (list == null) {
                            list = new ArrayList<String[]>();
                            idx.put(f[0], list);
                        }
                        list.add(f);
                    }
                    catalog = rows;
                    nsIndex = idx;
                    nsNames = ns;
                }
            }
        }
        return catalog;
    }

    private static Map<String, List<String[]>> byNs() {
        catalog();
        return nsIndex;
    }

    private static Set<String> namespaces() {
        catalog();
        return nsNames;
    }

    private static LuaScan luaScan() {
        if (luaScan == null) {
            synchronized (LuaEditor.class) {
                if (luaScan == null) {
                    catalog();
                    Map<String, Set<String>> methods =
                            new HashMap<String, Set<String>>();
                    for (Map.Entry<String, List<String[]>> e
                            : nsIndex.entrySet()) {
                        Set<String> names = new HashSet<String>();
                        for (String[] row : e.getValue()) {
                            names.add(row[1]);
                        }
                        methods.put(e.getKey(), names);
                    }
                    luaScan = new LuaScan(nsNames, methods);
                }
            }
        }
        return luaScan;
    }

    private static String desc(String[] row) {
        return (row.length > 6 && !row[6].isEmpty()) ? row[6] : row[5];
    }

    // ------------------------------------------------------------------
    // bridge dispatch
    // ------------------------------------------------------------------

    private void setStatusLines() {
        String t = code.getText().toString();
        int lines = t.isEmpty() ? 0 : countNl(t) + 1;
        status.setText(String.format(Locale.getDefault(),
                I18n.t(host, "mod_le_lines"), lines));
    }

    private static int countNl(String s) {
        int c = 0;
        for (int i = 0; i < s.length(); i++) {
            if (s.charAt(i) == '\n') {
                c++;
            }
        }
        return c;
    }

    private void dispatch(final String op) {
        final String[] paths = paths();
        if (paths == null) {
            toast(host, I18n.t(host, "mod_le_fail"));
            return;
        }
        for (int i = 0; i < 2; i++) {
            new File(paths[i]).delete();
        }
        if (!"read".equals(op)) {
            final String text = code.getText().toString();
            if (text.isEmpty()) {
                toast(host, I18n.t(host, "mod_le_empty"));
                return;
            }
            try {
                FileOutputStream out = new FileOutputStream(paths[2]);
                try {
                    out.write(text.getBytes("UTF-8"));
                } finally {
                    out.close();
                }
            } catch (Exception e) {
                Log.e(TAG, "payload write failed", e);
                toast(host, I18n.t(host, "mod_le_fail"));
                return;
            }
        }
        setBusy(true);
        if ("read".equals(op)) {
            status.setText("...");
        }
        try {
            CommonNatives.javaCallLuaEvent(
                    script(op, paths[0], paths[1], paths[2]),
                    new Object[0]);
        } catch (RuntimeException e) {
            Log.e(TAG, "lua editor dispatch failed", e);
            setBusy(false);
            toast(host, I18n.t(host, "mod_le_fail"));
            return;
        }
        final android.content.Context app = host.getApplicationContext();
        new Thread(new Runnable() {
            @Override
            public void run() {
                final JSONObject o = await(paths);
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public void run() {
                        setBusy(false);
                        handleResult(op, o, app);
                    }
                });
            }
        }, "mw-luaeditor").start();
    }

    private void handleResult(String op, JSONObject o, Context app) {
        String r = o == null ? "timeout" : o.optString("r", "");
        if ("ok".equals(r)) {
            if ("read".equals(op)) {
                String t = o.optString("t", "");
                code.setText(t);
                setStatusLines();
            } else if ("write".equals(op)) {
                toast(app, I18n.t(app, "mod_le_filled"));
                dialog.cancel();
            } else {
                toast(app, I18n.t(app, "mod_le_saved"));
                dialog.cancel();
            }
            return;
        }
        String e = o == null ? "timeout" : o.optString("e", "");
        Log.w(TAG, "lua editor bridge failed: " + e);
        if ("read".equals(op)) {
            status.setText(e.contains("notopen")
                    ? I18n.t(app, "mod_le_notopen")
                    : I18n.t(app, "mod_le_loadfail"));
        } else {
            toast(app, I18n.t(app, "mod_le_fail"));
        }
    }

    private void setBusy(final boolean busy) {
        fillBtn.setEnabled(!busy);
        saveBtn.setEnabled(!busy);
        checkBtn.setEnabled(!busy);
    }

    /**
     * The engine script: GetCtrl('DeveloperScriptEditor') only resolves
     * while the game's editor is open (IsShown checks the live node), read
     * pulls contentBox's text, write replaces it through the view's own
     * SetContentText and save then fires SaveBtnClick - the same handler
     * the game's save button runs, loadstring-check and all. The source
     * travels in a payload file so script size never touches the event
     * string.
     */
    private static String script(String op, String path1, String path2,
                                 String path3) {
        boolean read = "read".equals(op);
        boolean save = "save".equals(op);
        return "(function()"
                + " local P1='" + esc(path1) + "'"
                + " local P2='" + esc(path2) + "'"
                + " local P3='" + esc(path3) + "'"
                + " local function w(j)"
                + " local function one(p)"
                + " local f=io.open(p,'w') if f then f:write(j) f:close() end"
                + " end one(P1) one(P2)"
                + " end"
                + " local function jesc(s)"
                + " s=string.gsub(s,'\\\\','\\\\\\\\')"
                + " s=string.gsub(s,'\\\"','\\\\\\\"')"
                + " s=string.gsub(s,'\\r','\\\\r')"
                + " s=string.gsub(s,'\\n','\\\\n')"
                + " s=string.gsub(s,'\\t','\\\\t')"
                + " s=string.gsub(s,'%c','')"
                + " return '\\\"'..s..'\\\"'"
                + " end"
                + " w('{\"started\":1}')"
                + " local OP='" + op + "'"
                + " local ok,err=pcall(function()"
                + " local M=GetInst('MiniUIManager')"
                + " local c=M and M.GetCtrl and M:GetCtrl('DeveloperScriptEditor')"
                + " if not(c and M.IsShown"
                + " and M:IsShown('DeveloperScriptEditor'))"
                + " then error('notopen') end"
                + " local v=c.view"
                + (read
                ? " local wd=(v and v.widgets) or c.widgets"
                        + " local box=wd and wd.contentBox"
                        + " if not(box and box.getText) then error('nobox') end"
                        + " w('{\"r\":\"ok\",\"t\":'..jesc(box:getText()"
                        + " or '')..'}')"
                : " local f=io.open(P3,'r')"
                        + " if not f then error('nopayload') end"
                        + " local t=f:read('*a') f:close()"
                        + " if not(v and v.SetContentText)"
                        + " then error('noview') end"
                        + " v:SetContentText(t)"
                        + (save ? " if c.SaveBtnClick then"
                                + " c:SaveBtnClick() end" : "")
                        + " w('{\"r\":\"ok\"}')")
                + " end)"
                + " if not ok then"
                + " w('{\"r\":\"fail\",\"e\":'..string.format('%q',"
                + "tostring(err))..'}')"
                + " error('MWLE|'..tostring(err),0)"
                + " end"
                + " end)";
    }

    private static String esc(String s) {
        return s == null ? "" : s.replace("\\", "\\\\").replace("'", "\\'")
                .replace("\r", "\\r").replace("\n", "\\n")
                .replace("\t", "\\t");
    }

    /** Result files in both external and internal dirs, payload next to
     *  the first - every path app-private and writable. */
    private String[] paths() {
        try {
            File internal = host.getFilesDir();
            if (internal == null) {
                return null;
            }
            String in = new File(internal, FILE).getAbsolutePath();
            String payload = new File(internal, PAYLOAD).getAbsolutePath();
            File ext = host.getExternalFilesDir(null);
            if (ext == null) {
                return new String[]{in, in, payload};
            }
            return new String[]{new File(ext, FILE).getAbsolutePath(), in,
                    new File(ext, PAYLOAD).getAbsolutePath()};
        } catch (RuntimeException e) {
            Log.e(TAG, "paths failed", e);
            return null;
        }
    }

    private static JSONObject await(String[] paths) {
        long deadline = System.currentTimeMillis() + TIMEOUT_MS;
        while (System.currentTimeMillis() < deadline) {
            for (int i = 0; i < 2; i++) {
                JSONObject o = readJson(paths[i]);
                if (o != null && !o.optString("r", "").isEmpty()) {
                    return o;
                }
            }
            try {
                Thread.sleep(POLL_MS);
            } catch (InterruptedException e) {
                break;
            }
        }
        return null;
    }

    /** The result the script wrote, or null while it is still running -
     *  the {"started":1} marker and any unparsable file count as running. */
    private static JSONObject readJson(String path) {
        try {
            File f = new File(path);
            if (!f.isFile()) {
                return null;
            }
            FileInputStream in = new FileInputStream(f);
            try {
                ByteArrayOutputStream buf = new ByteArrayOutputStream();
                byte[] chunk = new byte[512];
                int n;
                while ((n = in.read(chunk)) > 0) {
                    buf.write(chunk, 0, n);
                }
                return new JSONObject(buf.toString("UTF-8"));
            } finally {
                in.close();
            }
        } catch (Exception e) {
            return null;
        }
    }

    // ------------------------------------------------------------------
    // small views / helpers
    // ------------------------------------------------------------------

    /** The line-number gutter: redrawn off the EditText's own layout and
     *  scroll so it never disagrees with what the code pane shows. */
    private static final class LineGutter extends View {
        private final EditText edit;
        private final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);

        LineGutter(Context ctx, EditText edit) {
            super(ctx);
            this.edit = edit;
            paint.setColor(0xFF6B7280);
            paint.setTextAlign(Paint.Align.RIGHT);
            paint.setTextSize(11
                    * getResources().getDisplayMetrics().scaledDensity);
        }

        @Override
        protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            Layout lay = edit.getLayout();
            if (lay == null) {
                return;
            }
            int n = lay.getLineCount();
            float lh = n > 1 ? lay.getLineTop(1) - lay.getLineTop(0)
                    : lay.getLineBottom(0);
            Paint.FontMetrics fm = paint.getFontMetrics();
            float textH = fm.bottom - fm.top;
            float x = getWidth()
                    - getResources().getDisplayMetrics().density * 6;
            canvas.save();
            canvas.translate(0, -edit.getScrollY());
            for (int i = 0; i < n; i++) {
                float baseline = lay.getLineTop(i) + (lh - textH) / 2f - fm.top;
                canvas.drawText(String.valueOf(i + 1), x, baseline, paint);
            }
            canvas.restore();
        }
    }

    private static void toast(Context c, String msg) {
        try {
            Toast.makeText(c, msg, Toast.LENGTH_SHORT).show();
        } catch (RuntimeException e) {
            Log.e(TAG, "toast failed", e);
        }
    }

    private GradientDrawable round(int radius, int color) {
        GradientDrawable d = new GradientDrawable();
        d.setColor(color);
        d.setCornerRadius(radius);
        return d;
    }

    private LinearLayout.LayoutParams match(LinearLayout.LayoutParams p) {
        p.width = LinearLayout.LayoutParams.MATCH_PARENT;
        return p;
    }

    private LinearLayout.LayoutParams wrap() {
        return new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.WRAP_CONTENT,
                LinearLayout.LayoutParams.WRAP_CONTENT);
    }

    private int dp(int value) {
        return (int) (value * host.getResources().getDisplayMetrics().density
                + 0.5f);
    }
}
