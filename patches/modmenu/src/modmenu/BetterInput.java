package modmenu;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextWatcher;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.TextView;
import android.widget.Toast;

import org.appplay.lib.CommonNatives;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.util.Locale;

/**
 * The Better Input composer.
 *
 * Chat text carries a small markup the game renders natively - "#cRRGGBB"
 * recolors from there until the next color code, "#R #G #B #K #Y #W" are
 * named-color shortcuts, "#r"/"#n" break the line, "#b" makes the text pulse
 * (a native effect every client sees) and "#A101" inserts an emoji run - but
 * the in-game box takes none of it back: composing gradients by hand means
 * counting markers blind. This dialog edits the raw markup, renders what the
 * game will show, and tools the codes.
 *
 * Nothing talks to the network from here. The dispatch script fills the open
 * chat view's own input and fires ContentBtn_sendClick - the exact handler
 * the send button uses - so the profanity filter, the credit/spam gates and
 * the room-vs-friend routing (the ctrl's _friendUin picks the box) are the
 * game's own: a message can only leave the way a normal tap sends it. With no
 * chat view open, fill reports it and send falls through to the room
 * presenter directly, which only works where that service is already loaded.
 *
 * javaCallLuaEvent is fire-and-forget, so the script answers through a json
 * result file the way the gamemode switch does, and the dialog toasts what
 * the engine actually reported instead of assuming the dispatch landed.
 */
final class BetterInput {
    private static final String TAG = "ModMenu";
    private static final String FILE = "mw_bi.json";
    private static final long TIMEOUT_MS = 4000;
    private static final long POLL_MS = 60;

    /** #A<id> runs the game's emoji panel defines, by pinyin file name. */
    private static final String[][] EMOJI = {
            {"101", "xieyanxiao"}, {"102", "baimu"}, {"103", "shengqi"},
            {"104", "xianqi"}, {"105", "daku"}, {"106", "qinqin"},
            {"107", "xihuan"}, {"108", "wabikong"}, {"109", "dianzan"},
            {"110", "haixiu"}, {"111", "liulei"}, {"112", "keai"},
            {"113", "shouqibao"}, {"114", "kun"}, {"115", "jingya"},
            {"116", "yun"}, {"117", "shaojiao"}, {"118", "bye"},
            {"301", "hua_xieyanxiao"}, {"302", "hua_baimu"},
            {"303", "hua_shengqi"}, {"304", "hua_xianqi"},
            {"305", "hua_daku"}, {"306", "hua_qinqin"},
            {"307", "hua_xihuan"}, {"308", "hua_wabikong"},
            {"309", "hua_dianzan"}, {"310", "hua_haixiu"},
            {"311", "hua_liulei"}, {"312", "hua_keai"},
            {"313", "hua_shouqibao"}, {"314", "hua_kun"},
            {"315", "hua_jingya"}, {"316", "hua_yun"},
            {"317", "hua_shaojiao"}, {"318", "hua_bye"},
    };

    private static final int[] SHORT_COLORS = {
            0xFFFF0000, // #R
            0xFF00FF00, // #G
            0xFF0000FF, // #B
            0xFF000000, // #K
            0xFFFFFF00, // #Y
            0xFFFFFFFF, // #W
    };

    private final Activity host;
    private final Palette p;
    private final Dialog dialog;
    private final EditText input;
    private final TextView preview;
    private final TextView counter;
    private final LinearLayout colorPanel;
    private final ColorWheelView wheel;
    private final TextView hexView;
    private final Button sendBtn;
    private final Button fillBtn;
    private android.animation.ValueAnimator blinkAnim;

    // gradient endpoints; the wheel assigns them through the A/B chips
    private int colorA = 0xFFFF0000;
    private int colorB = 0xFFFFFFFF;

    static void show(Activity host, Palette p) {
        new BetterInput(host, p);
    }

    private BetterInput(Activity host, Palette p) {
        this.host = host;
        this.p = p;
        dialog = new Dialog(host, android.R.style.Theme_Translucent_NoTitleBar);

        LinearLayout root = new LinearLayout(host);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(14), dp(14), dp(14), dp(14));
        root.setBackground(round(dp(16), p.surface));

        preview = new TextView(host);
        preview.setTextSize(15);
        preview.setTextColor(0xFFFFFFFF);
        preview.setGravity(Gravity.START);
        preview.setPadding(dp(10), dp(8), dp(10), dp(8));
        preview.setBackground(round(dp(10), 0xFF141414));
        preview.setMinLines(2);
        root.addView(preview, match(wrap()));

        input = new EditText(host);
        input.setTextSize(15);
        input.setTextColor(p.onSurface);
        input.setHintTextColor(p.onSurfaceVariant);
        input.setHint(I18n.t(host, "mod_bi_hint"));
        input.setMinLines(2);
        input.setMaxLines(5);
        input.setGravity(Gravity.START);
        input.setBackground(round(dp(10), 0x00000000));
        LinearLayout.LayoutParams iP = match(wrap());
        iP.topMargin = dp(8);
        root.addView(input, iP);

        LinearLayout chips = new LinearLayout(host);
        chips.setOrientation(LinearLayout.HORIZONTAL);
        String[] quick = {"#R", "#G", "#B", "#K", "#Y", "#W", "#r"};
        for (int i = 0; i < quick.length; i++) {
            final String code = quick[i];
            Button c = pill(code);
            c.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    insert(code);
                }
            });
            LinearLayout.LayoutParams cP = wrap();
            cP.rightMargin = dp(6);
            chips.addView(c, cP);
        }
        LinearLayout.LayoutParams cH = match(wrap());
        cH.topMargin = dp(8);
        root.addView(chips, cH);

        LinearLayout tools = new LinearLayout(host);
        tools.setOrientation(LinearLayout.HORIZONTAL);
        Button colorBtn = pill(I18n.t(host, "mod_bi_color"));
        colorBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                colorPanel.setVisibility(colorPanel.getVisibility() == View.GONE
                        ? View.VISIBLE : View.GONE);
            }
        });
        tools.addView(colorBtn, wrap());
        Button blinkBtn = pill(I18n.t(host, "mod_bi_blink"));
        blinkBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                insert("#b");
            }
        });
        LinearLayout.LayoutParams bP = wrap();
        bP.leftMargin = dp(6);
        tools.addView(blinkBtn, bP);
        Button gradBtn = pill(I18n.t(host, "mod_bi_gradient"));
        gradBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                applyGradient();
            }
        });
        LinearLayout.LayoutParams gP = wrap();
        gP.leftMargin = dp(6);
        tools.addView(gradBtn, gP);
        Button iconBtn = pill(I18n.t(host, "mod_bi_icons"));
        iconBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                pickEmoji();
            }
        });
        LinearLayout.LayoutParams eP = wrap();
        eP.leftMargin = dp(6);
        tools.addView(iconBtn, eP);
        LinearLayout.LayoutParams tP = match(wrap());
        tP.topMargin = dp(8);
        root.addView(tools, tP);

        colorPanel = new LinearLayout(host);
        colorPanel.setOrientation(LinearLayout.VERTICAL);
        colorPanel.setVisibility(View.GONE);
        wheel = new ColorWheelView(host, new ColorWheelView.Listener() {
            @Override
            public void onColor(int color) {
                hexView.setText(String.format(Locale.US, "#c%06X", color & 0xFFFFFF));
            }
        });
        LinearLayout.LayoutParams wP = match(wrap());
        wP.topMargin = dp(8);
        colorPanel.addView(wheel, wP);

        SeekBar value = new SeekBar(host);
        value.setMax(255);
        value.setProgress(255);
        value.setOnSeekBarChangeListener(new SeekBar.OnSeekBarChangeListener() {
            @Override
            public void onProgressChanged(SeekBar s, int prog, boolean fromUser) {
                wheel.setValue(prog / 255f);
                hexView.setText(String.format(Locale.US, "#c%06X",
                        wheel.current() & 0xFFFFFF));
            }

            @Override
            public void onStartTrackingTouch(SeekBar s) {
            }

            @Override
            public void onStopTrackingTouch(SeekBar s) {
            }
        });
        colorPanel.addView(value, match(wrap()));

        hexView = new TextView(host);
        hexView.setTextSize(14);
        hexView.setTextColor(p.onSurface);
        hexView.setTypeface(Typeface.MONOSPACE);
        hexView.setGravity(Gravity.CENTER);
        hexView.setText("#cFF0000");
        LinearLayout.LayoutParams hP = match(wrap());
        hP.topMargin = dp(6);
        colorPanel.addView(hexView, hP);

        LinearLayout inserts = new LinearLayout(host);
        inserts.setOrientation(LinearLayout.HORIZONTAL);
        Button insBtn = pill(I18n.t(host, "mod_bi_color_insert"));
        insBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                insert(String.format(Locale.US, "#c%06X", wheel.current() & 0xFFFFFF));
            }
        });
        inserts.addView(insBtn, match(wrap()));
        Button aBtn = pill("A");
        aBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                colorA = wheel.current();
            }
        });
        LinearLayout.LayoutParams aP = wrap();
        aP.leftMargin = dp(6);
        inserts.addView(aBtn, aP);
        Button bBtn = pill("B");
        bBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                colorB = wheel.current();
            }
        });
        LinearLayout.LayoutParams bB = wrap();
        bB.leftMargin = dp(6);
        inserts.addView(bBtn, bB);
        LinearLayout.LayoutParams inP = match(wrap());
        inP.topMargin = dp(6);
        colorPanel.addView(inserts, inP);
        root.addView(colorPanel, match(wrap()));

        counter = new TextView(host);
        counter.setTextSize(12);
        counter.setTextColor(p.onSurfaceVariant);
        LinearLayout.LayoutParams kP = match(wrap());
        kP.topMargin = dp(8);
        root.addView(counter, kP);

        LinearLayout actions = new LinearLayout(host);
        actions.setOrientation(LinearLayout.HORIZONTAL);
        fillBtn = pill(I18n.t(host, "mod_bi_fill"));
        fillBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dispatch(false);
            }
        });
        actions.addView(fillBtn, match(wrap()));
        sendBtn = pill(I18n.t(host, "mod_bi_send"));
        sendBtn.setTextColor(p.onPrimary);
        sendBtn.setBackground(round(dp(20), p.primary));
        LinearLayout.LayoutParams sP = match(wrap());
        sP.leftMargin = dp(6);
        actions.addView(sendBtn, sP);
        sendBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dispatch(true);
            }
        });
        Button close = pill(I18n.t(host, "mod_close"));
        close.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dialog.cancel();
            }
        });
        LinearLayout.LayoutParams clP = match(wrap());
        clP.leftMargin = dp(6);
        actions.addView(close, clP);
        LinearLayout.LayoutParams aL = match(wrap());
        aL.topMargin = dp(10);
        root.addView(actions, aL);

        input.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int a, int b, int c) {
            }

            @Override
            public void onTextChanged(CharSequence s, int a, int b, int c) {
            }

            @Override
            public void afterTextChanged(Editable s) {
                renderPreview();
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
        ScrollView scroll = new ScrollView(host);
        scroll.setVerticalScrollBarEnabled(false);
        scroll.addView(root, new ScrollView.LayoutParams(
                ScrollView.LayoutParams.MATCH_PARENT,
                ScrollView.LayoutParams.WRAP_CONTENT));
        FrameLayout.LayoutParams fLp = new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.WRAP_CONTENT);
        fLp.gravity = Gravity.CENTER;
        fLp.leftMargin = dp(16);
        fLp.rightMargin = dp(16);
        frame.addView(scroll, fLp);
        dialog.setContentView(frame);
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public void onDismiss(DialogInterface d) {
                if (blinkAnim != null) {
                    blinkAnim.cancel();
                    blinkAnim = null;
                }
            }
        });
        renderPreview();
        dialog.show();
    }

    private void insert(String code) {
        int pos = Math.max(0, Math.min(input.getSelectionStart(), input.length()));
        input.getText().insert(pos, code);
    }

    /**
     * Re-color the selection (or the whole text) as a per-character ramp
     * between the A and B picks - each character carries its own #c marker,
     * which is the only form the game's inline-color parser keeps per glyph.
     */
    private void applyGradient() {
        int start = input.getSelectionStart();
        int end = input.getSelectionEnd();
        if (start < 0 || end < 0 || start == end) {
            start = 0;
            end = input.length();
        }
        if (start > end) {
            int t = start;
            start = end;
            end = t;
        }
        String region = input.getText().toString().substring(start, end);
        if (region.isEmpty()) {
            return;
        }
        StringBuilder out = new StringBuilder();
        float[] a = new float[3];
        float[] b = new float[3];
        Color.colorToHSV(colorA, a);
        Color.colorToHSV(colorB, b);
        int n = region.length();
        // hue travels the short way round the wheel - interpolating raw
        // degrees would swing a red-to-salmon ramp through green
        float dh = b[0] - a[0];
        if (dh > 180f) {
            dh -= 360f;
        } else if (dh < -180f) {
            dh += 360f;
        }
        for (int i = 0; i < n; i++) {
            float t = n == 1 ? 0f : i / (float) (n - 1);
            float[] mix = new float[3];
            mix[0] = (a[0] + dh * t + 360f) % 360f;
            for (int ch = 1; ch < 3; ch++) {
                mix[ch] = a[ch] + (b[ch] - a[ch]) * t;
            }
            int rgb = Color.HSVToColor(mix) & 0xFFFFFF;
            out.append(String.format(Locale.US, "#c%06X", rgb))
                    .append(region.charAt(i));
        }
        input.getText().replace(start, end, out.toString());
    }

    private void pickEmoji() {
        final String[] rows = new String[EMOJI.length];
        for (int i = 0; i < EMOJI.length; i++) {
            rows[i] = "#A" + EMOJI[i][0] + "  " + EMOJI[i][1];
        }
        new Dialog(host, android.R.style.Theme_Translucent_NoTitleBar) {
            {
                LinearLayout box = new LinearLayout(host);
                box.setOrientation(LinearLayout.VERTICAL);
                box.setPadding(dp(14), dp(14), dp(14), dp(14));
                box.setBackground(round(dp(16), p.surface));
                TextView title = new TextView(host);
                title.setText(I18n.t(host, "mod_bi_icons"));
                title.setTextColor(p.onSurface);
                title.setTextSize(16);
                box.addView(title, match(wrap()));
                ListView list = new ListView(host);
                list.setAdapter(new ArrayAdapter<String>(host,
                        android.R.layout.simple_list_item_1, rows) {
                    @Override
                    public android.view.View getView(int pos, android.view.View cv,
                                                     android.view.ViewGroup parent) {
                        TextView v = (TextView) super.getView(pos, cv, parent);
                        v.setTextColor(p.onSurface);
                        v.setTextSize(14);
                        return v;
                    }
                });
                list.setOnItemClickListener(new AdapterView.OnItemClickListener() {
                    @Override
                    public void onItemClick(AdapterView<?> parent, View v,
                                            int pos, long id) {
                        insert("#A" + EMOJI[pos][0]);
                        dismiss();
                    }
                });
                box.addView(list, new LinearLayout.LayoutParams(
                        LinearLayout.LayoutParams.MATCH_PARENT, dp(280)));
                setContentView(box);
            }
        }.show();
    }

    /**
     * Fill box / Send: the script fills the open chat view's input and the
     * send mode then fires the game's own send handler, so every gate the
     * game applies to a normal tap applies here. The result file answers
     * whether the chat view existed at all.
     */
    private void dispatch(final boolean send) {
        final String text = input.getText().toString();
        if (text.isEmpty()) {
            toast(host, I18n.t(host, "mod_bi_nothing"));
            return;
        }
        final String[] paths = paths();
        if (paths == null) {
            toast(host, I18n.t(host, "mod_bi_fail"));
            return;
        }
        for (int i = 0; i < paths.length; i++) {
            new File(paths[i]).delete();
        }
        sendBtn.setEnabled(false);
        fillBtn.setEnabled(false);
        try {
            CommonNatives.javaCallLuaEvent(script(paths[0], paths[1], text, send),
                    new Object[0]);
        } catch (RuntimeException e) {
            Log.e(TAG, "better input dispatch failed", e);
            sendBtn.setEnabled(true);
            fillBtn.setEnabled(true);
            return;
        }
        final android.content.Context app = host.getApplicationContext();
        new Thread(new Runnable() {
            @Override
            public void run() {
                final String state = await(paths);
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public void run() {
                        sendBtn.setEnabled(true);
                        fillBtn.setEnabled(true);
                        String msg;
                        if ("ok".equals(state)) {
                            msg = I18n.t(app, send ? "mod_bi_sent" : "mod_bi_filled");
                        } else {
                            msg = I18n.t(app, "mod_bi_fail");
                        }
                        toast(app, msg);
                        if ("ok".equals(state)) {
                            dialog.cancel();
                        }
                    }
                });
            }
        }, "mw-betterinput").start();
    }

    /**
     * The engine script. One outer pcall: the in-view path fills the input
     * box the ctrl itself reads (friend box when _friendUin > 0, room box
     * otherwise) and the send mode fires ContentBtn_sendClick - the same
     * handler a tap on the game's send button runs. With no chat view the
     * fill has nothing to fill and fails with 'nochat'; the send falls back
     * to the room presenter directly, which only works where that service is
     * already loaded.
     */
    private static String script(String path1, String path2, String text,
                                 boolean send) {
        return "(function()"
                + " local P1='" + esc(path1) + "'"
                + " local P2='" + esc(path2) + "'"
                + " local function w(j)"
                + " local function one(p)"
                + " local f=io.open(p,'w') if f then f:write(j) f:close() end"
                + " end one(P1) one(P2)"
                + " end"
                + " w('{\"started\":1}')"
                + " local t='" + esc(text) + "'"
                + " local ok,err=pcall(function()"
                + " local M=GetInst('MiniUIManager')"
                + " local c=M and M.GetCtrl and M:GetCtrl('chat_view')"
                + " local wd=c and c.view and c.view.widgets"
                + " local uin=(c and c._friendUin) or -1"
                + " local box=wd and ((uin>0 and wd.friendChetEdit_box)"
                + " or wd.edit_box)"
                + " if not(box and box.setText) then error('nochat') end"
                + " box:setText(t)"
                + (send ? " c:ContentBtn_sendClick()" : "")
                + " w('{\"r\":\"ok\"}')"
                + " end)"
                + (send ? " if not ok then ok,err=pcall(function()"
                        + " if CurMainPlayer and CurMainPlayer.onInputContent"
                        + " then CurMainPlayer:onInputContent(t) end"
                        + " SpamPreventionPresenter:requestSendChat("
                        + "ReplaceFilterString(t),'NewInputContent')"
                        + " w('{\"r\":\"ok\"}')"
                        + " end) end" : "")
                + " if not ok then"
                + " w('{\"r\":\"fail\",\"e\":'..string.format('%q',"
                + "tostring(err))..'}')"
                + " error('MWBI|'..tostring(err),0)"
                + " end"
                + " end)";
    }

    private static String esc(String s) {
        return s == null ? "" : s.replace("\\", "\\\\").replace("'", "\\'")
                .replace("\r", "\\r").replace("\n", "\\n");
    }

    /** External files dir first, internal as fallback; both are written. */
    private String[] paths() {
        try {
            File internal = host.getFilesDir();
            if (internal == null) {
                return null;
            }
            String in = new File(internal, FILE).getAbsolutePath();
            File ext = host.getExternalFilesDir(null);
            if (ext == null) {
                return new String[]{in, in};
            }
            return new String[]{new File(ext, FILE).getAbsolutePath(), in};
        } catch (RuntimeException e) {
            Log.e(TAG, "paths failed", e);
            return null;
        }
    }

    private static String await(String[] paths) {
        long deadline = System.currentTimeMillis() + TIMEOUT_MS;
        while (System.currentTimeMillis() < deadline) {
            for (int i = 0; i < paths.length; i++) {
                String s = state(paths[i]);
                if (s != null) {
                    return s;
                }
            }
            try {
                Thread.sleep(POLL_MS);
            } catch (InterruptedException e) {
                break;
            }
        }
        return "timeout";
    }

    /** The result the script wrote, or null while it is still running - the
     *  {"started":1} marker and any unparsable file count as running. */
    private static String state(String path) {
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
                JSONObject o = new JSONObject(buf.toString("UTF-8"));
                String s = o.optString("r", "");
                return s.isEmpty() ? null : s;
            } finally {
                in.close();
            }
        } catch (Exception e) {
            return null;
        }
    }

    /** The preview renders what the native parser keeps: color runs, the
     *  named shortcuts, line breaks, the #b pulse (shown as a whole-preview
     *  fade - spans cannot animate alone) and #A runs as [name]. */
    private void renderPreview() {
        String src = input.getText().toString();
        SpannableStringBuilder b = new SpannableStringBuilder();
        int color = 0xFFFFFFFF;
        int blinkFrom = -1;
        int i = 0;
        while (i < src.length()) {
            char ch = src.charAt(i);
            if (ch == '#' && i + 1 < src.length()) {
                char k = src.charAt(i + 1);
                if ((k == 'c' || k == 'C') && i + 8 <= src.length()) {
                    int rgb = parseHex(src.substring(i + 2, i + 8));
                    if (rgb >= 0) {
                        color = 0xFF000000 | rgb;
                        i += 8;
                        continue;
                    }
                } else if (k == 'r' || k == 'n') {
                    b.append('\n');
                    i += 2;
                    continue;
                } else if (k == 'b' || k == 'B') {
                    if (blinkFrom < 0) {
                        blinkFrom = b.length();
                    }
                    i += 2;
                    continue;
                } else if (k == 'A' || k == 'a') {
                    int id = parseDec(src.substring(i + 2,
                            Math.min(i + 5, src.length())));
                    if (id > 0 && i + 5 <= src.length()) {
                        String name = emojiName(id);
                        b.append('[').append(name).append(']');
                        b.setSpan(new ForegroundColorSpan(color),
                                b.length() - name.length() - 2, b.length(),
                                Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
                        i += 5;
                        continue;
                    }
                } else {
                    int idx = "RGBKYW".indexOf(k);
                    if (idx >= 0) {
                        color = 0xFF000000 | (SHORT_COLORS[idx] & 0xFFFFFF);
                        i += 2;
                        continue;
                    }
                }
            }
            int st = b.length();
            b.append(ch);
            b.setSpan(new ForegroundColorSpan(color), st, b.length(),
                    Spannable.SPAN_EXCLUSIVE_EXCLUSIVE);
            i++;
        }
        preview.setText(b);
        counter.setText(String.format(I18n.t(host, "mod_bi_chars"), src.length()));
        if (blinkFrom >= 0) {
            if (blinkAnim == null) {
                blinkAnim = android.animation.ValueAnimator.ofInt(255, 80, 255);
                blinkAnim.setDuration(1400);
                blinkAnim.setRepeatCount(android.animation.ValueAnimator.INFINITE);
                blinkAnim.addUpdateListener(
                        new android.animation.ValueAnimator.AnimatorUpdateListener() {
                            @Override
                            public void onAnimationUpdate(
                                    android.animation.ValueAnimator a) {
                                preview.setAlpha(
                                        ((Integer) a.getAnimatedValue()) / 255f);
                            }
                        });
                blinkAnim.start();
            }
        } else if (blinkAnim != null) {
            blinkAnim.cancel();
            blinkAnim = null;
            preview.setAlpha(1f);
        }
    }

    private static String emojiName(int id) {
        for (int i = 0; i < EMOJI.length; i++) {
            if (Integer.parseInt(EMOJI[i][0]) == id) {
                return EMOJI[i][1];
            }
        }
        return "A" + id;
    }

    private static int parseHex(String s) {
        try {
            return (int) Long.parseLong(s, 16);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private static int parseDec(String s) {
        try {
            return Integer.parseInt(s);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private static void toast(Context c, String msg) {
        try {
            Toast.makeText(c, msg, Toast.LENGTH_SHORT).show();
        } catch (RuntimeException e) {
            Log.e(TAG, "toast failed", e);
        }
    }

    private Button pill(String text) {
        Button b = new Button(host);
        b.setText(text);
        b.setAllCaps(false);
        b.setTextSize(13);
        b.setTextColor(p.onSurface);
        b.setGravity(Gravity.CENTER);
        b.setMinHeight(0);
        b.setMinWidth(0);
        b.setPadding(dp(14), 0, dp(14), 0);
        b.setBackground(round(dp(18), 0x14000000));
        return b;
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

    /** The hue-saturation wheel with a value the caller owns: the game's own
     *  color codes carry no alpha, so a plain HSV triple is the whole state. */
    static final class ColorWheelView extends View {
        interface Listener {
            void onColor(int color);
        }

        private static final int SIZE = 220;
        private final Listener listener;
        private final float[] hsv = {0f, 1f, 1f};
        private Bitmap wheel;
        private float radius;

        ColorWheelView(Activity host, Listener listener) {
            super(host);
            this.listener = listener;
        }

        @Override
        protected void onSizeChanged(int w, int h, int ow, int oh) {
            radius = Math.min(w, h) / 2f - dp(6);
            int px = Math.max(1, (int) (radius * 2));
            int[] pixels = new int[px * px];
            float[] c = {0f, 0f, 0f};
            for (int y = 0; y < px; y++) {
                for (int x = 0; x < px; x++) {
                    float dx = x - px / 2f;
                    float dy = y - px / 2f;
                    float d = (float) Math.sqrt(dx * dx + dy * dy);
                    if (d > radius) {
                        pixels[y * px + x] = 0;
                        continue;
                    }
                    float deg = (float) Math.toDegrees(Math.atan2(dy, dx));
                    c[0] = (deg + 360f) % 360f;
                    c[1] = Math.min(1f, d / radius);
                    c[2] = 1f;
                    pixels[y * px + x] = Color.HSVToColor(c);
                }
            }
            wheel = Bitmap.createBitmap(pixels, px, px, Bitmap.Config.ARGB_8888);
        }

        @Override
        protected void onDraw(android.graphics.Canvas canvas) {
            if (wheel != null) {
                canvas.drawBitmap(wheel, dp(6), dp(6), null);
            }
            float[] xy = pointer();
            android.graphics.Paint ring = new android.graphics.Paint();
            ring.setStyle(android.graphics.Paint.Style.STROKE);
            ring.setStrokeWidth(dp(2));
            ring.setColor(0xFFFFFFFF);
            canvas.drawCircle(xy[0], xy[1], dp(7), ring);
        }

        @Override
        public boolean onTouchEvent(MotionEvent e) {
            if (wheel == null) {
                return false;
            }
            float dx = e.getX() - (dp(6) + wheel.getWidth() / 2f);
            float dy = e.getY() - (dp(6) + wheel.getHeight() / 2f);
            float d = (float) Math.sqrt(dx * dx + dy * dy);
            if (e.getActionMasked() == MotionEvent.ACTION_DOWN && d > radius) {
                return false;
            }
            hsv[0] = ((float) Math.toDegrees(Math.atan2(dy, dx)) + 360f) % 360f;
            hsv[1] = Math.min(1f, d / radius);
            invalidate();
            listener.onColor(current());
            return true;
        }

        void setValue(float v) {
            hsv[2] = Math.max(0f, Math.min(1f, v));
            listener.onColor(current());
        }

        int current() {
            return Color.HSVToColor(hsv);
        }

        private float[] pointer() {
            double rad = Math.toRadians(hsv[0]);
            float d = hsv[1] * radius;
            return new float[]{
                    dp(6) + wheel.getWidth() / 2f + (float) (Math.cos(rad) * d),
                    dp(6) + wheel.getHeight() / 2f + (float) (Math.sin(rad) * d),
            };
        }

        private int dp(int value) {
            return (int) (value * getResources().getDisplayMetrics().density
                    + 0.5f);
        }
    }
}
