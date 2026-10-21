.class Lmodmenu/LuaEditor$11;
.super Ljava/lang/Object;
.source "LuaEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/LuaEditor;->dispatch(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmodmenu/LuaEditor;

.field final synthetic val$app:Landroid/content/Context;

.field final synthetic val$op:Ljava/lang/String;

.field final synthetic val$paths:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lmodmenu/LuaEditor;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 671
    iput-object p1, p0, Lmodmenu/LuaEditor$11;->this$0:Lmodmenu/LuaEditor;

    iput-object p2, p0, Lmodmenu/LuaEditor$11;->val$paths:[Ljava/lang/String;

    iput-object p3, p0, Lmodmenu/LuaEditor$11;->val$op:Ljava/lang/String;

    iput-object p4, p0, Lmodmenu/LuaEditor$11;->val$app:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 674
    iget-object v0, p0, Lmodmenu/LuaEditor$11;->val$paths:[Ljava/lang/String;

    invoke-static {v0}, Lmodmenu/LuaEditor;->access$1700([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 675
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lmodmenu/LuaEditor$11$1;

    invoke-direct {v2, p0, v0}, Lmodmenu/LuaEditor$11$1;-><init>(Lmodmenu/LuaEditor$11;Lorg/json/JSONObject;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    return-void
.end method
