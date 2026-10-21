.class Lmodmenu/ModMenu$3;
.super Ljava/lang/Object;
.source "ModMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/ModMenu;->onChatOpened()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 297
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 298
    invoke-static {}, Lmodmenu/ModMenu;->access$300()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x258

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    .line 299
    return-void

    .line 301
    :cond_0
    invoke-static {v0, v1}, Lmodmenu/ModMenu;->access$302(J)J

    .line 302
    invoke-static {}, Lmodmenu/ModMenu;->gameActivity()Landroid/app/Activity;

    move-result-object v0

    .line 303
    if-nez v0, :cond_1

    .line 304
    return-void

    .line 307
    :cond_1
    :try_start_0
    invoke-static {v0}, Lmodmenu/Palette;->of(Landroid/content/Context;)Lmodmenu/Palette;

    move-result-object v1

    invoke-static {v0, v1}, Lmodmenu/BetterInput;->show(Landroid/app/Activity;Lmodmenu/Palette;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    goto :goto_0

    .line 308
    :catch_0
    move-exception v0

    .line 309
    const-string v1, "ModMenu"

    const-string v2, "auto better input failed"

    invoke-static {v1, v2, v0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    :goto_0
    return-void
.end method
