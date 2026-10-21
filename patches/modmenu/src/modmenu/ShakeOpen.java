package modmenu;

import android.app.Activity;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Handler;
import android.os.Looper;

/**
 * Shake to open the mod menu.
 *
 * The notification is the primary entry, but on some ROMs (MIUI among them)
 * its broadcast tap is dropped before it reaches the receiver, so the menu
 * never opens. The accelerometer needs no inter-process hop - it reads the
 * device directly - so a shake always reaches the running game window. It is
 * a backup entry, not a replacement: the notification still works where the
 * platform delivers it.
 *
 * The listener is registered once against the application context for the life
 * of the process: the sensor outlives any single activity, and re-registering
 * on every recreation would stack listeners. A shake is an acceleration spike
 * past gravity with hysteresis on the way back down, so a still hand never
 * triggers it and the back-swing of one fling does not double-fire; while the
 * sheet is up, further spikes are ignored by the showing() guard.
 */
final class ShakeOpen implements SensorEventListener {
    /** Total acceleration (m/s^2) that counts as a shake; gravity is ~9.8. */
    private static final float SHAKE_G = 14.0f;
    /** Fall below this before another shake may count - hysteresis. */
    private static final float SETTLE_G = 11.0f;

    private static ShakeOpen instance;

    private final Handler main = new Handler(Looper.getMainLooper());
    private boolean spiked;

    private ShakeOpen() {}

    /** Arm the detector once; later calls are no-ops. */
    static synchronized void start(Context ctx) {
        if (instance != null || ctx == null) {
            return;
        }
        SensorManager sm = (SensorManager) ctx.getApplicationContext()
                .getSystemService(Context.SENSOR_SERVICE);
        if (sm == null) {
            return;
        }
        Sensor accel = sm.getDefaultSensor(Sensor.TYPE_ACCELEROMETER);
        if (accel == null) {
            return;
        }
        ShakeOpen listener = new ShakeOpen();
        // a main-looper handler keeps onSensorChanged - and the dialog it may
        // build - on the UI thread no matter which thread the sensor uses
        if (!sm.registerListener(listener, accel,
                SensorManager.SENSOR_DELAY_GAME, listener.main)) {
            return;
        }
        instance = listener;
        MwLog.d("ModMenu", "shake-to-open armed");
    }

    @Override
    public void onSensorChanged(SensorEvent event) {
        float x = event.values[0], y = event.values[1], z = event.values[2];
        float mag = (float) Math.sqrt(x * x + y * y + z * z);
        if (!spiked) {
            if (mag > SHAKE_G) {
                spiked = true;
                open();
            }
        } else if (mag < SETTLE_G) {
            // wait for the hand to settle so the back-swing cannot re-trigger
            spiked = false;
        }
    }

    @Override
    public void onAccuracyChanged(Sensor sensor, int accuracy) {}

    /** Runs on the main thread (registered with the main-looper handler). */
    private void open() {
        Activity host = ModMenu.gameActivity();
        if (host == null || !host.hasWindowFocus()) {
            // backgrounded: a dialog would land where nobody is looking
            return;
        }
        // show() also no-ops when a sheet is already up on this host, so this
        // only keeps the log honest during one fling's extra spikes
        if (!ModMenuSheet.showing()) {
            MwLog.i("ModMenu", "shake: opening menu on game window");
            ModMenuSheet.show(host, false);
        }
    }
}
