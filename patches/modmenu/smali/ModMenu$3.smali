.class Lmodmenu/ModMenu$3;
.super Ljava/lang/Object;
.source "ModMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodmenu/ModMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 380
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 381
    invoke-static {}, Lmodmenu/ModMenu;->gameActivity()Landroid/app/Activity;

    move-result-object v2

    .line 382
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    invoke-static {}, Lmodmenu/ModMenu;->access$300()J

    move-result-wide v5

    cmp-long v2, v5, v3

    if-nez v2, :cond_2

    .line 385
    invoke-static {v0, v1}, Lmodmenu/ModMenu;->access$302(J)J

    goto :goto_1

    .line 383
    :cond_1
    :goto_0
    invoke-static {v3, v4}, Lmodmenu/ModMenu;->access$302(J)J

    .line 387
    :cond_2
    :goto_1
    invoke-static {}, Lmodmenu/ModMenu;->access$400()J

    move-result-wide v5

    .line 388
    invoke-static {}, Lmodmenu/ModMenu;->access$500()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lmodmenu/ModMenu;->access$300()J

    move-result-wide v7

    cmp-long v2, v7, v3

    if-eqz v2, :cond_3

    cmp-long v2, v5, v3

    if-eqz v2, :cond_3

    .line 389
    invoke-static {}, Lmodmenu/ModMenu;->access$300()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/32 v7, 0xea60

    cmp-long v4, v2, v7

    if-lez v4, :cond_3

    sub-long/2addr v0, v5

    cmp-long v2, v0, v7

    if-lez v2, :cond_3

    .line 390
    const/4 v2, 0x1

    invoke-static {v2}, Lmodmenu/ModMenu;->access$502(Z)Z

    .line 391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msr|java_wd fire lua quiet "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModMenu"

    invoke-static {v1, v0}, Lmodmenu/MwLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {}, Lmodmenu/ModMenu;->access$600()V

    .line 394
    :cond_3
    invoke-static {}, Lmodmenu/ModMenu;->access$700()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 395
    return-void
.end method
