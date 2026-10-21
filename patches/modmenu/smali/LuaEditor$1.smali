.class Lmodmenu/LuaEditor$1;
.super Landroid/widget/ArrayAdapter;
.source "LuaEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/LuaEditor;-><init>(Landroid/app/Activity;Lmodmenu/Palette;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lmodmenu/LuaEditor$Sug;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmodmenu/LuaEditor;

.field final synthetic val$p:Lmodmenu/Palette;


# direct methods
.method constructor <init>(Lmodmenu/LuaEditor;Landroid/content/Context;ILjava/util/List;Lmodmenu/Palette;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lmodmenu/LuaEditor$1;->this$0:Lmodmenu/LuaEditor;

    iput-object p5, p0, Lmodmenu/LuaEditor$1;->val$p:Lmodmenu/Palette;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 148
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 149
    iget-object p3, p0, Lmodmenu/LuaEditor$1;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p3}, Lmodmenu/LuaEditor;->access$000(Lmodmenu/LuaEditor;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmodmenu/LuaEditor$Sug;

    iget-object p1, p1, Lmodmenu/LuaEditor$Sug;->label:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p1, p0, Lmodmenu/LuaEditor$1;->val$p:Lmodmenu/Palette;

    iget p1, p1, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    const/high16 p1, 0x41500000    # 13.0f

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 152
    return-object p2
.end method
