.class Lmodmenu/LuaEditor$7;
.super Ljava/lang/Object;
.source "LuaEditor.java"

# interfaces
.implements Landroid/text/TextWatcher;


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

    .line 209
    iput-object p1, p0, Lmodmenu/LuaEditor$7;->this$0:Lmodmenu/LuaEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 220
    iget-object p1, p0, Lmodmenu/LuaEditor$7;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p1}, Lmodmenu/LuaEditor;->access$500(Lmodmenu/LuaEditor;)V

    .line 221
    iget-object p1, p0, Lmodmenu/LuaEditor$7;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p1}, Lmodmenu/LuaEditor;->access$600(Lmodmenu/LuaEditor;)Lmodmenu/LuaEditor$LineGutter;

    move-result-object p1

    invoke-virtual {p1}, Lmodmenu/LuaEditor$LineGutter;->invalidate()V

    .line 222
    iget-object p1, p0, Lmodmenu/LuaEditor$7;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p1}, Lmodmenu/LuaEditor;->access$700(Lmodmenu/LuaEditor;)V

    .line 223
    iget-object p1, p0, Lmodmenu/LuaEditor$7;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p1}, Lmodmenu/LuaEditor;->access$800(Lmodmenu/LuaEditor;)V

    .line 224
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 212
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 216
    return-void
.end method
