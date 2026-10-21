package modmenu;

import android.content.Context;
import android.util.Log;

import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * The mod's own log, kept where LogFox cannot reach it.
 *
 * Every log call the mod makes goes to logcat AND to filesDir/mwlog.txt, so
 * the in-menu log viewer can show, copy and export the trail of a failed
 * notification tap or menu open on a device where reading logcat from an app
 * is denied (which is why LogFox sits on "Waiting for logs"). The appends are
 * synchronous - mod log calls are rare - and any file failure drops to
 * logcat-only rather than take the caller down.
 */
public final class MwLog {

    private static final String FILE = "mwlog.txt";
    /** Rotate past this and the old content is dropped. */
    private static final long MAX_BYTES = 256L * 1024;
    /** One stack trace is enough context; past this the line is noise. */
    private static final int MAX_TR = 1500;

    private static final SimpleDateFormat STAMP =
            new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.US);

    private static File file;
    private static FileOutputStream out;
    private static long bytes;

    private MwLog() {
    }

    /** Open the file once, at process start, before anything logs. */
    public static synchronized void init(Context ctx) {
        if (out != null) {
            return;
        }
        try {
            file = new File(ctx.getApplicationContext().getFilesDir(), FILE);
            if (file.length() > MAX_BYTES) {
                file.delete();
            }
            out = new FileOutputStream(file, true);
            bytes = file.length();
        } catch (Exception e) {
            file = null;
            out = null;
            Log.w("ModLog", "log file unavailable", e);
        }
    }

    public static void d(String tag, String msg) {
        Log.d(tag, msg);
        append('D', tag, msg, null);
    }

    public static void i(String tag, String msg) {
        Log.i(tag, msg);
        append('I', tag, msg, null);
    }

    public static void w(String tag, String msg) {
        Log.w(tag, msg);
        append('W', tag, msg, null);
    }

    public static void w(String tag, String msg, Throwable tr) {
        Log.w(tag, msg, tr);
        append('W', tag, msg, tr);
    }

    public static void e(String tag, String msg) {
        Log.e(tag, msg);
        append('E', tag, msg, null);
    }

    public static void e(String tag, String msg, Throwable tr) {
        Log.e(tag, msg, tr);
        append('E', tag, msg, tr);
    }

    private static synchronized void append(char lvl, String tag, String msg,
            Throwable tr) {
        if (out == null) {
            return;
        }
        try {
            if (bytes > MAX_BYTES) {
                out.close();
                out = new FileOutputStream(file, false);
                bytes = 0;
            }
            StringBuilder sb = new StringBuilder(96 + msg.length());
            sb.append(STAMP.format(new Date())).append('/').append(lvl)
                    .append(' ').append(tag).append(": ").append(msg);
            if (tr != null) {
                String trace = Log.getStackTraceString(tr);
                if (trace.length() > MAX_TR) {
                    trace = trace.substring(0, MAX_TR);
                }
                sb.append('\n').append(trace);
            }
            sb.append('\n');
            String line = sb.toString();
            out.write(line.getBytes("UTF-8"));
            out.flush();
            bytes += line.length();
        } catch (Exception e) {
            // the caller must never pay for a broken log; logcat still has it
            try {
                out.close();
            } catch (Exception ignored) {
            }
            out = null;
            file = null;
        }
    }
}
