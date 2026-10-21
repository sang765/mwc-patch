.class Lmodmenu/LuaEditor$10$1;
.super Landroid/widget/ArrayAdapter;
.source "LuaEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodmenu/LuaEditor$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lmodmenu/LuaScan$Issue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lmodmenu/LuaEditor$10;


# direct methods
.method constructor <init>(Lmodmenu/LuaEditor$10;Landroid/content/Context;ILjava/util/List;)V
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

    .line 355
    iput-object p1, p0, Lmodmenu/LuaEditor$10$1;->this$1:Lmodmenu/LuaEditor$10;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 359
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 360
    iget-object p3, p0, Lmodmenu/LuaEditor$10$1;->this$1:Lmodmenu/LuaEditor$10;

    iget-object p3, p3, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    iget-object v0, p0, Lmodmenu/LuaEditor$10$1;->this$1:Lmodmenu/LuaEditor$10;

    iget-object v0, v0, Lmodmenu/LuaEditor$10;->val$issues:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmodmenu/LuaScan$Issue;

    invoke-static {p3, p1}, Lmodmenu/LuaEditor;->access$1500(Lmodmenu/LuaEditor;Lmodmenu/LuaScan$Issue;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object p1, p0, Lmodmenu/LuaEditor$10$1;->this$1:Lmodmenu/LuaEditor$10;

    iget-object p1, p1, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p1}, Lmodmenu/LuaEditor;->access$1100(Lmodmenu/LuaEditor;)Lmodmenu/Palette;

    move-result-object p1

    iget p1, p1, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 363
    return-object p2
.end method
