.class Lmodmenu/BetterInput$17$1;
.super Landroid/widget/ArrayAdapter;
.source "BetterInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodmenu/BetterInput$17;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmodmenu/BetterInput$17;


# direct methods
.method constructor <init>(Lmodmenu/BetterInput$17;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 476
    iput-object p1, p0, Lmodmenu/BetterInput$17$1;->this$1:Lmodmenu/BetterInput$17;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 480
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 481
    iget-object p2, p0, Lmodmenu/BetterInput$17$1;->this$1:Lmodmenu/BetterInput$17;

    iget-object p2, p2, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    invoke-static {p2}, Lmodmenu/BetterInput;->access$1400(Lmodmenu/BetterInput;)Lmodmenu/Palette;

    move-result-object p2

    iget p2, p2, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 482
    const/high16 p2, 0x41600000    # 14.0f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 483
    return-object p1
.end method
