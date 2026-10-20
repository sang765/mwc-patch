.class Lmodmenu/BetterInput$17;
.super Landroid/app/Dialog;
.source "BetterInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/BetterInput;->pickEmoji()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmodmenu/BetterInput;

.field final synthetic val$rows:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lmodmenu/BetterInput;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 449
    iput-object p1, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    iput-object p4, p0, Lmodmenu/BetterInput$17;->val$rows:[Ljava/lang/String;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 451
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    invoke-static {p2}, Lmodmenu/BetterInput;->access$1200(Lmodmenu/BetterInput;)Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 452
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 453
    iget-object p2, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    const/16 p3, 0xe

    invoke-static {p2, p3}, Lmodmenu/BetterInput;->access$1300(Lmodmenu/BetterInput;I)I

    move-result p2

    iget-object p4, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    invoke-static {p4, p3}, Lmodmenu/BetterInput;->access$1300(Lmodmenu/BetterInput;I)I

    move-result p4

    iget-object v0, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    invoke-static {v0, p3}, Lmodmenu/BetterInput;->access$1300(Lmodmenu/BetterInput;I)I

    move-result v0

    iget-object v1, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    invoke-static {v1, p3}, Lmodmenu/BetterInput;->access$1300(Lmodmenu/BetterInput;I)I

    move-result p3

    invoke-virtual {p1, p2, p4, v0, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 454
    iget-object p2, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    iget-object p3, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    const/16 p4, 0x10

    invoke-static {p3, p4}, Lmodmenu/BetterInput;->access$1300(Lmodmenu/BetterInput;I)I

    move-result p3

    iget-object p4, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    invoke-static {p4}, Lmodmenu/BetterInput;->access$1400(Lmodmenu/BetterInput;)Lmodmenu/Palette;

    move-result-object p4

    iget p4, p4, Lmodmenu/Palette;->surface:I

    invoke-static {p2, p3, p4}, Lmodmenu/BetterInput;->access$1500(Lmodmenu/BetterInput;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 455
    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    invoke-static {p3}, Lmodmenu/BetterInput;->access$1200(Lmodmenu/BetterInput;)Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 456
    iget-object p3, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    invoke-static {p3}, Lmodmenu/BetterInput;->access$1200(Lmodmenu/BetterInput;)Landroid/app/Activity;

    move-result-object p3

    const-string p4, "mod_bi_icons"

    invoke-static {p3, p4}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object p3, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    invoke-static {p3}, Lmodmenu/BetterInput;->access$1400(Lmodmenu/BetterInput;)Lmodmenu/Palette;

    move-result-object p3

    iget p3, p3, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 458
    const/high16 p3, 0x41800000    # 16.0f

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 459
    iget-object p3, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    iget-object p4, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    invoke-static {p4}, Lmodmenu/BetterInput;->access$1600(Lmodmenu/BetterInput;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p4

    invoke-static {p3, p4}, Lmodmenu/BetterInput;->access$1700(Lmodmenu/BetterInput;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    new-instance p2, Landroid/widget/ListView;

    iget-object p3, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    invoke-static {p3}, Lmodmenu/BetterInput;->access$1200(Lmodmenu/BetterInput;)Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 461
    new-instance p3, Lmodmenu/BetterInput$17$1;

    iget-object p4, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    invoke-static {p4}, Lmodmenu/BetterInput;->access$1200(Lmodmenu/BetterInput;)Landroid/app/Activity;

    move-result-object p4

    const v0, 0x1090003

    iget-object v1, p0, Lmodmenu/BetterInput$17;->val$rows:[Ljava/lang/String;

    invoke-direct {p3, p0, p4, v0, v1}, Lmodmenu/BetterInput$17$1;-><init>(Lmodmenu/BetterInput$17;Landroid/content/Context;I[Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 472
    new-instance p3, Lmodmenu/BetterInput$17$2;

    invoke-direct {p3, p0}, Lmodmenu/BetterInput$17$2;-><init>(Lmodmenu/BetterInput$17;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 480
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p4, p0, Lmodmenu/BetterInput$17;->this$0:Lmodmenu/BetterInput;

    .line 481
    const/16 v0, 0x118

    invoke-static {p4, v0}, Lmodmenu/BetterInput;->access$1300(Lmodmenu/BetterInput;I)I

    move-result p4

    const/4 v0, -0x1

    invoke-direct {p3, v0, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 480
    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 482
    invoke-virtual {p0, p1}, Lmodmenu/BetterInput$17;->setContentView(Landroid/view/View;)V

    .line 483
    return-void
.end method
