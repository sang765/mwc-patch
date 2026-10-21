.class Lmodmenu/ModMenu$7;
.super Ljava/lang/Object;
.source "ModMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/ModMenu;->showStuckDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 595
    iput-object p1, p0, Lmodmenu/ModMenu$7;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 598
    invoke-static {}, Lmodmenu/ModMenu;->access$1200()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lmodmenu/ModMenu;->access$1200()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmodmenu/ModMenu$7;->val$a:Landroid/app/Activity;

    :goto_0
    invoke-static {p1}, Lmodmenu/ModMenu;->restartGame(Landroid/content/Context;)V

    .line 599
    return-void
.end method
