.class Lmodmenu/BetterInput$17$2;
.super Ljava/lang/Object;
.source "BetterInput.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodmenu/BetterInput$17;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmodmenu/BetterInput$17;


# direct methods
.method constructor <init>(Lmodmenu/BetterInput$17;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 486
    iput-object p1, p0, Lmodmenu/BetterInput$17$2;->this$1:Lmodmenu/BetterInput$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 490
    iget-object p1, p0, Lmodmenu/BetterInput$17$2;->this$1:Lmodmenu/BetterInput$17;

    iget-object p1, p1, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "#A"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {}, Lmodmenu/BetterInput;->access$1800()[[Ljava/lang/String;

    move-result-object p4

    aget-object p3, p4, p3

    const/4 p4, 0x0

    aget-object p3, p3, p4

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lmodmenu/BetterInput;->access$000(Lmodmenu/BetterInput;Ljava/lang/String;)V

    .line 491
    iget-object p1, p0, Lmodmenu/BetterInput$17$2;->this$1:Lmodmenu/BetterInput$17;

    invoke-virtual {p1}, Lmodmenu/BetterInput$17;->dismiss()V

    .line 492
    return-void
.end method
