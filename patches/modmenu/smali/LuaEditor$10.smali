.class Lmodmenu/LuaEditor$10;
.super Landroid/app/Dialog;
.source "LuaEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmodmenu/LuaEditor;->showIssues()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmodmenu/LuaEditor;

.field final synthetic val$issues:Ljava/util/List;


# direct methods
.method constructor <init>(Lmodmenu/LuaEditor;Landroid/content/Context;ILjava/util/List;)V
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

    .line 342
    iput-object p1, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    iput-object p4, p0, Lmodmenu/LuaEditor$10;->val$issues:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 344
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p2}, Lmodmenu/LuaEditor;->access$900(Lmodmenu/LuaEditor;)Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 345
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 346
    iget-object p2, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    const/16 p3, 0xe

    invoke-static {p2, p3}, Lmodmenu/LuaEditor;->access$1000(Lmodmenu/LuaEditor;I)I

    move-result p2

    iget-object p4, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p4, p3}, Lmodmenu/LuaEditor;->access$1000(Lmodmenu/LuaEditor;I)I

    move-result p4

    iget-object v0, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    invoke-static {v0, p3}, Lmodmenu/LuaEditor;->access$1000(Lmodmenu/LuaEditor;I)I

    move-result v0

    iget-object v1, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    invoke-static {v1, p3}, Lmodmenu/LuaEditor;->access$1000(Lmodmenu/LuaEditor;I)I

    move-result p3

    invoke-virtual {p1, p2, p4, v0, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 347
    iget-object p2, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    iget-object p3, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    const/16 p4, 0x10

    invoke-static {p3, p4}, Lmodmenu/LuaEditor;->access$1000(Lmodmenu/LuaEditor;I)I

    move-result p3

    iget-object p4, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p4}, Lmodmenu/LuaEditor;->access$1100(Lmodmenu/LuaEditor;)Lmodmenu/Palette;

    move-result-object p4

    iget p4, p4, Lmodmenu/Palette;->surface:I

    invoke-static {p2, p3, p4}, Lmodmenu/LuaEditor;->access$1200(Lmodmenu/LuaEditor;II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 348
    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p3}, Lmodmenu/LuaEditor;->access$900(Lmodmenu/LuaEditor;)Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 349
    iget-object p3, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p3}, Lmodmenu/LuaEditor;->access$900(Lmodmenu/LuaEditor;)Landroid/app/Activity;

    move-result-object p3

    const-string p4, "mod_le_check"

    invoke-static {p3, p4}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    iget-object p3, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p3}, Lmodmenu/LuaEditor;->access$1100(Lmodmenu/LuaEditor;)Lmodmenu/Palette;

    move-result-object p3

    iget p3, p3, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 351
    const/high16 p3, 0x41800000    # 16.0f

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 352
    iget-object p3, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    iget-object p4, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p4}, Lmodmenu/LuaEditor;->access$1300(Lmodmenu/LuaEditor;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p4

    invoke-static {p3, p4}, Lmodmenu/LuaEditor;->access$1400(Lmodmenu/LuaEditor;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 353
    new-instance p2, Landroid/widget/ListView;

    iget-object p3, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p3}, Lmodmenu/LuaEditor;->access$900(Lmodmenu/LuaEditor;)Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 354
    new-instance p3, Lmodmenu/LuaEditor$10$1;

    iget-object p4, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    invoke-static {p4}, Lmodmenu/LuaEditor;->access$900(Lmodmenu/LuaEditor;)Landroid/app/Activity;

    move-result-object p4

    const v0, 0x1090003

    iget-object v1, p0, Lmodmenu/LuaEditor$10;->val$issues:Ljava/util/List;

    invoke-direct {p3, p0, p4, v0, v1}, Lmodmenu/LuaEditor$10$1;-><init>(Lmodmenu/LuaEditor$10;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 366
    new-instance p3, Lmodmenu/LuaEditor$10$2;

    invoke-direct {p3, p0}, Lmodmenu/LuaEditor$10$2;-><init>(Lmodmenu/LuaEditor$10;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 375
    new-instance p3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object p4, p0, Lmodmenu/LuaEditor$10;->this$0:Lmodmenu/LuaEditor;

    .line 376
    const/16 v0, 0x12c

    invoke-static {p4, v0}, Lmodmenu/LuaEditor;->access$1000(Lmodmenu/LuaEditor;I)I

    move-result p4

    const/4 v0, -0x1

    invoke-direct {p3, v0, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 375
    invoke-virtual {p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    invoke-virtual {p0, p1}, Lmodmenu/LuaEditor$10;->setContentView(Landroid/view/View;)V

    .line 378
    return-void
.end method
