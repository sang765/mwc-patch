.class final Lmodmenu/LuaEditor$LineGutter;
.super Landroid/view/View;
.source "LuaEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodmenu/LuaEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LineGutter"
.end annotation


# instance fields
.field private final edit:Landroid/widget/EditText;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 1

    .line 866
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 863
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lmodmenu/LuaEditor$LineGutter;->paint:Landroid/graphics/Paint;

    .line 867
    iput-object p2, p0, Lmodmenu/LuaEditor$LineGutter;->edit:Landroid/widget/EditText;

    .line 868
    iget-object p1, p0, Lmodmenu/LuaEditor$LineGutter;->paint:Landroid/graphics/Paint;

    const p2, -0x948d80

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 869
    iget-object p1, p0, Lmodmenu/LuaEditor$LineGutter;->paint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 870
    iget-object p1, p0, Lmodmenu/LuaEditor$LineGutter;->paint:Landroid/graphics/Paint;

    .line 871
    invoke-virtual {p0}, Lmodmenu/LuaEditor$LineGutter;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v0, 0x41300000    # 11.0f

    mul-float p2, p2, v0

    .line 870
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 872
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 876
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 877
    iget-object v0, p0, Lmodmenu/LuaEditor$LineGutter;->edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 878
    if-nez v0, :cond_0

    .line 879
    return-void

    .line 881
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 882
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    goto :goto_0

    .line 883
    :cond_1
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    int-to-float v3, v3

    .line 884
    :goto_0
    iget-object v4, p0, Lmodmenu/LuaEditor$LineGutter;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v4

    .line 885
    iget v5, v4, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v6, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v5, v6

    .line 886
    invoke-virtual {p0}, Lmodmenu/LuaEditor$LineGutter;->getWidth()I

    move-result v6

    int-to-float v6, v6

    .line 887
    invoke-virtual {p0}, Lmodmenu/LuaEditor$LineGutter;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x40c00000    # 6.0f

    mul-float v7, v7, v8

    sub-float/2addr v6, v7

    .line 888
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 889
    iget-object v7, p0, Lmodmenu/LuaEditor$LineGutter;->edit:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getScrollY()I

    move-result v7

    neg-int v7, v7

    int-to-float v7, v7

    const/4 v8, 0x0

    invoke-virtual {p1, v8, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 890
    :goto_1
    if-ge v2, v1, :cond_2

    .line 891
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v7

    int-to-float v7, v7

    sub-float v8, v3, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    add-float/2addr v7, v8

    iget v8, v4, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v7, v8

    .line 892
    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lmodmenu/LuaEditor$LineGutter;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v6, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 894
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 895
    return-void
.end method
