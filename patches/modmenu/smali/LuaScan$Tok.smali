.class final Lmodmenu/LuaScan$Tok;
.super Ljava/lang/Object;
.source "LuaScan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodmenu/LuaScan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Tok"
.end annotation


# instance fields
.field final end:I

.field final kind:I

.field final line:I

.field final start:I

.field final text:Ljava/lang/String;


# direct methods
.method constructor <init>(IIIILjava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput p1, p0, Lmodmenu/LuaScan$Tok;->kind:I

    .line 55
    iput p2, p0, Lmodmenu/LuaScan$Tok;->start:I

    .line 56
    iput p3, p0, Lmodmenu/LuaScan$Tok;->end:I

    .line 57
    iput p4, p0, Lmodmenu/LuaScan$Tok;->line:I

    .line 58
    iput-object p5, p0, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    .line 59
    return-void
.end method
