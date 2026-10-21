.class Lmodmenu/LuaEditor$9;
.super Ljava/lang/Object;
.source "LuaEditor.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/LuaEditor;->setupCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmodmenu/LuaEditor;


# direct methods
.method constructor <init>(Lmodmenu/LuaEditor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 266
    iput-object p1, p0, Lmodmenu/LuaEditor$9;->this$0:Lmodmenu/LuaEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 1

    .line 269
    iget-object v0, p0, Lmodmenu/LuaEditor$9;->this$0:Lmodmenu/LuaEditor;

    invoke-static {v0}, Lmodmenu/LuaEditor;->access$600(Lmodmenu/LuaEditor;)Lmodmenu/LuaEditor$LineGutter;

    move-result-object v0

    invoke-virtual {v0}, Lmodmenu/LuaEditor$LineGutter;->invalidate()V

    .line 270
    return-void
.end method
