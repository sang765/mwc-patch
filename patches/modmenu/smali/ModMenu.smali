.class public final Lmodmenu/ModMenu;
.super Ljava/lang/Object;
.source "ModMenu.java"


# static fields
.field private static final CHAT_HOOK_TRIES:I = 0x6

.field private static final CHAT_SIG:Ljava/lang/String; = "bi_chat.sig"

.field private static final KEY_ANTITRACK:Ljava/lang/String; = "antitrack"

.field private static final KEY_GEN:Ljava/lang/String; = "hwid_gen"

.field private static final KEY_GEN_AUTO:Ljava/lang/String; = "hwid_auto"

.field private static final KEY_HWID:Ljava/lang/String; = "hwid"

.field private static final KEY_REWARD:Ljava/lang/String; = "reward"

.field private static final KEY_UNSAFE:Ljava/lang/String; = "unsafe"

.field private static final KEY_WEB:Ljava/lang/String; = "webview"

.field private static final MAIN:Landroid/os/Handler;

.field private static final NOTIF_ID:I = 0x42f

.field private static final PREF_NAME:Ljava/lang/String; = "mw_mod_menu"

.field private static final RETRY_MS:[J

.field private static final STUCK_MS:J = 0xea60L

.field private static volatile antiTrack:Z

.field private static volatile appCtx:Landroid/content/Context;

.field private static bootRotated:Z

.field private static chatHookRequested:Z

.field private static chatHookTries:I

.field private static final chatSignalTick:Ljava/lang/Runnable;

.field private static deniedLogged:Z

.field private static final freezeTick:Ljava/lang/Runnable;

.field private static game:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile hwidAutoRotate:Z

.field private static volatile hwidSpoof:Z

.field private static volatile lastBetterInputMs:J

.field private static volatile lastLuaMs:J

.field private static loaded:Z

.field private static notifyStarted:Z

.field private static posted:Z

.field private static resumedMs:J

.field private static retryIdx:I

.field private static volatile rewardBypass:Z

.field private static stuckShown:Z

.field private static volatile unsafe:Z

.field private static volatile webBlocked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lmodmenu/ModMenu;->RETRY_MS:[J

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lmodmenu/ModMenu;->webBlocked:Z

    .line 62
    sput-boolean v0, Lmodmenu/ModMenu;->hwidSpoof:Z

    .line 63
    sput-boolean v0, Lmodmenu/ModMenu;->rewardBypass:Z

    .line 64
    sput-boolean v0, Lmodmenu/ModMenu;->antiTrack:Z

    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lmodmenu/ModMenu;->game:Ljava/lang/ref/WeakReference;

    .line 326
    new-instance v0, Lmodmenu/ModMenu$4;

    invoke-direct {v0}, Lmodmenu/ModMenu$4;-><init>()V

    sput-object v0, Lmodmenu/ModMenu;->chatSignalTick:Ljava/lang/Runnable;

    .line 560
    new-instance v0, Lmodmenu/ModMenu$6;

    invoke-direct {v0}, Lmodmenu/ModMenu$6;-><init>()V

    sput-object v0, Lmodmenu/ModMenu;->freezeTick:Ljava/lang/Runnable;

    return-void

    nop

    :array_0
    .array-data 8
        0x7d0
        0x1388
        0x2710
        0x4e20
        0x9c40
        0x13880
        0x27100
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0

    .line 39
    invoke-static {p0}, Lmodmenu/ModMenu;->beginNotify(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 39
    invoke-static {}, Lmodmenu/ModMenu;->installChatHook()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .line 39
    sget-boolean v0, Lmodmenu/ModMenu;->stuckShown:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    .line 39
    sput-boolean p0, Lmodmenu/ModMenu;->stuckShown:Z

    return p0
.end method

.method static synthetic access$1100()V
    .locals 0

    .line 39
    invoke-static {}, Lmodmenu/ModMenu;->showStuckDialog()V

    return-void
.end method

.method static synthetic access$1200()Landroid/content/Context;
    .locals 1

    .line 39
    sget-object v0, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 39
    invoke-static {}, Lmodmenu/ModMenu;->scheduleChatHookRetry()V

    return-void
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .line 39
    invoke-static {}, Lmodmenu/ModMenu;->chatSignalPaths()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400()V
    .locals 0

    .line 39
    invoke-static {}, Lmodmenu/ModMenu;->onChatOpened()V

    return-void
.end method

.method static synthetic access$500()Landroid/os/Handler;
    .locals 1

    .line 39
    sget-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()V
    .locals 0

    .line 39
    invoke-static {}, Lmodmenu/ModMenu;->tryPost()V

    return-void
.end method

.method static synthetic access$700()V
    .locals 0

    .line 39
    invoke-static {}, Lmodmenu/ModMenu;->scheduleRetry()V

    return-void
.end method

.method static synthetic access$800()J
    .locals 2

    .line 39
    sget-wide v0, Lmodmenu/ModMenu;->resumedMs:J

    return-wide v0
.end method

.method static synthetic access$802(J)J
    .locals 0

    .line 39
    sput-wide p0, Lmodmenu/ModMenu;->resumedMs:J

    return-wide p0
.end method

.method static synthetic access$900()J
    .locals 2

    .line 39
    sget-wide v0, Lmodmenu/ModMenu;->lastLuaMs:J

    return-wide v0
.end method

.method private static activityIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;
    .locals 2

    .line 172
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmodmenu/ModMenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 174
    const-string v1, "open_ids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    .line 175
    nop

    .line 176
    const/high16 v0, 0xc000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static beginNotify(Landroid/app/Activity;)V
    .locals 2

    .line 505
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lmodmenu/Api33;->canPost(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 506
    invoke-static {p0}, Lmodmenu/Api33;->request(Landroid/app/Activity;)V

    .line 508
    :cond_0
    invoke-static {}, Lmodmenu/ModMenu;->tryPost()V

    .line 509
    invoke-static {}, Lmodmenu/ModMenu;->scheduleRetry()V

    .line 510
    return-void
.end method

.method private static chatHookScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(function() if _G.__bi_chat then return end pcall(function() local h=GetInst(\'ChatHelper\') if h==nil then return end local owner=h local mt=getmetatable(h) if mt~=nil and type(mt.__index)==\'table\' and type(mt.__index.OpenChatView)==\'function\' then owner=mt.__index end if owner.__bi_chat then return end local orig=owner.OpenChatView if type(orig)~=\'function\' then return end local s1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 390
    invoke-static {p0}, Lmodmenu/ModMenu;->luaStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\' local s2=\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 391
    invoke-static {p1}, Lmodmenu/ModMenu;->luaStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' owner.OpenChatView=function(self,...) local r=orig(self,...) pcall(function() local function t(p) local ok,fh=pcall(function() return io.open(p,\'w\') end) if ok and fh~=nil then pcall(function() fh:close() end) end end t(s1) if s2~=s1 then t(s2) end end) return r end owner.__bi_chat=true _G.__bi_chat=true end) end)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 378
    return-object p0
.end method

.method private static chatSignalPaths()[Ljava/lang/String;
    .locals 5

    .line 349
    const-string v0, "bi_chat.sig"

    sget-object v1, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    .line 350
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 351
    return-object v2

    .line 354
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 355
    if-nez v3, :cond_1

    .line 356
    return-object v2

    .line 358
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 359
    invoke-virtual {v1, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 360
    if-nez v1, :cond_2

    .line 361
    filled-new-array {v3, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 363
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 364
    :catch_0
    move-exception v0

    .line 365
    const-string v1, "ModMenu"

    const-string v3, "chat signal paths failed"

    invoke-static {v1, v3, v0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 366
    return-object v2
.end method

.method static gameActivity()Landroid/app/Activity;
    .locals 2

    .line 144
    sget-object v0, Lmodmenu/ModMenu;->game:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 145
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 148
    :cond_0
    return-object v0

    .line 146
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static installChatHook()V
    .locals 4

    .line 291
    invoke-static {}, Lmodmenu/ModMenu;->gameActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 292
    return-void

    .line 294
    :cond_0
    invoke-static {}, Lmodmenu/ModMenu;->chatSignalPaths()[Ljava/lang/String;

    move-result-object v0

    .line 295
    if-nez v0, :cond_1

    .line 296
    return-void

    .line 299
    :cond_1
    const/4 v1, 0x0

    :try_start_0
    aget-object v2, v0, v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v2, v0}, Lmodmenu/ModMenu;->chatHookScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/appplay/lib/CommonNatives;->javaCallLuaEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    goto :goto_0

    .line 301
    :catch_0
    move-exception v0

    .line 302
    const-string v1, "ModMenu"

    const-string v2, "chat hook install failed"

    invoke-static {v1, v2, v0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 304
    :goto_0
    return-void
.end method

.method public static isAntiTrack()Z
    .locals 1

    .line 229
    sget-boolean v0, Lmodmenu/ModMenu;->antiTrack:Z

    return v0
.end method

.method public static isHwidAutoRotate()Z
    .locals 1

    .line 233
    sget-boolean v0, Lmodmenu/ModMenu;->hwidAutoRotate:Z

    return v0
.end method

.method public static isRewardBypass()Z
    .locals 1

    .line 225
    sget-boolean v0, Lmodmenu/ModMenu;->rewardBypass:Z

    return v0
.end method

.method public static isSpoofOn()Z
    .locals 1

    .line 221
    sget-boolean v0, Lmodmenu/ModMenu;->hwidSpoof:Z

    return v0
.end method

.method public static isUnsafe()Z
    .locals 1

    .line 241
    sget-boolean v0, Lmodmenu/ModMenu;->unsafe:Z

    return v0
.end method

.method public static isWebBlocked()Z
    .locals 1

    .line 217
    sget-boolean v0, Lmodmenu/ModMenu;->webBlocked:Z

    return v0
.end method

.method private static legacyBuild(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 2

    .line 532
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 533
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 534
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    sget-object p1, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    .line 535
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 536
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 537
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 532
    return-object p0
.end method

.method public static loadPrefs(Landroid/content/Context;)V
    .locals 3

    .line 486
    sget-boolean v0, Lmodmenu/ModMenu;->loaded:Z

    if-eqz v0, :cond_0

    .line 487
    return-void

    .line 489
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    .line 490
    sget-object p0, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 491
    const-string v0, "webview"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmodmenu/ModMenu;->webBlocked:Z

    .line 492
    const-string v0, "hwid"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmodmenu/ModMenu;->hwidSpoof:Z

    .line 493
    const-string v0, "reward"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmodmenu/ModMenu;->rewardBypass:Z

    .line 494
    const-string v0, "antitrack"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmodmenu/ModMenu;->antiTrack:Z

    .line 495
    const-string v0, "hwid_auto"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmodmenu/ModMenu;->hwidAutoRotate:Z

    .line 496
    const-string v0, "unsafe"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lmodmenu/ModMenu;->unsafe:Z

    .line 497
    sput-boolean v1, Lmodmenu/ModMenu;->loaded:Z

    .line 498
    return-void
.end method

.method private static luaStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 411
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static menuIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;
    .locals 2

    .line 159
    invoke-static {}, Lmodmenu/ModMenu;->gameActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmodmenu/ModMenuReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    const-string v1, "open_ids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    .line 162
    nop

    .line 163
    const/high16 v0, 0xc000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 165
    :cond_0
    invoke-static {p0, p1, p2}, Lmodmenu/ModMenu;->activityIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static noteLuaAlive()V
    .locals 2

    .line 251
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lmodmenu/ModMenu;->lastLuaMs:J

    .line 255
    sget-boolean v0, Lmodmenu/ModMenu;->chatHookRequested:Z

    if-nez v0, :cond_0

    .line 256
    const/4 v0, 0x1

    sput-boolean v0, Lmodmenu/ModMenu;->chatHookRequested:Z

    .line 257
    sget-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    new-instance v1, Lmodmenu/ModMenu$2;

    invoke-direct {v1}, Lmodmenu/ModMenu$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    :cond_0
    return-void
.end method

.method private static notif(Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 5

    .line 183
    sget-object v0, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    const-string v1, "mod_notif_title"

    invoke-static {v0, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    sget-object v1, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    const-string v2, "mod_notif_text"

    invoke-static {v1, v2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 185
    sget-object v2, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    .line 186
    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 187
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 188
    sget-object v3, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    invoke-static {v3, v2, v0, v1, p0}, Lmodmenu/Api26;->build(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p0

    goto :goto_0

    .line 189
    :cond_0
    invoke-static {v0, v1, p0}, Lmodmenu/ModMenu;->legacyBuild(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p0

    .line 187
    :goto_0
    return-object p0
.end method

.method public static onAppCreate(Landroid/content/Context;)V
    .locals 4

    .line 96
    invoke-static {p0}, Lmodmenu/MwLog;->init(Landroid/content/Context;)V

    .line 97
    invoke-static {p0}, Lmodmenu/ModMenu;->loadPrefs(Landroid/content/Context;)V

    .line 99
    sget-boolean v0, Lmodmenu/ModMenu;->hwidAutoRotate:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmodmenu/ModMenu;->bootRotated:Z

    if-nez v0, :cond_0

    .line 100
    const/4 v0, 0x1

    sput-boolean v0, Lmodmenu/ModMenu;->bootRotated:Z

    .line 101
    invoke-static {p0}, Lmodmenu/ModMenu;->rotateHwid(Landroid/content/Context;)V

    .line 105
    :cond_0
    invoke-static {p0}, Lmodmenu/CrashHandler;->install(Landroid/content/Context;)V

    .line 108
    sget-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    sget-object v1, Lmodmenu/ModMenu;->freezeTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 111
    invoke-static {p0}, Lmodmenu/ShakeOpen;->start(Landroid/content/Context;)V

    .line 115
    invoke-static {}, Lmodmenu/ModMenu;->chatSignalPaths()[Ljava/lang/String;

    move-result-object p0

    .line 116
    if-eqz p0, :cond_1

    .line 117
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 118
    new-instance v1, Ljava/io/File;

    aget-object v2, p0, v0

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    :cond_1
    sget-object p0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    sget-object v0, Lmodmenu/ModMenu;->chatSignalTick:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 122
    return-void
.end method

.method private static onChatOpened()V
    .locals 7

    .line 273
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 274
    sget-wide v2, Lmodmenu/ModMenu;->lastBetterInputMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x258

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 275
    return-void

    .line 277
    :cond_0
    sput-wide v0, Lmodmenu/ModMenu;->lastBetterInputMs:J

    .line 278
    invoke-static {}, Lmodmenu/ModMenu;->gameActivity()Landroid/app/Activity;

    move-result-object v0

    .line 279
    if-nez v0, :cond_1

    .line 280
    return-void

    .line 283
    :cond_1
    :try_start_0
    invoke-static {v0}, Lmodmenu/Palette;->of(Landroid/content/Context;)Lmodmenu/Palette;

    move-result-object v1

    invoke-static {v0, v1}, Lmodmenu/BetterInput;->show(Landroid/app/Activity;Lmodmenu/Palette;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    goto :goto_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    const-string v1, "ModMenu"

    const-string v2, "auto better input failed"

    invoke-static {v1, v2, v0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    :goto_0
    return-void
.end method

.method public static onGameStart(Landroid/app/Activity;)V
    .locals 2

    .line 126
    invoke-static {p0}, Lmodmenu/ModMenu;->loadPrefs(Landroid/content/Context;)V

    .line 129
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lmodmenu/ModMenu;->game:Ljava/lang/ref/WeakReference;

    .line 130
    sget-boolean v0, Lmodmenu/ModMenu;->notifyStarted:Z

    if-eqz v0, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lmodmenu/ModMenu;->notifyStarted:Z

    .line 134
    sget-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    new-instance v1, Lmodmenu/ModMenu$1;

    invoke-direct {v1, p0}, Lmodmenu/ModMenu$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    return-void
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 501
    const-string v0, "mw_mod_menu"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static repostForActivity(Z)V
    .locals 4

    .line 202
    const-string v0, "ModMenu"

    sget-object v1, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 203
    return-void

    .line 206
    :cond_0
    :try_start_0
    sget-object v1, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    const-string v2, "notification"

    .line 207
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 208
    sget-object v2, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Lmodmenu/ModMenu;->activityIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {p0}, Lmodmenu/ModMenu;->notif(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p0

    const/16 v2, 0x42f

    invoke-virtual {v1, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 209
    const-string p0, "notification re-posted for a direct activity tap"

    invoke-static {v0, p0}, Lmodmenu/MwLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_0

    .line 210
    :catch_0
    move-exception p0

    .line 211
    const-string v1, "notification re-post failed"

    invoke-static {v0, v1, p0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    :goto_0
    return-void
.end method

.method public static restartGame(Landroid/content/Context;)V
    .locals 6

    .line 472
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 474
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 475
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 478
    :cond_0
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 479
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    long-to-int v3, v2

    const/high16 v2, 0x44000000    # 512.0f

    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x190

    add-long/2addr v2, v4

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 482
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 483
    return-void

    .line 476
    :cond_1
    :goto_0
    return-void
.end method

.method public static rotateHwid(Landroid/content/Context;)V
    .locals 3

    .line 461
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 462
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "hwid_gen"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 463
    return-void
.end method

.method private static scheduleChatHookRetry()V
    .locals 4

    .line 307
    sget v0, Lmodmenu/ModMenu;->chatHookTries:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmodmenu/ModMenu;->chatHookTries:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 308
    return-void

    .line 310
    :cond_0
    sget-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    new-instance v1, Lmodmenu/ModMenu$3;

    invoke-direct {v1}, Lmodmenu/ModMenu$3;-><init>()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    return-void
.end method

.method private static scheduleRetry()V
    .locals 5

    .line 541
    sget-boolean v0, Lmodmenu/ModMenu;->posted:Z

    if-nez v0, :cond_1

    sget v0, Lmodmenu/ModMenu;->retryIdx:I

    sget-object v1, Lmodmenu/ModMenu;->RETRY_MS:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    sget-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    new-instance v1, Lmodmenu/ModMenu$5;

    invoke-direct {v1}, Lmodmenu/ModMenu$5;-><init>()V

    sget-object v2, Lmodmenu/ModMenu;->RETRY_MS:[J

    sget v3, Lmodmenu/ModMenu;->retryIdx:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lmodmenu/ModMenu;->retryIdx:I

    aget-wide v3, v2, v3

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 551
    return-void

    .line 542
    :cond_1
    :goto_0
    return-void
.end method

.method public static setAntiTrack(Landroid/content/Context;Z)V
    .locals 1

    .line 432
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "antitrack"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 433
    sput-boolean p1, Lmodmenu/ModMenu;->antiTrack:Z

    .line 434
    return-void
.end method

.method public static setHwidAutoRotate(Landroid/content/Context;Z)V
    .locals 1

    .line 437
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "hwid_auto"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 438
    sput-boolean p1, Lmodmenu/ModMenu;->hwidAutoRotate:Z

    .line 439
    return-void
.end method

.method public static setHwidSpoof(Landroid/content/Context;Z)V
    .locals 1

    .line 422
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "hwid"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 423
    sput-boolean p1, Lmodmenu/ModMenu;->hwidSpoof:Z

    .line 424
    return-void
.end method

.method public static setRewardBypass(Landroid/content/Context;Z)V
    .locals 1

    .line 427
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "reward"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 428
    sput-boolean p1, Lmodmenu/ModMenu;->rewardBypass:Z

    .line 429
    return-void
.end method

.method public static setUnsafe(Landroid/content/Context;Z)V
    .locals 1

    .line 442
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "unsafe"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 443
    sput-boolean p1, Lmodmenu/ModMenu;->unsafe:Z

    .line 444
    return-void
.end method

.method public static setWebBlocked(Landroid/content/Context;Z)V
    .locals 1

    .line 417
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "webview"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 418
    sput-boolean p1, Lmodmenu/ModMenu;->webBlocked:Z

    .line 419
    return-void
.end method

.method private static showStuckDialog()V
    .locals 5

    .line 584
    invoke-static {}, Lmodmenu/ModMenu;->gameActivity()Landroid/app/Activity;

    move-result-object v0

    .line 585
    const-string v1, "ModMenu"

    if-nez v0, :cond_0

    .line 586
    const-string v0, "msr|java_wd no window for dialog"

    invoke-static {v1, v0}, Lmodmenu/MwLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    return-void

    .line 590
    :cond_0
    :try_start_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "mod_stuck_title"

    .line 591
    invoke-static {v0, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "mod_stuck_body"

    .line 592
    invoke-static {v0, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "mod_restart_now"

    .line 593
    invoke-static {v0, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lmodmenu/ModMenu$7;

    invoke-direct {v4, v0}, Lmodmenu/ModMenu$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "mod_restart_later"

    .line 600
    invoke-static {v0, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 601
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 604
    goto :goto_0

    .line 602
    :catch_0
    move-exception v0

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msr|java_wd dialog failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmodmenu/MwLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    :goto_0
    return-void
.end method

.method public static spoofValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 452
    sget-object v0, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    .line 453
    if-nez v0, :cond_0

    .line 454
    return-object p0

    .line 456
    :cond_0
    invoke-static {v0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hwid_gen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lmodmenu/Hwid;->rotate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static tryPost()V
    .locals 5

    .line 513
    sget-boolean v0, Lmodmenu/ModMenu;->posted:Z

    if-eqz v0, :cond_0

    .line 514
    return-void

    .line 516
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "ModMenu"

    const/4 v3, 0x1

    if-lt v0, v1, :cond_2

    sget-object v0, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    invoke-static {v0}, Lmodmenu/Api33;->canPost(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 517
    sget-boolean v0, Lmodmenu/ModMenu;->deniedLogged:Z

    if-nez v0, :cond_1

    .line 518
    sput-boolean v3, Lmodmenu/ModMenu;->deniedLogged:Z

    .line 519
    const-string v0, "notification not posted: POST_NOTIFICATIONS denied"

    invoke-static {v2, v0}, Lmodmenu/MwLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    :cond_1
    return-void

    .line 523
    :cond_2
    sget-object v0, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    .line 524
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 525
    sget-object v1, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v1, v4, v4}, Lmodmenu/ModMenu;->menuIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v1}, Lmodmenu/ModMenu;->notif(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    const/16 v4, 0x42f

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 526
    sput-boolean v3, Lmodmenu/ModMenu;->posted:Z

    .line 527
    const-string v0, "menu notification posted"

    invoke-static {v2, v0}, Lmodmenu/MwLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    return-void
.end method
