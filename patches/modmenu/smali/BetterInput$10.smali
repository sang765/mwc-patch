.class Lmodmenu/BetterInput$10;
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

    .line 283
    iput-object p1, p0, Lmodmenu/BetterInput$10;->this$0:Lmodmenu/BetterInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 286
    iget-object p1, p0, Lmodmenu/BetterInput$10;->this$0:Lmodmenu/BetterInput;

    iget-object v0, p0, Lmodmenu/BetterInput$10;->this$0:Lmodmenu/BetterInput;

    invoke-static {v0}, Lmodmenu/BetterInput;->access$500(Lmodmenu/BetterInput;)Lmodmenu/BetterInput$ColorWheelView;

    move-result-object v0

    invoke-virtual {v0}, Lmodmenu/BetterInput$ColorWheelView;->current()I

    move-result v0

    invoke-static {p1, v0}, Lmodmenu/BetterInput;->access$702(Lmodmenu/BetterInput;I)I

    .line 287
    return-void
.end method
