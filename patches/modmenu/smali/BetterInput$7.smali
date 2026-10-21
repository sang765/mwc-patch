.class Lmodmenu/BetterInput$7;
.super Ljava/lang/Object;
.source "BetterInput.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 248
    iput-object p1, p0, Lmodmenu/BetterInput$7;->this$0:Lmodmenu/BetterInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 251
    iget-object p1, p0, Lmodmenu/BetterInput$7;->this$0:Lmodmenu/BetterInput;

    invoke-static {p1}, Lmodmenu/BetterInput;->access$500(Lmodmenu/BetterInput;)Lmodmenu/BetterInput$ColorWheelView;

    move-result-object p1

    int-to-float p2, p2

    const/high16 p3, 0x437f0000    # 255.0f

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lmodmenu/BetterInput$ColorWheelView;->setValue(F)V

    .line 252
    iget-object p1, p0, Lmodmenu/BetterInput$7;->this$0:Lmodmenu/BetterInput;

    invoke-static {p1}, Lmodmenu/BetterInput;->access$400(Lmodmenu/BetterInput;)Landroid/widget/TextView;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object p3, p0, Lmodmenu/BetterInput$7;->this$0:Lmodmenu/BetterInput;

    .line 253
    invoke-static {p3}, Lmodmenu/BetterInput;->access$500(Lmodmenu/BetterInput;)Lmodmenu/BetterInput$ColorWheelView;

    move-result-object p3

    invoke-virtual {p3}, Lmodmenu/BetterInput$ColorWheelView;->current()I

    move-result p3

    const v0, 0xffffff

    and-int/2addr p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 252
    const-string p3, "#c%06X"

    invoke-static {p2, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 258
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 262
    return-void
.end method
