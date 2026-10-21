.class Lmodmenu/BetterInput$18$1;
.super Ljava/lang/Object;
.source "BetterInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/BetterInput$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmodmenu/BetterInput$18;

.field final synthetic val$state:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmodmenu/BetterInput$18;Ljava/lang/String;)V
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

    .line 537
    iput-object p1, p0, Lmodmenu/BetterInput$18$1;->this$1:Lmodmenu/BetterInput$18;

    iput-object p2, p0, Lmodmenu/BetterInput$18$1;->val$state:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 540
    iget-object v0, p0, Lmodmenu/BetterInput$18$1;->this$1:Lmodmenu/BetterInput$18;

    iget-object v0, v0, Lmodmenu/BetterInput$18;->this$0:Lmodmenu/BetterInput;

    invoke-static {v0}, Lmodmenu/BetterInput;->access$2000(Lmodmenu/BetterInput;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 541
    iget-object v0, p0, Lmodmenu/BetterInput$18$1;->this$1:Lmodmenu/BetterInput$18;

    iget-object v0, v0, Lmodmenu/BetterInput$18;->this$0:Lmodmenu/BetterInput;

    invoke-static {v0}, Lmodmenu/BetterInput;->access$2100(Lmodmenu/BetterInput;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 543
    iget-object v0, p0, Lmodmenu/BetterInput$18$1;->val$state:Ljava/lang/String;

    const-string v1, "ok"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 546
    iget-object v2, p0, Lmodmenu/BetterInput$18$1;->this$1:Lmodmenu/BetterInput$18;

    .line 543
    if-eqz v0, :cond_1

    .line 544
    iget-object v0, v2, Lmodmenu/BetterInput$18;->val$app:Landroid/content/Context;

    iget-object v2, p0, Lmodmenu/BetterInput$18$1;->this$1:Lmodmenu/BetterInput$18;

    iget-boolean v2, v2, Lmodmenu/BetterInput$18;->val$send:Z

    if-eqz v2, :cond_0

    const-string v2, "mod_bi_sent"

    goto :goto_0

    :cond_0
    const-string v2, "mod_bi_filled"

    :goto_0
    invoke-static {v0, v2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 546
    :cond_1
    iget-object v0, v2, Lmodmenu/BetterInput$18;->val$app:Landroid/content/Context;

    const-string v2, "mod_bi_fail"

    invoke-static {v0, v2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 548
    :goto_1
    iget-object v2, p0, Lmodmenu/BetterInput$18$1;->this$1:Lmodmenu/BetterInput$18;

    iget-object v2, v2, Lmodmenu/BetterInput$18;->val$app:Landroid/content/Context;

    invoke-static {v2, v0}, Lmodmenu/BetterInput;->access$2200(Landroid/content/Context;Ljava/lang/String;)V

    .line 549
    iget-object v0, p0, Lmodmenu/BetterInput$18$1;->val$state:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lmodmenu/BetterInput$18$1;->this$1:Lmodmenu/BetterInput$18;

    iget-object v0, v0, Lmodmenu/BetterInput$18;->this$0:Lmodmenu/BetterInput;

    invoke-static {v0}, Lmodmenu/BetterInput;->access$900(Lmodmenu/BetterInput;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 552
    :cond_2
    return-void
.end method
