.class Lmodmenu/LogView$4;
.super Ljava/lang/Object;
.source "LogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/LogView;-><init>(Landroid/app/Activity;Lmodmenu/Palette;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmodmenu/LogView;


# direct methods
.method constructor <init>(Lmodmenu/LogView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lmodmenu/LogView$4;->this$0:Lmodmenu/LogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 123
    iget-object p1, p0, Lmodmenu/LogView$4;->this$0:Lmodmenu/LogView;

    invoke-static {p1}, Lmodmenu/LogView;->access$300(Lmodmenu/LogView;)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 124
    return-void
.end method
