.class Lmodmenu/BetterInput$3;
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

    .line 184
    iput-object p1, p0, Lmodmenu/BetterInput$3;->this$0:Lmodmenu/BetterInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 187
    iget-object p1, p0, Lmodmenu/BetterInput$3;->this$0:Lmodmenu/BetterInput;

    const-string v0, "#b"

    invoke-static {p1, v0}, Lmodmenu/BetterInput;->access$000(Lmodmenu/BetterInput;Ljava/lang/String;)V

    .line 188
    return-void
.end method
