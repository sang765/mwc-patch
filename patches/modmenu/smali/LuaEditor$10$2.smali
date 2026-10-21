.class Lmodmenu/LuaEditor$10$2;
.super Ljava/lang/Object;
.source "LuaEditor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodmenu/LuaEditor$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmodmenu/LuaEditor$10;


# direct methods
.method constructor <init>(Lmodmenu/LuaEditor$10;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 367
    iput-object p1, p0, Lmodmenu/LuaEditor$10$2;->this$1:Lmodmenu/LuaEditor$10;

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

    .line 371
    iget-object p1, p0, Lmodmenu/LuaEditor$10$2;->this$1:Lmodmenu/LuaEditor$10;

    iget-object p1, p1, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    iget-object p2, p0, Lmodmenu/LuaEditor$10$2;->this$1:Lmodmenu/LuaEditor$10;

    iget-object p2, p2, Lmodmenu/LuaEditor$10;->val$issues:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmodmenu/LuaScan$Issue;

    iget p2, p2, Lmodmenu/LuaScan$Issue;->line:I

    invoke-static {p1, p2}, Lmodmenu/LuaEditor;->access$1600(Lmodmenu/LuaEditor;I)V

    .line 372
    iget-object p1, p0, Lmodmenu/LuaEditor$10$2;->this$1:Lmodmenu/LuaEditor$10;

    invoke-virtual {p1}, Lmodmenu/LuaEditor$10;->dismiss()V

    .line 373
    return-void
.end method
