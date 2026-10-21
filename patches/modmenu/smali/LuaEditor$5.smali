.class Lmodmenu/LuaEditor$5;
.super Ljava/lang/Object;
.source "LuaEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/LuaEditor;-><init>(Landroid/app/Activity;Lmodmenu/Palette;)V
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

    .line 185
    iput-object p1, p0, Lmodmenu/LuaEditor$5;->this$0:Lmodmenu/LuaEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 188
    iget-object p1, p0, Lmodmenu/LuaEditor$5;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p1}, Lmodmenu/LuaEditor;->access$300(Lmodmenu/LuaEditor;)V

    .line 189
    return-void
.end method
