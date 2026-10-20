.class final Lmodmenu/BetterInput$ColorWheelView;
.super Landroid/view/View;
.source "BetterInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodmenu/BetterInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ColorWheelView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodmenu/BetterInput$ColorWheelView$Listener;
    }
.end annotation


# static fields
.field private static final SIZE:I = 0xdc


# instance fields
.field private final hsv:[F

.field private final listener:Lmodmenu/BetterInput$ColorWheelView$Listener;

.field private radius:F

.field private wheel:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lmodmenu/BetterInput$ColorWheelView$Listener;)V
    .locals 0

    .line 827
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 822
    const/4 p1, 0x3

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    iput-object p1, p0, Lmodmenu/BetterInput$ColorWheelView;->hsv:[F

    .line 828
    iput-object p2, p0, Lmodmenu/BetterInput$ColorWheelView;->listener:Lmodmenu/BetterInput$ColorWheelView$Listener;

    .line 829
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private dp(I)I
    .locals 1

    .line 906
    int-to-float p1, p1

    invoke-virtual {p0}, Lmodmenu/BetterInput$ColorWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private pointer()[F
    .locals 13

    .line 897
    iget-object v0, p0, Lmodmenu/BetterInput$ColorWheelView;->hsv:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    .line 898
    iget-object v0, p0, Lmodmenu/BetterInput$ColorWheelView;->hsv:[F

    const/4 v4, 0x1

    aget v0, v0, v4

    iget v5, p0, Lmodmenu/BetterInput$ColorWheelView;->radius:F

    mul-float v0, v0, v5

    .line 899
    nop

    .line 900
    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lmodmenu/BetterInput$ColorWheelView;->dp(I)I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lmodmenu/BetterInput$ColorWheelView;->wheel:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    float-to-double v11, v0

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v11

    double-to-float v0, v9

    add-float/2addr v6, v0

    .line 901
    invoke-direct {p0, v5}, Lmodmenu/BetterInput$ColorWheelView;->dp(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v5, p0, Lmodmenu/BetterInput$ColorWheelView;->wheel:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v8

    add-float/2addr v0, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v11

    double-to-float v2, v2

    add-float/2addr v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    aput v6, v2, v1

    aput v0, v2, v4

    .line 899
    return-object v2
.end method


# virtual methods
.method current()I
    .locals 1

    .line 893
    iget-object v0, p0, Lmodmenu/BetterInput$ColorWheelView;->hsv:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 858
    iget-object v0, p0, Lmodmenu/BetterInput$ColorWheelView;->wheel:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lmodmenu/BetterInput$ColorWheelView;->wheel:Landroid/graphics/Bitmap;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lmodmenu/BetterInput$ColorWheelView;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0, v1}, Lmodmenu/BetterInput$ColorWheelView;->dp(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 861
    :cond_0
    invoke-direct {p0}, Lmodmenu/BetterInput$ColorWheelView;->pointer()[F

    move-result-object v0

    .line 862
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 863
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 864
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lmodmenu/BetterInput$ColorWheelView;->dp(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 865
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 866
    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v0, v0, v3

    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lmodmenu/BetterInput$ColorWheelView;->dp(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v0, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 867
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 11

    .line 833
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 p3, 0x6

    invoke-direct {p0, p3}, Lmodmenu/BetterInput$ColorWheelView;->dp(I)I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p1, p3

    iput p1, p0, Lmodmenu/BetterInput$ColorWheelView;->radius:F

    .line 834
    iget p1, p0, Lmodmenu/BetterInput$ColorWheelView;->radius:F

    mul-float p1, p1, p2

    float-to-int p1, p1

    const/4 p3, 0x1

    invoke-static {p3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 835
    mul-int p4, p1, p1

    new-array p4, p4, [I

    .line 836
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    aput v2, v0, p3

    const/4 v3, 0x2

    aput v2, v0, v3

    .line 837
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    .line 838
    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_1

    .line 839
    int-to-float v5, v4

    int-to-float v6, p1

    div-float/2addr v6, p2

    sub-float/2addr v5, v6

    .line 840
    int-to-float v7, v2

    sub-float/2addr v7, v6

    .line 841
    mul-float v6, v5, v5

    mul-float v8, v7, v7

    add-float/2addr v6, v8

    float-to-double v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v6, v8

    .line 842
    iget v8, p0, Lmodmenu/BetterInput$ColorWheelView;->radius:F

    cmpl-float v8, v6, v8

    if-lez v8, :cond_0

    .line 843
    mul-int v5, v2, p1

    add-int/2addr v5, v4

    aput v1, p4, v5

    .line 844
    goto :goto_2

    .line 846
    :cond_0
    float-to-double v7, v7

    float-to-double v9, v5

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v5, v7

    .line 847
    const/high16 v7, 0x43b40000    # 360.0f

    add-float/2addr v5, v7

    rem-float/2addr v5, v7

    aput v5, v0, v1

    .line 848
    iget v5, p0, Lmodmenu/BetterInput$ColorWheelView;->radius:F

    div-float/2addr v6, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    aput v6, v0, p3

    .line 849
    aput v5, v0, v3

    .line 850
    mul-int v5, v2, p1

    add-int/2addr v5, v4

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    aput v6, p4, v5

    .line 838
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 837
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 853
    :cond_2
    sget-object p2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p1, p1, p2}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lmodmenu/BetterInput$ColorWheelView;->wheel:Landroid/graphics/Bitmap;

    .line 854
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 871
    iget-object v0, p0, Lmodmenu/BetterInput$ColorWheelView;->wheel:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 872
    return v1

    .line 874
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v2, 0x6

    invoke-direct {p0, v2}, Lmodmenu/BetterInput$ColorWheelView;->dp(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lmodmenu/BetterInput$ColorWheelView;->wheel:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    sub-float/2addr v0, v3

    .line 875
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v2}, Lmodmenu/BetterInput$ColorWheelView;->dp(I)I

    move-result v2

    int-to-float v2, v2

    iget-object v4, p0, Lmodmenu/BetterInput$ColorWheelView;->wheel:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    add-float/2addr v2, v4

    sub-float/2addr v3, v2

    .line 876
    mul-float v2, v0, v0

    mul-float v4, v3, v3

    add-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 877
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lmodmenu/BetterInput$ColorWheelView;->radius:F

    cmpl-float p1, v2, p1

    if-lez p1, :cond_1

    .line 878
    return v1

    .line 880
    :cond_1
    iget-object p1, p0, Lmodmenu/BetterInput$ColorWheelView;->hsv:[F

    float-to-double v3, v3

    float-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v0, v3

    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v0, v3

    rem-float/2addr v0, v3

    aput v0, p1, v1

    .line 881
    iget-object p1, p0, Lmodmenu/BetterInput$ColorWheelView;->hsv:[F

    iget v0, p0, Lmodmenu/BetterInput$ColorWheelView;->radius:F

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 882
    invoke-virtual {p0}, Lmodmenu/BetterInput$ColorWheelView;->invalidate()V

    .line 883
    iget-object p1, p0, Lmodmenu/BetterInput$ColorWheelView;->listener:Lmodmenu/BetterInput$ColorWheelView$Listener;

    invoke-virtual {p0}, Lmodmenu/BetterInput$ColorWheelView;->current()I

    move-result v0

    invoke-interface {p1, v0}, Lmodmenu/BetterInput$ColorWheelView$Listener;->onColor(I)V

    .line 884
    return v1
.end method

.method setValue(F)V
    .locals 2

    .line 888
    iget-object v0, p0, Lmodmenu/BetterInput$ColorWheelView;->hsv:[F

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/4 v1, 0x2

    aput p1, v0, v1

    .line 889
    iget-object p1, p0, Lmodmenu/BetterInput$ColorWheelView;->listener:Lmodmenu/BetterInput$ColorWheelView$Listener;

    invoke-virtual {p0}, Lmodmenu/BetterInput$ColorWheelView;->current()I

    move-result v0

    invoke-interface {p1, v0}, Lmodmenu/BetterInput$ColorWheelView$Listener;->onColor(I)V

    .line 890
    return-void
.end method
