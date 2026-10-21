.class final Lmodmenu/LuaEditor;
.super Ljava/lang/Object;
.source "LuaEditor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodmenu/LuaEditor$LineGutter;,
        Lmodmenu/LuaEditor$Sug;
    }
.end annotation


# static fields
.field private static final C_API:I = -0x9e5011

.field private static final C_COM:I = -0x948d80

.field private static final C_KW:I = -0x398723

.field private static final C_NS:I = -0x1a3f85

.field private static final C_NUM:I = -0x2e659a

.field private static final C_STR:I = -0x673c87

.field private static final FILE:Ljava/lang/String; = "mw_le.json"

.field private static final PAYLOAD:Ljava/lang/String; = "mw_le_payload.lua"

.field private static final POLL_MS:J = 0x3cL

.field private static final STD:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ModMenu"

.field private static final TIMEOUT_MS:J = 0x1770L

.field private static volatile catalog:[[Ljava/lang/String;

.field private static volatile luaScan:Lmodmenu/LuaScan;

.field private static volatile nsIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile nsNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final checkBtn:Landroid/widget/Button;

.field private final code:Landroid/widget/EditText;

.field private final dialog:Landroid/app/Dialog;

.field private final fillBtn:Landroid/widget/Button;

.field private final gutter:Lmodmenu/LuaEditor$LineGutter;

.field private final host:Landroid/app/Activity;

.field private final p:Lmodmenu/Palette;

.field private final saveBtn:Landroid/widget/Button;

.field private final status:Landroid/widget/TextView;

.field private final suggestBox:Landroid/widget/LinearLayout;

.field private final suggestList:Landroid/widget/ListView;

.field private final sugs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmodmenu/LuaEditor$Sug;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 38

    .line 77
    new-instance v0, Ljava/util/HashSet;

    const-string v36, "unpack"

    const-string v37, "xpcall"

    const-string v1, "assert"

    const-string v2, "collectgarbage"

    const-string v3, "coroutine"

    const-string v4, "debug"

    const-string v5, "dofile"

    const-string v6, "error"

    const-string v7, "gcinfo"

    const-string v8, "getfenv"

    const-string v9, "getmetatable"

    const-string v10, "io"

    const-string v11, "ipairs"

    const-string v12, "load"

    const-string v13, "loadfile"

    const-string v14, "loadstring"

    const-string v15, "math"

    const-string v16, "module"

    const-string v17, "newproxy"

    const-string v18, "next"

    const-string v19, "os"

    const-string v20, "package"

    const-string v21, "pairs"

    const-string v22, "pcall"

    const-string v23, "print"

    const-string v24, "rawequal"

    const-string v25, "rawget"

    const-string v26, "rawset"

    const-string v27, "require"

    const-string v28, "select"

    const-string v29, "setfenv"

    const-string v30, "setmetatable"

    const-string v31, "string"

    const-string v32, "table"

    const-string v33, "tonumber"

    const-string v34, "tostring"

    const-string v35, "type"

    filled-new-array/range {v1 .. v37}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmodmenu/LuaEditor;->STD:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lmodmenu/Palette;)V
    .locals 15

    .line 103
    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    .line 104
    iput-object v2, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    .line 105
    iput-object v5, p0, Lmodmenu/LuaEditor;->p:Lmodmenu/Palette;

    .line 106
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v0, v2, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    .line 108
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 109
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 110
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v1

    invoke-direct {p0, v0}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v3

    invoke-direct {p0, v0}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v4

    invoke-direct {p0, v0}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v0

    invoke-virtual {v6, v1, v3, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 111
    const/16 v8, 0x10

    invoke-direct {p0, v8}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v0

    iget v1, v5, Lmodmenu/Palette;->surface:I

    invoke-direct {p0, v0, v1}, Lmodmenu/LuaEditor;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 113
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 114
    const-string v1, "mod_le_label"

    invoke-static {v2, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget v1, v5, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 117
    invoke-direct {p0}, Lmodmenu/LuaEditor;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1}, Lmodmenu/LuaEditor;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 120
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 121
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    .line 122
    new-instance v1, Lmodmenu/LuaEditor$LineGutter;

    iget-object v3, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-direct {v1, v2, v3}, Lmodmenu/LuaEditor$LineGutter;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    iput-object v1, p0, Lmodmenu/LuaEditor;->gutter:Lmodmenu/LuaEditor$LineGutter;

    .line 123
    invoke-direct {p0}, Lmodmenu/LuaEditor;->setupCode()V

    .line 124
    iget-object v1, p0, Lmodmenu/LuaEditor;->gutter:Lmodmenu/LuaEditor$LineGutter;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x1e

    invoke-direct {p0, v4}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v4

    const/4 v10, -0x1

    invoke-direct {v3, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v1, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v3, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    iget v1, v5, Lmodmenu/Palette;->onSurfaceVariant:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v0, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 134
    iget-object v0, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 135
    iget-object v0, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 136
    invoke-direct {p0}, Lmodmenu/LuaEditor;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lmodmenu/LuaEditor;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 137
    const/4 v13, 0x6

    invoke-direct {p0, v13}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 138
    iget-object v1, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmodmenu/LuaEditor;->suggestBox:Landroid/widget/LinearLayout;

    .line 141
    iget-object v0, p0, Lmodmenu/LuaEditor;->suggestBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 142
    iget-object v0, p0, Lmodmenu/LuaEditor;->suggestBox:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmodmenu/LuaEditor;->suggestList:Landroid/widget/ListView;

    .line 144
    iget-object v14, p0, Lmodmenu/LuaEditor;->suggestList:Landroid/widget/ListView;

    new-instance v0, Lmodmenu/LuaEditor$1;

    const v3, 0x1090003

    iget-object v4, p0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmodmenu/LuaEditor$1;-><init>(Lmodmenu/LuaEditor;Landroid/content/Context;ILjava/util/List;Lmodmenu/Palette;)V

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 155
    iget-object v0, p0, Lmodmenu/LuaEditor;->suggestList:Landroid/widget/ListView;

    new-instance v3, Lmodmenu/LuaEditor$2;

    invoke-direct {v3, p0}, Lmodmenu/LuaEditor$2;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    iget-object v0, p0, Lmodmenu/LuaEditor;->suggestBox:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmodmenu/LuaEditor;->suggestList:Landroid/widget/ListView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 163
    const/16 v5, 0x96

    invoke-direct {p0, v5}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v5

    invoke-direct {v4, v9, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 162
    invoke-direct {p0, v4}, Lmodmenu/LuaEditor;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    invoke-direct {p0}, Lmodmenu/LuaEditor;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lmodmenu/LuaEditor;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 165
    invoke-direct {p0, v13}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 166
    iget-object v3, p0, Lmodmenu/LuaEditor;->suggestBox:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 169
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 170
    const-string v3, "mod_le_fill"

    invoke-static {v2, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmodmenu/LuaEditor;->actionBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lmodmenu/LuaEditor;->fillBtn:Landroid/widget/Button;

    .line 171
    iget-object v3, p0, Lmodmenu/LuaEditor;->fillBtn:Landroid/widget/Button;

    new-instance v4, Lmodmenu/LuaEditor$3;

    invoke-direct {v4, p0}, Lmodmenu/LuaEditor$3;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    const-string v3, "mod_le_save"

    invoke-static {v2, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmodmenu/LuaEditor;->actionBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lmodmenu/LuaEditor;->saveBtn:Landroid/widget/Button;

    .line 178
    iget-object v3, p0, Lmodmenu/LuaEditor;->saveBtn:Landroid/widget/Button;

    new-instance v4, Lmodmenu/LuaEditor$4;

    invoke-direct {v4, p0}, Lmodmenu/LuaEditor$4;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const-string v3, "mod_le_check"

    invoke-static {v2, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmodmenu/LuaEditor;->actionBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lmodmenu/LuaEditor;->checkBtn:Landroid/widget/Button;

    .line 185
    iget-object v3, p0, Lmodmenu/LuaEditor;->checkBtn:Landroid/widget/Button;

    new-instance v4, Lmodmenu/LuaEditor$5;

    invoke-direct {v4, p0}, Lmodmenu/LuaEditor$5;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const-string v3, "mod_close"

    invoke-static {v2, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmodmenu/LuaEditor;->actionBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    .line 192
    new-instance v4, Lmodmenu/LuaEditor$6;

    invoke-direct {v4, p0}, Lmodmenu/LuaEditor$6;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    const/4 v4, 0x4

    new-array v5, v4, [Landroid/widget/Button;

    iget-object v13, p0, Lmodmenu/LuaEditor;->fillBtn:Landroid/widget/Button;

    aput-object v13, v5, v9

    iget-object v13, p0, Lmodmenu/LuaEditor;->saveBtn:Landroid/widget/Button;

    aput-object v13, v5, v7

    iget-object v7, p0, Lmodmenu/LuaEditor;->checkBtn:Landroid/widget/Button;

    aput-object v7, v5, v12

    const/4 v7, 0x3

    aput-object v3, v5, v7

    .line 199
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    .line 200
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 201
    const/16 v12, 0x26

    invoke-direct {p0, v12}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v12

    invoke-direct {v7, v9, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 202
    invoke-direct {p0, v4}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v12

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 203
    aget-object v12, v5, v3

    invoke-virtual {v0, v12, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0}, Lmodmenu/LuaEditor;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-direct {p0, v3}, Lmodmenu/LuaEditor;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 206
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 207
    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    new-instance v3, Lmodmenu/LuaEditor$7;

    invoke-direct {v3, p0}, Lmodmenu/LuaEditor$7;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    iget-object v0, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10, v10}, Landroid/view/Window;->setLayout(II)V

    .line 229
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 230
    new-instance v2, Lmodmenu/LuaEditor$8;

    invoke-direct {v2, p0}, Lmodmenu/LuaEditor$8;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 239
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 240
    invoke-direct {p0, v8}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 241
    invoke-direct {p0, v8}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 242
    invoke-direct {p0, v8}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 243
    invoke-direct {p0, v8}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 244
    invoke-virtual {v0, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v2, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 246
    iget-object v0, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 248
    const-string v0, "read"

    invoke-direct {p0, v0}, Lmodmenu/LuaEditor;->dispatch(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method private acceptSug(I)V
    .locals 4

    .line 515
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 516
    iget-object v1, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 517
    if-gez v1, :cond_0

    .line 518
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 520
    :cond_0
    move v2, v1

    .line 521
    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmodmenu/LuaEditor;->isWord(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 522
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 524
    :cond_1
    iget-object v3, p0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmodmenu/LuaEditor$Sug;

    .line 525
    iget-object p1, p1, Lmodmenu/LuaEditor$Sug;->insert:Ljava/lang/String;

    invoke-interface {v0, v2, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 526
    iget-object p1, p0, Lmodmenu/LuaEditor;->suggestBox:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    return-void
.end method

.method static synthetic access$000(Lmodmenu/LuaEditor;)Ljava/util/List;
    .locals 0

    .line 63
    iget-object p0, p0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lmodmenu/LuaEditor;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->acceptSug(I)V

    return-void
.end method

.method static synthetic access$1000(Lmodmenu/LuaEditor;I)I
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->dp(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lmodmenu/LuaEditor;)Lmodmenu/Palette;
    .locals 0

    .line 63
    iget-object p0, p0, Lmodmenu/LuaEditor;->p:Lmodmenu/Palette;

    return-object p0
.end method

.method static synthetic access$1200(Lmodmenu/LuaEditor;II)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lmodmenu/LuaEditor;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lmodmenu/LuaEditor;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 63
    invoke-direct {p0}, Lmodmenu/LuaEditor;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lmodmenu/LuaEditor;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lmodmenu/LuaEditor;Lmodmenu/LuaScan$Issue;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->issueText(Lmodmenu/LuaScan$Issue;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lmodmenu/LuaEditor;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->jumpToIssue(I)V

    return-void
.end method

.method static synthetic access$1700([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 63
    invoke-static {p0}, Lmodmenu/LuaEditor;->await([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lmodmenu/LuaEditor;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->setBusy(Z)V

    return-void
.end method

.method static synthetic access$1900(Lmodmenu/LuaEditor;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lmodmenu/LuaEditor;->handleResult(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lmodmenu/LuaEditor;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->dispatch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lmodmenu/LuaEditor;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lmodmenu/LuaEditor;->showIssues()V

    return-void
.end method

.method static synthetic access$400(Lmodmenu/LuaEditor;)Landroid/app/Dialog;
    .locals 0

    .line 63
    iget-object p0, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$500(Lmodmenu/LuaEditor;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lmodmenu/LuaEditor;->highlight()V

    return-void
.end method

.method static synthetic access$600(Lmodmenu/LuaEditor;)Lmodmenu/LuaEditor$LineGutter;
    .locals 0

    .line 63
    iget-object p0, p0, Lmodmenu/LuaEditor;->gutter:Lmodmenu/LuaEditor$LineGutter;

    return-object p0
.end method

.method static synthetic access$700(Lmodmenu/LuaEditor;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lmodmenu/LuaEditor;->updateSuggest()V

    return-void
.end method

.method static synthetic access$800(Lmodmenu/LuaEditor;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lmodmenu/LuaEditor;->setStatusLines()V

    return-void
.end method

.method static synthetic access$900(Lmodmenu/LuaEditor;)Landroid/app/Activity;
    .locals 0

    .line 63
    iget-object p0, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    return-object p0
.end method

.method private actionBtn(Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 275
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 276
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 277
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 278
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 279
    iget-object v1, p0, Lmodmenu/LuaEditor;->p:Lmodmenu/Palette;

    iget v1, v1, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 280
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 281
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 282
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 283
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, p1, v1, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 284
    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->dp(I)I

    move-result p1

    const/high16 v1, 0x14000000

    invoke-direct {p0, p1, v1}, Lmodmenu/LuaEditor;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 285
    return-object v0
.end method

.method private static await([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .line 812
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1770

    add-long/2addr v0, v2

    .line 813
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    .line 814
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 815
    aget-object v3, p0, v2

    invoke-static {v3}, Lmodmenu/LuaEditor;->readJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 816
    if-eqz v3, :cond_0

    const-string v4, "r"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 817
    return-object v3

    .line 814
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 821
    :cond_1
    const-wide/16 v2, 0x3c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    goto :goto_0

    .line 822
    :catch_0
    move-exception p0

    .line 823
    nop

    .line 826
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static byNs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 572
    invoke-static {}, Lmodmenu/LuaEditor;->catalog()[[Ljava/lang/String;

    .line 573
    sget-object v0, Lmodmenu/LuaEditor;->nsIndex:Ljava/util/Map;

    return-object v0
.end method

.method private static catalog()[[Ljava/lang/String;
    .locals 9

    .line 543
    sget-object v0, Lmodmenu/LuaEditor;->catalog:[[Ljava/lang/String;

    if-nez v0, :cond_3

    .line 544
    const-class v0, Lmodmenu/LuaEditor;

    monitor-enter v0

    .line 545
    :try_start_0
    sget-object v1, Lmodmenu/LuaEditor;->catalog:[[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 546
    sget-object v1, Lmodmenu/MwApi;->ROWS:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [[Ljava/lang/String;

    .line 547
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 549
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 550
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    sget-object v6, Lmodmenu/MwApi;->ROWS:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 551
    sget-object v6, Lmodmenu/MwApi;->ROWS:[Ljava/lang/String;

    aget-object v6, v6, v5

    .line 552
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    .line 551
    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 553
    aput-object v6, v1, v5

    .line 554
    aget-object v7, v6, v4

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    aget-object v7, v6, v4

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 556
    if-nez v7, :cond_0

    .line 557
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 558
    aget-object v8, v6, v4

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    :cond_0
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 550
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 562
    :cond_1
    sput-object v1, Lmodmenu/LuaEditor;->catalog:[[Ljava/lang/String;

    .line 563
    sput-object v2, Lmodmenu/LuaEditor;->nsIndex:Ljava/util/Map;

    .line 564
    sput-object v3, Lmodmenu/LuaEditor;->nsNames:Ljava/util/Set;

    .line 566
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 568
    :cond_3
    :goto_1
    sget-object v0, Lmodmenu/LuaEditor;->catalog:[[Ljava/lang/String;

    return-object v0
.end method

.method private static countNl(Ljava/lang/String;)I
    .locals 4

    .line 619
    nop

    .line 620
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 621
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 622
    add-int/lit8 v1, v1, 0x1

    .line 620
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 625
    :cond_1
    return v1
.end method

.method private static desc([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 604
    array-length v0, p0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    aget-object p0, p0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    aget-object p0, p0, v0

    :goto_0
    return-object p0
.end method

.method private dispatch(Ljava/lang/String;)V
    .locals 9

    .line 629
    invoke-direct {p0}, Lmodmenu/LuaEditor;->paths()[Ljava/lang/String;

    move-result-object v0

    .line 630
    const-string v1, "mod_le_fail"

    if-nez v0, :cond_0

    .line 631
    iget-object p1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    iget-object v0, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-static {v0, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 632
    return-void

    .line 634
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 635
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 634
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 637
    :cond_1
    const-string v3, "read"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "ModMenu"

    if-nez v5, :cond_3

    .line 638
    iget-object v5, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 639
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 640
    iget-object p1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    iget-object v0, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    const-string v1, "mod_le_empty"

    invoke-static {v0, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 641
    return-void

    .line 644
    :cond_2
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    aget-object v8, v0, v4

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 646
    :try_start_1
    const-string v8, "UTF-8"

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 649
    nop

    .line 654
    goto :goto_1

    .line 648
    :catchall_0
    move-exception p1

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 649
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 650
    :catch_0
    move-exception p1

    .line 651
    const-string v0, "payload write failed"

    invoke-static {v6, v0, p1}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 652
    iget-object p1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    iget-object v0, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-static {v0, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 653
    return-void

    .line 656
    :cond_3
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lmodmenu/LuaEditor;->setBusy(Z)V

    .line 657
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 658
    iget-object v3, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    const-string v7, "..."

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    :cond_4
    :try_start_3
    aget-object v3, v0, v2

    aget-object v5, v0, v5

    aget-object v4, v0, v4

    .line 662
    invoke-static {p1, v3, v5, v4}, Lmodmenu/LuaEditor;->script(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 661
    invoke-static {v3, v4}, Lorg/appplay/lib/CommonNatives;->javaCallLuaEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 669
    nop

    .line 670
    iget-object v1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 671
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lmodmenu/LuaEditor$11;

    invoke-direct {v3, p0, v0, p1, v1}, Lmodmenu/LuaEditor$11;-><init>(Lmodmenu/LuaEditor;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string p1, "mw-luaeditor"

    invoke-direct {v2, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 683
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 684
    return-void

    .line 664
    :catch_1
    move-exception p1

    .line 665
    const-string v0, "lua editor dispatch failed"

    invoke-static {v6, v0, p1}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 666
    invoke-direct {p0, v2}, Lmodmenu/LuaEditor;->setBusy(Z)V

    .line 667
    iget-object p1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    iget-object v0, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-static {v0, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 668
    return-void
.end method

.method private dp(I)I
    .locals 1

    .line 924
    int-to-float p1, p1

    iget-object v0, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

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

.method private static esc(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 784
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 786
    :cond_0
    nop

    .line 784
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 785
    const-string v0, "\r"

    const-string v1, "\\r"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 786
    const-string v0, "\t"

    const-string v1, "\\t"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 784
    :goto_0
    return-object p0
.end method

.method private varargs fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 412
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-static {v1, p1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 414
    :catch_0
    move-exception p2

    .line 415
    return-object p1
.end method

.method private handleResult(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 4

    .line 687
    const-string v0, "timeout"

    const-string v1, ""

    if-nez p2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const-string v2, "r"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 688
    :goto_0
    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "read"

    if-eqz v2, :cond_3

    .line 689
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 690
    const-string p1, "t"

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 691
    iget-object p2, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 692
    invoke-direct {p0}, Lmodmenu/LuaEditor;->setStatusLines()V

    .line 693
    goto :goto_1

    :cond_1
    const-string p2, "write"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 694
    const-string p1, "mod_le_filled"

    invoke-static {p3, p1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 695
    iget-object p1, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    goto :goto_1

    .line 697
    :cond_2
    const-string p1, "mod_le_saved"

    invoke-static {p3, p1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 698
    iget-object p1, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 700
    :goto_1
    return-void

    .line 702
    :cond_3
    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "e"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 703
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "lua editor bridge failed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "ModMenu"

    invoke-static {v1, p2}, Lmodmenu/MwLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 705
    iget-object p1, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    const-string p2, "notopen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 706
    const-string p2, "mod_le_notopen"

    invoke-static {p3, p2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 707
    :cond_5
    const-string p2, "mod_le_loadfail"

    invoke-static {p3, p2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 705
    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 709
    :cond_6
    const-string p1, "mod_le_fail"

    invoke-static {p3, p1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 711
    :goto_4
    return-void
.end method

.method private highlight()V
    .locals 7

    .line 293
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 294
    invoke-static {}, Lmodmenu/LuaEditor;->luaScan()Lmodmenu/LuaScan;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmodmenu/LuaScan;->scan(Ljava/lang/String;)Lmodmenu/LuaScan$Result;

    move-result-object v1

    .line 295
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    const-class v3, Landroid/text/style/ForegroundColorSpan;

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ForegroundColorSpan;

    array-length v3, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-object v6, v2, v5

    .line 297
    invoke-interface {v0, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 295
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 299
    :cond_0
    iget-object v1, v1, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmodmenu/LuaScan$Tok;

    .line 300
    nop

    .line 301
    iget v3, v2, Lmodmenu/LuaScan$Tok;->kind:I

    const v5, -0x9e5011    # -2.999898E38f

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 315
    :pswitch_0
    nop

    .line 316
    goto :goto_3

    .line 318
    :pswitch_1
    invoke-static {}, Lmodmenu/LuaEditor;->namespaces()Ljava/util/Set;

    move-result-object v3

    iget-object v6, v2, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 319
    const v5, -0x1a3f85

    goto :goto_3

    .line 320
    :cond_1
    sget-object v3, Lmodmenu/LuaEditor;->STD:Ljava/util/Set;

    iget-object v6, v2, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 321
    goto :goto_3

    .line 312
    :pswitch_2
    nop

    .line 313
    const v5, -0x2e659a

    goto :goto_3

    .line 309
    :pswitch_3
    nop

    .line 310
    const v5, -0x948d80

    goto :goto_3

    .line 306
    :pswitch_4
    nop

    .line 307
    const v5, -0x673c87

    goto :goto_3

    .line 303
    :pswitch_5
    nop

    .line 304
    const v5, -0x398723

    goto :goto_3

    .line 327
    :cond_2
    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_3

    .line 328
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, v2, Lmodmenu/LuaScan$Tok;->start:I

    iget v2, v2, Lmodmenu/LuaScan$Tok;->end:I

    .line 329
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 328
    const/16 v6, 0x21

    invoke-interface {v0, v3, v5, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 332
    :cond_3
    goto :goto_1

    .line 333
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static isWord(C)Z
    .locals 1

    .line 530
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private issueText(Lmodmenu/LuaScan$Issue;)Ljava/lang/String;
    .locals 5

    .line 383
    const-string v0, "missing_end"

    iget-object v1, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 384
    iget-object p1, p1, Lmodmenu/LuaScan$Issue;->arg:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "mod_le_i_missing_end"

    invoke-direct {p0, p1, v0}, Lmodmenu/LuaEditor;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 386
    :cond_0
    const-string v0, "unclosed_str"

    iget-object v3, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    iget p1, p1, Lmodmenu/LuaScan$Issue;->line:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "mod_le_i_unclosed_str"

    invoke-direct {p0, p1, v0}, Lmodmenu/LuaEditor;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 389
    :cond_1
    const-string v0, "unclosed_long"

    iget-object v3, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 390
    iget p1, p1, Lmodmenu/LuaScan$Issue;->line:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "mod_le_i_unclosed_long"

    invoke-direct {p0, p1, v0}, Lmodmenu/LuaEditor;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 392
    :cond_2
    const-string v0, "unclosed_br"

    iget-object v3, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 393
    iget v0, p1, Lmodmenu/LuaScan$Issue;->line:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Lmodmenu/LuaScan$Issue;->arg:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object p1, v3, v2

    const-string p1, "mod_le_i_unclosed_br"

    invoke-direct {p0, p1, v3}, Lmodmenu/LuaEditor;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 395
    :cond_3
    const-string v0, "extra_end"

    iget-object v4, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    iget p1, p1, Lmodmenu/LuaScan$Issue;->line:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "mod_le_i_extra_end"

    invoke-direct {p0, p1, v0}, Lmodmenu/LuaEditor;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 398
    :cond_4
    const-string v0, "bad_close"

    iget-object v4, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 399
    iget v0, p1, Lmodmenu/LuaScan$Issue;->line:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Lmodmenu/LuaScan$Issue;->arg:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object p1, v3, v2

    const-string p1, "mod_le_i_bad_close"

    invoke-direct {p0, p1, v3}, Lmodmenu/LuaEditor;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 401
    :cond_5
    const-string v0, "extra_close"

    iget-object v4, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 402
    iget v0, p1, Lmodmenu/LuaScan$Issue;->line:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Lmodmenu/LuaScan$Issue;->arg:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object p1, v3, v2

    const-string p1, "mod_le_i_extra_close"

    invoke-direct {p0, p1, v3}, Lmodmenu/LuaEditor;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 404
    :cond_6
    const-string v0, "unknown_api"

    iget-object v4, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 405
    iget v0, p1, Lmodmenu/LuaScan$Issue;->line:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p1, p1, Lmodmenu/LuaScan$Issue;->arg:Ljava/lang/String;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v1

    aput-object p1, v3, v2

    const-string p1, "mod_le_i_unknown_api"

    invoke-direct {p0, p1, v3}, Lmodmenu/LuaEditor;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 407
    :cond_7
    iget-object p1, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    return-object p1
.end method

.method private jumpToIssue(I)V
    .locals 5

    .line 420
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    sub-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 425
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 426
    iget-object v3, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 427
    iget-object v3, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 428
    iget-object v2, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    new-instance v3, Landroid/graphics/Rect;

    .line 429
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {v3, v0, v4, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 428
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 430
    return-void

    .line 422
    :cond_1
    :goto_0
    return-void
.end method

.method private static luaScan()Lmodmenu/LuaScan;
    .locals 8

    .line 582
    sget-object v0, Lmodmenu/LuaEditor;->luaScan:Lmodmenu/LuaScan;

    if-nez v0, :cond_3

    .line 583
    const-class v0, Lmodmenu/LuaEditor;

    monitor-enter v0

    .line 584
    :try_start_0
    sget-object v1, Lmodmenu/LuaEditor;->luaScan:Lmodmenu/LuaScan;

    if-nez v1, :cond_2

    .line 585
    invoke-static {}, Lmodmenu/LuaEditor;->catalog()[[Ljava/lang/String;

    .line 586
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 589
    sget-object v2, Lmodmenu/LuaEditor;->nsIndex:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 590
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 591
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 592
    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 593
    goto :goto_1

    .line 594
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    goto :goto_0

    .line 596
    :cond_1
    new-instance v2, Lmodmenu/LuaScan;

    sget-object v3, Lmodmenu/LuaEditor;->nsNames:Ljava/util/Set;

    invoke-direct {v2, v3, v1}, Lmodmenu/LuaScan;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    sput-object v2, Lmodmenu/LuaEditor;->luaScan:Lmodmenu/LuaScan;

    .line 598
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 600
    :cond_3
    :goto_2
    sget-object v0, Lmodmenu/LuaEditor;->luaScan:Lmodmenu/LuaScan;

    return-object v0
.end method

.method private match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 913
    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 914
    return-object p1
.end method

.method private static namespaces()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 577
    invoke-static {}, Lmodmenu/LuaEditor;->catalog()[[Ljava/lang/String;

    .line 578
    sget-object v0, Lmodmenu/LuaEditor;->nsNames:Ljava/util/Set;

    return-object v0
.end method

.method private paths()[Ljava/lang/String;
    .locals 6

    .line 793
    const-string v0, "mw_le_payload.lua"

    const-string v1, "mw_le.json"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 794
    if-nez v3, :cond_0

    .line 795
    return-object v2

    .line 797
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 798
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 799
    iget-object v5, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 800
    if-nez v5, :cond_1

    .line 801
    filled-new-array {v4, v4, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 803
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 804
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v4, v0}, [Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    return-object v0

    .line 805
    :catch_0
    move-exception v0

    .line 806
    const-string v1, "ModMenu"

    const-string v3, "paths failed"

    invoke-static {v1, v3, v0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 807
    return-object v2
.end method

.method private static readJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 833
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_0

    .line 835
    return-object v0

    .line 837
    :cond_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 840
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 842
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    .line 843
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 845
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 847
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 845
    return-object v2

    .line 847
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 848
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 849
    :catch_0
    move-exception p0

    .line 850
    return-object v0
.end method

.method private round(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 906
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 907
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 908
    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 909
    return-object v0
.end method

.method private static script(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 730
    const-string v0, "read"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 731
    const-string v1, "save"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(function() local P1=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 733
    invoke-static {p1}, Lmodmenu/LuaEditor;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\' local P2=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 734
    invoke-static {p2}, Lmodmenu/LuaEditor;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' local P3=\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 735
    invoke-static {p3}, Lmodmenu/LuaEditor;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' local function w(j) local function one(p) local f=io.open(p,\'w\') if f then f:write(j) f:close() end end one(P1) one(P2) end local function jesc(s) s=string.gsub(s,\'\\\\\',\'\\\\\\\\\') s=string.gsub(s,\'\\\"\',\'\\\\\\\"\') s=string.gsub(s,\'\\r\',\'\\\\r\') s=string.gsub(s,\'\\n\',\'\\\\n\') s=string.gsub(s,\'\\t\',\'\\\\t\') s=string.gsub(s,\'%c\',\'\') return \'\\\"\'..s..\'\\\"\' end w(\'{\"started\":1}\') local OP=\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "\' local ok,err=pcall(function() local M=GetInst(\'MiniUIManager\') local c=M and M.GetCtrl and M:GetCtrl(\'DeveloperScriptEditor\') if not(c and M.IsShown and M:IsShown(\'DeveloperScriptEditor\')) then error(\'notopen\') end local v=c.view"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 759
    if-eqz v0, :cond_0

    .line 760
    const-string p1, " local wd=(v and v.widgets) or c.widgets local box=wd and wd.contentBox if not(box and box.getText) then error(\'nobox\') end w(\'{\"r\":\"ok\",\"t\":\'..jesc(box:getText() or \'\')..\'}\')"

    goto :goto_1

    .line 773
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " local f=io.open(P3,\'r\') if not f then error(\'nopayload\') end local t=f:read(\'*a\') f:close() if not(v and v.SetContentText) then error(\'noview\') end v:SetContentText(t)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 771
    if-eqz v1, :cond_1

    const-string p2, " if c.SaveBtnClick then c:SaveBtnClick() end"

    goto :goto_0

    .line 772
    :cond_1
    const-string p2, ""

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " w(\'{\"r\":\"ok\"}\')"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " end) if not ok then w(\'{\"r\":\"fail\",\"e\":\'..string.format(\'%q\',tostring(err))..\'}\') error(\'MWLE|\'..tostring(err),0) end end)"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 732
    return-object p0
.end method

.method private setBusy(Z)V
    .locals 2

    .line 714
    iget-object v0, p0, Lmodmenu/LuaEditor;->fillBtn:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 715
    iget-object v0, p0, Lmodmenu/LuaEditor;->saveBtn:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 716
    iget-object v0, p0, Lmodmenu/LuaEditor;->checkBtn:Landroid/widget/Button;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 717
    return-void
.end method

.method private setStatusLines()V
    .locals 7

    .line 612
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lmodmenu/LuaEditor;->countNl(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v3

    .line 614
    :goto_0
    iget-object v1, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iget-object v5, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    .line 615
    const-string v6, "mod_le_lines"

    invoke-static {v5, v6}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 614
    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    return-void
.end method

.method private setupCode()V
    .locals 6

    .line 252
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 253
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 254
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    iget-object v1, p0, Lmodmenu/LuaEditor;->p:Lmodmenu/Palette;

    iget v1, v1, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 255
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    iget-object v1, p0, Lmodmenu/LuaEditor;->p:Lmodmenu/Palette;

    iget v1, v1, Lmodmenu/Palette;->onSurfaceVariant:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 256
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    iget-object v1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    const-string v2, "mod_le_hint"

    invoke-static {v1, v2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 258
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lmodmenu/LuaEditor;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-direct {p0, v4}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v5

    invoke-direct {p0, v1}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v1

    invoke-direct {p0, v4}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v4

    invoke-virtual {v0, v3, v5, v1, v4}, Landroid/widget/EditText;->setPadding(IIII)V

    .line 260
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    const v1, 0xa0001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 263
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 264
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 265
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lmodmenu/LuaEditor$9;

    invoke-direct {v1, p0}, Lmodmenu/LuaEditor$9;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 272
    return-void
.end method

.method static show(Landroid/app/Activity;Lmodmenu/Palette;)V
    .locals 1

    .line 100
    new-instance v0, Lmodmenu/LuaEditor;

    invoke-direct {v0, p0, p1}, Lmodmenu/LuaEditor;-><init>(Landroid/app/Activity;Lmodmenu/Palette;)V

    .line 101
    return-void
.end method

.method private showIssues()V
    .locals 4

    .line 337
    invoke-static {}, Lmodmenu/LuaEditor;->luaScan()Lmodmenu/LuaScan;

    move-result-object v0

    iget-object v1, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmodmenu/LuaScan;->scan(Ljava/lang/String;)Lmodmenu/LuaScan$Result;

    move-result-object v0

    iget-object v0, v0, Lmodmenu/LuaScan$Result;->issues:Ljava/util/List;

    .line 338
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v0, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    iget-object v1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    const-string v2, "mod_le_noissues"

    invoke-static {v1, v2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 340
    return-void

    .line 342
    :cond_0
    new-instance v1, Lmodmenu/LuaEditor$10;

    iget-object v2, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    const v3, 0x1030010

    invoke-direct {v1, p0, v2, v3, v0}, Lmodmenu/LuaEditor$10;-><init>(Lmodmenu/LuaEditor;Landroid/content/Context;ILjava/util/List;)V

    .line 379
    invoke-virtual {v1}, Lmodmenu/LuaEditor$10;->show()V

    .line 380
    return-void
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 899
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 902
    goto :goto_0

    .line 900
    :catch_0
    move-exception p0

    .line 901
    const-string p1, "ModMenu"

    const-string v0, "toast failed"

    invoke-static {p1, v0, p0}, Lmodmenu/MwLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 903
    :goto_0
    return-void
.end method

.method private updateSuggest()V
    .locals 18

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 448
    iget-object v2, v0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 449
    if-gez v2, :cond_0

    .line 450
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 452
    :cond_0
    move v3, v2

    .line 453
    :goto_0
    if-lez v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    invoke-interface {v1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmodmenu/LuaEditor;->isWord(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 454
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 456
    :cond_1
    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 457
    iget-object v2, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 458
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-nez v2, :cond_10

    .line 459
    nop

    .line 460
    const/16 v2, 0x3a

    const/4 v12, 0x1

    if-lez v3, :cond_4

    sub-int/2addr v3, v12

    invoke-interface {v1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_2

    invoke-interface {v1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_4

    .line 461
    :cond_2
    nop

    .line 462
    move v4, v3

    .line 463
    :goto_1
    if-lez v4, :cond_3

    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lmodmenu/LuaEditor;->isWord(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 464
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 466
    :cond_3
    if-ge v4, v3, :cond_4

    .line 467
    invoke-interface {v1, v4, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 470
    :cond_4
    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x2

    if-eqz v1, :cond_7

    .line 471
    invoke-static {}, Lmodmenu/LuaEditor;->byNs()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 472
    if-eqz v1, :cond_6

    .line 473
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 474
    aget-object v4, v2, v12

    .line 475
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 474
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 476
    iget-object v4, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    new-instance v5, Lmodmenu/LuaEditor$Sug;

    aget-object v6, v2, v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 477
    invoke-static {v2}, Lmodmenu/LuaEditor;->desc([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lmodmenu/LuaEditor$Sug;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 479
    :cond_5
    goto :goto_3

    .line 481
    :cond_6
    goto/16 :goto_9

    .line 482
    :cond_7
    sget-object v1, Lmodmenu/LuaScan;->KEYWORDS:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 483
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 484
    iget-object v5, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    new-instance v6, Lmodmenu/LuaEditor$Sug;

    invoke-direct {v6, v4, v4}, Lmodmenu/LuaEditor$Sug;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_8
    goto :goto_4

    .line 487
    :cond_9
    sget-object v1, Lmodmenu/LuaEditor;->STD:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 488
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 489
    iget-object v5, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    new-instance v6, Lmodmenu/LuaEditor$Sug;

    invoke-direct {v6, v4, v4}, Lmodmenu/LuaEditor$Sug;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_a
    goto :goto_5

    .line 492
    :cond_b
    invoke-static {}, Lmodmenu/LuaEditor;->namespaces()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v13, ":"

    if-eqz v4, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 493
    nop

    .line 494
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 493
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 495
    iget-object v5, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    new-instance v6, Lmodmenu/LuaEditor$Sug;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v8, v4}, Lmodmenu/LuaEditor$Sug;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 497
    :cond_c
    goto :goto_6

    .line 498
    :cond_d
    invoke-static {}, Lmodmenu/LuaEditor;->catalog()[[Ljava/lang/String;

    move-result-object v1

    array-length v14, v1

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v14, :cond_f

    aget-object v16, v1, v15

    .line 499
    aget-object v4, v16, v12

    .line 500
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 499
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 501
    iget-object v4, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    new-instance v5, Lmodmenu/LuaEditor$Sug;

    aget-object v6, v16, v12

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, v16, v11

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v16, v3

    const/16 v17, 0x2

    aget-object v3, v16, v17

    .line 502
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/2addr v3, v12

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v6, v3}, Lmodmenu/LuaEditor$Sug;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 499
    :cond_e
    const/16 v17, 0x2

    .line 498
    :goto_8
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x2

    goto :goto_7

    .line 506
    :cond_f
    :goto_9
    iget-object v1, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_10

    .line 507
    iget-object v1, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    iget-object v2, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    .line 510
    :cond_10
    iget-object v1, v0, Lmodmenu/LuaEditor;->suggestList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 511
    iget-object v1, v0, Lmodmenu/LuaEditor;->suggestBox:Landroid/widget/LinearLayout;

    iget-object v2, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    goto :goto_a

    :cond_11
    const/4 v10, 0x0

    :goto_a
    invoke-virtual {v1, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    return-void
.end method

.method private wrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 918
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
