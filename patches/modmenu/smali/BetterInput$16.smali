.class Lmodmenu/BetterInput$16;
.super Ljava/lang/Object;
.source "BetterInput.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/BetterInput;-><init>(Landroid/app/Activity;Lmodmenu/Palette;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmodmenu/BetterInput;


# direct methods
.method constructor <init>(Lmodmenu/BetterInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 376
    iput-object p1, p0, Lmodmenu/BetterInput$16;->this$0:Lmodmenu/BetterInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 379
    iget-object p1, p0, Lmodmenu/BetterInput$16;->this$0:Lmodmenu/BetterInput;

    invoke-static {p1}, Lmodmenu/BetterInput;->access$1100(Lmodmenu/BetterInput;)Landroid/animation/ValueAnimator;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 380
    iget-object p1, p0, Lmodmenu/BetterInput$16;->this$0:Lmodmenu/BetterInput;

    invoke-static {p1}, Lmodmenu/BetterInput;->access$1100(Lmodmenu/BetterInput;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 381
    iget-object p1, p0, Lmodmenu/BetterInput$16;->this$0:Lmodmenu/BetterInput;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lmodmenu/BetterInput;->access$1102(Lmodmenu/BetterInput;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 383
    :cond_0
    return-void
.end method
