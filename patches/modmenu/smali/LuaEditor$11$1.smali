.class Lmodmenu/LuaEditor$11$1;
.super Ljava/lang/Object;
.source "LuaEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/LuaEditor$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmodmenu/LuaEditor$11;

.field final synthetic val$o:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lmodmenu/LuaEditor$11;Lorg/json/JSONObject;)V
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

    .line 676
    iput-object p1, p0, Lmodmenu/LuaEditor$11$1;->this$1:Lmodmenu/LuaEditor$11;

    iput-object p2, p0, Lmodmenu/LuaEditor$11$1;->val$o:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 679
    iget-object v0, p0, Lmodmenu/LuaEditor$11$1;->this$1:Lmodmenu/LuaEditor$11;

    iget-object v0, v0, Lmodmenu/LuaEditor$11;->this$0:Lmodmenu/LuaEditor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmodmenu/LuaEditor;->access$1800(Lmodmenu/LuaEditor;Z)V

    .line 680
    iget-object v0, p0, Lmodmenu/LuaEditor$11$1;->this$1:Lmodmenu/LuaEditor$11;

    iget-object v0, v0, Lmodmenu/LuaEditor$11;->this$0:Lmodmenu/LuaEditor;

    iget-object v1, p0, Lmodmenu/LuaEditor$11$1;->this$1:Lmodmenu/LuaEditor$11;

    iget-object v1, v1, Lmodmenu/LuaEditor$11;->val$op:Ljava/lang/String;

    iget-object v2, p0, Lmodmenu/LuaEditor$11$1;->val$o:Lorg/json/JSONObject;

    iget-object v3, p0, Lmodmenu/LuaEditor$11$1;->this$1:Lmodmenu/LuaEditor$11;

    iget-object v3, v3, Lmodmenu/LuaEditor$11;->val$app:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3}, Lmodmenu/LuaEditor;->access$1900(Lmodmenu/LuaEditor;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 681
    return-void
.end method
