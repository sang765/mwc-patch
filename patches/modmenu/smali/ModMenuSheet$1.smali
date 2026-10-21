.class Lmodmenu/ModMenuSheet$1;
.super Landroid/app/Dialog;
.source "ModMenuSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/ModMenuSheet;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmodmenu/ModMenuSheet;


# direct methods
.method constructor <init>(Lmodmenu/ModMenuSheet;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lmodmenu/ModMenuSheet$1;->this$0:Lmodmenu/ModMenuSheet;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 152
    iget-object v0, p0, Lmodmenu/ModMenuSheet$1;->this$0:Lmodmenu/ModMenuSheet;

    invoke-static {v0}, Lmodmenu/ModMenuSheet;->access$000(Lmodmenu/ModMenuSheet;)Landroid/view/View;

    move-result-object v0

    .line 156
    iget-object v1, p0, Lmodmenu/ModMenuSheet$1;->this$0:Lmodmenu/ModMenuSheet;

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-static {v1}, Lmodmenu/ModMenuSheet;->access$100(Lmodmenu/ModMenuSheet;)V

    .line 154
    return-void

    .line 156
    :cond_0
    invoke-static {v1}, Lmodmenu/ModMenuSheet;->access$200(Lmodmenu/ModMenuSheet;)Landroid/view/View;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lmodmenu/ModMenuSheet$1;->this$0:Lmodmenu/ModMenuSheet;

    .line 156
    if-eqz v0, :cond_1

    .line 157
    invoke-static {v1}, Lmodmenu/ModMenuSheet;->access$300(Lmodmenu/ModMenuSheet;)V

    .line 158
    return-void

    .line 160
    :cond_1
    invoke-static {v1}, Lmodmenu/ModMenuSheet;->access$400(Lmodmenu/ModMenuSheet;)Landroid/view/View;

    move-result-object v0

    .line 164
    iget-object v1, p0, Lmodmenu/ModMenuSheet$1;->this$0:Lmodmenu/ModMenuSheet;

    .line 160
    if-eqz v0, :cond_2

    .line 161
    invoke-static {v1}, Lmodmenu/ModMenuSheet;->access$500(Lmodmenu/ModMenuSheet;)V

    .line 162
    return-void

    .line 164
    :cond_2
    invoke-static {v1}, Lmodmenu/ModMenuSheet;->access$600(Lmodmenu/ModMenuSheet;)Lmodmenu/IdBrowser;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lmodmenu/ModMenuSheet$1;->this$0:Lmodmenu/ModMenuSheet;

    invoke-static {v0}, Lmodmenu/ModMenuSheet;->access$600(Lmodmenu/ModMenuSheet;)Lmodmenu/IdBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lmodmenu/IdBrowser;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lmodmenu/ModMenuSheet$1;->this$0:Lmodmenu/ModMenuSheet;

    invoke-static {v0}, Lmodmenu/ModMenuSheet;->access$600(Lmodmenu/ModMenuSheet;)Lmodmenu/IdBrowser;

    move-result-object v0

    invoke-virtual {v0}, Lmodmenu/IdBrowser;->close()V

    .line 166
    return-void

    .line 168
    :cond_3
    invoke-virtual {p0}, Lmodmenu/ModMenuSheet$1;->cancel()V

    .line 169
    return-void
.end method
