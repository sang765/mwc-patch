.class Lmodmenu/BetterInput$8;
.super Ljava/lang/Object;
.source "BetterInput.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/BetterInput;-><init>(Landroid/app/Activity;Lmodmenu/Palette;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmodmenu/BetterInput;


# direct methods
.method constructor <init>(Lmodmenu/BetterInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 265
    iput-object p1, p0, Lmodmenu/BetterInput$8;->this$0:Lmodmenu/BetterInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 268
    iget-object p1, p0, Lmodmenu/BetterInput$8;->this$0:Lmodmenu/BetterInput;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Lmodmenu/BetterInput$8;->this$0:Lmodmenu/BetterInput;

    invoke-static {v1}, Lmodmenu/BetterInput;->access$500(Lmodmenu/BetterInput;)Lmodmenu/BetterInput$ColorWheelView;

    move-result-object v1

    invoke-virtual {v1}, Lmodmenu/BetterInput$ColorWheelView;->current()I

    move-result v1

    const v2, 0xffffff

    and-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "#c%06X"

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmodmenu/BetterInput;->access$000(Lmodmenu/BetterInput;Ljava/lang/String;)V

    .line 269
    return-void
.end method
