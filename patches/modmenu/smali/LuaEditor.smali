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

    .line 78
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

    .line 104
    move-object/from16 v2, p1

    move-object/from16 v5, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    .line 105
    iput-object v2, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    .line 106
    iput-object v5, p0, Lmodmenu/LuaEditor;->p:Lmodmenu/Palette;

    .line 107
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x1030010

    invoke-direct {v0, v2, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    .line 109
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 111
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

    .line 112
    const/16 v8, 0x10

    invoke-direct {p0, v8}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v0

    iget v1, v5, Lmodmenu/Palette;->surface:I

    invoke-direct {p0, v0, v1}, Lmodmenu/LuaEditor;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 114
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 115
    const-string v1, "mod_le_label"

    invoke-static {v2, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget v1, v5, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 118
    invoke-direct {p0}, Lmodmenu/LuaEditor;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-direct {p0, v1}, Lmodmenu/LuaEditor;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 121
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 122
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    .line 123
    new-instance v1, Lmodmenu/LuaEditor$LineGutter;

    iget-object v3, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-direct {v1, v2, v3}, Lmodmenu/LuaEditor$LineGutter;-><init>(Landroid/content/Context;Landroid/widget/EditText;)V

    iput-object v1, p0, Lmodmenu/LuaEditor;->gutter:Lmodmenu/LuaEditor$LineGutter;

    .line 124
    invoke-direct {p0}, Lmodmenu/LuaEditor;->setupCode()V

    .line 125
    iget-object v1, p0, Lmodmenu/LuaEditor;->gutter:Lmodmenu/LuaEditor$LineGutter;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v4, 0x1e

    invoke-direct {p0, v4}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v4

    const/4 v10, -0x1

    invoke-direct {v3, v4, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    iget-object v1, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v3, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v10, v9, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    .line 133
    iget-object v0, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    iget v1, v5, Lmodmenu/Palette;->onSurfaceVariant:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    iget-object v0, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    const/high16 v1, 0x41400000    # 12.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 135
    iget-object v0, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    const/4 v12, 0x2

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 136
    iget-object v0, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 137
    invoke-direct {p0}, Lmodmenu/LuaEditor;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lmodmenu/LuaEditor;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 138
    const/4 v13, 0x6

    invoke-direct {p0, v13}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 139
    iget-object v1, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmodmenu/LuaEditor;->suggestBox:Landroid/widget/LinearLayout;

    .line 142
    iget-object v0, p0, Lmodmenu/LuaEditor;->suggestBox:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 143
    iget-object v0, p0, Lmodmenu/LuaEditor;->suggestBox:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 144
    new-instance v0, Landroid/widget/ListView;

    invoke-direct {v0, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lmodmenu/LuaEditor;->suggestList:Landroid/widget/ListView;

    .line 145
    iget-object v14, p0, Lmodmenu/LuaEditor;->suggestList:Landroid/widget/ListView;

    new-instance v0, Lmodmenu/LuaEditor$1;

    const v3, 0x1090003

    iget-object v4, p0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lmodmenu/LuaEditor$1;-><init>(Lmodmenu/LuaEditor;Landroid/content/Context;ILjava/util/List;Lmodmenu/Palette;)V

    invoke-virtual {v14, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 156
    iget-object v0, p0, Lmodmenu/LuaEditor;->suggestList:Landroid/widget/ListView;

    new-instance v3, Lmodmenu/LuaEditor$2;

    invoke-direct {v3, p0}, Lmodmenu/LuaEditor$2;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 163
    iget-object v0, p0, Lmodmenu/LuaEditor;->suggestBox:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lmodmenu/LuaEditor;->suggestList:Landroid/widget/ListView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 164
    const/16 v5, 0x96

    invoke-direct {p0, v5}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v5

    invoke-direct {v4, v9, v5, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 163
    invoke-direct {p0, v4}, Lmodmenu/LuaEditor;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    invoke-direct {p0}, Lmodmenu/LuaEditor;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lmodmenu/LuaEditor;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 166
    invoke-direct {p0, v13}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 167
    iget-object v3, p0, Lmodmenu/LuaEditor;->suggestBox:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 170
    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 171
    const-string v3, "mod_le_fill"

    invoke-static {v2, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmodmenu/LuaEditor;->actionBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lmodmenu/LuaEditor;->fillBtn:Landroid/widget/Button;

    .line 172
    iget-object v3, p0, Lmodmenu/LuaEditor;->fillBtn:Landroid/widget/Button;

    new-instance v4, Lmodmenu/LuaEditor$3;

    invoke-direct {v4, p0}, Lmodmenu/LuaEditor$3;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const-string v3, "mod_le_save"

    invoke-static {v2, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmodmenu/LuaEditor;->actionBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lmodmenu/LuaEditor;->saveBtn:Landroid/widget/Button;

    .line 179
    iget-object v3, p0, Lmodmenu/LuaEditor;->saveBtn:Landroid/widget/Button;

    new-instance v4, Lmodmenu/LuaEditor$4;

    invoke-direct {v4, p0}, Lmodmenu/LuaEditor$4;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    const-string v3, "mod_le_check"

    invoke-static {v2, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmodmenu/LuaEditor;->actionBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    iput-object v3, p0, Lmodmenu/LuaEditor;->checkBtn:Landroid/widget/Button;

    .line 186
    iget-object v3, p0, Lmodmenu/LuaEditor;->checkBtn:Landroid/widget/Button;

    new-instance v4, Lmodmenu/LuaEditor$5;

    invoke-direct {v4, p0}, Lmodmenu/LuaEditor$5;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const-string v3, "mod_close"

    invoke-static {v2, v3}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lmodmenu/LuaEditor;->actionBtn(Ljava/lang/String;)Landroid/widget/Button;

    move-result-object v3

    .line 193
    new-instance v4, Lmodmenu/LuaEditor$6;

    invoke-direct {v4, p0}, Lmodmenu/LuaEditor$6;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
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

    .line 200
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_0

    .line 201
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 202
    const/16 v12, 0x26

    invoke-direct {p0, v12}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v12

    invoke-direct {v7, v9, v12, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 203
    invoke-direct {p0, v4}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v12

    iput v12, v7, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 204
    aget-object v12, v5, v3

    invoke-virtual {v0, v12, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 206
    :cond_0
    invoke-direct {p0}, Lmodmenu/LuaEditor;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-direct {p0, v3}, Lmodmenu/LuaEditor;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 207
    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 208
    invoke-virtual {v6, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    new-instance v3, Lmodmenu/LuaEditor$7;

    invoke-direct {v3, p0}, Lmodmenu/LuaEditor$7;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 228
    iget-object v0, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v10, v10}, Landroid/view/Window;->setLayout(II)V

    .line 230
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 231
    new-instance v2, Lmodmenu/LuaEditor$8;

    invoke-direct {v2, p0}, Lmodmenu/LuaEditor$8;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 240
    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 241
    invoke-direct {p0, v8}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 242
    invoke-direct {p0, v8}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 243
    invoke-direct {p0, v8}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 244
    invoke-direct {p0, v8}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 245
    invoke-virtual {v0, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 246
    iget-object v2, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 247
    iget-object v0, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 249
    const-string v0, "read"

    invoke-direct {p0, v0}, Lmodmenu/LuaEditor;->dispatch(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method private acceptSug(I)V
    .locals 4

    .line 516
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 517
    iget-object v1, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 518
    if-gez v1, :cond_0

    .line 519
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    .line 521
    :cond_0
    move v2, v1

    .line 522
    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    invoke-interface {v0, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmodmenu/LuaEditor;->isWord(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 523
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 525
    :cond_1
    iget-object v3, p0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmodmenu/LuaEditor$Sug;

    .line 526
    iget-object p1, p1, Lmodmenu/LuaEditor$Sug;->insert:Ljava/lang/String;

    invoke-interface {v0, v2, v1, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 527
    iget-object p1, p0, Lmodmenu/LuaEditor;->suggestBox:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    return-void
.end method

.method static synthetic access$000(Lmodmenu/LuaEditor;)Ljava/util/List;
    .locals 0

    .line 64
    iget-object p0, p0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lmodmenu/LuaEditor;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->acceptSug(I)V

    return-void
.end method

.method static synthetic access$1000(Lmodmenu/LuaEditor;I)I
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->dp(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lmodmenu/LuaEditor;)Lmodmenu/Palette;
    .locals 0

    .line 64
    iget-object p0, p0, Lmodmenu/LuaEditor;->p:Lmodmenu/Palette;

    return-object p0
.end method

.method static synthetic access$1200(Lmodmenu/LuaEditor;II)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lmodmenu/LuaEditor;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lmodmenu/LuaEditor;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 64
    invoke-direct {p0}, Lmodmenu/LuaEditor;->wrap()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lmodmenu/LuaEditor;Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lmodmenu/LuaEditor;Lmodmenu/LuaScan$Issue;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->issueText(Lmodmenu/LuaScan$Issue;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lmodmenu/LuaEditor;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->jumpToIssue(I)V

    return-void
.end method

.method static synthetic access$1700([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 64
    invoke-static {p0}, Lmodmenu/LuaEditor;->await([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lmodmenu/LuaEditor;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->setBusy(Z)V

    return-void
.end method

.method static synthetic access$1900(Lmodmenu/LuaEditor;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lmodmenu/LuaEditor;->handleResult(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lmodmenu/LuaEditor;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->dispatch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lmodmenu/LuaEditor;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lmodmenu/LuaEditor;->showIssues()V

    return-void
.end method

.method static synthetic access$400(Lmodmenu/LuaEditor;)Landroid/app/Dialog;
    .locals 0

    .line 64
    iget-object p0, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$500(Lmodmenu/LuaEditor;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lmodmenu/LuaEditor;->highlight()V

    return-void
.end method

.method static synthetic access$600(Lmodmenu/LuaEditor;)Lmodmenu/LuaEditor$LineGutter;
    .locals 0

    .line 64
    iget-object p0, p0, Lmodmenu/LuaEditor;->gutter:Lmodmenu/LuaEditor$LineGutter;

    return-object p0
.end method

.method static synthetic access$700(Lmodmenu/LuaEditor;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lmodmenu/LuaEditor;->updateSuggest()V

    return-void
.end method

.method static synthetic access$800(Lmodmenu/LuaEditor;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lmodmenu/LuaEditor;->setStatusLines()V

    return-void
.end method

.method static synthetic access$900(Lmodmenu/LuaEditor;)Landroid/app/Activity;
    .locals 0

    .line 64
    iget-object p0, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    return-object p0
.end method

.method private actionBtn(Ljava/lang/String;)Landroid/widget/Button;
    .locals 3

    .line 276
    new-instance v0, Landroid/widget/Button;

    iget-object v1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 277
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 278
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 279
    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextSize(F)V

    .line 280
    iget-object v1, p0, Lmodmenu/LuaEditor;->p:Lmodmenu/Palette;

    iget v1, v1, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 281
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setGravity(I)V

    .line 282
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinHeight(I)V

    .line 283
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 284
    const/4 v1, 0x6

    invoke-direct {p0, v1}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v2

    invoke-direct {p0, v1}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v1

    invoke-virtual {v0, v2, p1, v1, p1}, Landroid/widget/Button;->setPadding(IIII)V

    .line 285
    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lmodmenu/LuaEditor;->dp(I)I

    move-result p1

    const/high16 v1, 0x14000000

    invoke-direct {p0, p1, v1}, Lmodmenu/LuaEditor;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 286
    return-object v0
.end method

.method private static await([Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    .line 813
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1770

    add-long/2addr v0, v2

    .line 814
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gez v4, :cond_2

    .line 815
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 816
    aget-object v3, p0, v2

    invoke-static {v3}, Lmodmenu/LuaEditor;->readJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 817
    if-eqz v3, :cond_0

    const-string v4, "r"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 818
    return-object v3

    .line 815
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 822
    :cond_1
    const-wide/16 v2, 0x3c

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    goto :goto_0

    .line 823
    :catch_0
    move-exception p0

    .line 824
    nop

    .line 827
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

    .line 573
    invoke-static {}, Lmodmenu/LuaEditor;->catalog()[[Ljava/lang/String;

    .line 574
    sget-object v0, Lmodmenu/LuaEditor;->nsIndex:Ljava/util/Map;

    return-object v0
.end method

.method private static catalog()[[Ljava/lang/String;
    .locals 9

    .line 544
    sget-object v0, Lmodmenu/LuaEditor;->catalog:[[Ljava/lang/String;

    if-nez v0, :cond_3

    .line 545
    const-class v0, Lmodmenu/LuaEditor;

    monitor-enter v0

    .line 546
    :try_start_0
    sget-object v1, Lmodmenu/LuaEditor;->catalog:[[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 547
    sget-object v1, Lmodmenu/MwApi;->ROWS:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [[Ljava/lang/String;

    .line 548
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 550
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 551
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    sget-object v6, Lmodmenu/MwApi;->ROWS:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 552
    sget-object v6, Lmodmenu/MwApi;->ROWS:[Ljava/lang/String;

    aget-object v6, v6, v5

    .line 553
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    .line 552
    const/4 v8, -0x1

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 554
    aput-object v6, v1, v5

    .line 555
    aget-object v7, v6, v4

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 556
    aget-object v7, v6, v4

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 557
    if-nez v7, :cond_0

    .line 558
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 559
    aget-object v8, v6, v4

    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    :cond_0
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 563
    :cond_1
    sput-object v1, Lmodmenu/LuaEditor;->catalog:[[Ljava/lang/String;

    .line 564
    sput-object v2, Lmodmenu/LuaEditor;->nsIndex:Ljava/util/Map;

    .line 565
    sput-object v3, Lmodmenu/LuaEditor;->nsNames:Ljava/util/Set;

    .line 567
    :cond_2
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 569
    :cond_3
    :goto_1
    sget-object v0, Lmodmenu/LuaEditor;->catalog:[[Ljava/lang/String;

    return-object v0
.end method

.method private static countNl(Ljava/lang/String;)I
    .locals 4

    .line 620
    nop

    .line 621
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 622
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 623
    add-int/lit8 v1, v1, 0x1

    .line 621
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 626
    :cond_1
    return v1
.end method

.method private static desc([Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 605
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

    .line 630
    invoke-direct {p0}, Lmodmenu/LuaEditor;->paths()[Ljava/lang/String;

    move-result-object v0

    .line 631
    const-string v1, "mod_le_fail"

    if-nez v0, :cond_0

    .line 632
    iget-object p1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    iget-object v0, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-static {v0, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 633
    return-void

    .line 635
    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    .line 636
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 635
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 638
    :cond_1
    const-string v3, "read"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "ModMenu"

    if-nez v5, :cond_3

    .line 639
    iget-object v5, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 640
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 641
    iget-object p1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    iget-object v0, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    const-string v1, "mod_le_empty"

    invoke-static {v0, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 642
    return-void

    .line 645
    :cond_2
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    aget-object v8, v0, v4

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :try_start_1
    const-string v8, "UTF-8"

    invoke-virtual {v5, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 649
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 650
    nop

    .line 655
    goto :goto_1

    .line 649
    :catchall_0
    move-exception p1

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    .line 650
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 651
    :catch_0
    move-exception p1

    .line 652
    const-string v0, "payload write failed"

    invoke-static {v6, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    iget-object p1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    iget-object v0, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-static {v0, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 654
    return-void

    .line 657
    :cond_3
    :goto_1
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lmodmenu/LuaEditor;->setBusy(Z)V

    .line 658
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 659
    iget-object v3, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    const-string v7, "..."

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    :cond_4
    :try_start_3
    aget-object v3, v0, v2

    aget-object v5, v0, v5

    aget-object v4, v0, v4

    .line 663
    invoke-static {p1, v3, v5, v4}, Lmodmenu/LuaEditor;->script(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 662
    invoke-static {v3, v4}, Lorg/appplay/lib/CommonNatives;->javaCallLuaEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 670
    nop

    .line 671
    iget-object v1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 672
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lmodmenu/LuaEditor$11;

    invoke-direct {v3, p0, v0, p1, v1}, Lmodmenu/LuaEditor$11;-><init>(Lmodmenu/LuaEditor;[Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    const-string p1, "mw-luaeditor"

    invoke-direct {v2, v3, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 684
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 685
    return-void

    .line 665
    :catch_1
    move-exception p1

    .line 666
    const-string v0, "lua editor dispatch failed"

    invoke-static {v6, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 667
    invoke-direct {p0, v2}, Lmodmenu/LuaEditor;->setBusy(Z)V

    .line 668
    iget-object p1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    iget-object v0, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-static {v0, v1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 669
    return-void
.end method

.method private dp(I)I
    .locals 1

    .line 925
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

    .line 785
    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 787
    :cond_0
    nop

    .line 785
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, "\\\'"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 786
    const-string v0, "\r"

    const-string v1, "\\r"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 787
    const-string v0, "\t"

    const-string v1, "\\t"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 785
    :goto_0
    return-object p0
.end method

.method private varargs fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 413
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

    .line 415
    :catch_0
    move-exception p2

    .line 416
    return-object p1
.end method

.method private handleResult(Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/Context;)V
    .locals 4

    .line 688
    const-string v0, "timeout"

    const-string v1, ""

    if-nez p2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    const-string v2, "r"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 689
    :goto_0
    const-string v3, "ok"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "read"

    if-eqz v2, :cond_3

    .line 690
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    const-string p1, "t"

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 692
    iget-object p2, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 693
    invoke-direct {p0}, Lmodmenu/LuaEditor;->setStatusLines()V

    .line 694
    goto :goto_1

    :cond_1
    const-string p2, "write"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 695
    const-string p1, "mod_le_filled"

    invoke-static {p3, p1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 696
    iget-object p1, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    goto :goto_1

    .line 698
    :cond_2
    const-string p1, "mod_le_saved"

    invoke-static {p3, p1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 699
    iget-object p1, p0, Lmodmenu/LuaEditor;->dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    .line 701
    :goto_1
    return-void

    .line 703
    :cond_3
    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const-string v0, "e"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
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

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 706
    iget-object p1, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    const-string p2, "notopen"

    invoke-virtual {v0, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 707
    const-string p2, "mod_le_notopen"

    invoke-static {p3, p2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    .line 708
    :cond_5
    const-string p2, "mod_le_loadfail"

    invoke-static {p3, p2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 706
    :goto_3
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 710
    :cond_6
    const-string p1, "mod_le_fail"

    invoke-static {p3, p1}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 712
    :goto_4
    return-void
.end method

.method private highlight()V
    .locals 7

    .line 294
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 295
    invoke-static {}, Lmodmenu/LuaEditor;->luaScan()Lmodmenu/LuaScan;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmodmenu/LuaScan;->scan(Ljava/lang/String;)Lmodmenu/LuaScan$Result;

    move-result-object v1

    .line 296
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

    .line 298
    invoke-interface {v0, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 296
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 300
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

    .line 301
    nop

    .line 302
    iget v3, v2, Lmodmenu/LuaScan$Tok;->kind:I

    const v5, -0x9e5011    # -2.999898E38f

    packed-switch v3, :pswitch_data_0

    goto :goto_2

    .line 316
    :pswitch_0
    nop

    .line 317
    goto :goto_3

    .line 319
    :pswitch_1
    invoke-static {}, Lmodmenu/LuaEditor;->namespaces()Ljava/util/Set;

    move-result-object v3

    iget-object v6, v2, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 320
    const v5, -0x1a3f85

    goto :goto_3

    .line 321
    :cond_1
    sget-object v3, Lmodmenu/LuaEditor;->STD:Ljava/util/Set;

    iget-object v6, v2, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    invoke-interface {v3, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 322
    goto :goto_3

    .line 313
    :pswitch_2
    nop

    .line 314
    const v5, -0x2e659a

    goto :goto_3

    .line 310
    :pswitch_3
    nop

    .line 311
    const v5, -0x948d80

    goto :goto_3

    .line 307
    :pswitch_4
    nop

    .line 308
    const v5, -0x673c87

    goto :goto_3

    .line 304
    :pswitch_5
    nop

    .line 305
    const v5, -0x398723

    goto :goto_3

    .line 328
    :cond_2
    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_3

    .line 329
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget v5, v2, Lmodmenu/LuaScan$Tok;->start:I

    iget v2, v2, Lmodmenu/LuaScan$Tok;->end:I

    .line 330
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 329
    const/16 v6, 0x21

    invoke-interface {v0, v3, v5, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 333
    :cond_3
    goto :goto_1

    .line 334
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

    .line 531
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

    .line 384
    const-string v0, "missing_end"

    iget-object v1, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 385
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

    .line 387
    :cond_0
    const-string v0, "unclosed_str"

    iget-object v3, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 388
    iget p1, p1, Lmodmenu/LuaScan$Issue;->line:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "mod_le_i_unclosed_str"

    invoke-direct {p0, p1, v0}, Lmodmenu/LuaEditor;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 390
    :cond_1
    const-string v0, "unclosed_long"

    iget-object v3, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 391
    iget p1, p1, Lmodmenu/LuaScan$Issue;->line:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "mod_le_i_unclosed_long"

    invoke-direct {p0, p1, v0}, Lmodmenu/LuaEditor;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 393
    :cond_2
    const-string v0, "unclosed_br"

    iget-object v3, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x2

    if-eqz v0, :cond_3

    .line 394
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

    .line 396
    :cond_3
    const-string v0, "extra_end"

    iget-object v4, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 397
    iget p1, p1, Lmodmenu/LuaScan$Issue;->line:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "mod_le_i_extra_end"

    invoke-direct {p0, p1, v0}, Lmodmenu/LuaEditor;->fmt(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 399
    :cond_4
    const-string v0, "bad_close"

    iget-object v4, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 400
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

    .line 402
    :cond_5
    const-string v0, "extra_close"

    iget-object v4, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 403
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

    .line 405
    :cond_6
    const-string v0, "unknown_api"

    iget-object v4, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 406
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

    .line 408
    :cond_7
    iget-object p1, p1, Lmodmenu/LuaScan$Issue;->code:Ljava/lang/String;

    return-object p1
.end method

.method private jumpToIssue(I)V
    .locals 5

    .line 421
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    goto :goto_0

    .line 425
    :cond_0
    sub-int/2addr p1, v1

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 426
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 427
    iget-object v3, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 428
    iget-object v3, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 429
    iget-object v2, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    new-instance v3, Landroid/graphics/Rect;

    .line 430
    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {v3, v0, v4, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 429
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 431
    return-void

    .line 423
    :cond_1
    :goto_0
    return-void
.end method

.method private static luaScan()Lmodmenu/LuaScan;
    .locals 8

    .line 583
    sget-object v0, Lmodmenu/LuaEditor;->luaScan:Lmodmenu/LuaScan;

    if-nez v0, :cond_3

    .line 584
    const-class v0, Lmodmenu/LuaEditor;

    monitor-enter v0

    .line 585
    :try_start_0
    sget-object v1, Lmodmenu/LuaEditor;->luaScan:Lmodmenu/LuaScan;

    if-nez v1, :cond_2

    .line 586
    invoke-static {}, Lmodmenu/LuaEditor;->catalog()[[Ljava/lang/String;

    .line 587
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 590
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

    .line 591
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 592
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

    .line 593
    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 594
    goto :goto_1

    .line 595
    :cond_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    goto :goto_0

    .line 597
    :cond_1
    new-instance v2, Lmodmenu/LuaScan;

    sget-object v3, Lmodmenu/LuaEditor;->nsNames:Ljava/util/Set;

    invoke-direct {v2, v3, v1}, Lmodmenu/LuaScan;-><init>(Ljava/util/Set;Ljava/util/Map;)V

    sput-object v2, Lmodmenu/LuaEditor;->luaScan:Lmodmenu/LuaScan;

    .line 599
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 601
    :cond_3
    :goto_2
    sget-object v0, Lmodmenu/LuaEditor;->luaScan:Lmodmenu/LuaScan;

    return-object v0
.end method

.method private match(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 914
    const/4 v0, -0x1

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 915
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

    .line 578
    invoke-static {}, Lmodmenu/LuaEditor;->catalog()[[Ljava/lang/String;

    .line 579
    sget-object v0, Lmodmenu/LuaEditor;->nsNames:Ljava/util/Set;

    return-object v0
.end method

.method private paths()[Ljava/lang/String;
    .locals 6

    .line 794
    const-string v0, "mw_le_payload.lua"

    const-string v1, "mw_le.json"

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 795
    if-nez v3, :cond_0

    .line 796
    return-object v2

    .line 798
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 799
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 800
    iget-object v5, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    invoke-virtual {v5, v2}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 801
    if-nez v5, :cond_1

    .line 802
    filled-new-array {v4, v4, v3}, [Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 804
    :cond_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 805
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v4, v0}, [Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 804
    return-object v0

    .line 806
    :catch_0
    move-exception v0

    .line 807
    const-string v1, "ModMenu"

    const-string v3, "paths failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 808
    return-object v2
.end method

.method private static readJson(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .line 834
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p0

    if-nez p0, :cond_0

    .line 836
    return-object v0

    .line 838
    :cond_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 841
    const/16 v2, 0x200

    new-array v2, v2, [B

    .line 843
    :goto_0
    invoke-virtual {p0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    .line 844
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 846
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    const-string v3, "UTF-8"

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 848
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 846
    return-object v2

    .line 848
    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V

    .line 849
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 850
    :catch_0
    move-exception p0

    .line 851
    return-object v0
.end method

.method private round(II)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 907
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 908
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 909
    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 910
    return-object v0
.end method

.method private static script(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 731
    const-string v0, "read"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 732
    const-string v1, "save"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 733
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "(function() local P1=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 734
    invoke-static {p1}, Lmodmenu/LuaEditor;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "\' local P2=\'"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 735
    invoke-static {p2}, Lmodmenu/LuaEditor;->esc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\' local P3=\'"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 736
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

    .line 760
    if-eqz v0, :cond_0

    .line 761
    const-string p1, " local wd=(v and v.widgets) or c.widgets local box=wd and wd.contentBox if not(box and box.getText) then error(\'nobox\') end w(\'{\"r\":\"ok\",\"t\":\'..jesc(box:getText() or \'\')..\'}\')"

    goto :goto_1

    .line 774
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " local f=io.open(P3,\'r\') if not f then error(\'nopayload\') end local t=f:read(\'*a\') f:close() if not(v and v.SetContentText) then error(\'noview\') end v:SetContentText(t)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 772
    if-eqz v1, :cond_1

    const-string p2, " if c.SaveBtnClick then c:SaveBtnClick() end"

    goto :goto_0

    .line 773
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

    .line 733
    return-object p0
.end method

.method private setBusy(Z)V
    .locals 2

    .line 715
    iget-object v0, p0, Lmodmenu/LuaEditor;->fillBtn:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 716
    iget-object v0, p0, Lmodmenu/LuaEditor;->saveBtn:Landroid/widget/Button;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 717
    iget-object v0, p0, Lmodmenu/LuaEditor;->checkBtn:Landroid/widget/Button;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 718
    return-void
.end method

.method private setStatusLines()V
    .locals 7

    .line 613
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
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

    .line 615
    :goto_0
    iget-object v1, p0, Lmodmenu/LuaEditor;->status:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    iget-object v5, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    .line 616
    const-string v6, "mod_le_lines"

    invoke-static {v5, v6}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 615
    invoke-static {v4, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 617
    return-void
.end method

.method private setupCode()V
    .locals 6

    .line 253
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 254
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    const/high16 v1, 0x41500000    # 13.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 255
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    iget-object v1, p0, Lmodmenu/LuaEditor;->p:Lmodmenu/Palette;

    iget v1, v1, Lmodmenu/Palette;->onSurface:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 256
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    iget-object v1, p0, Lmodmenu/LuaEditor;->p:Lmodmenu/Palette;

    iget v1, v1, Lmodmenu/Palette;->onSurfaceVariant:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 257
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    iget-object v1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    const-string v2, "mod_le_hint"

    invoke-static {v1, v2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    const v1, 0x800033

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 259
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lmodmenu/LuaEditor;->dp(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lmodmenu/LuaEditor;->round(II)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 260
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

    .line 261
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    const v1, 0xa0001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 264
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 265
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 266
    iget-object v0, p0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lmodmenu/LuaEditor$9;

    invoke-direct {v1, p0}, Lmodmenu/LuaEditor$9;-><init>(Lmodmenu/LuaEditor;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 273
    return-void
.end method

.method static show(Landroid/app/Activity;Lmodmenu/Palette;)V
    .locals 1

    .line 101
    new-instance v0, Lmodmenu/LuaEditor;

    invoke-direct {v0, p0, p1}, Lmodmenu/LuaEditor;-><init>(Landroid/app/Activity;Lmodmenu/Palette;)V

    .line 102
    return-void
.end method

.method private showIssues()V
    .locals 4

    .line 338
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

    .line 339
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    iget-object v0, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    iget-object v1, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    const-string v2, "mod_le_noissues"

    invoke-static {v1, v2}, Lmodmenu/I18n;->t(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmodmenu/LuaEditor;->toast(Landroid/content/Context;Ljava/lang/String;)V

    .line 341
    return-void

    .line 343
    :cond_0
    new-instance v1, Lmodmenu/LuaEditor$10;

    iget-object v2, p0, Lmodmenu/LuaEditor;->host:Landroid/app/Activity;

    const v3, 0x1030010

    invoke-direct {v1, p0, v2, v3, v0}, Lmodmenu/LuaEditor$10;-><init>(Lmodmenu/LuaEditor;Landroid/content/Context;ILjava/util/List;)V

    .line 380
    invoke-virtual {v1}, Lmodmenu/LuaEditor$10;->show()V

    .line 381
    return-void
.end method

.method private static toast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 900
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    goto :goto_0

    .line 901
    :catch_0
    move-exception p0

    .line 902
    const-string p1, "ModMenu"

    const-string v0, "toast failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    :goto_0
    return-void
.end method

.method private updateSuggest()V
    .locals 18

    .line 448
    move-object/from16 v0, p0

    iget-object v1, v0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 449
    iget-object v2, v0, Lmodmenu/LuaEditor;->code:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v2

    .line 450
    if-gez v2, :cond_0

    .line 451
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v2

    .line 453
    :cond_0
    move v3, v2

    .line 454
    :goto_0
    if-lez v3, :cond_1

    add-int/lit8 v4, v3, -0x1

    invoke-interface {v1, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmodmenu/LuaEditor;->isWord(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 455
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 457
    :cond_1
    invoke-interface {v1, v3, v2}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 458
    iget-object v2, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 459
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-nez v2, :cond_10

    .line 460
    nop

    .line 461
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

    .line 462
    :cond_2
    nop

    .line 463
    move v4, v3

    .line 464
    :goto_1
    if-lez v4, :cond_3

    add-int/lit8 v5, v4, -0x1

    invoke-interface {v1, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lmodmenu/LuaEditor;->isWord(C)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 465
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 467
    :cond_3
    if-ge v4, v3, :cond_4

    .line 468
    invoke-interface {v1, v4, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 471
    :cond_4
    const/4 v1, 0x0

    :goto_2
    const/4 v3, 0x2

    if-eqz v1, :cond_7

    .line 472
    invoke-static {}, Lmodmenu/LuaEditor;->byNs()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 473
    if-eqz v1, :cond_6

    .line 474
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 475
    aget-object v4, v2, v12

    .line 476
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 475
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 477
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

    .line 478
    invoke-static {v2}, Lmodmenu/LuaEditor;->desc([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lmodmenu/LuaEditor$Sug;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    :cond_5
    goto :goto_3

    .line 482
    :cond_6
    goto/16 :goto_9

    .line 483
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

    .line 484
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 485
    iget-object v5, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    new-instance v6, Lmodmenu/LuaEditor$Sug;

    invoke-direct {v6, v4, v4}, Lmodmenu/LuaEditor$Sug;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_8
    goto :goto_4

    .line 488
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

    .line 489
    const/4 v8, 0x0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 490
    iget-object v5, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    new-instance v6, Lmodmenu/LuaEditor$Sug;

    invoke-direct {v6, v4, v4}, Lmodmenu/LuaEditor$Sug;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_a
    goto :goto_5

    .line 493
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

    .line 494
    nop

    .line 495
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 494
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 496
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

    .line 498
    :cond_c
    goto :goto_6

    .line 499
    :cond_d
    invoke-static {}, Lmodmenu/LuaEditor;->catalog()[[Ljava/lang/String;

    move-result-object v1

    array-length v14, v1

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v14, :cond_f

    aget-object v16, v1, v15

    .line 500
    aget-object v4, v16, v12

    .line 501
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    .line 500
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 502
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

    .line 503
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

    .line 502
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 500
    :cond_e
    const/16 v17, 0x2

    .line 499
    :goto_8
    add-int/lit8 v15, v15, 0x1

    const/4 v3, 0x2

    goto :goto_7

    .line 507
    :cond_f
    :goto_9
    iget-object v1, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v10, :cond_10

    .line 508
    iget-object v1, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    iget-object v2, v0, Lmodmenu/LuaEditor;->sugs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_9

    .line 511
    :cond_10
    iget-object v1, v0, Lmodmenu/LuaEditor;->suggestList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 512
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

    .line 513
    return-void
.end method

.method private wrap()Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 919
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method
