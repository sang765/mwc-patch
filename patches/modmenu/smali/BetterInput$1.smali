.class Lmodmenu/BetterInput$1;
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

.field final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmodmenu/BetterInput;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 173
    iput-object p1, p0, Lmodmenu/BetterInput$1;->this$0:Lmodmenu/BetterInput;

    iput-object p2, p0, Lmodmenu/BetterInput$1;->val$code:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 176
    iget-object p1, p0, Lmodmenu/BetterInput$1;->this$0:Lmodmenu/BetterInput;

    iget-object v0, p0, Lmodmenu/BetterInput$1;->val$code:Ljava/lang/String;

    invoke-static {p1, v0}, Lmodmenu/BetterInput;->access$000(Lmodmenu/BetterInput;Ljava/lang/String;)V

    .line 177
    return-void
.end method
