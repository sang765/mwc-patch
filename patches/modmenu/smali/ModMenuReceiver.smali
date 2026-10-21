.class public Lmodmenu/ModMenuReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ModMenuReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 58
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception p0

    .line 60
    const-string p1, "ModMenu"

    const-string v0, "tap toast failed"

    invoke-static {p1, v0, p0}, Lmodmenu/MwLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 29
    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 30
    const-string v1, "open_ids"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 31
    :goto_0
    invoke-static {}, Lmodmenu/ModMenu;->gameActivity()Landroid/app/Activity;

    move-result-object p2

    .line 32
    const-string v1, "mod_tapagain"

    const-string v2, "ModMenu"

    if-nez p2, :cond_1

    .line 33
    const-string p2, "notification tap: no live window, re-posting"

    invoke-static {v2, p2}, Lmodmenu/MwLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-static {v0}, Lmodmenu/ModMenu;->repostForActivity(Z)V

    .line 35
    invoke-static {p1, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmodmenu/ModMenuReceiver;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    return-void

    .line 40
    :cond_1
    invoke-virtual {p2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lmodmenu/ModMenuSheet;->showing()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 41
    const-string p1, "notification tap: sheet already up"

    invoke-static {v2, p1}, Lmodmenu/MwLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void

    .line 44
    :cond_2
    invoke-virtual {p2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v3

    if-nez v3, :cond_3

    .line 47
    const-string p2, "notification tap: window not in front, re-posting"

    invoke-static {v2, p2}, Lmodmenu/MwLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Lmodmenu/ModMenu;->repostForActivity(Z)V

    .line 49
    invoke-static {p1, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmodmenu/ModMenuReceiver;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 50
    return-void

    .line 52
    :cond_3
    const-string p1, "notification tap: showing sheet on game window"

    invoke-static {v2, p1}, Lmodmenu/MwLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p2, v0}, Lmodmenu/ModMenuSheet;->show(Landroid/app/Activity;Z)Lmodmenu/ModMenuSheet;

    .line 54
    return-void
.end method
