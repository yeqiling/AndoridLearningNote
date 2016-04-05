.class public Lcom/boohee/record/EvaluationActivity;
.super Lcom/boohee/main/GestureActivity;
.source "EvaluationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final GO_HOME:Ljava/lang/String; = "GO_HOME"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private begin_date:Ljava/lang/String;

.field private goHome:Z

.field private lastUpdatedText:Landroid/widget/TextView;

.field private user:Lcom/boohee/model/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/boohee/record/EvaluationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/record/EvaluationActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/record/EvaluationActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/record/EvaluationActivity;->lastUpdatedText:Landroid/widget/TextView;

    return-object v0
.end method

.method private addListener()V
    .locals 1

    .prologue
    .line 89
    const v0, 0x7f0e0288

    invoke-virtual {p0, v0}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f0e04f0

    invoke-virtual {p0, v0}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v0, 0x7f0e04f3

    invoke-virtual {p0, v0}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v0, 0x7f0e04f6

    invoke-virtual {p0, v0}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f0e03a5

    invoke-virtual {p0, v0}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method private getUserAndBeginDate()V
    .locals 2

    .prologue
    .line 97
    new-instance v0, Lcom/boohee/modeldao/UserDao;

    iget-object v1, p0, Lcom/boohee/record/EvaluationActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/boohee/record/EvaluationActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/modeldao/UserDao;->queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/EvaluationActivity;->user:Lcom/boohee/model/User;

    .line 98
    iget-object v0, p0, Lcom/boohee/record/EvaluationActivity;->user:Lcom/boohee/model/User;

    iget-object v0, v0, Lcom/boohee/model/User;->updated_at:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/record/EvaluationActivity;->begin_date:Ljava/lang/String;

    .line 99
    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/boohee/record/EvaluationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "GO_HOME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/record/EvaluationActivity;->goHome:Z

    .line 62
    return-void
.end method

.method private setBmi()V
    .locals 14

    .prologue
    .line 108
    new-instance v1, Lcom/boohee/modeldao/WeightRecordDao;

    invoke-direct {v1, p0}, Lcom/boohee/modeldao/WeightRecordDao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/boohee/modeldao/WeightRecordDao;->getLastestWeight()F

    move-result v11

    .line 109
    .local v11, latestWeight:F
    iget-object v1, p0, Lcom/boohee/record/EvaluationActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v1, v11}, Lcom/boohee/model/User;->calcBmi(F)F

    move-result v7

    .line 110
    .local v7, bmi:F
    const v1, 0x7f0e0287

    invoke-virtual {p0, v1}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 111
    .local v8, bmiText:Landroid/widget/TextView;
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    const/high16 v10, 0x41dc

    .line 113
    .local v10, defaultBmi:F
    const v1, 0x7f0e0285

    invoke-virtual {p0, v1}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 114
    .local v9, bmiWheel:Landroid/widget/ImageView;
    sub-float v1, v7, v10

    const/high16 v3, 0x43b4

    mul-float/2addr v1, v3

    float-to-double v4, v1

    const-wide/high16 v12, 0x4049

    div-double/2addr v4, v12

    double-to-float v2, v4

    .line 115
    .local v2, toDegrees:F
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v1, -0x3ccc

    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v5, 0x1

    const/high16 v6, 0x3f00

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 117
    .local v0, rotateAnim:Landroid/view/animation/Animation;
    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 118
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 119
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 120
    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 122
    new-instance v1, Lcom/boohee/record/EvaluationActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/record/EvaluationActivity$1;-><init>(Lcom/boohee/record/EvaluationActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 137
    return-void
.end method

.method private setBodyAge()V
    .locals 6

    .prologue
    .line 168
    const v3, 0x7f0e04ee

    invoke-virtual {p0, v3}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/boohee/myview/BooheeCircleProgressBar;

    .line 169
    .local v1, bodyAgeBar:Lcom/boohee/myview/BooheeCircleProgressBar;
    const v3, 0x7f0e04ef

    invoke-virtual {p0, v3}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 170
    .local v2, bodyAgeText:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/boohee/record/EvaluationActivity;->user:Lcom/boohee/model/User;

    new-instance v4, Lcom/boohee/modeldao/WeightRecordDao;

    iget-object v5, p0, Lcom/boohee/record/EvaluationActivity;->ctx:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/boohee/modeldao/WeightRecordDao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/boohee/modeldao/WeightRecordDao;->getLastestWeight()F

    move-result v4

    invoke-virtual {v3, v4}, Lcom/boohee/model/User;->calcBodyAge(F)I

    move-result v0

    .line 171
    .local v0, bodyAge:I
    invoke-virtual {v1, v0}, Lcom/boohee/myview/BooheeCircleProgressBar;->setProgress(I)V

    .line 172
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const/high16 v3, 0x10a

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/boohee/myview/BooheeCircleProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 174
    return-void
.end method

.method private setBodyFatRate()V
    .locals 12

    .prologue
    const-wide/high16 v10, 0x4059

    .line 178
    const v6, 0x7f0e04f1

    invoke-virtual {p0, v6}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 179
    .local v1, bodyFatRateImage:Landroid/widget/ImageView;
    const v6, 0x7f0e04f2

    invoke-virtual {p0, v6}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 182
    .local v2, bodyFatText:Landroid/widget/TextView;
    iget-object v6, p0, Lcom/boohee/record/EvaluationActivity;->user:Lcom/boohee/model/User;

    new-instance v7, Lcom/boohee/modeldao/WeightRecordDao;

    iget-object v8, p0, Lcom/boohee/record/EvaluationActivity;->ctx:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/boohee/modeldao/WeightRecordDao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Lcom/boohee/modeldao/WeightRecordDao;->getLastestWeight()F

    move-result v7

    invoke-virtual {v6, v7}, Lcom/boohee/model/User;->calcBodyFat(F)F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    div-double v4, v6, v10

    .line 183
    .local v4, fatRate:D
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    mul-double v8, v4, v10

    double-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    :try_start_0
    iget-object v6, p0, Lcom/boohee/record/EvaluationActivity;->user:Lcom/boohee/model/User;

    iget-object v6, v6, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    invoke-static {v6}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-static {v6}, Lcom/boohee/utils/DateHelper;->getAge(Ljava/util/Date;)I

    move-result v0

    .line 192
    .local v0, age:I
    const/16 v6, 0x28

    if-lt v0, v6, :cond_5

    .line 194
    iget-object v6, p0, Lcom/boohee/record/EvaluationActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v6}, Lcom/boohee/model/User;->isMale()Z

    move-result v6

    if-nez v6, :cond_2

    .line 196
    const-wide v6, 0x3fd147ae147ae148L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_0

    .line 198
    const v6, 0x7f02062d

    invoke-direct {p0, v6, v1}, Lcom/boohee/record/EvaluationActivity;->setBodyFatRateImage(ILandroid/widget/ImageView;)V

    .line 246
    .end local v0           #age:I
    :goto_0
    return-void

    .line 199
    .restart local v0       #age:I
    :cond_0
    const-wide v6, 0x3fd47ae147ae147bL

    cmpl-double v6, v4, v6

    if-lez v6, :cond_1

    .line 201
    const v6, 0x7f02062c

    invoke-direct {p0, v6, v1}, Lcom/boohee/record/EvaluationActivity;->setBodyFatRateImage(ILandroid/widget/ImageView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    .end local v0           #age:I
    :catch_0
    move-exception v3

    .line 244
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 203
    .end local v3           #e:Ljava/lang/Exception;
    .restart local v0       #age:I
    :cond_1
    const v6, 0x7f02062e

    :try_start_1
    invoke-direct {p0, v6, v1}, Lcom/boohee/record/EvaluationActivity;->setBodyFatRateImage(ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 207
    :cond_2
    const-wide v6, 0x3fc999999999999aL

    cmpg-double v6, v4, v6

    if-gez v6, :cond_3

    .line 209
    const v6, 0x7f0203e5

    invoke-direct {p0, v6, v1}, Lcom/boohee/record/EvaluationActivity;->setBodyFatRateImage(ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 210
    :cond_3
    const-wide v6, 0x3fceb851eb851eb8L

    cmpl-double v6, v4, v6

    if-lez v6, :cond_4

    .line 212
    const v6, 0x7f0203e4

    invoke-direct {p0, v6, v1}, Lcom/boohee/record/EvaluationActivity;->setBodyFatRateImage(ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 214
    :cond_4
    const v6, 0x7f0203e6

    invoke-direct {p0, v6, v1}, Lcom/boohee/record/EvaluationActivity;->setBodyFatRateImage(ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 219
    :cond_5
    iget-object v6, p0, Lcom/boohee/record/EvaluationActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v6}, Lcom/boohee/model/User;->isMale()Z

    move-result v6

    if-nez v6, :cond_8

    .line 221
    const-wide v6, 0x3fc5c28f5c28f5c3L

    cmpg-double v6, v4, v6

    if-gez v6, :cond_6

    .line 223
    const v6, 0x7f0201bb

    invoke-direct {p0, v6, v1}, Lcom/boohee/record/EvaluationActivity;->setBodyFatRateImage(ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 224
    :cond_6
    const-wide v6, 0x3fd0a3d70a3d70a4L

    cmpl-double v6, v4, v6

    if-lez v6, :cond_7

    .line 226
    const v6, 0x7f0201ba

    invoke-direct {p0, v6, v1}, Lcom/boohee/record/EvaluationActivity;->setBodyFatRateImage(ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 228
    :cond_7
    const v6, 0x7f0201bc

    invoke-direct {p0, v6, v1}, Lcom/boohee/record/EvaluationActivity;->setBodyFatRateImage(ILandroid/widget/ImageView;)V

    goto :goto_0

    .line 232
    :cond_8
    const-wide v6, 0x3fc1eb851eb851ecL

    cmpg-double v6, v4, v6

    if-gez v6, :cond_9

    .line 234
    const v6, 0x7f0200a2

    invoke-direct {p0, v6, v1}, Lcom/boohee/record/EvaluationActivity;->setBodyFatRateImage(ILandroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 235
    :cond_9
    const-wide v6, 0x3fc851eb851eb852L

    cmpl-double v6, v4, v6

    if-lez v6, :cond_a

    .line 237
    const v6, 0x7f0200a1

    invoke-direct {p0, v6, v1}, Lcom/boohee/record/EvaluationActivity;->setBodyFatRateImage(ILandroid/widget/ImageView;)V

    goto/16 :goto_0

    .line 239
    :cond_a
    const v6, 0x7f0200a3

    invoke-direct {p0, v6, v1}, Lcom/boohee/record/EvaluationActivity;->setBodyFatRateImage(ILandroid/widget/ImageView;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private setBodyFatRateImage(ILandroid/widget/ImageView;)V
    .locals 3
    .parameter "id"
    .parameter "bodyFatImage"

    .prologue
    .line 249
    iget-object v0, p0, Lcom/boohee/record/EvaluationActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 250
    return-void
.end method

.method private setHealthyWeight()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/high16 v6, 0x42c8

    const-wide v8, 0x3feccccccccccccdL

    .line 141
    iget-object v3, p0, Lcom/boohee/record/EvaluationActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v3}, Lcom/boohee/model/User;->calcHealthyWeight()[F

    move-result-object v0

    .line 143
    .local v0, h:[F
    const v3, 0x7f0e03a2

    invoke-virtual {p0, v3}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 144
    .local v1, healthyWeight:Landroid/widget/TextView;
    const-wide/16 v4, 0x0

    .line 145
    .local v4, standardWeight:D
    iget-object v3, p0, Lcom/boohee/record/EvaluationActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/boohee/database/UserPreference;->isFemale()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    iget-object v3, p0, Lcom/boohee/record/EvaluationActivity;->user:Lcom/boohee/model/User;

    iget v3, v3, Lcom/boohee/model/User;->height:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x4004

    sub-double v4, v6, v8

    .line 151
    :goto_0
    const-string v3, "%.1f"

    new-array v6, v11, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v3, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    const v3, 0x7f0e03a3

    invoke-virtual {p0, v3}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 153
    .local v2, healthyWeightRange:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v0, v10

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "~"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v6, v0, v11

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "kg"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    return-void

    .line 149
    .end local v2           #healthyWeightRange:Landroid/widget/TextView;
    :cond_0
    iget-object v3, p0, Lcom/boohee/record/EvaluationActivity;->user:Lcom/boohee/model/User;

    iget v3, v3, Lcom/boohee/model/User;->height:F

    sub-float/2addr v3, v6

    float-to-double v6, v3

    mul-double v4, v6, v8

    goto :goto_0
.end method

.method private setHeartRate()V
    .locals 4

    .prologue
    .line 254
    iget-object v2, p0, Lcom/boohee/record/EvaluationActivity;->user:Lcom/boohee/model/User;

    invoke-virtual {v2}, Lcom/boohee/model/User;->calcHeartRate()[I

    move-result-object v0

    .line 255
    .local v0, heartRate:[I
    const v2, 0x7f0e03a4

    invoke-virtual {p0, v2}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 256
    .local v1, heartRateText:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method private setLastUpdated()V
    .locals 3

    .prologue
    .line 102
    const v0, 0x7f0e0286

    invoke-virtual {p0, v0}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/record/EvaluationActivity;->lastUpdatedText:Landroid/widget/TextView;

    .line 103
    iget-object v0, p0, Lcom/boohee/record/EvaluationActivity;->lastUpdatedText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0702ec

    invoke-virtual {p0, v2}, Lcom/boohee/record/EvaluationActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/record/EvaluationActivity;->begin_date:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    return-void
.end method

.method private setTargetCalory()V
    .locals 6

    .prologue
    const v5, 0x7f0702db

    .line 158
    const v3, 0x7f0e04f4

    invoke-virtual {p0, v3}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 159
    .local v2, targetCaloryText:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/boohee/record/EvaluationActivity;->user:Lcom/boohee/model/User;

    iget v1, v3, Lcom/boohee/model/User;->target_calory:I

    .line 160
    .local v1, targetCalory:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const v3, 0x7f0e04f5

    invoke-virtual {p0, v3}, Lcom/boohee/record/EvaluationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 162
    .local v0, recommendCalory:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, -0x32

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/boohee/record/EvaluationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v1, 0x32

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v5}, Lcom/boohee/record/EvaluationActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 261
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 281
    :goto_0
    return-void

    .line 264
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/record/EvaluationActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/HelpInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/record/EvaluationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 267
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/record/EvaluationActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/HelpInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "position"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/record/EvaluationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 270
    :sswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/record/EvaluationActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/HelpInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "position"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/record/EvaluationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 273
    :sswitch_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/record/EvaluationActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/HelpInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "position"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/record/EvaluationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 276
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/record/EvaluationActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/HelpInfoActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "position"

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/record/EvaluationActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 261
    :sswitch_data_0
    .sparse-switch
        0x7f0e0288 -> :sswitch_0
        0x7f0e03a5 -> :sswitch_4
        0x7f0e04f0 -> :sswitch_2
        0x7f0e04f3 -> :sswitch_3
        0x7f0e04f6 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-direct {p0}, Lcom/boohee/record/EvaluationActivity;->handleIntent()V

    .line 47
    const v0, 0x7f070222

    invoke-virtual {p0, v0}, Lcom/boohee/record/EvaluationActivity;->setTitle(I)V

    .line 48
    const v0, 0x7f0300bd

    invoke-virtual {p0, v0}, Lcom/boohee/record/EvaluationActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/boohee/record/EvaluationActivity;->getUserAndBeginDate()V

    .line 50
    invoke-direct {p0}, Lcom/boohee/record/EvaluationActivity;->setLastUpdated()V

    .line 51
    invoke-direct {p0}, Lcom/boohee/record/EvaluationActivity;->setBmi()V

    .line 52
    invoke-direct {p0}, Lcom/boohee/record/EvaluationActivity;->setHealthyWeight()V

    .line 53
    invoke-direct {p0}, Lcom/boohee/record/EvaluationActivity;->setTargetCalory()V

    .line 54
    invoke-direct {p0}, Lcom/boohee/record/EvaluationActivity;->setHeartRate()V

    .line 55
    invoke-direct {p0}, Lcom/boohee/record/EvaluationActivity;->setBodyAge()V

    .line 56
    invoke-direct {p0}, Lcom/boohee/record/EvaluationActivity;->setBodyFatRate()V

    .line 57
    invoke-direct {p0}, Lcom/boohee/record/EvaluationActivity;->addListener()V

    .line 58
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 66
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 67
    const/4 v1, 0x0

    const v2, 0x7f0702b3

    invoke-interface {p1, v1, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 68
    .local v0, add:Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 69
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 84
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 76
    :pswitch_0
    iget-boolean v0, p0, Lcom/boohee/record/EvaluationActivity;->goHome:Z

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/boohee/record/EvaluationActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v1, Lcom/boohee/one/ui/MainActivity;

    invoke-static {v0, v1}, Lcom/boohee/utils/AccountUtils;->goHome(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 81
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/record/EvaluationActivity;->finish()V

    goto :goto_1

    .line 74
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
