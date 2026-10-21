package modmenu;

import android.app.Activity;
import android.app.AlarmManager;
import android.app.AlertDialog;
import android.app.Application;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;

import org.appplay.lib.CommonNatives;

import java.lang.ref.WeakReference;

/**
 * State, startup hooks and notification logic for the mod menu.
 *
 * onAppCreate / onGameStart are injected at the head of GoogleApplication and
 * AppPlayBaseActivity onCreate; the WebView/HWID stubs poll isWebBlocked /
 * isSpoofOn. Everything is static: the classes live in classes8 and are loaded
 * through the game's MultiDex install, which finishes before either hook runs.
 *
 * The notification is posted from a Handler task rather than directly inside
 * onCreate so it lands after resume, and on Android 13+ it is retried over a
 * few minutes in case the permission dialog is still on screen. It is not
 * auto-cancelled - it stays as the menu's entry point - and the tap opens the
 * sheet on the live game window through ModMenuReceiver (see menuIntent).
 */
public final class ModMenu {
    private static final String PREF_NAME = "mw_mod_menu";
    private static final String KEY_WEB = "webview";
    private static final String KEY_HWID = "hwid";
    private static final String KEY_REWARD = "reward";
    private static final String KEY_ANTITRACK = "antitrack";
    private static final String KEY_GEN = "hwid_gen";
    private static final String KEY_GEN_AUTO = "hwid_auto";
    private static final String KEY_UNSAFE = "unsafe";

    private static final int NOTIF_ID = 1071;
    private static final long[] RETRY_MS = {2000, 5000, 10000, 20000, 40000, 80000, 160000};
    /** Lua silence, in a focused window, that counts as a freeze. */
    private static final long STUCK_MS = 60000;

    /**
     * The lua that wraps ChatHelper.OpenChatView so the composer opens the
     * moment the game's chat does. It runs the original first, so the chat
     * view is already up when onChatOpened raises BetterInput over it (Fill
     * and Send dispatch into that open view). Idempotent via _G.__bi_chat, so
     * it is safe to re-send until the helper has loaded; onChatOpened is
     * reached through InvocationBuilder, the game's own lua->java bridge.
     */
    private static final String CHAT_HOOK_SCRIPT =
            "(function()"
            + " if _G.__bi_chat then return end"
            + " pcall(function()"
            + " local h=GetInst('ChatHelper')"
            + " if h==nil then return end"
            + " local owner=h"
            + " local mt=getmetatable(h)"
            + " if mt~=nil and type(mt.__index)=='table'"
            + " and type(mt.__index.OpenChatView)=='function' then owner=mt.__index end"
            + " if owner.__bi_chat then return end"
            + " local orig=owner.OpenChatView"
            + " if type(orig)~='function' then return end"
            + " owner.OpenChatView=function(self,...)"
            + " local r=orig(self,...)"
            + " pcall(function()"
            + " InvocationBuilder():setClassName('modmenu/ModMenu')"
            + " :setMethodName('onChatOpened'):setSignature('()V')"
            + " :build():invokeStatic()"
            + " end)"
            + " return r"
            + " end"
            + " owner.__bi_chat=true"
            + " _G.__bi_chat=true"
            + " end)"
            + " end)";
    /** Hook deliveries after the first; the lua side no-ops once installed. */
    private static final int CHAT_HOOK_TRIES = 6;

    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private static volatile boolean webBlocked = true;
    private static volatile boolean hwidSpoof = true;
    private static volatile boolean rewardBypass = true;
    private static volatile boolean antiTrack = true;
    private static volatile boolean hwidAutoRotate;

    private static volatile boolean unsafe;

    private static volatile Context appCtx;
    /** The live game window, where the menu sheet attaches. */
    private static WeakReference<Activity> game = new WeakReference<Activity>(null);
    private static boolean loaded;
    private static boolean bootRotated;
    private static boolean notifyStarted;
    private static boolean posted;
    private static boolean deniedLogged;
    private static int retryIdx;

    /** Debounce for the auto composer: one chat open can bounce the hook. */
    private static volatile long lastBetterInputMs;
    private static boolean chatHookRequested;
    private static int chatHookTries;

    /** Last lua->java crossing (ad polls / script heartbeat); 0 = none yet. */
    private static volatile long lastLuaMs;
    /** Start of the current focus stretch; only touched on the main thread. */
    private static long resumedMs;
    private static boolean stuckShown;

    private ModMenu() {}

    /** Injected at the head of GoogleApplication.onCreate, before any stub can run. */
    public static void onAppCreate(Context ctx) {
        // first thing: the viewer's file has to be open before anything
        // below can log, or the failure trail starts empty
        MwLog.init(ctx);
        loadPrefs(ctx);
        // step the identity once per process, before any spoof stub reads it
        if (hwidAutoRotate && !bootRotated) {
            bootRotated = true;
            rotateHwid(ctx);
        }
        // before anything else can throw: the crash screen is only useful
        // while the handler is still the one watching the threads
        CrashHandler.install(ctx);
        // freeze watchdog tick; the lua thread can die while these java
        // threads keep running, which is exactly the lobby-freeze case
        MAIN.postDelayed(freezeTick, 5000);
        // shake backup entry: the notification tap is dropped on some ROMs,
        // and the accelerometer needs no inter-process hop to reach the window
        ShakeOpen.start(ctx);
    }

    /** Injected at the head of AppPlayBaseActivity.onCreate. */
    public static void onGameStart(final Activity activity) {
        loadPrefs(activity);
        // refreshed on every recreation, before the notify guard: the sheet
        // must always land on the window that is actually alive
        game = new WeakReference<Activity>(activity);
        if (notifyStarted) {
            return;
        }
        notifyStarted = true;
        MAIN.post(new Runnable() {
            @Override
            public void run() {
                beginNotify(activity);
            }
        });
    }

    /** The live game window, or null once it is finishing or destroyed. */
    static Activity gameActivity() {
        Activity a = game.get();
        if (a == null || a.isFinishing() || a.isDestroyed()) {
            return null;
        }
        return a;
    }

    /**
     * The menu's content intent. Normally a broadcast: ModMenuReceiver opens
     * the sheet as a dialog on the live game window, whose activity is never
     * paused - the script loop, rendering and voice chat keep running behind
     * the menu; the receiver re-posts through repostForActivity() when that
     * tap finds no usable window.
     */
    static PendingIntent menuIntent(Context c, int requestCode, boolean openIds) {
        if (gameActivity() != null) {
            Intent i = new Intent(c, ModMenuReceiver.class)
                    .putExtra(ModMenuActivity.EXTRA_OPEN_IDS, openIds);
            int flags = PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE;
            return PendingIntent.getBroadcast(c, requestCode, i, flags);
        }
        return activityIntent(c, requestCode, openIds);
    }

    /** Straight getActivity: the only form a notification tap may start an
     *  activity through on Android 12+ (no receiver bounce in between). */
    private static PendingIntent activityIntent(Context c, int requestCode,
                                                 boolean openIds) {
        Intent i = new Intent(c, ModMenuActivity.class)
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_SINGLE_TOP)
                .putExtra(ModMenuActivity.EXTRA_OPEN_IDS, openIds);
        int flags = PendingIntent.FLAG_UPDATE_CURRENT | PendingIntent.FLAG_IMMUTABLE;
        return PendingIntent.getActivity(c, requestCode, i, flags);
    }

    /** Shared by tryPost and the receiver's re-post below. */
    private static Notification notif(PendingIntent pi) {
        // resolved here rather than in a static: the class can load before
        // appCtx is set, and resource selection needs the configuration
        String title = I18n.t(appCtx, "mod_notif_title");
        String text = I18n.t(appCtx, "mod_notif_text");
        NotificationManager nm = (NotificationManager)
                appCtx.getSystemService(Context.NOTIFICATION_SERVICE);
        return Build.VERSION.SDK_INT >= 26
                ? Api26.build(appCtx, nm, title, text, pi)
                : legacyBuild(title, text, pi);
    }

    /**
     * Re-post the menu notification aimed straight at ModMenuActivity. The
     * receiver reaches this when the tap cannot show the sheet where it is -
     * the game window is dead or not in front - and starting an activity
     * from that broadcast is a trampoline Android 12+ refuses silently. The
     * re-posted intent is a direct getActivity the system fires itself,
     * which is allowed, so the next tap opens the standalone sheet; the next
     * game start swaps the broadcast form back in.
     */
    static void repostForActivity(boolean openIds) {
        if (appCtx == null) {
            return;
        }
        try {
            NotificationManager nm = (NotificationManager)
                    appCtx.getSystemService(Context.NOTIFICATION_SERVICE);
            nm.notify(NOTIF_ID, notif(activityIntent(appCtx, 0, openIds)));
            MwLog.i("ModMenu", "notification re-posted for a direct activity tap");
        } catch (RuntimeException e) {
            MwLog.e("ModMenu", "notification re-post failed", e);
        }
    }

    /** Toggle checks called by the WebView-block, HWID, ad-reward and anti-track stubs. */
    public static boolean isWebBlocked() {
        return webBlocked;
    }

    public static boolean isSpoofOn() {
        return hwidSpoof;
    }

    public static boolean isRewardBypass() {
        return rewardBypass;
    }

    public static boolean isAntiTrack() {
        return antiTrack;
    }

    public static boolean isHwidAutoRotate() {
        return hwidAutoRotate;
    }

    /**
     * The gate for the high-ban-risk features: off until the player has
     * confirmed the warning dialog in the menu.
     */
    public static boolean isUnsafe() {
        return unsafe;
    }

    /**
     * Called from the ClientMethodCommonApi stubs (H1/H2) at every lua->java
     * crossing - the lobby ad polls and the script heartbeat. The lobby freeze
     * wedges the lua main thread while these threads stay healthy, so the
     * rescue signal has to arrive from the lua side to be trustworthy.
     */
    public static void noteLuaAlive() {
        lastLuaMs = SystemClock.elapsedRealtime();
        // first crossing is the earliest the lua VM is provably up; deliver
        // the chat hook from here, then re-send a few times in case the
        // ChatHelper class itself has not loaded yet
        if (!chatHookRequested) {
            chatHookRequested = true;
            MAIN.post(new Runnable() {
                @Override
                public void run() {
                    installChatHook();
                    scheduleChatHookRetry();
                }
            });
        }
    }

    /**
     * Called from lua (the injected OpenChatView hook) the instant the chat
     * opens, on the lua thread. Hops to main and raises the composer over the
     * freshly opened chat view, whose own input the Fill/Send dispatch fills.
     */
    public static void onChatOpened() {
        MAIN.post(new Runnable() {
            @Override
            public void run() {
                long now = SystemClock.elapsedRealtime();
                if (now - lastBetterInputMs < 600) {
                    return; // a single open can bounce the hook more than once
                }
                lastBetterInputMs = now;
                Activity host = gameActivity();
                if (host == null) {
                    return;
                }
                try {
                    BetterInput.show(host, Palette.of(host));
                } catch (RuntimeException e) {
                    MwLog.e("ModMenu", "auto better input failed", e);
                }
            }
        });
    }

    /** Deliver the lua hook; the lua side no-ops once it is installed. */
    private static void installChatHook() {
        if (gameActivity() == null) {
            return; // no window yet; the retry below keeps trying
        }
        try {
            CommonNatives.javaCallLuaEvent(CHAT_HOOK_SCRIPT, new Object[0]);
        } catch (RuntimeException e) {
            MwLog.e("ModMenu", "chat hook install failed", e);
        }
    }

    private static void scheduleChatHookRetry() {
        if (chatHookTries++ >= CHAT_HOOK_TRIES) {
            return;
        }
        MAIN.postDelayed(new Runnable() {
            @Override
            public void run() {
                installChatHook();
                scheduleChatHookRetry();
            }
        }, 3000);
    }

    // commit, not apply: restartGame SIGKILLs the process right after a
    // toggle, and apply()'s async disk write can still be queued then
    public static void setWebBlocked(Context ctx, boolean value) {
        prefs(ctx).edit().putBoolean(KEY_WEB, value).commit();
        webBlocked = value;
    }

    public static void setHwidSpoof(Context ctx, boolean value) {
        prefs(ctx).edit().putBoolean(KEY_HWID, value).commit();
        hwidSpoof = value;
    }

    public static void setRewardBypass(Context ctx, boolean value) {
        prefs(ctx).edit().putBoolean(KEY_REWARD, value).commit();
        rewardBypass = value;
    }

    public static void setAntiTrack(Context ctx, boolean value) {
        prefs(ctx).edit().putBoolean(KEY_ANTITRACK, value).commit();
        antiTrack = value;
    }

    public static void setHwidAutoRotate(Context ctx, boolean value) {
        prefs(ctx).edit().putBoolean(KEY_GEN_AUTO, value).commit();
        hwidAutoRotate = value;
    }

    public static void setUnsafe(Context ctx, boolean value) {
        prefs(ctx).edit().putBoolean(KEY_UNSAFE, value).commit();
        unsafe = value;
    }

    /**
     * Called from every spoof stub with the baked generation-0 constant.
     * Reads the stored generation on each call so a rotation from the menu
     * applies without restarting the process.
     */
    public static String spoofValue(String def) {
        Context c = appCtx;
        if (c == null) {
            return def;
        }
        return Hwid.rotate(def, prefs(c).getInt(KEY_GEN, 0));
    }

    /** Menu button: step the identity to a fresh rotation. */
    public static void rotateHwid(Context ctx) {
        SharedPreferences sp = prefs(ctx);
        sp.edit().putInt(KEY_GEN, sp.getInt(KEY_GEN, 0) + 1).commit();
    }

    /**
     * Restart the game so a freshly rotated HWID is read from a clean login.
     * The relaunch is scheduled through AlarmManager before the process dies:
     * the alarm lives in the system server and fires after we are gone, so the
     * game cold-starts on its own instead of the player force-closing it.
     */
    public static void restartGame(Context ctx) {
        Context c = ctx.getApplicationContext();
        Intent i = c.getPackageManager().getLaunchIntentForPackage(c.getPackageName());
        AlarmManager am = (AlarmManager) c.getSystemService(Context.ALARM_SERVICE);
        if (i == null || am == null) {
            return; // no launcher intent or alarm service: nothing safe to do
        }
        i.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TASK);
        PendingIntent pi = PendingIntent.getActivity(c, (int) (System.currentTimeMillis() & 0x7fffffff),
                i, PendingIntent.FLAG_ONE_SHOT | PendingIntent.FLAG_IMMUTABLE);
        am.set(AlarmManager.RTC, System.currentTimeMillis() + 400, pi);
        Process.killProcess(Process.myPid());
    }

    public static void loadPrefs(Context ctx) {
        if (loaded) {
            return;
        }
        appCtx = ctx.getApplicationContext();
        SharedPreferences sp = prefs(appCtx);
        webBlocked = sp.getBoolean(KEY_WEB, true);
        hwidSpoof = sp.getBoolean(KEY_HWID, true);
        rewardBypass = sp.getBoolean(KEY_REWARD, true);
        antiTrack = sp.getBoolean(KEY_ANTITRACK, true);
        hwidAutoRotate = sp.getBoolean(KEY_GEN_AUTO, false);
        unsafe = sp.getBoolean(KEY_UNSAFE, false);
        loaded = true;
    }

    private static SharedPreferences prefs(Context ctx) {
        return ctx.getSharedPreferences(PREF_NAME, Context.MODE_PRIVATE);
    }

    private static void beginNotify(Activity activity) {
        if (Build.VERSION.SDK_INT >= 33 && !Api33.canPost(activity)) {
            Api33.request(activity);
        }
        tryPost();
        scheduleRetry();
    }

    private static void tryPost() {
        if (posted) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 33 && !Api33.canPost(appCtx)) {
            if (!deniedLogged) {
                deniedLogged = true;
                MwLog.w("ModMenu", "notification not posted: POST_NOTIFICATIONS denied");
            }
            return;
        }
        NotificationManager nm = (NotificationManager)
                appCtx.getSystemService(Context.NOTIFICATION_SERVICE);
        nm.notify(NOTIF_ID, notif(menuIntent(appCtx, 0, false)));
        posted = true;
        MwLog.i("ModMenu", "menu notification posted");
    }

    // pre-26 path; the channel-taking Builder exists only on 26+
    private static Notification legacyBuild(String title, String text, PendingIntent pi) {
        return new Notification.Builder(appCtx)
                .setContentTitle(title)
                .setContentText(text)
                .setSmallIcon(appCtx.getApplicationInfo().icon)
                .setContentIntent(pi)
                .build();
    }

    private static void scheduleRetry() {
        if (posted || retryIdx >= RETRY_MS.length) {
            return;
        }
        MAIN.postDelayed(new Runnable() {
            @Override
            public void run() {
                tryPost();
                scheduleRetry();
            }
        }, RETRY_MS[retryIdx++]);
    }

    /**
     * Freeze watchdog: lua silent for STUCK_MS inside an unbroken focus
     * stretch means the script loop wedged - the observed lobby freeze shows
     * no loader and records no ANR, so nothing else will ever surface it.
     * Fires the restart dialog once per process; focus loss restarts the
     * grace window, so backgrounding and the notification shade never count.
     */
    private static final Runnable freezeTick = new Runnable() {
        @Override
        public void run() {
            long now = SystemClock.elapsedRealtime();
            Activity a = gameActivity();
            if (a == null || !a.hasWindowFocus()) {
                resumedMs = 0;
            } else if (resumedMs == 0) {
                resumedMs = now;
            }
            long lua = lastLuaMs;
            if (!stuckShown && resumedMs != 0 && lua != 0
                    && now - resumedMs > STUCK_MS && now - lua > STUCK_MS) {
                stuckShown = true;
                MwLog.d("ModMenu", "msr|java_wd fire lua quiet " + (now - lua) + "ms");
                showStuckDialog();
            }
            MAIN.postDelayed(this, 5000);
        }
    };

    // Its own window, so it draws over a frozen engine; the java main thread
    // is alive in every freeze seen so far.
    private static void showStuckDialog() {
        final Activity a = gameActivity();
        if (a == null) {
            MwLog.d("ModMenu", "msr|java_wd no window for dialog");
            return;
        }
        try {
            new AlertDialog.Builder(a)
                    .setTitle(I18n.t(a, "mod_stuck_title"))
                    .setMessage(I18n.t(a, "mod_stuck_body"))
                    .setPositiveButton(I18n.t(a, "mod_restart_now"),
                            new DialogInterface.OnClickListener() {
                                @Override
                                public void onClick(DialogInterface dialog, int which) {
                                    restartGame(appCtx != null ? appCtx : a);
                                }
                            })
                    .setNegativeButton(I18n.t(a, "mod_restart_later"), null)
                    .show();
        } catch (RuntimeException e) {
            MwLog.d("ModMenu", "msr|java_wd dialog failed: " + e);
        }
    }
}
