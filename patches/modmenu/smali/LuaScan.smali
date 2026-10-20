.class final Lmodmenu/LuaScan;
.super Ljava/lang/Object;
.source "LuaScan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmodmenu/LuaScan$Result;,
        Lmodmenu/LuaScan$Issue;,
        Lmodmenu/LuaScan$Tok;
    }
.end annotation


# static fields
.field static final API:I = 0x5

.field static final BAD_CLOSE:Ljava/lang/String; = "bad_close"

.field static final COM:I = 0x2

.field static final EXTRA_CLOSE:Ljava/lang/String; = "extra_close"

.field static final EXTRA_END:Ljava/lang/String; = "extra_end"

.field static final KEYWORDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final KW:I = 0x0

.field static final MISSING_END:Ljava/lang/String; = "missing_end"

.field static final NAME:I = 0x4

.field static final NUM:I = 0x3

.field static final OP:I = 0x6

.field static final STR:I = 0x1

.field static final UNCLOSED_BR:Ljava/lang/String; = "unclosed_br"

.field static final UNCLOSED_LONG:Ljava/lang/String; = "unclosed_long"

.field static final UNCLOSED_STR:Ljava/lang/String; = "unclosed_str"

.field static final UNKNOWN_API:Ljava/lang/String; = "unknown_api"


# instance fields
.field private final methods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final namespaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 41
    new-instance v0, Ljava/util/HashSet;

    const-string v19, "until"

    const-string v20, "while"

    const-string v1, "and"

    const-string v2, "break"

    const-string v3, "do"

    const-string v4, "else"

    const-string v5, "elseif"

    const-string v6, "end"

    const-string v7, "false"

    const-string v8, "for"

    const-string v9, "function"

    const-string v10, "if"

    const-string v11, "local"

    const-string v12, "nil"

    const-string v13, "not"

    const-string v14, "or"

    const-string v15, "repeat"

    const-string v16, "return"

    const-string v17, "then"

    const-string v18, "true"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lmodmenu/LuaScan;->KEYWORDS:Ljava/util/Set;

    return-void
.end method

.method constructor <init>(Ljava/util/Set;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lmodmenu/LuaScan;->namespaces:Ljava/util/Set;

    .line 86
    iput-object p2, p0, Lmodmenu/LuaScan;->methods:Ljava/util/Map;

    .line 87
    return-void
.end method

.method private checkApi(Lmodmenu/LuaScan$Result;)V
    .locals 7

    .line 279
    const/4 v0, 0x2

    :goto_0
    iget-object v1, p1, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 280
    iget-object v1, p1, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmodmenu/LuaScan$Tok;

    .line 281
    iget v2, v1, Lmodmenu/LuaScan$Tok;->kind:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    .line 282
    goto/16 :goto_2

    .line 284
    :cond_0
    iget-object v2, p1, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmodmenu/LuaScan$Tok;

    .line 285
    iget-object v3, p1, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    add-int/lit8 v4, v0, -0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmodmenu/LuaScan$Tok;

    .line 286
    iget v4, v2, Lmodmenu/LuaScan$Tok;->kind:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    iget-object v4, v2, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x3a

    if-eq v4, v6, :cond_1

    iget-object v2, v2, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    .line 287
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x2e

    if-ne v2, v4, :cond_4

    :cond_1
    iget v2, v3, Lmodmenu/LuaScan$Tok;->kind:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_2

    .line 288
    goto :goto_2

    .line 290
    :cond_2
    iget-object v2, p0, Lmodmenu/LuaScan;->namespaces:Ljava/util/Set;

    iget-object v4, v3, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 291
    iget-object v2, p0, Lmodmenu/LuaScan;->methods:Ljava/util/Map;

    iget-object v4, v3, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 292
    :goto_1
    if-eqz v2, :cond_4

    iget-object v4, v1, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 293
    iget-object v2, p1, Lmodmenu/LuaScan$Result;->issues:Ljava/util/List;

    new-instance v4, Lmodmenu/LuaScan$Issue;

    iget v5, v1, Lmodmenu/LuaScan$Tok;->line:I

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "unknown_api"

    invoke-direct {v4, v3, v5, v1}, Lmodmenu/LuaScan$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 297
    :cond_5
    return-void
.end method

.method private checkBlocks(Lmodmenu/LuaScan$Result;)V
    .locals 7

    .line 225
    nop

    .line 226
    nop

    .line 227
    iget-object v0, p1, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmodmenu/LuaScan$Tok;

    .line 228
    iget v4, v3, Lmodmenu/LuaScan$Tok;->kind:I

    if-eqz v4, :cond_0

    .line 229
    goto :goto_0

    .line 231
    :cond_0
    iget-object v4, v3, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    const-string v5, "function"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    const-string v5, "if"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    .line 232
    const-string v5, "do"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    const-string v5, "repeat"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 234
    :cond_1
    iget-object v4, v3, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    const-string v5, "end"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, v3, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    const-string v5, "until"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 235
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 236
    if-gez v1, :cond_4

    if-nez v2, :cond_4

    .line 237
    nop

    .line 238
    iget-object v2, p1, Lmodmenu/LuaScan$Result;->issues:Ljava/util/List;

    new-instance v4, Lmodmenu/LuaScan$Issue;

    iget v3, v3, Lmodmenu/LuaScan$Tok;->line:I

    const/4 v5, 0x0

    const-string v6, "extra_end"

    invoke-direct {v4, v6, v3, v5}, Lmodmenu/LuaScan$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    goto :goto_2

    .line 233
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 241
    :cond_4
    :goto_2
    goto :goto_0

    .line 242
    :cond_5
    if-lez v1, :cond_6

    .line 243
    iget-object p1, p1, Lmodmenu/LuaScan$Result;->issues:Ljava/util/List;

    new-instance v0, Lmodmenu/LuaScan$Issue;

    .line 244
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "missing_end"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3, v1}, Lmodmenu/LuaScan$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 243
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_6
    return-void
.end method

.method private checkBrackets(Lmodmenu/LuaScan$Result;)V
    .locals 11

    .line 249
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 250
    iget-object v1, p1, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmodmenu/LuaScan$Tok;

    .line 251
    iget v3, v2, Lmodmenu/LuaScan$Tok;->kind:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_0

    iget-object v3, v2, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 252
    goto :goto_0

    .line 254
    :cond_1
    iget-object v3, v2, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 255
    const/16 v5, 0x28

    if-eq v3, v5, :cond_8

    const/16 v6, 0x7b

    if-eq v3, v6, :cond_8

    const/16 v7, 0x5b

    if-ne v3, v7, :cond_2

    goto :goto_2

    .line 257
    :cond_2
    const/16 v8, 0x7d

    const/16 v9, 0x29

    if-eq v3, v9, :cond_3

    if-eq v3, v8, :cond_3

    const/16 v10, 0x5d

    if-ne v3, v10, :cond_9

    .line 258
    :cond_3
    if-ne v3, v9, :cond_4

    goto :goto_1

    :cond_4
    if-ne v3, v8, :cond_5

    const/16 v5, 0x7b

    goto :goto_1

    :cond_5
    const/16 v5, 0x5b

    .line 259
    :goto_1
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 260
    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmodmenu/LuaScan$Tok;

    iget-object v3, v3, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_6

    .line 261
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    goto :goto_3

    .line 262
    :cond_6
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 263
    iget-object v3, p1, Lmodmenu/LuaScan$Result;->issues:Ljava/util/List;

    new-instance v4, Lmodmenu/LuaScan$Issue;

    iget v5, v2, Lmodmenu/LuaScan$Tok;->line:I

    iget-object v2, v2, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    const-string v6, "extra_close"

    invoke-direct {v4, v6, v5, v2}, Lmodmenu/LuaScan$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 265
    :cond_7
    iget-object v3, p1, Lmodmenu/LuaScan$Result;->issues:Ljava/util/List;

    new-instance v4, Lmodmenu/LuaScan$Issue;

    iget v5, v2, Lmodmenu/LuaScan$Tok;->line:I

    iget-object v2, v2, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    const-string v6, "bad_close"

    invoke-direct {v4, v6, v5, v2}, Lmodmenu/LuaScan$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 256
    :cond_8
    :goto_2
    invoke-interface {v0, v2}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 268
    :cond_9
    :goto_3
    goto/16 :goto_0

    .line 269
    :cond_a
    :goto_4
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 270
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmodmenu/LuaScan$Tok;

    .line 271
    iget-object v2, p1, Lmodmenu/LuaScan$Result;->issues:Ljava/util/List;

    new-instance v3, Lmodmenu/LuaScan$Issue;

    iget v4, v1, Lmodmenu/LuaScan$Tok;->line:I

    iget-object v1, v1, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    const-string v5, "unclosed_br"

    invoke-direct {v3, v5, v4, v1}, Lmodmenu/LuaScan$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    goto :goto_4

    .line 273
    :cond_b
    return-void
.end method

.method private static countNl(Ljava/lang/String;)I
    .locals 4

    .line 322
    nop

    .line 323
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 324
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 325
    add-int/lit8 v1, v1, 0x1

    .line 323
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_1
    return v1
.end method

.method private static findLongClose(Ljava/lang/String;II)I
    .locals 3

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 315
    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    :cond_0
    const/16 p2, 0x5d

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static longLevel(Ljava/lang/String;I)I
    .locals 5

    .line 302
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, -0x1

    if-ge p1, v0, :cond_3

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 305
    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 306
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3d

    if-ne v3, v4, :cond_1

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 309
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    if-ne p0, v2, :cond_2

    sub-int/2addr v0, p1

    add-int/lit8 v1, v0, -0x1

    :cond_2
    return v1

    .line 303
    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method scan(Ljava/lang/String;)Lmodmenu/LuaScan$Result;
    .locals 12

    .line 90
    new-instance v0, Lmodmenu/LuaScan$Result;

    invoke-direct {v0}, Lmodmenu/LuaScan$Result;-><init>()V

    .line 91
    nop

    .line 92
    nop

    .line 93
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 94
    :goto_0
    if-ge v6, v1, :cond_1b

    .line 95
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 96
    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 97
    add-int/lit8 v8, v8, 0x1

    .line 98
    add-int/lit8 v6, v6, 0x1

    .line 99
    goto :goto_0

    .line 101
    :cond_0
    const-string v7, "unclosed_long"

    const/16 v9, 0x2d

    const/4 v10, 0x0

    if-ne v4, v9, :cond_5

    add-int/lit8 v11, v6, 0x1

    if-ge v11, v1, :cond_5

    invoke-virtual {p1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_5

    .line 102
    nop

    .line 103
    add-int/lit8 v4, v6, 0x2

    if-ge v4, v1, :cond_1

    invoke-static {p1, v4}, Lmodmenu/LuaScan;->longLevel(Ljava/lang/String;I)I

    move-result v9

    goto :goto_1

    :cond_1
    const/4 v9, -0x1

    .line 104
    :goto_1
    if-ltz v9, :cond_3

    .line 105
    add-int/lit8 v4, v6, 0x3

    add-int/2addr v4, v9

    invoke-static {p1, v4, v9}, Lmodmenu/LuaScan;->findLongClose(Ljava/lang/String;II)I

    move-result v4

    .line 107
    if-gez v4, :cond_2

    .line 108
    iget-object v4, v0, Lmodmenu/LuaScan$Result;->issues:Ljava/util/List;

    new-instance v5, Lmodmenu/LuaScan$Issue;

    invoke-direct {v5, v7, v8, v10}, Lmodmenu/LuaScan$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 110
    move v7, v1

    move-object v9, v4

    goto :goto_2

    .line 112
    :cond_2
    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v9

    .line 113
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    move v7, v4

    move-object v9, v5

    .line 115
    :goto_2
    invoke-static {v9}, Lmodmenu/LuaScan;->countNl(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v8, v4

    .line 116
    iget-object v10, v0, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    new-instance v4, Lmodmenu/LuaScan$Tok;

    const/4 v5, 0x2

    invoke-direct/range {v4 .. v9}, Lmodmenu/LuaScan$Tok;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    move v6, v7

    goto :goto_0

    .line 119
    :cond_3
    move v7, v4

    .line 120
    :goto_3
    if-ge v7, v1, :cond_4

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_4

    .line 121
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 123
    :cond_4
    iget-object v10, v0, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    new-instance v4, Lmodmenu/LuaScan$Tok;

    .line 124
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x2

    invoke-direct/range {v4 .. v9}, Lmodmenu/LuaScan$Tok;-><init>(IIIILjava/lang/String;)V

    .line 123
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    nop

    .line 126
    move v6, v7

    goto :goto_0

    .line 128
    :cond_5
    const/16 v9, 0x5b

    if-ne v4, v9, :cond_7

    .line 129
    invoke-static {p1, v6}, Lmodmenu/LuaScan;->longLevel(Ljava/lang/String;I)I

    move-result v11

    .line 130
    if-ltz v11, :cond_7

    .line 131
    nop

    .line 132
    add-int/lit8 v4, v6, 0x2

    add-int/2addr v4, v11

    invoke-static {p1, v4, v11}, Lmodmenu/LuaScan;->findLongClose(Ljava/lang/String;II)I

    move-result v4

    .line 134
    if-gez v4, :cond_6

    .line 135
    iget-object v4, v0, Lmodmenu/LuaScan$Result;->issues:Ljava/util/List;

    new-instance v5, Lmodmenu/LuaScan$Issue;

    invoke-direct {v5, v7, v8, v10}, Lmodmenu/LuaScan$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    move v7, v1

    goto :goto_4

    .line 138
    :cond_6
    add-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v11

    move v7, v4

    .line 140
    :goto_4
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 141
    invoke-static {v9}, Lmodmenu/LuaScan;->countNl(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v8, v4

    .line 142
    iget-object v10, v0, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    new-instance v4, Lmodmenu/LuaScan$Tok;

    const/4 v5, 0x1

    invoke-direct/range {v4 .. v9}, Lmodmenu/LuaScan$Tok;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    nop

    .line 144
    move v6, v7

    goto/16 :goto_0

    .line 147
    :cond_7
    const/16 v7, 0x22

    if-eq v4, v7, :cond_15

    const/16 v7, 0x27

    if-ne v4, v7, :cond_8

    move v9, v4

    goto/16 :goto_c

    .line 176
    :cond_8
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    const/16 v7, 0x5f

    const/16 v10, 0x2e

    if-nez v5, :cond_12

    if-ne v4, v10, :cond_9

    add-int/lit8 v5, v6, 0x1

    if-ge v5, v1, :cond_9

    .line 178
    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_a

    .line 191
    :cond_9
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_d

    if-ne v4, v7, :cond_a

    goto :goto_6

    .line 208
    :cond_a
    const/16 v5, 0x28

    if-eq v4, v5, :cond_c

    const/16 v5, 0x29

    if-eq v4, v5, :cond_c

    const/16 v5, 0x7b

    if-eq v4, v5, :cond_c

    const/16 v5, 0x7d

    if-eq v4, v5, :cond_c

    if-eq v4, v9, :cond_c

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_c

    const/16 v5, 0x3a

    if-eq v4, v5, :cond_c

    if-ne v4, v10, :cond_b

    goto :goto_5

    .line 214
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 215
    goto/16 :goto_0

    .line 210
    :cond_c
    :goto_5
    iget-object v10, v0, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    move v7, v4

    new-instance v4, Lmodmenu/LuaScan$Tok;

    move v9, v7

    add-int/lit8 v7, v6, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    const/4 v5, 0x6

    invoke-direct/range {v4 .. v9}, Lmodmenu/LuaScan$Tok;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    nop

    .line 212
    move v6, v7

    goto/16 :goto_0

    .line 192
    :cond_d
    :goto_6
    move v7, v6

    .line 193
    :goto_7
    if-ge v7, v1, :cond_e

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 194
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 196
    :cond_e
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 197
    sget-object v4, Lmodmenu/LuaScan;->KEYWORDS:Ljava/util/Set;

    invoke-interface {v4, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x4

    if-eqz v4, :cond_f

    const/4 v4, 0x0

    goto :goto_8

    :cond_f
    const/4 v4, 0x4

    .line 198
    :goto_8
    if-ne v4, v5, :cond_11

    iget-object v5, v0, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_11

    .line 199
    iget-object v5, v0, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    iget-object v10, v0, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v3

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmodmenu/LuaScan$Tok;

    .line 200
    iget v10, v5, Lmodmenu/LuaScan$Tok;->kind:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_11

    iget-object v10, v5, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    .line 201
    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v5, v5, Lmodmenu/LuaScan$Tok;->text:Ljava/lang/String;

    const-string v10, "."

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 202
    :cond_10
    const/4 v4, 0x5

    const/4 v5, 0x5

    goto :goto_9

    .line 205
    :cond_11
    move v5, v4

    :goto_9
    iget-object v10, v0, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    new-instance v4, Lmodmenu/LuaScan$Tok;

    invoke-direct/range {v4 .. v9}, Lmodmenu/LuaScan$Tok;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    move v6, v7

    goto/16 :goto_0

    .line 179
    :cond_12
    :goto_a
    move v7, v6

    const/16 v4, 0x5f

    .line 180
    :goto_b
    if-ge v7, v1, :cond_14

    .line 181
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 182
    invoke-static {v5}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v9

    if-nez v9, :cond_13

    if-eq v5, v10, :cond_13

    if-ne v5, v4, :cond_14

    .line 183
    :cond_13
    add-int/lit8 v7, v7, 0x1

    .line 187
    goto :goto_b

    .line 188
    :cond_14
    iget-object v10, v0, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    new-instance v4, Lmodmenu/LuaScan$Tok;

    const/4 v5, 0x3

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v4 .. v9}, Lmodmenu/LuaScan$Tok;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    move v6, v7

    goto/16 :goto_0

    .line 147
    :cond_15
    move v9, v4

    .line 148
    :goto_c
    nop

    .line 149
    add-int/lit8 v4, v6, 0x1

    .line 150
    nop

    .line 151
    :goto_d
    if-ge v4, v1, :cond_19

    .line 152
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 153
    const/16 v11, 0x5c

    if-ne v7, v11, :cond_16

    .line 154
    add-int/lit8 v4, v4, 0x2

    .line 155
    goto :goto_d

    .line 157
    :cond_16
    if-ne v7, v9, :cond_17

    .line 158
    nop

    .line 159
    add-int/lit8 v4, v4, 0x1

    .line 160
    move v7, v4

    const/4 v4, 0x1

    goto :goto_f

    .line 162
    :cond_17
    if-ne v7, v5, :cond_18

    .line 163
    goto :goto_e

    .line 165
    :cond_18
    add-int/lit8 v4, v4, 0x1

    .line 166
    goto :goto_d

    .line 167
    :cond_19
    :goto_e
    move v7, v4

    const/4 v4, 0x0

    :goto_f
    if-nez v4, :cond_1a

    .line 168
    iget-object v4, v0, Lmodmenu/LuaScan$Result;->issues:Ljava/util/List;

    new-instance v5, Lmodmenu/LuaScan$Issue;

    const-string v9, "unclosed_str"

    invoke-direct {v5, v9, v8, v10}, Lmodmenu/LuaScan$Issue;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :cond_1a
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 171
    invoke-static {v9}, Lmodmenu/LuaScan;->countNl(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v8, v4

    .line 172
    iget-object v10, v0, Lmodmenu/LuaScan$Result;->toks:Ljava/util/List;

    new-instance v4, Lmodmenu/LuaScan$Tok;

    const/4 v5, 0x1

    invoke-direct/range {v4 .. v9}, Lmodmenu/LuaScan$Tok;-><init>(IIIILjava/lang/String;)V

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    nop

    .line 174
    move v6, v7

    goto/16 :goto_0

    .line 216
    :cond_1b
    invoke-direct {p0, v0}, Lmodmenu/LuaScan;->checkBlocks(Lmodmenu/LuaScan$Result;)V

    .line 217
    invoke-direct {p0, v0}, Lmodmenu/LuaScan;->checkBrackets(Lmodmenu/LuaScan$Result;)V

    .line 218
    invoke-direct {p0, v0}, Lmodmenu/LuaScan;->checkApi(Lmodmenu/LuaScan$Result;)V

    .line 219
    return-object v0
.end method
