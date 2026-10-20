.class Lmodmenu/ModMenuSheet$9;
.super Ljava/lang/Object;
.source "ModMenuSheet.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/ModMenuSheet;->showGive()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmodmenu/ModMenuSheet;


# direct methods
.method constructor <init>(Lmodmenu/ModMenuSheet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 685
    iput-object p1, p0, Lmodmenu/ModMenuSheet$9;->this$0:Lmodmenu/ModMenuSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 696
    iget-object p1, p0, Lmodmenu/ModMenuSheet$9;->this$0:Lmodmenu/ModMenuSheet;

    invoke-static {p1}, Lmodmenu/ModMenuSheet;->access$1300(Lmodmenu/ModMenuSheet;)V

    .line 697
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 688
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 692
    return-void
.end method
