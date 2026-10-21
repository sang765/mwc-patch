.class final Lmodmenu/BetterInput;
.super Ljava/lang/Object;
.source "BetterInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodmenu/BetterInput$ColorWheelView;
    }
.end annotation


# static fields
.field private static final EMOJI:[[Ljava/lang/String;

.field private static final FILE:Ljava/lang/String; = "mw_bi.json"

.field private static final POLL_MS:J = 0x3cL

.field private static final SHORT_COLORS:[I

.field private static final TAG:Ljava/lang/String; = "ModMenu"

.field private static final TIMEOUT_MS:J = 0xfa0L

.field private static current:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lmodmenu/BetterInput;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blinkAnim:Landroid/animation/ValueAnimator;

.field private colorA:I

.field private colorB:I

.field private final colorPanel:Landroid/widget/LinearLayout;

.field private final counter:Landroid/widget/TextView;

.field private final dialog:Landroid/app/Dialog;

.field private final fillBtn:Landroid/widget/Button;

.field private final hexView:Landroid/widget/TextView;

.field private final host:Landroid/app/Activity;

.field private final input:Landroid/widget/EditText;

.field private final p:Lmodmenu/Palette;

.field private final preview:Landroid/widget/TextView;

.field private final sendBtn:Landroid/widget/Button;

.field private final wheel:Lmodmenu/BetterInput$ColorWheelView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 73
    const/16 v0, 0x24

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "101"

    const-string v2, "xieyanxiao"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "102"

    const-string v2, "baimu"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "103"

    const-string v2, "shengqi"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "104"

    const-string v2, "xianqi"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "105"

    const-string v2, "daku"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string v1, "106"

    const-string v2, "qinqin"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "107"

    const-string v2, "xihuan"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string v1, "108"

    const-string v3, "wabikong"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-string v1, "109"

    const-string v3, "dianzan"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-string v1, "110"

    const-string v3, "haixiu"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-string v1, "111"

    const-string v3, "liulei"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-string v1, "112"

    const-string v3, "keai"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-string v1, "113"

    const-string v3, "shouqibao"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-string v1, "114"

    const-string v3, "kun"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const-string v1, "115"

    const-string v3, "jingya"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-string v1, "116"

    const-string v3, "yun"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-string v1, "117"

    const-string v3, "shaojiao"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    aput-object v1, v0, v3

    const-string v1, "118"

    const-string v3, "bye"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x11

    aput-object v1, v0, v3

    const-string v1, "301"

    const-string v3, "hua_xieyanxiao"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x12

    aput-object v1, v0, v3

    const-string v1, "302"

    const-string v3, "hua_baimu"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x13

    aput-object v1, v0, v3

    const-string v1, "303"

    const-string v3, "hua_shengqi"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x14

    aput-object v1, v0, v3

    const-string v1, "304"

    const-string v3, "hua_xianqi"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x15

    aput-object v1, v0, v3

    const-string v1, "305"

    const-string v3, "hua_daku"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x16

    aput-object v1, v0, v3

    const-string v1, "306"

    const-string v3, "hua_qinqin"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x17

    aput-object v1, v0, v3

    const-string v1, "307"

    const-string v3, "hua_xihuan"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x18

    aput-object v1, v0, v3

    const-string v1, "308"

    const-string v3, "hua_wabikong"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x19

    aput-object v1, v0, v3

    const-string v1, "309"

    const-string v3, "hua_dianzan"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1a

    aput-object v1, v0, v3

    const-string v1, "310"

    const-string v3, "hua_haixiu"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1b

    aput-object v1, v0, v3

    const-string v1, "311"

    const-string v3, "hua_liulei"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1c

    aput-object v1, v0, v3

    const-string v1, "312"

    const-string v3, "hua_keai"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1d

    aput-object v1, v0, v3

    const-string v1, "313"

    const-string v3, "hua_shouqibao"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1e

    aput-object v1, v0, v3

    const-string v1, "314"

    const-string v3, "hua_kun"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x1f

    aput-object v1, v0, v3

    const-string v1, "315"

    const-string v3, "hua_jingya"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x20

    aput-object v1, v0, v3

    const-string v1, "316"

    const-string v3, "hua_yun"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x21

    aput-object v1, v0, v3

    const-string v1, "317"

    const-string v3, "hua_shaojiao"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x22

    aput-object v1, v0, v3

    const-string v1, "318"

    const-string v3, "hua_bye"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x23

    aput-object v1, v0, v3

    sput-object v0, Lmodmenu/BetterInput;->EMOJI:[[Ljava/lang/String;

    .line 91
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lmodmenu/BetterInput;->SHORT_COLORS:[I

    .line 101
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lmodmenu/BetterInput;->current:Ljava/lang/ref/WeakReference;

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff0100
        -0xffff01
        -0x1000000
        -0x100
        -0x1
    .end array-data
.end method

.method private constructor <init>(Landroid/app/Activity;Lmodmenu/Palette;)V
    .locals 20

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/high16 v3, -0x10000

    iput v3, v0, Lmodmenu/BetterInput;->colorA:I

    .line 119
    const/4 v3, -0x1

    iput v3, v0, Lmodmenu/BetterInput;->colorB:I

    .line 135
    iput-object v1, v0, Lmodmenu/BetterInput;->host:Landroid/app/Activity;

    .line 136
    iput-object v2, v0, Lmodmenu/BetterInput;->p:Lmodmenu/Palette;

    .line 137
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v4, Lmodmenu/BetterInput;->current:Ljava/lang/ref/WeakReference;

    .line 138
    new-instance v4, Landroid/app/Dialog;

    const v5, 0x1030010

    invoke-direct {v4, v1, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v4, v0, Lmodmenu/BetterInput;->dialog:Landroid/app/Dialog;

    .line 140
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 141
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    const/16 v6, 0xe

    invoke-direct {v0, v6}, Lmodmenu/BetterInput;->dp(I)I

    move-result v7

    invoke-direct {v0, v6}, Lmodmenu/BetterInput;->dp(I)I

    move-result v8

    invoke-direct {v0, v6}, Lmodmenu/BetterInput;->dp(I)I

    move-result v9

    invoke-direct {v0, v6}, Lmodmenu/BetterInput;->dp(I)I

    move-result v6

    invoke-virtual {v4, v7, v8, v9, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 143
    const/16 v6, 0x10

    invoke-direct {v0, v6}, Lmodmenu/BetterInput;->dp(I)I

    move-result v7

    iget v8, v2, Lmodmenu/Palette;->surface:I

    invoke-direct {v0, v7, v8}, Lmodmenu/BetterInput;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 145
    new-instance v7, Landroid/widget/TextView;

    invoke-direct {v7, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lmodmenu/BetterInput;->preview:Landroid/widget/TextView;

    .line 146
    iget-object v7, v0, Lmodmenu/BetterInput;->preview:Landroid/widget/TextView;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 147
    iget-object v7, v0, Lmodmenu/BetterInput;->preview:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v7, v0, Lmodmenu/BetterInput;->preview:Landroid/widget/TextView;

    const v9, 0x800003

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 149
    iget-object v7, v0, Lmodmenu/BetterInput;->preview:Landroid/widget/TextView;

    const/16 v10, 0xa

    invoke-direct {v0, v10}, Lmodmenu/BetterInput;->dp(I)I

    move-result v11

    const/16 v12, 0x8

    invoke-direct {v0, v12}, Lmodmenu/BetterInput;->dp(I)I

    move-result v13

    invoke-direct {v0, v10}, Lmodmenu/BetterInput;->dp(I)I

    move-result v14

    invoke-direct {v0, v12}, Lmodmenu/BetterInput;->dp(I)I

    move-result v15

    invoke-virtual {v7, v11, v13, v14, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 150
    iget-object v7, v0, Lmodmenu/BetterInput;->preview:Landroid/widget/TextView;

    invoke-direct {v0, v10}, Lmodmenu/BetterInput;->dp(I)I

    move-result v11

    const v13, -0xebebec    # -1.9683E38f

    invoke-direct {v0, v11, v13}, Lmodmenu/BetterInput;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    iget-object v7, v0, Lmodmenu/BetterInput;->preview:Landroid/widget/TextView;

    const/4 v11, 0x2

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setMinLines(I)V

    .line 152
    iget-object v7, v0, Lmodmenu/BetterInput;->preview:Landroid/widget/TextView;

    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-direct {v0, v13}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v13

    invoke-virtual {v4, v7, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    .line 155
    iget-object v7, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 156
    iget-object v7, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    iget v8, v2, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setTextColor(I)V

    .line 157
    iget-object v7, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    iget v8, v2, Lmodmenu/Palette;->onSurfaceVariant:I

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 158
    iget-object v7, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    const-string v8, "mod_bi_hint"

    invoke-static {v1, v8}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v7, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v7, v11}, Landroid/widget/EditText;->setMinLines(I)V

    .line 160
    iget-object v7, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 161
    iget-object v7, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setGravity(I)V

    .line 162
    iget-object v7, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-direct {v0, v10}, Lmodmenu/BetterInput;->dp(I)I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v0, v8, v9}, Lmodmenu/BetterInput;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 164
    invoke-direct {v0, v12}, Lmodmenu/BetterInput;->dp(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 165
    iget-object v8, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v4, v8, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 168
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 169
    const-string v18, "#W"

    const-string v19, "#r"

    const-string v13, "#R"

    const-string v14, "#G"

    const-string v15, "#B"

    const-string v16, "#K"

    const-string v17, "#Y"

    filled-new-array/range {v13 .. v19}, [Ljava/lang/String;

    move-result-object v8

    .line 170
    const/4 v11, 0x0

    :goto_0
    const/4 v13, 0x6

    const/4 v14, 0x7

    if-ge v11, v14, :cond_0

    .line 171
    aget-object v14, v8, v11

    .line 172
    invoke-direct {v0, v14}, Lmodmenu/BetterInput;->pill(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v15

    .line 173
    new-instance v6, Lmodmenu/BetterInput$1;

    invoke-direct {v6, v0, v14}, Lmodmenu/BetterInput$1;-><init>(Lmodmenu/BetterInput;Ljava/lang/String;)V

    invoke-virtual {v15, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 180
    invoke-direct {v0, v13}, Lmodmenu/BetterInput;->dp(I)I

    move-result v13

    iput v13, v6, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 181
    invoke-virtual {v7, v15, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    add-int/lit8 v11, v11, 0x1

    const/16 v6, 0x10

    goto :goto_0

    .line 183
    :cond_0
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-direct {v0, v6}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    .line 184
    invoke-direct {v0, v12}, Lmodmenu/BetterInput;->dp(I)I

    move-result v8

    iput v8, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 185
    invoke-virtual {v4, v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 188
    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 189
    const-string v7, "mod_bi_color"

    invoke-static {v1, v7}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->pill(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v7

    .line 190
    new-instance v8, Lmodmenu/BetterInput$2;

    invoke-direct {v8, v0}, Lmodmenu/BetterInput$2;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    const-string v7, "mod_bi_blink"

    invoke-static {v1, v7}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->pill(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v7

    .line 199
    new-instance v8, Lmodmenu/BetterInput$3;

    invoke-direct {v8, v0}, Lmodmenu/BetterInput$3;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 206
    invoke-direct {v0, v13}, Lmodmenu/BetterInput;->dp(I)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 207
    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    const-string v7, "mod_bi_gradient"

    invoke-static {v1, v7}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->pill(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v7

    .line 209
    new-instance v8, Lmodmenu/BetterInput$4;

    invoke-direct {v8, v0}, Lmodmenu/BetterInput$4;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 216
    invoke-direct {v0, v13}, Lmodmenu/BetterInput;->dp(I)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 217
    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    const-string v7, "mod_bi_icons"

    invoke-static {v1, v7}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->pill(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v7

    .line 219
    new-instance v8, Lmodmenu/BetterInput$5;

    invoke-direct {v8, v0}, Lmodmenu/BetterInput$5;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 226
    invoke-direct {v0, v13}, Lmodmenu/BetterInput;->dp(I)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 227
    invoke-virtual {v6, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 229
    invoke-direct {v0, v12}, Lmodmenu/BetterInput;->dp(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 230
    invoke-virtual {v4, v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 232
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, v0, Lmodmenu/BetterInput;->colorPanel:Landroid/widget/LinearLayout;

    .line 233
    iget-object v6, v0, Lmodmenu/BetterInput;->colorPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 234
    iget-object v5, v0, Lmodmenu/BetterInput;->colorPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    new-instance v5, Lmodmenu/BetterInput$ColorWheelView;

    new-instance v6, Lmodmenu/BetterInput$6;

    invoke-direct {v6, v0}, Lmodmenu/BetterInput$6;-><init>(Lmodmenu/BetterInput;)V

    invoke-direct {v5, v1, v6}, Lmodmenu/BetterInput$ColorWheelView;-><init>(Landroid/app/Activity;Lmodmenu/BetterInput$ColorWheelView$Listener;)V

    iput-object v5, v0, Lmodmenu/BetterInput;->wheel:Lmodmenu/BetterInput$ColorWheelView;

    .line 241
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-direct {v0, v5}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 242
    invoke-direct {v0, v12}, Lmodmenu/BetterInput;->dp(I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 243
    iget-object v6, v0, Lmodmenu/BetterInput;->colorPanel:Landroid/widget/LinearLayout;

    iget-object v7, v0, Lmodmenu/BetterInput;->wheel:Lmodmenu/BetterInput$ColorWheelView;

    invoke-virtual {v6, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    new-instance v5, Landroid/widget/SeekBar;

    invoke-direct {v5, v1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    .line 246
    const/16 v6, 0xff

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setMax(I)V

    .line 247
    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 248
    new-instance v6, Lmodmenu/BetterInput$7;

    invoke-direct {v6, v0}, Lmodmenu/BetterInput$7;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 264
    iget-object v6, v0, Lmodmenu/BetterInput;->colorPanel:Landroid/widget/LinearLayout;

    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lmodmenu/BetterInput;->hexView:Landroid/widget/TextView;

    .line 267
    iget-object v5, v0, Lmodmenu/BetterInput;->hexView:Landroid/widget/TextView;

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    .line 268
    iget-object v5, v0, Lmodmenu/BetterInput;->hexView:Landroid/widget/TextView;

    iget v6, v2, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    iget-object v5, v0, Lmodmenu/BetterInput;->hexView:Landroid/widget/TextView;

    sget-object v6, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 270
    iget-object v5, v0, Lmodmenu/BetterInput;->hexView:Landroid/widget/TextView;

    const/16 v6, 0x11

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 271
    iget-object v5, v0, Lmodmenu/BetterInput;->hexView:Landroid/widget/TextView;

    const-string v7, "#cFF0000"

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-direct {v0, v5}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 273
    invoke-direct {v0, v13}, Lmodmenu/BetterInput;->dp(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 274
    iget-object v7, v0, Lmodmenu/BetterInput;->colorPanel:Landroid/widget/LinearLayout;

    iget-object v8, v0, Lmodmenu/BetterInput;->hexView:Landroid/widget/TextView;

    invoke-virtual {v7, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 278
    const-string v7, "mod_bi_color_insert"

    invoke-static {v1, v7}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->pill(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v7

    .line 279
    new-instance v8, Lmodmenu/BetterInput$8;

    invoke-direct {v8, v0}, Lmodmenu/BetterInput$8;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-direct {v0, v8}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    const-string v7, "A"

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->pill(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v7

    .line 287
    new-instance v8, Lmodmenu/BetterInput$9;

    invoke-direct {v8, v0}, Lmodmenu/BetterInput$9;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 294
    invoke-direct {v0, v13}, Lmodmenu/BetterInput;->dp(I)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 295
    invoke-virtual {v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    const-string v7, "B"

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->pill(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v7

    .line 297
    new-instance v8, Lmodmenu/BetterInput$10;

    invoke-direct {v8, v0}, Lmodmenu/BetterInput$10;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    .line 304
    invoke-direct {v0, v13}, Lmodmenu/BetterInput;->dp(I)I

    move-result v11

    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 305
    invoke-virtual {v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 307
    invoke-direct {v0, v13}, Lmodmenu/BetterInput;->dp(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 308
    iget-object v8, v0, Lmodmenu/BetterInput;->colorPanel:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    iget-object v5, v0, Lmodmenu/BetterInput;->colorPanel:Landroid/widget/LinearLayout;

    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    new-instance v5, Landroid/widget/TextView;

    invoke-direct {v5, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lmodmenu/BetterInput;->counter:Landroid/widget/TextView;

    .line 312
    iget-object v5, v0, Lmodmenu/BetterInput;->counter:Landroid/widget/TextView;

    const/high16 v7, 0x41400000    # 12.0f

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 313
    iget-object v5, v0, Lmodmenu/BetterInput;->counter:Landroid/widget/TextView;

    iget v7, v2, Lmodmenu/Palette;->onSurfaceVariant:I

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 314
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-direct {v0, v5}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    .line 315
    invoke-direct {v0, v12}, Lmodmenu/BetterInput;->dp(I)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 316
    iget-object v7, v0, Lmodmenu/BetterInput;->counter:Landroid/widget/TextView;

    invoke-virtual {v4, v7, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 319
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 320
    const-string v7, "mod_bi_fill"

    invoke-static {v1, v7}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->pill(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v7

    iput-object v7, v0, Lmodmenu/BetterInput;->fillBtn:Landroid/widget/Button;

    .line 321
    iget-object v7, v0, Lmodmenu/BetterInput;->fillBtn:Landroid/widget/Button;

    new-instance v8, Lmodmenu/BetterInput$11;

    invoke-direct {v8, v0}, Lmodmenu/BetterInput$11;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v7, v0, Lmodmenu/BetterInput;->fillBtn:Landroid/widget/Button;

    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-direct {v0, v8}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 328
    const-string v7, "mod_bi_send"

    invoke-static {v1, v7}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->pill(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v7

    iput-object v7, v0, Lmodmenu/BetterInput;->sendBtn:Landroid/widget/Button;

    .line 329
    iget-object v7, v0, Lmodmenu/BetterInput;->sendBtn:Landroid/widget/Button;

    iget v8, v2, Lmodmenu/Palette;->onPrimary:I

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 330
    iget-object v7, v0, Lmodmenu/BetterInput;->sendBtn:Landroid/widget/Button;

    const/16 v8, 0x14

    invoke-direct {v0, v8}, Lmodmenu/BetterInput;->dp(I)I

    move-result v8

    iget v2, v2, Lmodmenu/Palette;->primary:I

    invoke-direct {v0, v8, v2}, Lmodmenu/BetterInput;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 331
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 332
    invoke-direct {v0, v13}, Lmodmenu/BetterInput;->dp(I)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 333
    iget-object v7, v0, Lmodmenu/BetterInput;->sendBtn:Landroid/widget/Button;

    invoke-virtual {v5, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 334
    iget-object v2, v0, Lmodmenu/BetterInput;->sendBtn:Landroid/widget/Button;

    new-instance v7, Lmodmenu/BetterInput$12;

    invoke-direct {v7, v0}, Lmodmenu/BetterInput$12;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 340
    const-string v2, "mod_close"

    invoke-static {v1, v2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lmodmenu/BetterInput;->pill(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v2

    .line 341
    new-instance v7, Lmodmenu/BetterInput$13;

    invoke-direct {v7, v0}, Lmodmenu/BetterInput$13;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 347
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    invoke-direct {v0, v7}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    .line 348
    invoke-direct {v0, v13}, Lmodmenu/BetterInput;->dp(I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 349
    invoke-virtual {v5, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    invoke-direct {v0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-direct {v0, v2}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 351
    invoke-direct {v0, v10}, Lmodmenu/BetterInput;->dp(I)I

    move-result v7

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 352
    invoke-virtual {v4, v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 354
    iget-object v2, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    new-instance v5, Lmodmenu/BetterInput$14;

    invoke-direct {v5, v0}, Lmodmenu/BetterInput$14;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 369
    iget-object v2, v0, Lmodmenu/BetterInput;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/view/Window;->setLayout(II)V

    .line 371
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 372
    new-instance v5, Lmodmenu/BetterInput$15;

    invoke-direct {v5, v0}, Lmodmenu/BetterInput$15;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    new-instance v5, Landroid/widget/ScrollView;

    invoke-direct {v5, v1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 379
    invoke-virtual {v5, v9}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 380
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    invoke-direct {v1, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v4, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 383
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 386
    iput v6, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 387
    const/16 v3, 0x10

    invoke-direct {v0, v3}, Lmodmenu/BetterInput;->dp(I)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 388
    invoke-direct {v0, v3}, Lmodmenu/BetterInput;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 389
    invoke-virtual {v2, v5, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v1, v0, Lmodmenu/BetterInput;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 391
    iget-object v1, v0, Lmodmenu/BetterInput;->dialog:Landroid/app/Dialog;

    new-instance v2, Lmodmenu/BetterInput$16;

    invoke-direct {v2, v0}, Lmodmenu/BetterInput$16;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 400
    invoke-direct {v0}, Lmodmenu/BetterInput;->renderPreview()V

    .line 401
    iget-object v1, v0, Lmodmenu/BetterInput;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 402
    return-void
.end method

.method static synthetic access$000(Lmodmenu/BetterInput;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lmodmenu/BetterInput;->insert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lmodmenu/BetterInput;)Landroid/widget/LinearLayout;
    .locals 0

    .line 66
    iget-object p0, p0, Lmodmenu/BetterInput;->colorPanel:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$1000(Lmodmenu/BetterInput;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lmodmenu/BetterInput;->renderPreview()V

    return-void
.end method

.method static synthetic access$1100(Lmodmenu/BetterInput;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 66
    iget-object p0, p0, Lmodmenu/BetterInput;->blinkAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$1102(Lmodmenu/BetterInput;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 66
    iput-object p1, p0, Lmodmenu/BetterInput;->blinkAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1200(Lmodmenu/BetterInput;)Landroid/app/Activity;
    .locals 0

    .line 66
    iget-object p0, p0, Lmodmenu/BetterInput;->host:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$1300(Lmodmenu/BetterInput;I)I
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lmodmenu/BetterInput;->dp(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lmodmenu/BetterInput;)Lmodmenu/Palette;
    .locals 0

    .line 66
    iget-object p0, p0, Lmodmenu/BetterInput;->p:Lmodmenu/Palette;

    return-object p0
.end method

.method static synthetic access$1500(Lmodmenu/BetterInput;II)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lmodmenu/BetterInput;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lmodmenu/BetterInput;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 66
    invoke-direct {p0}, Lmodmenu/BetterInput;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lmodmenu/BetterInput;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lmodmenu/BetterInput;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800()[[Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lmodmenu/BetterInput;->EMOJI:[[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-static {p0}, Lmodmenu/BetterInput;->await([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lmodmenu/BetterInput;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lmodmenu/BetterInput;->applyGradient()V

    return-void
.end method

.method static synthetic access$2000(Lmodmenu/BetterInput;)Landroid/widget/Button;
    .locals 0

    .line 66
    iget-object p0, p0, Lmodmenu/BetterInput;->sendBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2100(Lmodmenu/BetterInput;)Landroid/widget/Button;
    .locals 0

    .line 66
    iget-object p0, p0, Lmodmenu/BetterInput;->fillBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2200(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-static {p0, p1}, Lmodmenu/BetterInput;->toast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lmodmenu/BetterInput;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lmodmenu/BetterInput;->preview:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lmodmenu/BetterInput;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lmodmenu/BetterInput;->pickEmoji()V

    return-void
.end method

.method static synthetic access$400(Lmodmenu/BetterInput;)Landroid/widget/TextView;
    .locals 0

    .line 66
    iget-object p0, p0, Lmodmenu/BetterInput;->hexView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$500(Lmodmenu/BetterInput;)Lmodmenu/BetterInput$ColorWheelView;
    .locals 0

    .line 66
    iget-object p0, p0, Lmodmenu/BetterInput;->wheel:Lmodmenu/BetterInput$ColorWheelView;

    return-object p0
.end method

.method static synthetic access$602(Lmodmenu/BetterInput;I)I
    .locals 0

    .line 66
    iput p1, p0, Lmodmenu/BetterInput;->colorA:I

    return p1
.end method

.method static synthetic access$702(Lmodmenu/BetterInput;I)I
    .locals 0

    .line 66
    iput p1, p0, Lmodmenu/BetterInput;->colorB:I

    return p1
.end method

.method static synthetic access$800(Lmodmenu/BetterInput;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lmodmenu/BetterInput;->dispatch(Z)V

    return-void
.end method

.method static synthetic access$900(Lmodmenu/BetterInput;)Landroid/app/Dialog;
    .locals 0

    .line 66
    iget-object p0, p0, Lmodmenu/BetterInput;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private applyGradient()V
    .locals 21

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 416
    iget-object v2, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 417
    const/4 v3, 0x0

    if-ltz v1, :cond_0

    if-ltz v2, :cond_0

    if-ne v1, v2, :cond_1

    .line 418
    :cond_0
    nop

    .line 419
    iget-object v1, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v2

    const/4 v1, 0x0

    .line 421
    :cond_1
    if-le v1, v2, :cond_2

    .line 422
    nop

    .line 423
    nop

    .line 424
    move/from16 v20, v2

    move v2, v1

    move/from16 v1, v20

    .line 426
    :cond_2
    iget-object v4, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 427
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 428
    return-void

    .line 430
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    const/4 v6, 0x3

    new-array v7, v6, [F

    .line 432
    new-array v8, v6, [F

    .line 433
    iget v9, v0, Lmodmenu/BetterInput;->colorA:I

    invoke-static {v9, v7}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 434
    iget v9, v0, Lmodmenu/BetterInput;->colorB:I

    invoke-static {v9, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 435
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    .line 438
    aget v10, v8, v3

    aget v11, v7, v3

    sub-float/2addr v10, v11

    .line 439
    const/high16 v11, 0x43340000    # 180.0f

    const/high16 v12, 0x43b40000    # 360.0f

    cmpl-float v11, v10, v11

    if-lez v11, :cond_4

    .line 440
    sub-float/2addr v10, v12

    goto :goto_0

    .line 441
    :cond_4
    const/high16 v11, -0x3ccc0000    # -180.0f

    cmpg-float v11, v10, v11

    if-gez v11, :cond_5

    .line 442
    add-float/2addr v10, v12

    .line 444
    :cond_5
    :goto_0
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_8

    .line 445
    const/4 v13, 0x1

    if-ne v9, v13, :cond_6

    const/4 v14, 0x0

    goto :goto_2

    :cond_6
    int-to-float v14, v11

    add-int/lit8 v15, v9, -0x1

    int-to-float v15, v15

    div-float/2addr v14, v15

    .line 446
    :goto_2
    new-array v15, v6, [F

    .line 447
    aget v16, v7, v3

    mul-float v17, v10, v14

    add-float v16, v16, v17

    add-float v16, v16, v12

    rem-float v16, v16, v12

    aput v16, v15, v3

    .line 448
    const/4 v3, 0x1

    const/16 v16, 0x0

    :goto_3
    if-ge v3, v6, :cond_7

    .line 449
    aget v17, v7, v3

    aget v18, v8, v3

    aget v19, v7, v3

    sub-float v18, v18, v19

    mul-float v18, v18, v14

    add-float v17, v17, v18

    aput v17, v15, v3

    .line 448
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 451
    :cond_7
    invoke-static {v15}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    const v14, 0xffffff

    and-int/2addr v3, v14

    .line 452
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v3, v13, v16

    const-string v3, "#c%06X"

    invoke-static {v14, v3, v13}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 453
    invoke-virtual {v4, v11}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 444
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 455
    :cond_8
    iget-object v3, v0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v1, v2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 456
    return-void
.end method

.method private static await([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xfa0

    add-long/2addr v0, v2

    .line 632
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    .line 633
    const/4 v2, 0x0

    :goto_1
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 634
    aget-object v3, p0, v2

    invoke-static {v3}, Lmodmenu/BetterInput;->state(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 635
    if-eqz v3, :cond_0

    .line 636
    return-object v3

    .line 633
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 640
    :cond_1
    const-wide/16 v2, 0x3c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 643
    goto :goto_0

    .line 641
    :catch_0
    move-exception p0

    .line 642
    nop

    .line 645
    :cond_2
    const-string p0, "timeout"

    return-object p0
.end method

.method private dispatch(Z)V
    .locals 6

    .line 508
    iget-object v0, p0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 510
    iget-object p1, p0, Lmodmenu/BetterInput;->host:Landroid/app/Activity;

    iget-object v0, p0, Lmodmenu/BetterInput;->host:Landroid/app/Activity;

    const-string v1, "mod_bi_nothing"

    invoke-static {v0, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmodmenu/BetterInput;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 511
    return-void

    .line 513
    :cond_0
    invoke-direct {p0}, Lmodmenu/BetterInput;->paths()[Ljava/lang/String;

    move-result-object v1

    .line 514
    if-nez v1, :cond_1

    .line 515
    iget-object p1, p0, Lmodmenu/BetterInput;->host:Landroid/app/Activity;

    iget-object v0, p0, Lmodmenu/BetterInput;->host:Landroid/app/Activity;

    const-string v1, "mod_bi_fail"

    invoke-static {v0, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmodmenu/BetterInput;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 516
    return-void

    .line 518
    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 519
    new-instance v4, Ljava/io/File;

    aget-object v5, v1, v3

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 518
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 521
    :cond_2
    iget-object v3, p0, Lmodmenu/BetterInput;->sendBtn:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 522
    iget-object v3, p0, Lmodmenu/BetterInput;->fillBtn:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 524
    const/4 v3, 0x1

    :try_start_0
    aget-object v4, v1, v2

    aget-object v5, v1, v3

    invoke-static {v4, v5, v0, p1}, Lmodmenu/BetterInput;->script(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lorg/appplay/lib/CommonNatives;->javaCallLuaEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    nop

    .line 532
    iget-object v0, p0, Lmodmenu/BetterInput;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 533
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lmodmenu/BetterInput$18;

    invoke-direct {v3, p0, v1, v0, p1}, Lmodmenu/BetterInput$18;-><init>(Lmodmenu/BetterInput;[Ljava/lang/String;Landroid/content/Context;Z)V

    const-string p1, "mw-betterinput"

    invoke-direct {v2, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 555
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 556
    return-void

    .line 526
    :catch_0
    move-exception p1

    .line 527
    const-string v0, "ModMenu"

    const-string v1, "better input dispatch failed"

    invoke-static {v0, v1, p1}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 528
    iget-object p1, p0, Lmodmenu/BetterInput;->sendBtn:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 529
    iget-object p1, p0, Lmodmenu/BetterInput;->fillBtn:Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 530
    return-void
.end method

.method private dp(I)I
    .locals 1

    .line 823
    int-to-float p1, p1

    iget-object v0, p0, Lmodmenu/BetterInput;->host:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

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

.method private static emojiName(I)Ljava/lang/String;
    .locals 3

    .line 758
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lmodmenu/BetterInput;->EMOJI:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 759
    sget-object v2, Lmodmenu/BetterInput;->EMOJI:[[Ljava/lang/String;

    aget-object v2, v2, v1

    aget-object v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 760
    sget-object p0, Lmodmenu/BetterInput;->EMOJI:[[Ljava/lang/String;

    aget-object p0, p0, v1

    const/4 v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    .line 758
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 763
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static esc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 607
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 608
    :cond_0
    nop

    .line 607
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 608
    const-string v0, "\r"

    const-string v1, "\\r"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 607
    :goto_0
    return-object p0
.end method

.method private insert(Ljava/lang/String;)V
    .locals 2

    .line 405
    iget-object v0, p0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 406
    iget-object v1, p0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 407
    return-void
.end method

.method private match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 812
    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 813
    return-object p1
.end method

.method private static parseDec(Ljava/lang/String;)I
    .locals 0

    .line 776
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 777
    :catch_0
    move-exception p0

    .line 778
    const/4 p0, -0x1

    return p0
.end method

.method private static parseHex(Ljava/lang/String;)I
    .locals 2

    .line 768
    const/16 v0, 0x10

    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v0

    return p0

    .line 769
    :catch_0
    move-exception p0

    .line 770
    const/4 p0, -0x1

    return p0
.end method

.method private paths()[Ljava/lang/String;
    .locals 5

    .line 614
    const-string v0, "mw_bi.json"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lmodmenu/BetterInput;->host:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 615
    if-nez v2, :cond_0

    .line 616
    return-object v1

    .line 618
    :cond_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 619
    iget-object v3, p0, Lmodmenu/BetterInput;->host:Landroid/app/Activity;

    invoke-virtual {v3, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 620
    if-nez v3, :cond_1

    .line 621
    filled-new-array {v2, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 623
    :cond_1
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 624
    :catch_0
    move-exception v0

    .line 625
    const-string v2, "ModMenu"

    const-string v3, "paths failed"

    invoke-static {v2, v3, v0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 626
    return-object v1
.end method

.method private pickEmoji()V
    .locals 6

    .line 459
    sget-object v0, Lmodmenu/BetterInput;->EMOJI:[[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 460
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lmodmenu/BetterInput;->EMOJI:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 461
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#A"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lmodmenu/BetterInput;->EMOJI:[[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lmodmenu/BetterInput;->EMOJI:[[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 460
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    :cond_0
    new-instance v1, Lmodmenu/BetterInput$17;

    iget-object v2, p0, Lmodmenu/BetterInput;->host:Landroid/app/Activity;

    const v3, 0x1030010

    invoke-direct {v1, p0, v2, v3, v0}, Lmodmenu/BetterInput$17;-><init>(Lmodmenu/BetterInput;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 498
    invoke-virtual {v1}, Lmodmenu/BetterInput$17;->show()V

    .line 499
    return-void
.end method

.method private pill(Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 791
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lmodmenu/BetterInput;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 792
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 793
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 794
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 795
    iget-object v1, p0, Lmodmenu/BetterInput;->p:Lmodmenu/Palette;

    iget v1, v1, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 796
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 797
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 798
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 799
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lmodmenu/BetterInput;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lmodmenu/BetterInput;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, p1, v1, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 800
    const/16 p1, 0x12

    invoke-direct {p0, p1}, Lmodmenu/BetterInput;->dp(I)I

    move-result p1

    const/high16 v1, 0x14000000

    invoke-direct {p0, p1, v1}, Lmodmenu/BetterInput;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 801
    return-object v0
.end method

.method private renderPreview()V
    .locals 13

    .line 679
    iget-object v0, p0, Lmodmenu/BetterInput;->input:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 680
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 681
    nop

    .line 682
    nop

    .line 683
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 684
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v4, v7, :cond_c

    .line 685
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 686
    const/16 v8, 0x23

    const/16 v9, 0x21

    if-ne v7, v8, :cond_b

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v8, v10, :cond_b

    .line 687
    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 688
    const/16 v10, 0x63

    const/high16 v11, -0x1000000

    if-eq v8, v10, :cond_0

    const/16 v10, 0x43

    if-ne v8, v10, :cond_2

    :cond_0
    add-int/lit8 v10, v4, 0x8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v12

    if-gt v10, v12, :cond_2

    .line 689
    add-int/lit8 v8, v4, 0x2

    invoke-virtual {v0, v8, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmodmenu/BetterInput;->parseHex(Ljava/lang/String;)I

    move-result v8

    .line 690
    if-ltz v8, :cond_1

    .line 691
    or-int v6, v8, v11

    .line 692
    nop

    .line 693
    move v4, v10

    goto :goto_0

    .line 695
    :cond_1
    goto/16 :goto_4

    :cond_2
    const/16 v10, 0x72

    if-eq v8, v10, :cond_a

    const/16 v10, 0x6e

    if-ne v8, v10, :cond_3

    goto/16 :goto_3

    .line 699
    :cond_3
    const/16 v10, 0x62

    if-eq v8, v10, :cond_8

    const/16 v10, 0x42

    if-ne v8, v10, :cond_4

    goto :goto_2

    .line 705
    :cond_4
    const/16 v10, 0x41

    if-eq v8, v10, :cond_6

    const/16 v10, 0x61

    if-ne v8, v10, :cond_5

    goto :goto_1

    .line 718
    :cond_5
    const-string v10, "RGBKYW"

    invoke-virtual {v10, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 719
    if-ltz v8, :cond_b

    .line 720
    sget-object v6, Lmodmenu/BetterInput;->SHORT_COLORS:[I

    aget v6, v6, v8

    const v7, 0xffffff

    and-int/2addr v6, v7

    or-int/2addr v6, v11

    .line 721
    add-int/lit8 v4, v4, 0x2

    .line 722
    goto :goto_0

    .line 706
    :cond_6
    :goto_1
    add-int/lit8 v8, v4, 0x2

    add-int/lit8 v10, v4, 0x5

    .line 707
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 706
    invoke-virtual {v0, v8, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lmodmenu/BetterInput;->parseDec(Ljava/lang/String;)I

    move-result v8

    .line 708
    if-lez v8, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v10, v11, :cond_7

    .line 709
    invoke-static {v8}, Lmodmenu/BetterInput;->emojiName(I)Ljava/lang/String;

    move-result-object v4

    .line 710
    const/16 v7, 0x5b

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v7

    const/16 v8, 0x5d

    invoke-virtual {v7, v8}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 711
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 712
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v8, v4

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 711
    invoke-virtual {v1, v7, v8, v4, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 714
    nop

    .line 715
    move v4, v10

    goto/16 :goto_0

    .line 717
    :cond_7
    goto :goto_4

    .line 700
    :cond_8
    :goto_2
    if-gez v5, :cond_9

    .line 701
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    .line 703
    :cond_9
    add-int/lit8 v4, v4, 0x2

    .line 704
    goto/16 :goto_0

    .line 696
    :cond_a
    :goto_3
    const/16 v7, 0xa

    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 697
    add-int/lit8 v4, v4, 0x2

    .line 698
    goto/16 :goto_0

    .line 726
    :cond_b
    :goto_4
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v8

    .line 727
    invoke-virtual {v1, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 728
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v7, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v1, v7, v8, v10, v9}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 730
    add-int/lit8 v4, v4, 0x1

    .line 731
    goto/16 :goto_0

    .line 732
    :cond_c
    iget-object v4, p0, Lmodmenu/BetterInput;->preview:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    iget-object v1, p0, Lmodmenu/BetterInput;->counter:Landroid/widget/TextView;

    iget-object v4, p0, Lmodmenu/BetterInput;->host:Landroid/app/Activity;

    const-string v6, "mod_bi_chars"

    invoke-static {v4, v6}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    nop

    .line 750
    iget-object v0, p0, Lmodmenu/BetterInput;->blinkAnim:Landroid/animation/ValueAnimator;

    .line 734
    if-ltz v5, :cond_d

    .line 735
    if-nez v0, :cond_e

    .line 736
    const/16 v0, 0x50

    const/16 v1, 0xff

    filled-new-array {v1, v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lmodmenu/BetterInput;->blinkAnim:Landroid/animation/ValueAnimator;

    .line 737
    iget-object v0, p0, Lmodmenu/BetterInput;->blinkAnim:Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x578

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 738
    iget-object v0, p0, Lmodmenu/BetterInput;->blinkAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 739
    iget-object v0, p0, Lmodmenu/BetterInput;->blinkAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lmodmenu/BetterInput$19;

    invoke-direct {v1, p0}, Lmodmenu/BetterInput$19;-><init>(Lmodmenu/BetterInput;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 748
    iget-object v0, p0, Lmodmenu/BetterInput;->blinkAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    .line 750
    :cond_d
    if-eqz v0, :cond_e

    .line 751
    iget-object v0, p0, Lmodmenu/BetterInput;->blinkAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 752
    const/4 v0, 0x0

    iput-object v0, p0, Lmodmenu/BetterInput;->blinkAnim:Landroid/animation/ValueAnimator;

    .line 753
    iget-object v0, p0, Lmodmenu/BetterInput;->preview:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 755
    :cond_e
    :goto_5
    return-void
.end method

.method private round(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 805
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 806
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 807
    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 808
    return-object v0
.end method

.method private static script(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 2

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(function() local P1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 570
    invoke-static {p0}, Lmodmenu/BetterInput;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "\' local P2=\'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 571
    invoke-static {p1}, Lmodmenu/BetterInput;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' local function w(j) local function one(p) local f=io.open(p,\'w\') if f then f:write(j) f:close() end end one(P1) one(P2) end w(\'{\"started\":1}\') local t=\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 578
    invoke-static {p2}, Lmodmenu/BetterInput;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' local ok,err=pcall(function() local M=GetInst(\'MiniUIManager\') local c=M and M.GetCtrl and M:GetCtrl(\'chat_view\') local wd=c and c.view and c.view.widgets local uin=(c and c._friendUin) or -1 local box=wd and ((uin>0 and wd.friendChetEdit_box) or wd.edit_box) if not(box and box.setText) then error(\'nochat\') end box:setText(t)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 588
    const-string p1, ""

    if-eqz p3, :cond_0

    const-string p2, " c:ContentBtn_sendClick()"

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " w(\'{\"r\":\"ok\"}\') end)"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 591
    if-eqz p3, :cond_1

    const-string p1, " if not ok then ok,err=pcall(function() if CurMainPlayer and CurMainPlayer.onInputContent then CurMainPlayer:onInputContent(t) end SpamPreventionPresenter:requestSendChat(ReplaceFilterString(t),\'NewInputContent\') w(\'{\"r\":\"ok\"}\') end) end"

    goto :goto_1

    .line 597
    :cond_1
    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " if not ok then w(\'{\"r\":\"fail\",\"e\":\'..string.format(\'%q\',tostring(err))..\'}\') error(\'MWBI|\'..tostring(err),0) end end)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 569
    return-object p0
.end method

.method static show(Landroid/app/Activity;Lmodmenu/Palette;)V
    .locals 1

    .line 122
    invoke-static {}, Lmodmenu/BetterInput;->showing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    return-void

    .line 125
    :cond_0
    new-instance v0, Lmodmenu/BetterInput;

    invoke-direct {v0, p0, p1}, Lmodmenu/BetterInput;-><init>(Landroid/app/Activity;Lmodmenu/Palette;)V

    .line 126
    return-void
.end method

.method static showing()Z
    .locals 1

    .line 130
    sget-object v0, Lmodmenu/BetterInput;->current:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmodmenu/BetterInput;

    .line 131
    if-eqz v0, :cond_0

    iget-object v0, v0, Lmodmenu/BetterInput;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static state(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 652
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_0

    .line 654
    return-object v0

    .line 656
    :cond_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 658
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 659
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 661
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    .line 662
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 664
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 665
    const-string v1, "r"

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 666
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 668
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 666
    return-object v1

    .line 668
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 669
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 670
    :catch_0
    move-exception p0

    .line 671
    return-object v0
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 784
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    goto :goto_0

    .line 785
    :catch_0
    move-exception p0

    .line 786
    const-string p1, "ModMenu"

    const-string v0, "toast failed"

    invoke-static {p1, v0, p0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 788
    :goto_0
    return-void
.end method

.method private wrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 817
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
