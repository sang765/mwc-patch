.class Lmodmenu/BetterInput$19;
.super Ljava/lang/Object;
.source "BetterInput.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/BetterInput;->renderPreview()V
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

    .line 725
    iput-object p1, p0, Lmodmenu/BetterInput$19;->this$0:Lmodmenu/BetterInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 729
    iget-object v0, p0, Lmodmenu/BetterInput$19;->this$0:Lmodmenu/BetterInput;

    invoke-static {v0}, Lmodmenu/BetterInput;->access$2300(Lmodmenu/BetterInput;)Landroid/widget/TextView;

    move-result-object v0

    .line 730
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p1, v1

    .line 729
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 731
    return-void
.end method
