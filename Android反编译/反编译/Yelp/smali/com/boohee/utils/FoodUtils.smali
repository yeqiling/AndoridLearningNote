.class public Lcom/boohee/utils/FoodUtils;
.super Ljava/lang/Object;
.source "FoodUtils.java"


# static fields
.field public static final INGREDIENT:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 313
    const/16 v0, 0x17

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "calory@\u70ed\u91cf@\u5343\u5361@500"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "protein@\u86cb\u767d\u8d28@\u514b@505"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "fat@\u8102\u80aa@\u514b@510"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "carbohydrate@\u78b3\u6c34\u5316\u5408\u7269@\u514b@515"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "fiber_dietary@\u81b3\u98df\u7ea4\u7ef4@\u514b@520"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vitamin_a@\u7ef4\u751f\u7d20A@\u5fae\u514b@525"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vitamin_c@\u7ef4\u751f\u7d20C@\u6beb\u514b@530"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vitamin_e@\u7ef4\u751f\u7d20E@\u6beb\u514b@535"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "carotene@\u80e1\u7f57\u535c\u7d20@\u5fae\u514b@540"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "thiamine@\u7ef4\u751f\u7d20B1@\u6beb\u514b@545"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "lactoflavin@\u7ef4\u751f\u7d20B2@\u6beb\u514b@550"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "niacin@\u70df\u9178@\u6beb\u514b@555"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "cholesterol@\u80c6\u56fa\u9187@\u6beb\u514b@560"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "magnesium@\u9541@\u6beb\u514b@565"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "calcium@\u9499@\u6beb\u514b@570"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "iron@\u94c1@\u6beb\u514b@575"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "zinc@\u950c@\u6beb\u514b@580"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "copper@\u94dc@\u6beb\u514b@585"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "manganese@\u9530@\u6beb\u514b@590"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "kalium@\u94be@\u6beb\u514b@595"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "phosphor@\u78f7@\u6beb\u514b@600"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "natrium@\u94a0@\u6beb\u514b@605"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "selenium@\u7852@\u5fae\u514b@615"

    aput-object v2, v0, v1

    sput-object v0, Lcom/boohee/utils/FoodUtils;->INGREDIENT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calory2Joule(F)F
    .locals 4
    .parameter "source"

    .prologue
    .line 97
    float-to-double v0, p0

    const-wide v2, 0x4010bc6a7ef9db23L

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static changeShowUnit()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/boohee/database/OnePreference;->isShowCaloryUnit()Z

    move-result v0

    .line 82
    .local v0, isCalory:Z
    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 83
    :goto_0
    invoke-static {v0}, Lcom/boohee/database/OnePreference;->setShowUnit(Z)V

    .line 84
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static changeUnitAndWeight(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 4
    .parameter "weight"
    .parameter "isLiquid"
    .parameter "synChange"

    .prologue
    .line 40
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f07024f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, srcString:Ljava/lang/String;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Lcom/boohee/utils/FoodUtils;->showUnitString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    aput-object p0, v2, v1

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const-string v1, "\u6beb\u5347"

    :goto_0
    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string v1, "\u514b"

    goto :goto_0
.end method

.method public static filterIngredientInfo(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/IngredientInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/IngredientInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 236
    .local p0, showList:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/IngredientInfo;>;"
    .local p1, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/IngredientInfo;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 240
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_2

    .line 241
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 243
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 244
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static getDietName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "timeType"

    .prologue
    .line 340
    const-string v0, ""

    .line 341
    .local v0, dietName:Ljava/lang/String;
    if-nez p0, :cond_0

    move-object v1, v0

    .line 357
    .end local v0           #dietName:Ljava/lang/String;
    .local v1, dietName:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 344
    .end local v1           #dietName:Ljava/lang/String;
    .restart local v0       #dietName:Ljava/lang/String;
    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07011e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_1
    move-object v1, v0

    .line 357
    .end local v0           #dietName:Ljava/lang/String;
    .restart local v1       #dietName:Ljava/lang/String;
    goto :goto_0

    .line 346
    .end local v1           #dietName:Ljava/lang/String;
    .restart local v0       #dietName:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 347
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07030f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 348
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    .line 349
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070513

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 350
    :cond_4
    const/4 v2, 0x6

    if-ne p1, v2, :cond_5

    .line 351
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07011f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 352
    :cond_5
    const/4 v2, 0x7

    if-ne p1, v2, :cond_6

    .line 353
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070310

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 354
    :cond_6
    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    .line 355
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070514

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getIngredientInfo(Ljava/lang/String;)Lcom/boohee/model/IngredientInfo;
    .locals 9
    .parameter "fieldName"

    .prologue
    const/4 v5, 0x0

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-object v5

    .line 180
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    sget-object v7, Lcom/boohee/utils/FoodUtils;->INGREDIENT:[Ljava/lang/String;

    array-length v7, v7

    if-ge v1, v7, :cond_0

    .line 181
    sget-object v7, Lcom/boohee/utils/FoodUtils;->INGREDIENT:[Ljava/lang/String;

    aget-object v7, v7, v1

    const-string v8, "@"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, itemValue:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v0, v2, v7

    .line 183
    .local v0, code:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 184
    new-instance v5, Lcom/boohee/model/IngredientInfo;

    invoke-direct {v5}, Lcom/boohee/model/IngredientInfo;-><init>()V

    .line 185
    .local v5, result:Lcom/boohee/model/IngredientInfo;
    const/4 v7, 0x1

    aget-object v3, v2, v7

    .line 186
    .local v3, name:Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v6, v2, v7

    .line 187
    .local v6, unit:Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v4, v2, v7

    .line 188
    .local v4, order:Ljava/lang/String;
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v5, Lcom/boohee/model/IngredientInfo;->order:I

    .line 189
    iput-object v3, v5, Lcom/boohee/model/IngredientInfo;->name:Ljava/lang/String;

    .line 190
    iput-object p0, v5, Lcom/boohee/model/IngredientInfo;->code:Ljava/lang/String;

    .line 191
    iput-object v6, v5, Lcom/boohee/model/IngredientInfo;->unit:Ljava/lang/String;

    goto :goto_0

    .line 180
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #order:Ljava/lang/String;
    .end local v5           #result:Lcom/boohee/model/IngredientInfo;
    .end local v6           #unit:Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static initIngredient(Ljava/util/List;Lcom/boohee/model/FoodIngredient;)V
    .locals 7
    .parameter
    .parameter "ingredient"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/IngredientInfo;",
            ">;",
            "Lcom/boohee/model/FoodIngredient;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/IngredientInfo;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 151
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 152
    .local v1, field:[Ljava/lang/reflect/Field;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v5, v1

    if-ge v2, v5, :cond_0

    .line 153
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/boohee/utils/FoodUtils;->getIngredientInfo(Ljava/lang/String;)Lcom/boohee/model/IngredientInfo;

    move-result-object v3

    .line 154
    .local v3, info:Lcom/boohee/model/IngredientInfo;
    if-eqz v3, :cond_4

    .line 155
    aget-object v5, v1, v2

    invoke-virtual {v5, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 156
    .local v4, value:Ljava/lang/Object;
    if-eqz v4, :cond_2

    const-string v5, ""

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "null"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 157
    :cond_2
    const-string v4, "--"

    .line 158
    .local v4, value:Ljava/lang/String;
    const-string v5, ""

    iput-object v5, v3, Lcom/boohee/model/IngredientInfo;->unit:Ljava/lang/String;

    .line 160
    .end local v4           #value:Ljava/lang/String;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/boohee/model/IngredientInfo;->value:Ljava/lang/String;

    .line 161
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    .end local v1           #field:[Ljava/lang/reflect/Field;
    .end local v2           #i:I
    .end local v3           #info:Lcom/boohee/model/IngredientInfo;
    :catch_0
    move-exception v0

    .line 165
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isKM(Ljava/lang/String;)Z
    .locals 1
    .parameter "foodName"

    .prologue
    .line 362
    const-string v0, "\u516c\u91cc"

    invoke-static {v0, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isShowCaloryUnit()Z
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Lcom/boohee/database/OnePreference;->isShowCaloryUnit()Z

    move-result v0

    return v0
.end method

.method public static kjoule2Calory(F)F
    .locals 4
    .parameter "source"

    .prologue
    .line 107
    float-to-double v0, p0

    const-wide v2, 0x4010bc6a7ef9db23L

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static setIngredientInfo(Ljava/util/List;Lcom/boohee/model/FoodLights;)V
    .locals 7
    .parameter
    .parameter "lights"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/IngredientInfo;",
            ">;",
            "Lcom/boohee/model/FoodLights;",
            ")V"
        }
    .end annotation

    .prologue
    .line 199
    .local p0, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/IngredientInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    if-eqz v6, :cond_0

    if-nez p1, :cond_1

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 203
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 204
    .local v1, field:[Ljava/lang/reflect/Field;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, v1

    if-ge v3, v6, :cond_0

    .line 205
    aget-object v6, v1, v3

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    .line 206
    .local v2, fileName:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/boohee/model/IngredientInfo;

    .line 207
    .local v5, item:Lcom/boohee/model/IngredientInfo;
    iget-object v6, v5, Lcom/boohee/model/IngredientInfo;->code:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 208
    aget-object v6, v1, v3

    invoke-virtual {v6, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/boohee/model/IngredientInfo;->memo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 212
    .end local v1           #field:[Ljava/lang/reflect/Field;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #item:Lcom/boohee/model/IngredientInfo;
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #field:[Ljava/lang/reflect/Field;
    .restart local v2       #fileName:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static showUnitString(Z)Ljava/lang/String;
    .locals 2
    .parameter "synChange"

    .prologue
    .line 70
    const v0, 0x7f0705d9

    .line 71
    .local v0, resId:I
    if-eqz p0, :cond_0

    .line 72
    invoke-static {}, Lcom/boohee/database/OnePreference;->isShowCaloryUnit()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0705d9

    .line 74
    :cond_0
    :goto_0
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 72
    :cond_1
    const v0, 0x7f0705dd

    goto :goto_0
.end method

.method public static showUnitValue(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .parameter "calory"
    .parameter "synChange"

    .prologue
    .line 51
    if-eqz p1, :cond_2

    .line 53
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 54
    .local v1, tmpCalory:F
    invoke-static {}, Lcom/boohee/database/OnePreference;->isShowCaloryUnit()Z

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    .line 55
    .local v2, tmpValue:F
    :goto_0
    float-to-int v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    .line 60
    .end local v1           #tmpCalory:F
    .end local v2           #tmpValue:F
    .end local p0
    :cond_0
    :goto_1
    return-object p0

    .line 54
    .restart local v1       #tmpCalory:F
    .restart local p0
    :cond_1
    invoke-static {v1}, Lcom/boohee/utils/FoodUtils;->calory2Joule(F)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 56
    .end local v1           #tmpCalory:F
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 60
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p0, ""

    goto :goto_1
.end method

.method public static sortIngredientInfo(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/IngredientInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, dataList:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/IngredientInfo;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    new-instance v0, Lcom/boohee/utils/FoodUtils$1;

    invoke-direct {v0}, Lcom/boohee/utils/FoodUtils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static switchToLight(ILandroid/widget/ImageView;)V
    .locals 1
    .parameter "health_light"
    .parameter "iv_health_light"

    .prologue
    const/16 v0, 0x8

    .line 257
    packed-switch p0, :pswitch_data_0

    .line 272
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 275
    :goto_0
    return-void

    .line 259
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 262
    :pswitch_1
    const v0, 0x7f020208

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 265
    :pswitch_2
    const v0, 0x7f02020a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 268
    :pswitch_3
    const v0, 0x7f020209

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 257
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static switchToLight(ILandroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 1
    .parameter "health_light"
    .parameter "iv_health_light"
    .parameter "tv_light"

    .prologue
    const/16 v0, 0x8

    .line 285
    packed-switch p0, :pswitch_data_0

    .line 304
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 307
    :goto_0
    return-void

    .line 287
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 290
    :pswitch_1
    const v0, 0x7f020208

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 291
    const-string v0, "\u63a8\u8350"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 294
    :pswitch_2
    const v0, 0x7f02020a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 295
    const-string v0, "\u9002\u91cf"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 299
    :pswitch_3
    const v0, 0x7f020209

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 300
    const-string v0, "\u5c11\u5403"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 285
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static switchToLightWithText(ILandroid/widget/ImageView;)V
    .locals 1
    .parameter "light"
    .parameter "ivLight"

    .prologue
    const v0, 0x7f020331

    .line 119
    packed-switch p0, :pswitch_data_0

    .line 134
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 137
    :goto_0
    return-void

    .line 121
    :pswitch_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 124
    :pswitch_1
    const v0, 0x7f020335

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 127
    :pswitch_2
    const v0, 0x7f020337

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 130
    :pswitch_3
    const v0, 0x7f020336

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 119
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
