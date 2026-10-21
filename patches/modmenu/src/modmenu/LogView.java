package modmenu;

import android.app.Activity;
import android.app.Dialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * The in-game log viewer: show, copy and export the mod's own log.
 *
 * Log readers that shell out to logcat hang on "Waiting for logs" on this
 * device (the platform does not hand READ_LOGS to an app), while every line
 * the mod logs is also appended to filesDir/mwlog.txt by MwLog. This dialog
 * reads that file - tail only, so a full log cannot stall the UI - lets you
 * select text directly, put it on the clipboard, or export it to
 * Android/data/.../files/ where any file manager (or a bug report) can take
 * it.
 */
final class LogView {
    private static final String TAG = "ModMenu";
    private static final String FILE = "mwlog.txt";
    /** Show the tail: 200 KB of bytes, cut at the first full line after. */
    private static final long TAIL_BYTES = 200 * 1024;

    private final Activity host;
    private final Palette p;
    private final Dialog dialog;
    private final TextView body;
    private final TextView status;
    private final Button copyBtn;
    private final Button exportBtn;

    static void show(Activity host, Palette p) {
        new LogView(host, p);
    }

    private LogView(Activity host, Palette p) {
        this.host = host;
        this.p = p;
        dialog = new Dialog(host, android.R.style.Theme_Translucent_NoTitleBar);

        LinearLayout root = new LinearLayout(host);
        root.setOrientation(LinearLayout.VERTICAL);
        root.setPadding(dp(14), dp(14), dp(14), dp(14));
        root.setBackground(round(dp(16), p.surface));

        TextView title = new TextView(host);
        title.setText(I18n.t(host, "mod_log_label"));
        title.setTextColor(p.onSurface);
        title.setTextSize(16);
        root.addView(title, match(wrap()));

        status = new TextView(host);
        status.setTextColor(p.onSurfaceVariant);
        status.setTextSize(12);
        LinearLayout.LayoutParams sLp = match(wrap());
        sLp.topMargin = dp(4);
        root.addView(status, sLp);

        body = new TextView(host);
        body.setTypeface(Typeface.MONOSPACE);
        body.setTextSize(11);
        body.setTextColor(p.onSurface);
        body.setTextIsSelectable(true);
        body.setPadding(dp(4), dp(6), dp(4), dp(6));
        ScrollView scroll = new ScrollView(host);
        scroll.setFillViewport(true);
        scroll.addView(body, new FrameLayout.LayoutParams(
                FrameLayout.LayoutParams.MATCH_PARENT,
                FrameLayout.LayoutParams.WRAP_CONTENT));
        LinearLayout.LayoutParams bLp = new LinearLayout.LayoutParams(
                LinearLayout.LayoutParams.MATCH_PARENT, 0, 1f);
        bLp.topMargin = dp(6);
        root.addView(scroll, bLp);

        LinearLayout actions = new LinearLayout(host);
        actions.setOrientation(LinearLayout.HORIZONTAL);
        Button refreshBtn = actionBtn(I18n.t(host, "mod_log_refresh"));
        refreshBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                load();
            }
        });
        copyBtn = actionBtn(I18n.t(host, "mod_log_copy"));
        copyBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                copy();
            }
        });
        exportBtn = actionBtn(I18n.t(host, "mod_log_export"));
        exportBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                export();
            }
        });
        Button closeBtn = actionBtn(I18n.t(host, "mod_close"));
        closeBtn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                dialog.cancel();
            }
        });
        Button[] btns = {refreshBtn, copyBtn, exportBtn, closeBtn};
        for (int i = 0; i < btns.length; i++) {
            LinearLayout.LayoutParams lp = new LinearLayout.LayoutParams(
                    0, dp(38), 1f);
            lp.rightMargin = dp(4);
            actions.addView(btns[i], lp);
        }
        LinearLayout.LayoutParams aLp = match(wrap());
        aLp.topMargin = dp(10);
        root.addView(actions, aLp);

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

        load();
    }

    // ------------------------------------------------------------------
    // load / copy / export
    // ------------------------------------------------------------------

    /** Fill body + status from the log file's tail; empty file is a state,
     *  not an error - the mod simply has not logged anything yet. */
    private void load() {
        File f = new File(host.getFilesDir(), FILE);
        if (!f.isFile() || f.length() == 0) {
            body.setText("");
            status.setText(I18n.t(host, "mod_log_empty"));
            copyBtn.setEnabled(false);
            exportBtn.setEnabled(false);
            return;
        }
        try {
            byte[] all = readAll(f);
            int start = 0;
            if (all.length > TAIL_BYTES) {
                // cut on a byte offset, then step to the next line start:
                // the log carries UTF-8 (Vietnamese) and cutting mid-glyph
                // would decode garbage
                start = (int) (all.length - TAIL_BYTES);
                while (start < all.length && all[start] != '\n') {
                    start++;
                }
            }
            String text = new String(all, start, all.length - start, "UTF-8");
            body.setText(text);
            status.setText(fmt("mod_log_status", countNl(text) + 1,
                    humanSize(f.length())));
            copyBtn.setEnabled(true);
            exportBtn.setEnabled(true);
        } catch (Exception e) {
            MwLog.e(TAG, "log read failed", e);
            body.setText("");
            status.setText(I18n.t(host, "mod_log_empty"));
            copyBtn.setEnabled(false);
            exportBtn.setEnabled(false);
        }
    }

    private void copy() {
        try {
            ClipboardManager cm = (ClipboardManager)
                    host.getSystemService(Context.CLIPBOARD_SERVICE);
            cm.setPrimaryClip(ClipData.newPlainText("mwlog",
                    body.getText().toString()));
            toast(host, I18n.t(host, "mod_log_copied"));
        } catch (RuntimeException e) {
            MwLog.e(TAG, "log copy failed", e);
        }
    }

    /** The whole file (the viewer may show only its tail) next to the other
     *  app-private exports, readable without root. */
    private void export() {
        try {
            File src = new File(host.getFilesDir(), FILE);
            if (!src.isFile()) {
                toast(host, I18n.t(host, "mod_log_empty"));
                return;
            }
            File dir = host.getExternalFilesDir(null);
            if (dir == null) {
                dir = host.getFilesDir();
            }
            String name = "mw_log_" + new SimpleDateFormat("yyyyMMdd_HHmmss",
                    Locale.US).format(new Date()) + ".txt";
            File out = new File(dir, name);
            byte[] all = readAll(src);
            FileOutputStream os = new FileOutputStream(out);
            try {
                os.write(all);
            } finally {
                os.close();
            }
            toast(host, fmt("mod_log_exported", out.getAbsolutePath()));
        } catch (Exception e) {
            MwLog.e(TAG, "log export failed", e);
        }
    }

    private static byte[] readAll(File f) throws Exception {
        FileInputStream in = new FileInputStream(f);
        try {
            ByteArrayOutputStream buf = new ByteArrayOutputStream();
            byte[] chunk = new byte[4096];
            int n;
            while ((n = in.read(chunk)) > 0) {
                buf.write(chunk, 0, n);
            }
            return buf.toByteArray();
        } finally {
            in.close();
        }
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

    private static String humanSize(long bytes) {
        return bytes < 1024 ? bytes + " B"
                : (bytes / 1024) + " KB";
    }

    // ------------------------------------------------------------------
    // small views / helpers
    // ------------------------------------------------------------------

    private String fmt(String key, Object... args) {
        try {
            return String.format(Locale.getDefault(), I18n.t(host, key), args);
        } catch (RuntimeException e) {
            return key;
        }
    }

    private static void toast(Context c, String msg) {
        try {
            Toast.makeText(c, msg, Toast.LENGTH_SHORT).show();
        } catch (RuntimeException e) {
            MwLog.e(TAG, "toast failed", e);
        }
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
