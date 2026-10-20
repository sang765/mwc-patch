.class Lmodmenu/BetterInput$18;
.super Ljava/lang/Object;
.source "BetterInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/BetterInput;->dispatch(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmodmenu/BetterInput;

.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$paths:[Ljava/lang/String;

.field final synthetic val$send:Z


# direct methods
.method constructor <init>(Lmodmenu/BetterInput;[Ljava/lang/String;Landroid/content/Context;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 519
    iput-object p1, p0, Lmodmenu/BetterInput$18;->this$0:Lmodmenu/BetterInput;

    iput-object p2, p0, Lmodmenu/BetterInput$18;->val$paths:[Ljava/lang/String;

    iput-object p3, p0, Lmodmenu/BetterInput$18;->val$app:Landroid/content/Context;

    iput-boolean p4, p0, Lmodmenu/BetterInput$18;->val$send:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 522
    iget-object v0, p0, Lmodmenu/BetterInput$18;->val$paths:[Ljava/lang/String;

    invoke-static {v0}, Lmodmenu/BetterInput;->access$1900([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lmodmenu/BetterInput$18$1;

    invoke-direct {v2, p0, v0}, Lmodmenu/BetterInput$18$1;-><init>(Lmodmenu/BetterInput$18;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 540
    return-void
.end method
