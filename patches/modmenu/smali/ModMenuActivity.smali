.class public Lmodmenu/ModMenuActivity;
.super Landroid/app/Activity;
.source "ModMenuActivity.java"


# static fields
.field public static final EXTRA_OPEN_IDS:Ljava/lang/String; = "open_ids"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Lmodmenu/ModMenuSheet;->showing()Z

    move-result p1

    const-string v0, "ModMenu"

    if-eqz p1, :cond_0

    .line 27
    const-string p1, "menu activity: sheet already up, finishing"

    invoke-static {v0, p1}, Lmodmenu/MwLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lmodmenu/ModMenuActivity;->finish()V

    .line 29
    return-void

    .line 31
    :cond_0
    const-string p1, "menu activity: opening standalone sheet"

    invoke-static {v0, p1}, Lmodmenu/MwLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lmodmenu/ModMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 35
    invoke-virtual {p0}, Lmodmenu/ModMenuActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "open_ids"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 34
    :goto_0
    invoke-static {p0, v0}, Lmodmenu/ModMenuSheet;->show(Landroid/app/Activity;Z)Lmodmenu/ModMenuSheet;

    .line 36
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Lmodmenu/IdScan;->setListener(Lmodmenu/IdScan$Listener;)V

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 59
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 42
    if-eqz p1, :cond_0

    const-string v0, "open_ids"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    const/4 p1, 0x1

    invoke-static {p0, p1}, Lmodmenu/ModMenuSheet;->show(Landroid/app/Activity;Z)Lmodmenu/ModMenuSheet;

    .line 45
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 52
    invoke-static {p0}, Lmodmenu/IdScan;->menuClosed(Landroid/content/Context;)V

    .line 53
    return-void
.end method
