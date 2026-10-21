.class Lmodmenu/BetterInput$2;
.super Ljava/lang/Object;
.source "BetterInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 175
    iput-object p1, p0, Lmodmenu/BetterInput$2;->this$0:Lmodmenu/BetterInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 178
    iget-object p1, p0, Lmodmenu/BetterInput$2;->this$0:Lmodmenu/BetterInput;

    invoke-static {p1}, Lmodmenu/BetterInput;->access$100(Lmodmenu/BetterInput;)Landroid/widget/LinearLayout;

    move-result-object p1

    iget-object v0, p0, Lmodmenu/BetterInput$2;->this$0:Lmodmenu/BetterInput;

    invoke-static {v0}, Lmodmenu/BetterInput;->access$100(Lmodmenu/BetterInput;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 179
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    nop

    .line 178
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 180
    return-void
.end method
