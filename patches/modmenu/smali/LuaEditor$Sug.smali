.class final Lmodmenu/LuaEditor$Sug;
.super Ljava/lang/Object;
.source "LuaEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodmenu/LuaEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Sug"
.end annotation


# instance fields
.field final insert:Ljava/lang/String;

.field final label:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput-object p1, p0, Lmodmenu/LuaEditor$Sug;->insert:Ljava/lang/String;

    .line 443
    iput-object p2, p0, Lmodmenu/LuaEditor$Sug;->label:Ljava/lang/String;

    .line 444
    return-void
.end method
