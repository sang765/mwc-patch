.class public final Lmodmenu/ModMenu;
.super Ljava/lang/Object;
.source "ModMenu.java"


# static fields
.field private static final CHAT_HOOK_SCRIPT:Ljava/lang/String; = "(function() if _G.__bi_chat then return end pcall(function() local h=GetInst(\'ChatHelper\') if h==nil then return end local owner=h local mt=getmetatable(h) if mt~=nil and type(mt.__index)==\'table\' and type(mt.__index.OpenChatView)==\'function\' then owner=mt.__index end if owner.__bi_chat then return end local orig=owner.OpenChatView if type(orig)~=\'function\' then return end owner.OpenChatView=function(self,...) local r=orig(self,...) pcall(function() InvocationBuilder():setClassName(\'modmenu/ModMenu\') :setMethodName(\'onChatOpened\'):setSignature(\'()V\') :build():invokeStatic() end) return r end owner.__bi_chat=true _G.__bi_chat=true end) end)"

.field private static final CHAT_HOOK_TRIES:I = 0x6

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

    .line 49
    const/4 v0, 0x7

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lmodmenu/ModMenu;->RETRY_MS:[J

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    .line 92
    const/4 v0, 0x1

    sput-boolean v0, Lmodmenu/ModMenu;->webBlocked:Z

    .line 93
    sput-boolean v0, Lmodmenu/ModMenu;->hwidSpoof:Z

    .line 94
    sput-boolean v0, Lmodmenu/ModMenu;->rewardBypass:Z

    .line 95
    sput-boolean v0, Lmodmenu/ModMenu;->antiTrack:Z

    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lmodmenu/ModMenu;->game:Ljava/lang/ref/WeakReference;

    .line 486
    new-instance v0, Lmodmenu/ModMenu$6;

    invoke-direct {v0}, Lmodmenu/ModMenu$6;-><init>()V

    sput-object v0, Lmodmenu/ModMenu;->freezeTick:Ljava/lang/Runnable;

    return-void

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

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lmodmenu/ModMenu;->beginNotify(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .line 38
    invoke-static {}, Lmodmenu/ModMenu;->installChatHook()V

    return-void
.end method

.method static synthetic access$1000()Landroid/os/Handler;
    .locals 1

    .line 38
    sget-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/content/Context;
    .locals 1

    .line 38
    sget-object v0, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 38
    invoke-static {}, Lmodmenu/ModMenu;->scheduleChatHookRetry()V

    return-void
.end method

.method static synthetic access$300()J
    .locals 2

    .line 38
    sget-wide v0, Lmodmenu/ModMenu;->lastBetterInputMs:J

    return-wide v0
.end method

.method static synthetic access$302(J)J
    .locals 0

    .line 38
    sput-wide p0, Lmodmenu/ModMenu;->lastBetterInputMs:J

    return-wide p0
.end method

.method static synthetic access$400()V
    .locals 0

    .line 38
    invoke-static {}, Lmodmenu/ModMenu;->tryPost()V

    return-void
.end method

.method static synthetic access$500()V
    .locals 0

    .line 38
    invoke-static {}, Lmodmenu/ModMenu;->scheduleRetry()V

    return-void
.end method

.method static synthetic access$600()J
    .locals 2

    .line 38
    sget-wide v0, Lmodmenu/ModMenu;->resumedMs:J

    return-wide v0
.end method

.method static synthetic access$602(J)J
    .locals 0

    .line 38
    sput-wide p0, Lmodmenu/ModMenu;->resumedMs:J

    return-wide p0
.end method

.method static synthetic access$700()J
    .locals 2

    .line 38
    sget-wide v0, Lmodmenu/ModMenu;->lastLuaMs:J

    return-wide v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .line 38
    sget-boolean v0, Lmodmenu/ModMenu;->stuckShown:Z

    return v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    .line 38
    sput-boolean p0, Lmodmenu/ModMenu;->stuckShown:Z

    return p0
.end method

.method static synthetic access$900()V
    .locals 0

    .line 38
    invoke-static {}, Lmodmenu/ModMenu;->showStuckDialog()V

    return-void
.end method

.method private static activityIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;
    .locals 2

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmodmenu/ModMenuActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    const/high16 v1, 0x30000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 195
    const-string v1, "open_ids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    .line 196
    nop

    .line 197
    const/high16 v0, 0xc000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static beginNotify(Landroid/app/Activity;)V
    .locals 2

    .line 431
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lmodmenu/Api33;->canPost(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 432
    invoke-static {p0}, Lmodmenu/Api33;->request(Landroid/app/Activity;)V

    .line 434
    :cond_0
    invoke-static {}, Lmodmenu/ModMenu;->tryPost()V

    .line 435
    invoke-static {}, Lmodmenu/ModMenu;->scheduleRetry()V

    .line 436
    return-void
.end method

.method static gameActivity()Landroid/app/Activity;
    .locals 2

    .line 165
    sget-object v0, Lmodmenu/ModMenu;->game:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 166
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    return-object v0

    .line 167
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static installChatHook()V
    .locals 3

    .line 317
    invoke-static {}, Lmodmenu/ModMenu;->gameActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 318
    return-void

    .line 321
    :cond_0
    :try_start_0
    const-string v0, "(function() if _G.__bi_chat then return end pcall(function() local h=GetInst(\'ChatHelper\') if h==nil then return end local owner=h local mt=getmetatable(h) if mt~=nil and type(mt.__index)==\'table\' and type(mt.__index.OpenChatView)==\'function\' then owner=mt.__index end if owner.__bi_chat then return end local orig=owner.OpenChatView if type(orig)~=\'function\' then return end owner.OpenChatView=function(self,...) local r=orig(self,...) pcall(function() InvocationBuilder():setClassName(\'modmenu/ModMenu\') :setMethodName(\'onChatOpened\'):setSignature(\'()V\') :build():invokeStatic() end) return r end owner.__bi_chat=true _G.__bi_chat=true end) end)"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/appplay/lib/CommonNatives;->javaCallLuaEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const-string v1, "ModMenu"

    const-string v2, "chat hook install failed"

    invoke-static {v1, v2, v0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 325
    :goto_0
    return-void
.end method

.method public static isAntiTrack()Z
    .locals 1

    .line 250
    sget-boolean v0, Lmodmenu/ModMenu;->antiTrack:Z

    return v0
.end method

.method public static isHwidAutoRotate()Z
    .locals 1

    .line 254
    sget-boolean v0, Lmodmenu/ModMenu;->hwidAutoRotate:Z

    return v0
.end method

.method public static isRewardBypass()Z
    .locals 1

    .line 246
    sget-boolean v0, Lmodmenu/ModMenu;->rewardBypass:Z

    return v0
.end method

.method public static isSpoofOn()Z
    .locals 1

    .line 242
    sget-boolean v0, Lmodmenu/ModMenu;->hwidSpoof:Z

    return v0
.end method

.method public static isUnsafe()Z
    .locals 1

    .line 262
    sget-boolean v0, Lmodmenu/ModMenu;->unsafe:Z

    return v0
.end method

.method public static isWebBlocked()Z
    .locals 1

    .line 238
    sget-boolean v0, Lmodmenu/ModMenu;->webBlocked:Z

    return v0
.end method

.method private static legacyBuild(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 2

    .line 458
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    invoke-virtual {v0, p0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 460
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    sget-object p1, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    .line 461
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 462
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 463
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 458
    return-object p0
.end method

.method public static loadPrefs(Landroid/content/Context;)V
    .locals 3

    .line 412
    sget-boolean v0, Lmodmenu/ModMenu;->loaded:Z

    if-eqz v0, :cond_0

    .line 413
    return-void

    .line 415
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    .line 416
    sget-object p0, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 417
    const-string v0, "webview"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmodmenu/ModMenu;->webBlocked:Z

    .line 418
    const-string v0, "hwid"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmodmenu/ModMenu;->hwidSpoof:Z

    .line 419
    const-string v0, "reward"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmodmenu/ModMenu;->rewardBypass:Z

    .line 420
    const-string v0, "antitrack"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmodmenu/ModMenu;->antiTrack:Z

    .line 421
    const-string v0, "hwid_auto"

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lmodmenu/ModMenu;->hwidAutoRotate:Z

    .line 422
    const-string v0, "unsafe"

    invoke-interface {p0, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    sput-boolean p0, Lmodmenu/ModMenu;->unsafe:Z

    .line 423
    sput-boolean v1, Lmodmenu/ModMenu;->loaded:Z

    .line 424
    return-void
.end method

.method static menuIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;
    .locals 2

    .line 180
    invoke-static {}, Lmodmenu/ModMenu;->gameActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lmodmenu/ModMenuReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 182
    const-string v1, "open_ids"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    .line 183
    nop

    .line 184
    const/high16 v0, 0xc000000

    invoke-static {p0, p1, p2, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0

    .line 186
    :cond_0
    invoke-static {p0, p1, p2}, Lmodmenu/ModMenu;->activityIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static noteLuaAlive()V
    .locals 2

    .line 272
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lmodmenu/ModMenu;->lastLuaMs:J

    .line 276
    sget-boolean v0, Lmodmenu/ModMenu;->chatHookRequested:Z

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x1

    sput-boolean v0, Lmodmenu/ModMenu;->chatHookRequested:Z

    .line 278
    sget-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    new-instance v1, Lmodmenu/ModMenu$2;

    invoke-direct {v1}, Lmodmenu/ModMenu$2;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 286
    :cond_0
    return-void
.end method

.method private static notif(Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 5

    .line 204
    sget-object v0, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    const-string v1, "mod_notif_title"

    invoke-static {v0, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    sget-object v1, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    const-string v2, "mod_notif_text"

    invoke-static {v1, v2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    sget-object v2, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    .line 207
    const-string v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 208
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 209
    sget-object v3, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    invoke-static {v3, v2, v0, v1, p0}, Lmodmenu/Api26;->build(Landroid/content/Context;Landroid/app/NotificationManager;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p0

    goto :goto_0

    .line 210
    :cond_0
    invoke-static {v0, v1, p0}, Lmodmenu/ModMenu;->legacyBuild(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p0

    .line 208
    :goto_0
    return-object p0
.end method

.method public static onAppCreate(Landroid/content/Context;)V
    .locals 4

    .line 127
    invoke-static {p0}, Lmodmenu/MwLog;->init(Landroid/content/Context;)V

    .line 128
    invoke-static {p0}, Lmodmenu/ModMenu;->loadPrefs(Landroid/content/Context;)V

    .line 130
    sget-boolean v0, Lmodmenu/ModMenu;->hwidAutoRotate:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lmodmenu/ModMenu;->bootRotated:Z

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x1

    sput-boolean v0, Lmodmenu/ModMenu;->bootRotated:Z

    .line 132
    invoke-static {p0}, Lmodmenu/ModMenu;->rotateHwid(Landroid/content/Context;)V

    .line 136
    :cond_0
    invoke-static {p0}, Lmodmenu/CrashHandler;->install(Landroid/content/Context;)V

    .line 139
    sget-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    sget-object v1, Lmodmenu/ModMenu;->freezeTick:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 142
    invoke-static {p0}, Lmodmenu/ShakeOpen;->start(Landroid/content/Context;)V

    .line 143
    return-void
.end method

.method public static onChatOpened()V
    .locals 2

    .line 294
    sget-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    new-instance v1, Lmodmenu/ModMenu$3;

    invoke-direct {v1}, Lmodmenu/ModMenu$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    return-void
.end method

.method public static onGameStart(Landroid/app/Activity;)V
    .locals 2

    .line 147
    invoke-static {p0}, Lmodmenu/ModMenu;->loadPrefs(Landroid/content/Context;)V

    .line 150
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lmodmenu/ModMenu;->game:Ljava/lang/ref/WeakReference;

    .line 151
    sget-boolean v0, Lmodmenu/ModMenu;->notifyStarted:Z

    if-eqz v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lmodmenu/ModMenu;->notifyStarted:Z

    .line 155
    sget-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    new-instance v1, Lmodmenu/ModMenu$1;

    invoke-direct {v1, p0}, Lmodmenu/ModMenu$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    return-void
.end method

.method private static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 427
    const-string v0, "mw_mod_menu"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method static repostForActivity(Z)V
    .locals 4

    .line 223
    const-string v0, "ModMenu"

    sget-object v1, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 224
    return-void

    .line 227
    :cond_0
    :try_start_0
    sget-object v1, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    const-string v2, "notification"

    .line 228
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 229
    sget-object v2, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Lmodmenu/ModMenu;->activityIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-static {p0}, Lmodmenu/ModMenu;->notif(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p0

    const/16 v2, 0x42f

    invoke-virtual {v1, v2, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 230
    const-string p0, "notification re-posted for a direct activity tap"

    invoke-static {v0, p0}, Lmodmenu/MwLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_0

    .line 231
    :catch_0
    move-exception p0

    .line 232
    const-string v1, "notification re-post failed"

    invoke-static {v0, v1, p0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    :goto_0
    return-void
.end method

.method public static restartGame(Landroid/content/Context;)V
    .locals 6

    .line 398
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 399
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 400
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 401
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 404
    :cond_0
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    and-long/2addr v2, v4

    long-to-int v3, v2

    const/high16 v2, 0x44000000    # 512.0f

    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 407
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x190

    add-long/2addr v2, v4

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 408
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    .line 409
    return-void

    .line 402
    :cond_1
    :goto_0
    return-void
.end method

.method public static rotateHwid(Landroid/content/Context;)V
    .locals 3

    .line 387
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 388
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

    .line 389
    return-void
.end method

.method private static scheduleChatHookRetry()V
    .locals 4

    .line 328
    sget v0, Lmodmenu/ModMenu;->chatHookTries:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lmodmenu/ModMenu;->chatHookTries:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 329
    return-void

    .line 331
    :cond_0
    sget-object v0, Lmodmenu/ModMenu;->MAIN:Landroid/os/Handler;

    new-instance v1, Lmodmenu/ModMenu$4;

    invoke-direct {v1}, Lmodmenu/ModMenu$4;-><init>()V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 338
    return-void
.end method

.method private static scheduleRetry()V
    .locals 5

    .line 467
    sget-boolean v0, Lmodmenu/ModMenu;->posted:Z

    if-nez v0, :cond_1

    sget v0, Lmodmenu/ModMenu;->retryIdx:I

    sget-object v1, Lmodmenu/ModMenu;->RETRY_MS:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 470
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

    .line 477
    return-void

    .line 468
    :cond_1
    :goto_0
    return-void
.end method

.method public static setAntiTrack(Landroid/content/Context;Z)V
    .locals 1

    .line 358
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "antitrack"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    sput-boolean p1, Lmodmenu/ModMenu;->antiTrack:Z

    .line 360
    return-void
.end method

.method public static setHwidAutoRotate(Landroid/content/Context;Z)V
    .locals 1

    .line 363
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "hwid_auto"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 364
    sput-boolean p1, Lmodmenu/ModMenu;->hwidAutoRotate:Z

    .line 365
    return-void
.end method

.method public static setHwidSpoof(Landroid/content/Context;Z)V
    .locals 1

    .line 348
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "hwid"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 349
    sput-boolean p1, Lmodmenu/ModMenu;->hwidSpoof:Z

    .line 350
    return-void
.end method

.method public static setRewardBypass(Landroid/content/Context;Z)V
    .locals 1

    .line 353
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "reward"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 354
    sput-boolean p1, Lmodmenu/ModMenu;->rewardBypass:Z

    .line 355
    return-void
.end method

.method public static setUnsafe(Landroid/content/Context;Z)V
    .locals 1

    .line 368
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "unsafe"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 369
    sput-boolean p1, Lmodmenu/ModMenu;->unsafe:Z

    .line 370
    return-void
.end method

.method public static setWebBlocked(Landroid/content/Context;Z)V
    .locals 1

    .line 343
    invoke-static {p0}, Lmodmenu/ModMenu;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "webview"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    sput-boolean p1, Lmodmenu/ModMenu;->webBlocked:Z

    .line 345
    return-void
.end method

.method private static showStuckDialog()V
    .locals 5

    .line 510
    invoke-static {}, Lmodmenu/ModMenu;->gameActivity()Landroid/app/Activity;

    move-result-object v0

    .line 511
    const-string v1, "ModMenu"

    if-nez v0, :cond_0

    .line 512
    const-string v0, "msr|java_wd no window for dialog"

    invoke-static {v1, v0}, Lmodmenu/MwLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void

    .line 516
    :cond_0
    :try_start_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "mod_stuck_title"

    .line 517
    invoke-static {v0, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "mod_stuck_body"

    .line 518
    invoke-static {v0, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "mod_restart_now"

    .line 519
    invoke-static {v0, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lmodmenu/ModMenu$7;

    invoke-direct {v4, v0}, Lmodmenu/ModMenu$7;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "mod_restart_later"

    .line 526
    invoke-static {v0, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 527
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    .line 529
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

    .line 531
    :goto_0
    return-void
.end method

.method public static spoofValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 378
    sget-object v0, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    .line 379
    if-nez v0, :cond_0

    .line 380
    return-object p0

    .line 382
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

    .line 439
    sget-boolean v0, Lmodmenu/ModMenu;->posted:Z

    if-eqz v0, :cond_0

    .line 440
    return-void

    .line 442
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

    .line 443
    sget-boolean v0, Lmodmenu/ModMenu;->deniedLogged:Z

    if-nez v0, :cond_1

    .line 444
    sput-boolean v3, Lmodmenu/ModMenu;->deniedLogged:Z

    .line 445
    const-string v0, "notification not posted: POST_NOTIFICATIONS denied"

    invoke-static {v2, v0}, Lmodmenu/MwLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_1
    return-void

    .line 449
    :cond_2
    sget-object v0, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    .line 450
    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 451
    sget-object v1, Lmodmenu/ModMenu;->appCtx:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v1, v4, v4}, Lmodmenu/ModMenu;->menuIntent(Landroid/content/Context;IZ)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-static {v1}, Lmodmenu/ModMenu;->notif(Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v1

    const/16 v4, 0x42f

    invoke-virtual {v0, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 452
    sput-boolean v3, Lmodmenu/ModMenu;->posted:Z

    .line 453
    const-string v0, "menu notification posted"

    invoke-static {v2, v0}, Lmodmenu/MwLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method
