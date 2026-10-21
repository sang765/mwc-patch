.class Lmodmenu/ModMenu$4;
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

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 330
    invoke-static {}, Lmodmenu/ModMenu;->access$300()[Ljava/lang/String;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_2

    .line 332
    nop

    .line 333
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_1

    .line 334
    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 336
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 337
    const/4 v2, 0x1

    .line 333
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    :cond_1
    if-eqz v2, :cond_2

    .line 341
    invoke-static {}, Lmodmenu/ModMenu;->access$400()V

    .line 344
    :cond_2
    invoke-static {}, Lmodmenu/ModMenu;->access$500()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 345
    return-void
.end method
