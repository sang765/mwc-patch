.class Lmodmenu/LogView$3;
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

    .line 113
    iput-object p1, p0, Lmodmenu/LogView$3;->this$0:Lmodmenu/LogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 116
    iget-object p1, p0, Lmodmenu/LogView$3;->this$0:Lmodmenu/LogView;

    invoke-static {p1}, Lmodmenu/LogView;->access$200(Lmodmenu/LogView;)V

    .line 117
    return-void
.end method
