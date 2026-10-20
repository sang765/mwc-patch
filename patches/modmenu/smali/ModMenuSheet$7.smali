.class Lmodmenu/ModMenuSheet$7;
.super Ljava/lang/Object;
.source "ModMenuSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/ModMenuSheet;->settingRow(Lmodmenu/Palette;Ljava/lang/String;Ljava/lang/String;Landroid/widget/Switch;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmodmenu/ModMenuSheet;

.field final synthetic val$sw:Landroid/widget/Switch;


# direct methods
.method constructor <init>(Lmodmenu/ModMenuSheet;Landroid/widget/Switch;)V
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

    .line 375
    iput-object p1, p0, Lmodmenu/ModMenuSheet$7;->this$0:Lmodmenu/ModMenuSheet;

    iput-object p2, p0, Lmodmenu/ModMenuSheet$7;->val$sw:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 378
    iget-object p1, p0, Lmodmenu/ModMenuSheet$7;->val$sw:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->performClick()Z

    .line 379
    return-void
.end method
