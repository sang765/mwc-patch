.class final Lmodmenu/ShakeOpen;
.super Ljava/lang/Object;
.source "ShakeOpen.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final SETTLE_G:F = 11.0f

.field private static final SHAKE_G:F = 14.0f

.field private static instance:Lmodmenu/ShakeOpen;


# instance fields
.field private final main:Landroid/os/Handler;

.field private spiked:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lmodmenu/ShakeOpen;->main:Landroid/os/Handler;

    .line 40
    return-void
.end method

.method private open()V
    .locals 3

    .line 87
    invoke-static {}, Lmodmenu/ModMenu;->gameActivity()Landroid/app/Activity;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lmodmenu/ModMenuSheet;->showing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 95
    const-string v1, "ModMenu"

    const-string v2, "shake: opening menu on game window"

    invoke-static {v1, v2}, Lmodmenu/MwLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmodmenu/ModMenuSheet;->show(Landroid/app/Activity;Z)Lmodmenu/ModMenuSheet;

    .line 98
    :cond_1
    return-void

    .line 90
    :cond_2
    :goto_0
    return-void
.end method

.method static declared-synchronized start(Landroid/content/Context;)V
    .locals 5

    const-class v0, Lmodmenu/ShakeOpen;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lmodmenu/ShakeOpen;->instance:Lmodmenu/ShakeOpen;

    if-nez v1, :cond_4

    if-nez p0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "sensor"

    .line 48
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    if-nez p0, :cond_1

    .line 50
    monitor-exit v0

    return-void

    .line 52
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {p0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    if-nez v2, :cond_2

    .line 54
    monitor-exit v0

    return-void

    .line 56
    :cond_2
    :try_start_2
    new-instance v3, Lmodmenu/ShakeOpen;

    invoke-direct {v3}, Lmodmenu/ShakeOpen;-><init>()V

    .line 59
    iget-object v4, v3, Lmodmenu/ShakeOpen;->main:Landroid/os/Handler;

    invoke-virtual {p0, v3, v2, v1, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p0, :cond_3

    .line 61
    monitor-exit v0

    return-void

    .line 63
    :cond_3
    :try_start_3
    sput-object v3, Lmodmenu/ShakeOpen;->instance:Lmodmenu/ShakeOpen;

    .line 64
    const-string p0, "ModMenu"

    const-string v1, "shake-to-open armed"

    invoke-static {p0, v1}, Lmodmenu/MwLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    monitor-exit v0

    return-void

    .line 45
    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    .line 43
    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    .line 83
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 69
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget p1, p1, v4

    .line 70
    mul-float v0, v0, v0

    mul-float v2, v2, v2

    add-float/2addr v0, v2

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float p1, v4

    .line 71
    iget-boolean v0, p0, Lmodmenu/ShakeOpen;->spiked:Z

    if-nez v0, :cond_0

    .line 72
    const/high16 v0, 0x41600000    # 14.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 73
    iput-boolean v3, p0, Lmodmenu/ShakeOpen;->spiked:Z

    .line 74
    invoke-direct {p0}, Lmodmenu/ShakeOpen;->open()V

    goto :goto_0

    .line 76
    :cond_0
    const/high16 v0, 0x41300000    # 11.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    .line 78
    iput-boolean v1, p0, Lmodmenu/ShakeOpen;->spiked:Z

    .line 80
    :cond_1
    :goto_0
    return-void
.end method
