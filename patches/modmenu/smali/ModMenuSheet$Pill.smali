.class final Lmodmenu/ModMenuSheet$Pill;
.super Landroid/graphics/drawable/Drawable;
.source "ModMenuSheet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodmenu/ModMenuSheet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Pill"
.end annotation


# instance fields
.field private final h:I

.field private final shape:Landroid/graphics/drawable/GradientDrawable;

.field private final w:I


# direct methods
.method constructor <init>(Landroid/graphics/drawable/GradientDrawable;II)V
    .locals 0

    .line 961
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 962
    iput-object p1, p0, Lmodmenu/ModMenuSheet$Pill;->shape:Landroid/graphics/drawable/GradientDrawable;

    .line 963
    iput p2, p0, Lmodmenu/ModMenuSheet$Pill;->w:I

    .line 964
    iput p3, p0, Lmodmenu/ModMenuSheet$Pill;->h:I

    .line 965
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 969
    iget-object v0, p0, Lmodmenu/ModMenuSheet$Pill;->shape:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lmodmenu/ModMenuSheet$Pill;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 970
    iget-object v0, p0, Lmodmenu/ModMenuSheet$Pill;->shape:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 971
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 995
    iget v0, p0, Lmodmenu/ModMenuSheet$Pill;->h:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 990
    iget v0, p0, Lmodmenu/ModMenuSheet$Pill;->w:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .line 985
    const/4 v0, -0x3

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 975
    iget-object v0, p0, Lmodmenu/ModMenuSheet$Pill;->shape:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 976
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 980
    iget-object v0, p0, Lmodmenu/ModMenuSheet$Pill;->shape:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 981
    return-void
.end method
