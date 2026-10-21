.class final Lmodmenu/LogView;
.super Ljava/lang/Object;
.source "LogView.java"


# static fields
.field private static final FILE:Ljava/lang/String; = "mwlog.txt"

.field private static final TAG:Ljava/lang/String; = "ModMenu"

.field private static final TAIL_BYTES:J = 0x32000L


# instance fields
.field private final body:Landroid/widget/TextView;

.field private final copyBtn:Landroid/widget/Button;

.field private final dialog:Landroid/app/Dialog;

.field private final exportBtn:Landroid/widget/Button;

.field private final host:Landroid/app/Activity;

.field private final p:Lmodmenu/Palette;

.field private final status:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lmodmenu/Palette;)V
    .locals 10

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Lmodmenu/LogView;->p:Lmodmenu/Palette;

    .line 60
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lmodmenu/LogView;->dialog:Landroid/app/Dialog;

    .line 62
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 64
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lmodmenu/LogView;->dp(I)I

    move-result v3

    invoke-direct {p0, v2}, Lmodmenu/LogView;->dp(I)I

    move-result v4

    invoke-direct {p0, v2}, Lmodmenu/LogView;->dp(I)I

    move-result v5

    invoke-direct {p0, v2}, Lmodmenu/LogView;->dp(I)I

    move-result v2

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 65
    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lmodmenu/LogView;->dp(I)I

    move-result v3

    iget v4, p2, Lmodmenu/Palette;->surface:I

    invoke-direct {p0, v3, v4}, Lmodmenu/LogView;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 67
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 68
    const-string v4, "mod_log_label"

    invoke-static {p1, v4}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget v4, p2, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 71
    invoke-direct {p0}, Lmodmenu/LogView;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-direct {p0, v4}, Lmodmenu/LogView;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmodmenu/LogView;->status:Landroid/widget/TextView;

    .line 74
    iget-object v3, p0, Lmodmenu/LogView;->status:Landroid/widget/TextView;

    iget v4, p2, Lmodmenu/Palette;->onSurfaceVariant:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    iget-object v3, p0, Lmodmenu/LogView;->status:Landroid/widget/TextView;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76
    invoke-direct {p0}, Lmodmenu/LogView;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-direct {p0, v3}, Lmodmenu/LogView;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 77
    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lmodmenu/LogView;->dp(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 78
    iget-object v5, p0, Lmodmenu/LogView;->status:Landroid/widget/TextView;

    invoke-virtual {v0, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    new-instance v3, Landroid/widget/TextView;

    invoke-direct {v3, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lmodmenu/LogView;->body:Landroid/widget/TextView;

    .line 81
    iget-object v3, p0, Lmodmenu/LogView;->body:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 82
    iget-object v3, p0, Lmodmenu/LogView;->body:Landroid/widget/TextView;

    const/high16 v5, 0x41300000    # 11.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 83
    iget-object v3, p0, Lmodmenu/LogView;->body:Landroid/widget/TextView;

    iget p2, p2, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 84
    iget-object p2, p0, Lmodmenu/LogView;->body:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextIsSelectable(Z)V

    .line 85
    iget-object p2, p0, Lmodmenu/LogView;->body:Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lmodmenu/LogView;->dp(I)I

    move-result v3

    const/4 v5, 0x6

    invoke-direct {p0, v5}, Lmodmenu/LogView;->dp(I)I

    move-result v6

    invoke-direct {p0, v4}, Lmodmenu/LogView;->dp(I)I

    move-result v7

    invoke-direct {p0, v5}, Lmodmenu/LogView;->dp(I)I

    move-result v8

    invoke-virtual {p2, v3, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 86
    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-virtual {p2, v1}, Landroid/widget/ScrollView;->setFillViewport(Z)V

    .line 88
    iget-object v3, p0, Lmodmenu/LogView;->body:Landroid/widget/TextView;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x1

    invoke-direct {v6, v8, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v3, v6}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v8, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 93
    invoke-direct {p0, v5}, Lmodmenu/LogView;->dp(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 94
    invoke-virtual {v0, p2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p2, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    const-string v3, "mod_log_refresh"

    invoke-static {p1, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmodmenu/LogView;->actionBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    .line 99
    new-instance v5, Lmodmenu/LogView$1;

    invoke-direct {v5, p0}, Lmodmenu/LogView$1;-><init>(Lmodmenu/LogView;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const-string v5, "mod_log_copy"

    invoke-static {p1, v5}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lmodmenu/LogView;->actionBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, p0, Lmodmenu/LogView;->copyBtn:Landroid/widget/Button;

    .line 106
    iget-object v5, p0, Lmodmenu/LogView;->copyBtn:Landroid/widget/Button;

    new-instance v9, Lmodmenu/LogView$2;

    invoke-direct {v9, p0}, Lmodmenu/LogView$2;-><init>(Lmodmenu/LogView;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const-string v5, "mod_log_export"

    invoke-static {p1, v5}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lmodmenu/LogView;->actionBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    iput-object v5, p0, Lmodmenu/LogView;->exportBtn:Landroid/widget/Button;

    .line 113
    iget-object v5, p0, Lmodmenu/LogView;->exportBtn:Landroid/widget/Button;

    new-instance v9, Lmodmenu/LogView$3;

    invoke-direct {v9, p0}, Lmodmenu/LogView$3;-><init>(Lmodmenu/LogView;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    const-string v5, "mod_close"

    invoke-static {p1, v5}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lmodmenu/LogView;->actionBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v5

    .line 120
    new-instance v9, Lmodmenu/LogView$4;

    invoke-direct {v9, p0}, Lmodmenu/LogView$4;-><init>(Lmodmenu/LogView;)V

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    new-array v9, v4, [Landroid/widget/Button;

    aput-object v3, v9, v6

    iget-object v3, p0, Lmodmenu/LogView;->copyBtn:Landroid/widget/Button;

    aput-object v3, v9, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lmodmenu/LogView;->exportBtn:Landroid/widget/Button;

    aput-object v3, v9, v1

    const/4 v1, 0x3

    aput-object v5, v9, v1

    .line 127
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    .line 128
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    const/16 v5, 0x26

    invoke-direct {p0, v5}, Lmodmenu/LogView;->dp(I)I

    move-result v5

    invoke-direct {v3, v6, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 130
    invoke-direct {p0, v4}, Lmodmenu/LogView;->dp(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 131
    aget-object v5, v9, v1

    invoke-virtual {p2, v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_0
    invoke-direct {p0}, Lmodmenu/LogView;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1}, Lmodmenu/LogView;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 134
    const/16 v3, 0xa

    invoke-direct {p0, v3}, Lmodmenu/LogView;->dp(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 135
    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object p2, p0, Lmodmenu/LogView;->dialog:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, v8, v8}, Landroid/view/Window;->setLayout(II)V

    .line 139
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 140
    new-instance p1, Lmodmenu/LogView$5;

    invoke-direct {p1, p0}, Lmodmenu/LogView$5;-><init>(Lmodmenu/LogView;)V

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 149
    const/16 v1, 0x11

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    invoke-direct {p0, v2}, Lmodmenu/LogView;->dp(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 151
    invoke-direct {p0, v2}, Lmodmenu/LogView;->dp(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 152
    invoke-direct {p0, v2}, Lmodmenu/LogView;->dp(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 153
    invoke-direct {p0, v2}, Lmodmenu/LogView;->dp(I)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 154
    invoke-virtual {p2, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object p1, p0, Lmodmenu/LogView;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 156
    iget-object p1, p0, Lmodmenu/LogView;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 158
    invoke-direct {p0}, Lmodmenu/LogView;->load()V

    .line 159
    return-void
.end method

.method static synthetic access$000(Lmodmenu/LogView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lmodmenu/LogView;->load()V

    return-void
.end method

.method static synthetic access$100(Lmodmenu/LogView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lmodmenu/LogView;->copy()V

    return-void
.end method

.method static synthetic access$200(Lmodmenu/LogView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lmodmenu/LogView;->export()V

    return-void
.end method

.method static synthetic access$300(Lmodmenu/LogView;)Landroid/app/Dialog;
    .locals 0

    .line 39
    iget-object p0, p0, Lmodmenu/LogView;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method private actionBtn(Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 295
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 296
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 297
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 298
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 299
    iget-object v1, p0, Lmodmenu/LogView;->p:Lmodmenu/Palette;

    iget v1, v1, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 300
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 301
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 302
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 303
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lmodmenu/LogView;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lmodmenu/LogView;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, p1, v1, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 304
    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lmodmenu/LogView;->dp(I)I

    move-result p1

    const/high16 v1, 0x14000000

    invoke-direct {p0, p1, v1}, Lmodmenu/LogView;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 305
    return-object v0
.end method

.method private copy()V
    .locals 3

    .line 205
    :try_start_0
    iget-object v0, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    const-string v1, "clipboard"

    .line 206
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 207
    const-string v1, "mwlog"

    iget-object v2, p0, Lmodmenu/LogView;->body:Landroid/widget/TextView;

    .line 208
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    invoke-static {v1, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 209
    iget-object v0, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    iget-object v1, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    const-string v2, "mod_log_copied"

    invoke-static {v1, v2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmodmenu/LogView;->toast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    const-string v1, "ModMenu"

    const-string v2, "log copy failed"

    invoke-static {v1, v2, v0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 213
    :goto_0
    return-void
.end method

.method private static countNl(Ljava/lang/String;)I
    .locals 4

    .line 260
    nop

    .line 261
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 262
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 263
    add-int/lit8 v1, v1, 0x1

    .line 261
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 266
    :cond_1
    return v1
.end method

.method private dp(I)I
    .locals 1

    .line 327
    int-to-float p1, p1

    iget-object v0, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

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

.method private export()V
    .locals 6

    .line 219
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "mwlog.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    iget-object v2, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    .line 220
    if-nez v1, :cond_0

    .line 221
    :try_start_1
    iget-object v0, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    const-string v1, "mod_log_empty"

    invoke-static {v0, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lmodmenu/LogView;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 222
    return-void

    .line 224
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 225
    if-nez v1, :cond_1

    .line 226
    iget-object v1, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 228
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mw_log_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd_HHmmss"

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v3, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 229
    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 231
    invoke-static {v0}, Lmodmenu/LogView;->readAll(Ljava/io/File;)[B

    move-result-object v0

    .line 232
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 236
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 237
    nop

    .line 238
    iget-object v0, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    const-string v1, "mod_log_exported"

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-direct {p0, v1, v3}, Lmodmenu/LogView;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmodmenu/LogView;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 241
    goto :goto_0

    .line 236
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 237
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 239
    :catch_0
    move-exception v0

    .line 240
    const-string v1, "ModMenu"

    const-string v2, "log export failed"

    invoke-static {v1, v2, v0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    :goto_0
    return-void
.end method

.method private varargs fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 280
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    invoke-static {v1, p1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 281
    :catch_0
    move-exception p2

    .line 282
    return-object p1
.end method

.method private static humanSize(J)Ljava/lang/String;
    .locals 3

    .line 270
    const-wide/16 v0, 0x400

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " B"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 271
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    div-long/2addr p0, v0

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " KB"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 270
    :goto_0
    return-object p0
.end method

.method private load()V
    .locals 10

    .line 168
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "mwlog.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    const-string v2, "mod_log_empty"

    const-string v3, ""

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 177
    :cond_0
    :try_start_0
    invoke-static {v0}, Lmodmenu/LogView;->readAll(Ljava/io/File;)[B

    move-result-object v1

    .line 178
    nop

    .line 179
    array-length v5, v1

    int-to-long v5, v5

    const-wide/32 v7, 0x32000

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    .line 183
    array-length v5, v1

    int-to-long v5, v5

    sub-long/2addr v5, v7

    long-to-int v6, v5

    .line 184
    :goto_0
    array-length v5, v1

    if-ge v6, v5, :cond_2

    aget-byte v5, v1, v6

    const/16 v7, 0xa

    if-eq v5, v7, :cond_2

    .line 185
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 179
    :cond_1
    const/4 v6, 0x0

    .line 188
    :cond_2
    new-instance v5, Ljava/lang/String;

    array-length v7, v1

    sub-int/2addr v7, v6

    const-string v8, "UTF-8"

    invoke-direct {v5, v1, v6, v7, v8}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 189
    iget-object v1, p0, Lmodmenu/LogView;->body:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v1, p0, Lmodmenu/LogView;->status:Landroid/widget/TextView;

    const-string v6, "mod_log_status"

    invoke-static {v5}, Lmodmenu/LogView;->countNl(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x1

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 191
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-static {v8, v9}, Lmodmenu/LogView;->humanSize(J)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v4

    aput-object v0, v8, v7

    .line 190
    invoke-direct {p0, v6, v8}, Lmodmenu/LogView;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object v0, p0, Lmodmenu/LogView;->copyBtn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lmodmenu/LogView;->exportBtn:Landroid/widget/Button;

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    goto :goto_1

    .line 194
    :catch_0
    move-exception v0

    .line 195
    const-string v1, "ModMenu"

    const-string v5, "log read failed"

    invoke-static {v1, v5, v0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 196
    iget-object v0, p0, Lmodmenu/LogView;->body:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v0, p0, Lmodmenu/LogView;->status:Landroid/widget/TextView;

    iget-object v1, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    invoke-static {v1, v2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object v0, p0, Lmodmenu/LogView;->copyBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lmodmenu/LogView;->exportBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 201
    :goto_1
    return-void

    .line 170
    :cond_3
    :goto_2
    iget-object v0, p0, Lmodmenu/LogView;->body:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    iget-object v0, p0, Lmodmenu/LogView;->status:Landroid/widget/TextView;

    iget-object v1, p0, Lmodmenu/LogView;->host:Landroid/app/Activity;

    invoke-static {v1, v2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lmodmenu/LogView;->copyBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lmodmenu/LogView;->exportBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 174
    return-void
.end method

.method private match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 316
    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 317
    return-object p1
.end method

.method private static readAll(Ljava/io/File;)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 247
    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 248
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 250
    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    .line 251
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 253
    return-object p0

    .line 255
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 256
    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private round(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 309
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 310
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 311
    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 312
    return-object v0
.end method

.method static show(Landroid/app/Activity;Lmodmenu/Palette;)V
    .locals 1

    .line 54
    new-instance v0, Lmodmenu/LogView;

    invoke-direct {v0, p0, p1}, Lmodmenu/LogView;-><init>(Landroid/app/Activity;Lmodmenu/Palette;)V

    .line 55
    return-void
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 288
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    goto :goto_0

    .line 289
    :catch_0
    move-exception p0

    .line 290
    const-string p1, "ModMenu"

    const-string v0, "toast failed"

    invoke-static {p1, v0, p0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 292
    :goto_0
    return-void
.end method

.method private wrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 321
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
