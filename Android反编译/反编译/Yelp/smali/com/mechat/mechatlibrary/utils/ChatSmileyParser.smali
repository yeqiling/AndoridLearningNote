.class public Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;
.super Ljava/lang/Object;
.source "ChatSmileyParser.java"


# static fields
.field private static instance:Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;

.field private static smileyTexts:[Ljava/lang/String;

.field private static tmpSmileyTexts:[Ljava/lang/String;


# instance fields
.field private SMILEY_SIZE:I

.field private final context:Landroid/content/Context;

.field private final pattern:Ljava/util/regex/Pattern;

.field private resList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final smileyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tmpResList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->initEmojiUtils(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->initRes(Landroid/content/Context;)V

    .line 45
    iput-object p1, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->context:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->buildSmileyToRes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->smileyMap:Ljava/util/HashMap;

    .line 49
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->buildPattern()Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->pattern:Ljava/util/regex/Pattern;

    .line 50
    const/high16 v0, 0x41a0

    invoke-static {p1, v0}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->SMILEY_SIZE:I

    .line 51
    return-void
.end method

.method private buildPattern()Ljava/util/regex/Pattern;
    .locals 6

    .prologue
    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->smileyTexts:[Ljava/lang/String;

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 246
    .local v1, patternString:Ljava/lang/StringBuilder;
    const/16 v3, 0x28

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v3, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->smileyTexts:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 252
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    const-string v5, ")"

    invoke-virtual {v1, v3, v4, v5}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    return-object v3

    .line 248
    :cond_0
    sget-object v3, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->smileyTexts:[Ljava/lang/String;

    aget-object v2, v3, v0

    .line 249
    .local v2, s:Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    const/16 v3, 0x7c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private buildSmileyToRes()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    iget-object v2, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sget-object v3, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->smileyTexts:[Ljava/lang/String;

    array-length v3, v3

    if-eq v2, v3, :cond_0

    .line 234
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Smiley resource ID/text mismatch"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 237
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 238
    .local v1, smileyToRes:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->smileyTexts:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 241
    return-object v1

    .line 239
    :cond_1
    sget-object v2, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->smileyTexts:[Ljava/lang/String;

    aget-object v3, v2, v0

    iget-object v2, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "dpValue"

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 55
    .local v0, scale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;
    .locals 1
    .parameter "context"

    .prologue
    .line 36
    sget-object v0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->instance:Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;

    invoke-direct {v0, p0}, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->instance:Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;

    .line 39
    :cond_0
    sget-object v0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->instance:Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;

    return-object v0
.end method

.method public static initEmojiUtils(Landroid/content/Context;)V
    .locals 8
    .parameter "ctx"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 199
    const/16 v0, 0x2a

    new-array v0, v0, [Ljava/lang/String;

    .line 200
    const-string v1, "[scream]"

    aput-object v1, v0, v3

    const-string v1, "[sunglasses]"

    aput-object v1, v0, v4

    const-string v1, "[smile]"

    aput-object v1, v0, v5

    const-string v1, "[smiley]"

    aput-object v1, v0, v6

    const-string v1, "[laughing]"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "[blush]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "[heart_eyes]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 201
    const-string v2, "[smirk]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "[flushed]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "[satisfied]"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "[grin]"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "[wink]"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "[stuck_out_tongue_winking_eye]"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "[stuck_out_tongue]"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 202
    const-string v2, "[sleeping]"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "[worried]"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "[expressionless]"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "[sweat_smile]"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "[cold_sweat]"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "[joy]"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "[sob]"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 203
    const-string v2, "[angry]"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "[mask]"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "[kiss]"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "[no_good]"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "[heart]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "[broken_heart]"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "[star]"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    .line 204
    const-string v2, "[anger]"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "[exclamation]"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "[question]"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "[zzz]"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "[thumbsup]"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "[thumbsdown]"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "[ok_hand]"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    .line 205
    const-string v2, "[punch]"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "[v]"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "[clap]"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "[muscle]"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "[pray]"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "[skull]"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "[trollface]"

    aput-object v2, v0, v1

    .line 199
    sput-object v0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->smileyTexts:[Ljava/lang/String;

    .line 208
    const/16 v0, 0x1c

    new-array v0, v0, [Ljava/lang/String;

    .line 209
    const-string v1, "[smile]"

    aput-object v1, v0, v3

    const-string v1, "[smiley]"

    aput-object v1, v0, v4

    const-string v1, "[laughing]"

    aput-object v1, v0, v5

    const-string v1, "[blush]"

    aput-object v1, v0, v6

    const-string v1, "[heart_eyes]"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "[smirk]"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "[flushed]"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 210
    const-string v2, "[stuck_out_tongue_winking_eye]"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "[grin]"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "[sleeping]"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "[worried]"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "[expressionless]"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "[sweat_smile]"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "[cold_sweat]"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 211
    const-string v2, "[sob]"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "[mask]"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "[scream]"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "[sunglasses]"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "[heart]"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "[exclamation]"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "[question]"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 212
    const-string v2, "[thumbsup]"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "[ok_hand]"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "[v]"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "[clap]"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "[muscle]"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "[pray]"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "[trollface]"

    aput-object v2, v0, v1

    .line 208
    sput-object v0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpSmileyTexts:[Ljava/lang/String;

    .line 214
    return-void
.end method

.method private initRes(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    .line 65
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f631"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f60e"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f604"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f603"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f606"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f60a"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f60d"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f60f"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f633"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f606"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f601"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f609"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f61c"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f61b"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f634"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f61f"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f611"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f605"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f630"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f602"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f62d"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f620"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f637"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f48b"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f645"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_2764"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f494"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_2b50"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f4a2"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_2757"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_2753"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f4a4"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f44d"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f44e"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f44c"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f44a"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_270c"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f44f"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f4aa"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f64f"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f47d"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f61d_bz"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    .line 114
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f604"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f603"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f606"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f60a"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f60d"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f60f"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f633"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f61c"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f601"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f634"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f61f"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f611"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f605"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f630"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f62d"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f637"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f631"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f60e"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_2764"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_2757"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_2753"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f44d"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f44c"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_270c"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f44f"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f4aa"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f64f"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    const-string v1, "drawable"

    const-string v2, "emoji_1f61d_bz"

    invoke-static {p1, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method

.method public static sp2px(Landroid/content/Context;F)I
    .locals 3
    .parameter "context"
    .parameter "spValue"

    .prologue
    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 60
    .local v0, fontScale:F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method


# virtual methods
.method public addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "text"

    .prologue
    const/4 v8, 0x0

    .line 257
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 258
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 259
    .local v3, matcher:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-nez v5, :cond_0

    .line 266
    return-object v0

    .line 260
    :cond_0
    iget-object v5, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->smileyMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 261
    .local v4, resId:I
    iget-object v5, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 262
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget v5, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->SMILEY_SIZE:I

    iget v6, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->SMILEY_SIZE:I

    invoke-virtual {v1, v8, v8, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-direct {v2, v1, v8}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 264
    .local v2, imageSpan:Landroid/text/style/ImageSpan;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->end()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v0, v2, v5, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method public getSmileyIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->resList:Ljava/util/List;

    return-object v0
.end method

.method public getSmileyTexts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    sget-object v0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->smileyTexts:[Ljava/lang/String;

    return-object v0
.end method

.method public getTmpSmileyIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpResList:Ljava/util/List;

    return-object v0
.end method

.method public getTmpSmileyTexts()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    sget-object v0, Lcom/mechat/mechatlibrary/utils/ChatSmileyParser;->tmpSmileyTexts:[Ljava/lang/String;

    return-object v0
.end method
