.class public Lcom/boohee/utils/FilterDataSyncUtil;
.super Ljava/lang/Object;
.source "FilterDataSyncUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFigureParam(Landroid/content/Context;[Lcom/boohee/model/FilterSyncFigureBean;Ljava/lang/String;)Lcom/boohee/one/http/JsonParams;
    .locals 10
    .parameter "ctx"
    .parameter "figures"
    .parameter "recordOn"

    .prologue
    .line 100
    new-instance v5, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v5}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 101
    .local v5, params:Lcom/boohee/one/http/JsonParams;
    const/4 v3, 0x0

    .line 102
    .local v3, isNeedSync:Z
    move-object v0, p1

    .local v0, arr$:[Lcom/boohee/model/FilterSyncFigureBean;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1a

    aget-object v1, v0, v2

    .line 103
    .local v1, figure:Lcom/boohee/model/FilterSyncFigureBean;
    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v1}, Lcom/boohee/model/FilterSyncFigureBean;->getValue()F

    move-result v6

    .line 106
    .local v6, value:F
    sget-object v7, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_TEXTS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v1}, Lcom/boohee/model/FilterSyncFigureBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 107
    invoke-static {p0, v1, p2}, Lcom/boohee/utils/FilterDataSyncUtil;->saveWeight(Landroid/content/Context;Lcom/boohee/model/FilterSyncFigureBean;Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_2
    sget-object v7, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_TEXTS:[Ljava/lang/String;

    const/4 v8, 0x2

    aget-object v7, v7, v8

    invoke-virtual {v1}, Lcom/boohee/model/FilterSyncFigureBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 111
    if-eqz v3, :cond_3

    .line 112
    :goto_2
    const-string v8, "waist"

    const/high16 v7, 0x4248

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_5

    const/high16 v7, 0x4316

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-virtual {v5, v8, v7}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 111
    :cond_3
    const/high16 v7, 0x4248

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_4

    const/high16 v7, 0x4316

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 112
    :cond_5
    const-string v7, ""

    goto :goto_3

    .line 113
    :cond_6
    sget-object v7, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_TEXTS:[Ljava/lang/String;

    const/4 v8, 0x3

    aget-object v7, v7, v8

    invoke-virtual {v1}, Lcom/boohee/model/FilterSyncFigureBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 115
    if-eqz v3, :cond_7

    .line 116
    :goto_4
    const-string v8, "brass"

    const/high16 v7, 0x4248

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_9

    const/high16 v7, 0x4316

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_5
    invoke-virtual {v5, v8, v7}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 115
    :cond_7
    const/high16 v7, 0x4248

    cmpl-float v7, v6, v7

    if-lez v7, :cond_8

    const/high16 v7, 0x4316

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_8

    const/4 v3, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    .line 116
    :cond_9
    const-string v7, ""

    goto :goto_5

    .line 117
    :cond_a
    sget-object v7, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_TEXTS:[Ljava/lang/String;

    const/4 v8, 0x4

    aget-object v7, v7, v8

    invoke-virtual {v1}, Lcom/boohee/model/FilterSyncFigureBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 119
    if-eqz v3, :cond_b

    .line 120
    :goto_6
    const-string v8, "hip"

    const/high16 v7, 0x4248

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_d

    const/high16 v7, 0x4316

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_d

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_7
    invoke-virtual {v5, v8, v7}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 119
    :cond_b
    const/high16 v7, 0x4248

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_c

    const/high16 v7, 0x4316

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_c

    const/4 v3, 0x1

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    goto :goto_6

    .line 120
    :cond_d
    const-string v7, ""

    goto :goto_7

    .line 121
    :cond_e
    sget-object v7, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_TEXTS:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v7, v7, v8

    invoke-virtual {v1}, Lcom/boohee/model/FilterSyncFigureBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 123
    if-eqz v3, :cond_f

    .line 124
    :goto_8
    const-string v8, "arm"

    const/high16 v7, 0x4170

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_11

    const/high16 v7, 0x42c8

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_9
    invoke-virtual {v5, v8, v7}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 123
    :cond_f
    const/high16 v7, 0x4170

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_10

    const/high16 v7, 0x42c8

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_10

    const/4 v3, 0x1

    goto :goto_8

    :cond_10
    const/4 v3, 0x0

    goto :goto_8

    .line 124
    :cond_11
    const-string v7, ""

    goto :goto_9

    .line 125
    :cond_12
    sget-object v7, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_TEXTS:[Ljava/lang/String;

    const/4 v8, 0x6

    aget-object v7, v7, v8

    invoke-virtual {v1}, Lcom/boohee/model/FilterSyncFigureBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 127
    if-eqz v3, :cond_13

    .line 128
    :goto_a
    const-string v8, "thigh"

    const/high16 v7, 0x41f0

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_15

    const/high16 v7, 0x4316

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_15

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_b
    invoke-virtual {v5, v8, v7}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 127
    :cond_13
    const/high16 v7, 0x41f0

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_14

    const/high16 v7, 0x4316

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_14

    const/4 v3, 0x1

    goto :goto_a

    :cond_14
    const/4 v3, 0x0

    goto :goto_a

    .line 128
    :cond_15
    const-string v7, ""

    goto :goto_b

    .line 129
    :cond_16
    sget-object v7, Lcom/boohee/one/ui/FilterFigureFragment;->FIGURE_RES_TEXTS:[Ljava/lang/String;

    const/4 v8, 0x7

    aget-object v7, v7, v8

    invoke-virtual {v1}, Lcom/boohee/model/FilterSyncFigureBean;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 131
    if-eqz v3, :cond_17

    .line 132
    :goto_c
    const-string v8, "shank"

    const/high16 v7, 0x4170

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_19

    const/high16 v7, 0x4316

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_d
    invoke-virtual {v5, v8, v7}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 131
    :cond_17
    const/high16 v7, 0x4170

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_18

    const/high16 v7, 0x4316

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_18

    const/4 v3, 0x1

    goto :goto_c

    :cond_18
    const/4 v3, 0x0

    goto :goto_c

    .line 132
    :cond_19
    const-string v7, ""

    goto :goto_d

    .line 135
    .end local v1           #figure:Lcom/boohee/model/FilterSyncFigureBean;
    .end local v6           #value:F
    :cond_1a
    const-string v7, "record_on"

    invoke-virtual {v5, v7, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    if-eqz v3, :cond_1b

    .end local v5           #params:Lcom/boohee/one/http/JsonParams;
    :goto_e
    return-object v5

    .restart local v5       #params:Lcom/boohee/one/http/JsonParams;
    :cond_1b
    const/4 v5, 0x0

    goto :goto_e
.end method

.method public static getSyncData()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    const-string v1, "KEY_POST_DATA"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTagData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 163
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v1

    const-string v2, "KEY_POST_TAG"

    invoke-virtual {v1, v2}, Lcom/boohee/database/UserPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, tag:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "# "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static removeFilterData(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 145
    invoke-static {p0}, Lcom/boohee/utils/FilterDataSyncUtil;->removeFilterTag(Landroid/content/Context;)V

    .line 146
    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    const-string v1, "KEY_POST_DATA"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public static removeFilterTag(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 155
    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    const-string v1, "KEY_POST_TAG"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static saveFigure(Landroid/content/Context;Lcom/boohee/model/FilterSyncBean;)V
    .locals 3
    .parameter "ctx"
    .parameter "data"

    .prologue
    .line 78
    invoke-virtual {p1}, Lcom/boohee/model/FilterSyncBean;->getFigures()[Lcom/boohee/model/FilterSyncFigureBean;

    move-result-object v0

    .line 79
    .local v0, figures:[Lcom/boohee/model/FilterSyncFigureBean;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-nez v2, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p1}, Lcom/boohee/model/FilterSyncBean;->getRecordOn()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/boohee/utils/FilterDataSyncUtil;->createFigureParam(Landroid/content/Context;[Lcom/boohee/model/FilterSyncFigureBean;Ljava/lang/String;)Lcom/boohee/one/http/JsonParams;

    move-result-object v1

    .line 83
    .local v1, params:Lcom/boohee/one/http/JsonParams;
    if-eqz v1, :cond_0

    .line 84
    new-instance v2, Lcom/boohee/utils/FilterDataSyncUtil$1;

    invoke-direct {v2, p0}, Lcom/boohee/utils/FilterDataSyncUtil$1;-><init>(Landroid/content/Context;)V

    invoke-static {v1, p0, v2}, Lcom/boohee/api/RecordApi;->sendMeasure(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static saveFood(Landroid/content/Context;Lcom/boohee/model/FilterSyncBean;)V
    .locals 2
    .parameter "ctx"
    .parameter "data"

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/boohee/model/FilterSyncBean;->getFood()Lcom/boohee/model/FilterSyncFoodBean;

    move-result-object v0

    .line 28
    .local v0, food:Lcom/boohee/model/FilterSyncFoodBean;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/boohee/model/FilterSyncFoodBean;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 40
    :cond_0
    return-void
.end method

.method public static saveSport(Landroid/content/Context;Lcom/boohee/model/FilterSyncBean;)V
    .locals 1
    .parameter "ctx"
    .parameter "data"

    .prologue
    .line 49
    invoke-virtual {p1}, Lcom/boohee/model/FilterSyncBean;->getSport()Lcom/boohee/model/FilterSyncSportBean;

    move-result-object v0

    .line 50
    .local v0, sport:Lcom/boohee/model/FilterSyncSportBean;
    if-nez v0, :cond_0

    .line 53
    :cond_0
    return-void
.end method

.method private static saveWeight(Landroid/content/Context;Lcom/boohee/model/FilterSyncFigureBean;Ljava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "weightFigure"
    .parameter "recordOn"

    .prologue
    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/boohee/model/FilterSyncFigureBean;->getValue()F

    move-result v0

    const/high16 v1, 0x41c8

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/boohee/model/FilterSyncFigureBean;->getValue()F

    move-result v0

    const/high16 v1, 0x4348

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 69
    :cond_0
    return-void
.end method

.method public static syncData(Landroid/content/Context;Z)V
    .locals 2
    .parameter "ctx"
    .parameter "needSync"

    .prologue
    .line 175
    if-nez p1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    const-string v1, "KEY_POST_DATA"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/boohee/utils/FilterDataSyncUtil;->syncData(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public static syncData(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 2
    .parameter "ctx"
    .parameter "needSync"
    .parameter "syncData"

    .prologue
    .line 188
    if-nez p1, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    invoke-static {p2}, Lcom/boohee/model/FilterSyncBean;->parse(Ljava/lang/String;)Lcom/boohee/model/FilterSyncBean;

    move-result-object v0

    .line 193
    .local v0, data:Lcom/boohee/model/FilterSyncBean;
    if-eqz v0, :cond_0

    .line 195
    invoke-static {p0, v0}, Lcom/boohee/utils/FilterDataSyncUtil;->saveFood(Landroid/content/Context;Lcom/boohee/model/FilterSyncBean;)V

    .line 196
    invoke-static {p0, v0}, Lcom/boohee/utils/FilterDataSyncUtil;->saveSport(Landroid/content/Context;Lcom/boohee/model/FilterSyncBean;)V

    .line 197
    invoke-static {p0, v0}, Lcom/boohee/utils/FilterDataSyncUtil;->saveFigure(Landroid/content/Context;Lcom/boohee/model/FilterSyncBean;)V

    goto :goto_0
.end method
