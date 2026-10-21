.class Lmodmenu/BetterInput$15;
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

    .line 372
    iput-object p1, p0, Lmodmenu/BetterInput$15;->this$0:Lmodmenu/BetterInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 375
    iget-object p1, p0, Lmodmenu/BetterInput$15;->this$0:Lmodmenu/BetterInput;

    invoke-static {p1}, Lmodmenu/BetterInput;->access$900(Lmodmenu/BetterInput;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 376
    return-void
.end method
