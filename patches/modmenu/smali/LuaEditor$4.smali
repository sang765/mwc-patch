.class Lmodmenu/LuaEditor$4;
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

    .line 179
    iput-object p1, p0, Lmodmenu/LuaEditor$4;->this$0:Lmodmenu/LuaEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 182
    iget-object p1, p0, Lmodmenu/LuaEditor$4;->this$0:Lmodmenu/LuaEditor;

    const-string v0, "save"

    invoke-static {p1, v0}, Lmodmenu/LuaEditor;->access$200(Lmodmenu/LuaEditor;Ljava/lang/String;)V

    .line 183
    return-void
.end method
