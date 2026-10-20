.class final Lmodmenu/LuaScan$Issue;
.super Ljava/lang/Object;
.source "LuaScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodmenu/LuaScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Issue"
.end annotation


# instance fields
.field final arg:Ljava/lang/String;

.field final code:Ljava/lang/String;

.field final line:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    .line 71
    iput p2, p0, Lmodmenu/LuaScan$Issue;->line:I

    .line 72
    iput-object p3, p0, Lmodmenu/LuaScan$Issue;->arg:Ljava/lang/String;

    .line 73
    return-void
.end method
