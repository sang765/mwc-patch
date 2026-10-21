package modmenu;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;

/**
 * Notification tap: open the menu as a dialog on the live game window.
 *
 * The old entry started ModMenuActivity on top of the game, which paused it
 * - loop, rendering and voice chat all stopped while the sheet was up. A
 * broadcast runs against the already-running game activity instead, so the
 * menu appears over a game that keeps playing. onReceive runs on the main
 * thread, which is where the dialog has to be built.
 *
 * That only works while the game window is live AND in front: a dead
 * window's dialog would land on an activity nobody can see, and the old
 * startActivity fallback here is a notification trampoline Android 12+
 * (targetSdk 34) blocks without a word. Those taps re-post the notification
 * aimed straight at ModMenuActivity instead - a direct getActivity the
 * system fires itself, which is allowed - and toast the one extra tap.
 */
public class ModMenuReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context ctx, Intent intent) {
        boolean openIds = intent != null
                && intent.getBooleanExtra(ModMenuActivity.EXTRA_OPEN_IDS, false);
        Activity host = ModMenu.gameActivity();
        if (host == null) {
            MwLog.i("ModMenu", "notification tap: no live window, re-posting");
            ModMenu.repostForActivity(openIds);
            toast(ctx, I18n.t(ctx, "mod_tapagain"));
            return;
        }
        // a window covered by the sheet's own dialog has lost focus; a tap
        // there is already answered, so leave it alone
        if (!host.hasWindowFocus() && ModMenuSheet.showing()) {
            MwLog.i("ModMenu", "notification tap: sheet already up");
            return;
        }
        if (!host.hasWindowFocus()) {
            // backgrounded game: a dialog on this window would show where
            // the user is not looking - hand the tap to the direct entry
            MwLog.i("ModMenu", "notification tap: window not in front, re-posting");
            ModMenu.repostForActivity(openIds);
            toast(ctx, I18n.t(ctx, "mod_tapagain"));
            return;
        }
        MwLog.i("ModMenu", "notification tap: showing sheet on game window");
        ModMenuSheet.show(host, openIds);
    }

    private static void toast(Context ctx, String msg) {
        try {
            Toast.makeText(ctx, msg, Toast.LENGTH_SHORT).show();
        } catch (RuntimeException e) {
            MwLog.w("ModMenu", "tap toast failed", e);
        }
    }
}
