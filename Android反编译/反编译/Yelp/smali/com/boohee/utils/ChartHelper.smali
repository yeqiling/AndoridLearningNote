.class public Lcom/boohee/utils/ChartHelper;
.super Ljava/lang/Object;
.source "ChartHelper.java"


# static fields
.field public static final TYPE_MODE_MONTH:I = 0x1

.field public static final TYPE_MODE_WEEK:I = 0x0

.field public static final TYPE_MODE_YEAR:I = 0x2


# instance fields
.field private lineChart:Llecho/lib/hellocharts/view/LineChartView;

.field private mAxisValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/AxisValue;",
            ">;"
        }
    .end annotation
.end field

.field private mBeginDate:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEndDate:Ljava/lang/String;

.field private mHasLabelMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLandscape:Z

.field private mPointValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mTypeMode:I

.field private mViewportLeft:F

.field private mViewportRight:F

.field private mWeightRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/WeightRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mXDates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field max:F

.field min:F

.field private resources:Landroid/content/res/Resources;

.field private targetWeight:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/ChartHelper;->mRecordValues:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/ChartHelper;->mHasLabelMaps:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/ChartHelper;->mAxisValues:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/ChartHelper;->mPointValues:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/ChartHelper;->mWeightRecords:Ljava/util/List;

    .line 44
    iput v1, p0, Lcom/boohee/utils/ChartHelper;->mViewportLeft:F

    .line 45
    iput v1, p0, Lcom/boohee/utils/ChartHelper;->mViewportRight:F

    return-void
.end method

.method private addPhoto(Lcom/boohee/model/mine/WeightRecord;I)V
    .locals 4
    .parameter "record"
    .parameter "xIndex"

    .prologue
    .line 243
    iget-object v0, p1, Lcom/boohee/model/mine/WeightRecord;->photos:Ljava/util/List;

    .line 244
    .local v0, photos:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/WeightPhoto;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 245
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/mine/WeightPhoto;

    iget-object v1, v2, Lcom/boohee/model/mine/WeightPhoto;->thumb_photo_url:Ljava/lang/String;

    .line 246
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/boohee/utils/ChartHelper;->mHasLabelMaps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .end local v1           #url:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private getLines()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/Line;",
            ">;"
        }
    .end annotation

    .prologue
    const v5, 0x7f0d012c

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 114
    new-instance v0, Llecho/lib/hellocharts/model/Line;

    iget-object v2, p0, Lcom/boohee/utils/ChartHelper;->mPointValues:Ljava/util/List;

    invoke-direct {v0, v2}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    .line 115
    .local v0, line:Llecho/lib/hellocharts/model/Line;
    iget-object v2, p0, Lcom/boohee/utils/ChartHelper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    .line 116
    iget-object v2, p0, Lcom/boohee/utils/ChartHelper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Line;->setLabelColor(I)V

    .line 117
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Line;->setFilled(Z)Llecho/lib/hellocharts/model/Line;

    .line 118
    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Line;->setCubic(Z)Llecho/lib/hellocharts/model/Line;

    .line 119
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Line;->setHasLabels(Z)Llecho/lib/hellocharts/model/Line;

    .line 120
    iget-object v2, p0, Lcom/boohee/utils/ChartHelper;->mWeightRecords:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/utils/ChartHelper;->mWeightRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/boohee/utils/ChartHelper;->mTypeMode:I

    if-lez v2, :cond_1

    .line 121
    :cond_0
    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    .line 125
    :goto_0
    new-instance v2, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;

    invoke-direct {v2}, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;-><init>()V

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->setDecimalDigitsNumber(I)Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;

    move-result-object v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Line;->setFormatter(Llecho/lib/hellocharts/formatter/LineChartValueFormatter;)Llecho/lib/hellocharts/model/Line;

    .line 126
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v1, lines:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/Line;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    return-object v1

    .line 123
    .end local v1           #lines:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/Line;>;"
    :cond_1
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    goto :goto_0
.end method

.method private getXIndex(Ljava/util/List;Ljava/lang/String;)I
    .locals 3
    .parameter
    .parameter "date"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, dates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 258
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 264
    :cond_0
    :goto_0
    return v0

    .line 259
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 260
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 264
    goto :goto_0
.end method

.method private getXals()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/AxisValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, axisValues:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/AxisValue;>;"
    iget-object v4, p0, Lcom/boohee/utils/ChartHelper;->mBeginDate:Ljava/lang/String;

    iget-object v5, p0, Lcom/boohee/utils/ChartHelper;->mEndDate:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/boohee/utils/DateFormatUtils;->getEveryMonthDay(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 223
    .local v3, xVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_0

    const/4 v0, 0x0

    .line 233
    .end local v0           #axisValues:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/AxisValue;>;"
    :goto_0
    return-object v0

    .line 224
    .restart local v0       #axisValues:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/AxisValue;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 225
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 226
    iget-object v4, p0, Lcom/boohee/utils/ChartHelper;->mHasLabelMaps:Ljava/util/Map;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/boohee/utils/ChartHelper;->mHasLabelMaps:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    new-instance v5, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v6, v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    iget-object v7, p0, Lcom/boohee/utils/ChartHelper;->mHasLabelMaps:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F[CLjava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_1
    new-instance v5, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v6, v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-direct {v5, v6, v4}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F[C)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 232
    :cond_2
    iget-object v4, p0, Lcom/boohee/utils/ChartHelper;->mHasLabelMaps:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    goto :goto_0
.end method

.method private getYVals(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/WeightRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, weightRecords:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/WeightRecord;>;"
    iget-object v3, p0, Lcom/boohee/utils/ChartHelper;->mRecordValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, yVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llecho/lib/hellocharts/model/PointValue;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 203
    new-instance v4, Llecho/lib/hellocharts/model/PointValue;

    const/high16 v5, -0x4000

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/mine/WeightRecord;

    iget-object v3, v3, Lcom/boohee/model/mine/WeightRecord;->weight:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-direct {v4, v5, v3}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 204
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 205
    iget-object v4, p0, Lcom/boohee/utils/ChartHelper;->mXDates:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/mine/WeightRecord;

    iget-object v3, v3, Lcom/boohee/model/mine/WeightRecord;->record_on:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/boohee/utils/ChartHelper;->getXIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 206
    .local v1, xIndex:I
    new-instance v4, Llecho/lib/hellocharts/model/PointValue;

    int-to-float v5, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/mine/WeightRecord;

    iget-object v3, v3, Lcom/boohee/model/mine/WeightRecord;->weight:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/mine/WeightRecord;

    iget-object v3, v3, Lcom/boohee/model/mine/WeightRecord;->record_on:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Llecho/lib/hellocharts/model/PointValue;-><init>(FFLjava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v4, p0, Lcom/boohee/utils/ChartHelper;->mRecordValues:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/mine/WeightRecord;

    iget-object v3, v3, Lcom/boohee/model/mine/WeightRecord;->weight:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/mine/WeightRecord;

    invoke-direct {p0, v3, v1}, Lcom/boohee/utils/ChartHelper;->addPhoto(Lcom/boohee/model/mine/WeightRecord;I)V

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 211
    .end local v0           #i:I
    .end local v1           #xIndex:I
    :cond_0
    return-object v2
.end method

.method private getYValsForNone(I)Ljava/util/List;
    .locals 4
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x4220

    .line 184
    iget-object v1, p0, Lcom/boohee/utils/ChartHelper;->mRecordValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, pointValues:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/PointValue;>;"
    new-instance v1, Llecho/lib/hellocharts/model/PointValue;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    new-instance v1, Llecho/lib/hellocharts/model/PointValue;

    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    invoke-direct {v1, v2, v3}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v1, p0, Lcom/boohee/utils/ChartHelper;->mRecordValues:Ljava/util/List;

    const/high16 v2, 0x41f0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v1, p0, Lcom/boohee/utils/ChartHelper;->mRecordValues:Ljava/util/List;

    const/high16 v2, 0x4270

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    return-object v0
.end method

.method private setLinData()V
    .locals 7

    .prologue
    const/high16 v6, 0x4170

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 100
    new-instance v0, Llecho/lib/hellocharts/model/LineChartData;

    invoke-direct {p0}, Lcom/boohee/utils/ChartHelper;->getLines()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;-><init>(Ljava/util/List;)V

    .line 101
    .local v0, lineData:Llecho/lib/hellocharts/model/LineChartData;
    invoke-virtual {v0, v6}, Llecho/lib/hellocharts/model/LineChartData;->setImgRadius(F)V

    .line 102
    new-instance v1, Llecho/lib/hellocharts/model/Axis;

    iget-object v4, p0, Lcom/boohee/utils/ChartHelper;->mAxisValues:Ljava/util/List;

    invoke-direct {v1, v4}, Llecho/lib/hellocharts/model/Axis;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    iget-object v4, p0, Lcom/boohee/utils/ChartHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d012a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    iget-object v4, p0, Lcom/boohee/utils/ChartHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d012b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    move-result-object v4

    iget v1, p0, Lcom/boohee/utils/ChartHelper;->mTypeMode:I

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/boohee/utils/ChartHelper;->mIsLandscape:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v4, v1}, Llecho/lib/hellocharts/model/Axis;->setHasThumb(Z)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 105
    new-instance v1, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v1}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setMaxLabelChars(I)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    .line 106
    iget-object v2, p0, Lcom/boohee/utils/ChartHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    iget-boolean v1, p0, Lcom/boohee/utils/ChartHelper;->mIsLandscape:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/boohee/utils/ChartHelper;->mContext:Landroid/content/Context;

    const/high16 v4, 0x4120

    invoke-static {v1, v4}, Lcom/boohee/utility/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    :goto_1
    invoke-virtual {v2, v3, v3, v3, v1}, Llecho/lib/hellocharts/view/LineChartView;->setPadding(IIII)V

    .line 107
    iget-object v1, p0, Lcom/boohee/utils/ChartHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v3}, Llecho/lib/hellocharts/view/LineChartView;->setViewportCalculationEnabled(Z)V

    .line 108
    iget-object v1, p0, Lcom/boohee/utils/ChartHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v3}, Llecho/lib/hellocharts/view/LineChartView;->setZoomEnabled(Z)V

    .line 109
    iget-object v1, p0, Lcom/boohee/utils/ChartHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/view/LineChartView;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

    .line 110
    iget-object v1, p0, Lcom/boohee/utils/ChartHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v3}, Llecho/lib/hellocharts/view/LineChartView;->setVisibility(I)V

    .line 111
    return-void

    :cond_1
    move v1, v2

    .line 102
    goto :goto_0

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/boohee/utils/ChartHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getImgRadius()F

    move-result v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    invoke-static {v1, v4}, Lcom/boohee/utility/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    goto :goto_1
.end method

.method private setViewport()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/high16 v6, -0x4080

    const/high16 v7, 0x40a0

    .line 135
    iget-object v3, p0, Lcom/boohee/utils/ChartHelper;->mAxisValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 136
    .local v0, axisSize:I
    iget v3, p0, Lcom/boohee/utils/ChartHelper;->mViewportLeft:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/boohee/utils/ChartHelper;->mViewportRight:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 137
    const/4 v3, 0x7

    if-ge v0, v3, :cond_3

    .line 138
    iput v6, p0, Lcom/boohee/utils/ChartHelper;->mViewportLeft:F

    .line 139
    const/high16 v3, 0x40c0

    iput v3, p0, Lcom/boohee/utils/ChartHelper;->mViewportRight:F

    .line 162
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/boohee/utils/ChartHelper;->mRecordValues:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/boohee/utils/ChartHelper;->max:F

    .line 163
    iget-object v3, p0, Lcom/boohee/utils/ChartHelper;->mRecordValues:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/boohee/utils/ChartHelper;->min:F

    .line 164
    iget v3, p0, Lcom/boohee/utils/ChartHelper;->targetWeight:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    .line 165
    iget v3, p0, Lcom/boohee/utils/ChartHelper;->targetWeight:F

    iget v4, p0, Lcom/boohee/utils/ChartHelper;->max:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget v3, p0, Lcom/boohee/utils/ChartHelper;->targetWeight:F

    :goto_1
    iput v3, p0, Lcom/boohee/utils/ChartHelper;->max:F

    .line 166
    iget v3, p0, Lcom/boohee/utils/ChartHelper;->targetWeight:F

    iget v4, p0, Lcom/boohee/utils/ChartHelper;->min:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    iget v3, p0, Lcom/boohee/utils/ChartHelper;->targetWeight:F

    :goto_2
    iput v3, p0, Lcom/boohee/utils/ChartHelper;->min:F

    .line 168
    :cond_1
    new-instance v2, Llecho/lib/hellocharts/model/Viewport;

    iget v3, p0, Lcom/boohee/utils/ChartHelper;->max:F

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/boohee/utils/ChartHelper;->mAxisValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/boohee/utils/ChartHelper;->min:F

    sub-float/2addr v5, v7

    invoke-direct {v2, v6, v3, v4, v5}, Llecho/lib/hellocharts/model/Viewport;-><init>(FFFF)V

    .line 169
    .local v2, v_max:Llecho/lib/hellocharts/model/Viewport;
    iget v3, p0, Lcom/boohee/utils/ChartHelper;->mTypeMode:I

    if-lez v3, :cond_2

    .line 170
    new-instance v2, Llecho/lib/hellocharts/model/Viewport;

    .end local v2           #v_max:Llecho/lib/hellocharts/model/Viewport;
    iget v3, p0, Lcom/boohee/utils/ChartHelper;->max:F

    add-float/2addr v3, v7

    iget-object v4, p0, Lcom/boohee/utils/ChartHelper;->mAxisValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    iget v5, p0, Lcom/boohee/utils/ChartHelper;->min:F

    sub-float/2addr v5, v7

    invoke-direct {v2, v6, v3, v4, v5}, Llecho/lib/hellocharts/model/Viewport;-><init>(FFFF)V

    .line 172
    .restart local v2       #v_max:Llecho/lib/hellocharts/model/Viewport;
    :cond_2
    new-instance v1, Llecho/lib/hellocharts/model/Viewport;

    iget v3, p0, Lcom/boohee/utils/ChartHelper;->mViewportLeft:F

    iget v4, p0, Lcom/boohee/utils/ChartHelper;->max:F

    add-float/2addr v4, v7

    iget v5, p0, Lcom/boohee/utils/ChartHelper;->mViewportRight:F

    iget v6, p0, Lcom/boohee/utils/ChartHelper;->min:F

    sub-float/2addr v6, v7

    invoke-direct {v1, v3, v4, v5, v6}, Llecho/lib/hellocharts/model/Viewport;-><init>(FFFF)V

    .line 173
    .local v1, v_corrent:Llecho/lib/hellocharts/model/Viewport;
    iget-object v3, p0, Lcom/boohee/utils/ChartHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v3, v2}, Llecho/lib/hellocharts/view/LineChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 174
    iget-object v3, p0, Lcom/boohee/utils/ChartHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v3, v1}, Llecho/lib/hellocharts/view/LineChartView;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 175
    return-void

    .line 141
    .end local v1           #v_corrent:Llecho/lib/hellocharts/model/Viewport;
    .end local v2           #v_max:Llecho/lib/hellocharts/model/Viewport;
    :cond_3
    iget v3, p0, Lcom/boohee/utils/ChartHelper;->mTypeMode:I

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_0

    .line 143
    :pswitch_0
    iget-boolean v3, p0, Lcom/boohee/utils/ChartHelper;->mIsLandscape:Z

    if-eqz v3, :cond_4

    .line 144
    add-int/lit8 v3, v0, -0xe

    int-to-float v3, v3

    iput v3, p0, Lcom/boohee/utils/ChartHelper;->mViewportLeft:F

    .line 145
    int-to-float v3, v0

    iput v3, p0, Lcom/boohee/utils/ChartHelper;->mViewportRight:F

    goto/16 :goto_0

    .line 147
    :cond_4
    add-int/lit8 v3, v0, -0x7

    int-to-float v3, v3

    iput v3, p0, Lcom/boohee/utils/ChartHelper;->mViewportLeft:F

    .line 148
    int-to-float v3, v0

    iput v3, p0, Lcom/boohee/utils/ChartHelper;->mViewportRight:F

    goto/16 :goto_0

    .line 152
    :pswitch_1
    add-int/lit8 v3, v0, -0x1e

    int-to-float v3, v3

    iput v3, p0, Lcom/boohee/utils/ChartHelper;->mViewportLeft:F

    .line 153
    add-int/lit8 v3, v0, 0x4

    int-to-float v3, v3

    iput v3, p0, Lcom/boohee/utils/ChartHelper;->mViewportRight:F

    goto/16 :goto_0

    .line 156
    :pswitch_2
    add-int/lit16 v3, v0, -0xb9

    int-to-float v3, v3

    iput v3, p0, Lcom/boohee/utils/ChartHelper;->mViewportLeft:F

    .line 157
    int-to-float v3, v0

    iput v3, p0, Lcom/boohee/utils/ChartHelper;->mViewportRight:F

    goto/16 :goto_0

    .line 165
    :cond_5
    iget v3, p0, Lcom/boohee/utils/ChartHelper;->max:F

    goto/16 :goto_1

    .line 166
    :cond_6
    iget v3, p0, Lcom/boohee/utils/ChartHelper;->min:F

    goto/16 :goto_2

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mRecordValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 57
    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mHasLabelMaps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 58
    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mAxisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 59
    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mPointValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mWeightRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 61
    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/utils/ChartHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    .line 64
    :cond_0
    return-void
.end method

.method public initLine(Landroid/content/Context;Llecho/lib/hellocharts/view/LineChartView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;FFIZ)V
    .locals 1
    .parameter "context"
    .parameter "lineChart"
    .parameter "beginDate"
    .parameter "endDate"
    .parameter
    .parameter "viewportLeft"
    .parameter "viewportRight"
    .parameter "typeMode"
    .parameter "isLandscape"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Llecho/lib/hellocharts/view/LineChartView;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/WeightRecord;",
            ">;FFIZ)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p5, weightRecords:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/WeightRecord;>;"
    iput-object p1, p0, Lcom/boohee/utils/ChartHelper;->mContext:Landroid/content/Context;

    .line 68
    iput-object p3, p0, Lcom/boohee/utils/ChartHelper;->mBeginDate:Ljava/lang/String;

    .line 69
    iput-object p4, p0, Lcom/boohee/utils/ChartHelper;->mEndDate:Ljava/lang/String;

    .line 70
    iput-object p5, p0, Lcom/boohee/utils/ChartHelper;->mWeightRecords:Ljava/util/List;

    .line 71
    iput-object p2, p0, Lcom/boohee/utils/ChartHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    .line 72
    iput p6, p0, Lcom/boohee/utils/ChartHelper;->mViewportLeft:F

    .line 73
    iput p7, p0, Lcom/boohee/utils/ChartHelper;->mViewportRight:F

    .line 74
    iput p8, p0, Lcom/boohee/utils/ChartHelper;->mTypeMode:I

    .line 75
    iput-boolean p9, p0, Lcom/boohee/utils/ChartHelper;->mIsLandscape:Z

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartHelper;->resources:Landroid/content/res/Resources;

    .line 77
    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    if-nez v0, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-static {p3, p4}, Lcom/boohee/utils/DateFormatUtils;->getEveryday(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartHelper;->mXDates:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mXDates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mXDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mWeightRecords:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mWeightRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mXDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/boohee/utils/ChartHelper;->getYValsForNone(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartHelper;->mPointValues:Ljava/util/List;

    .line 89
    :goto_1
    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mPointValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mPointValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/boohee/utils/ChartHelper;->getXals()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartHelper;->mAxisValues:Ljava/util/List;

    .line 92
    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mAxisValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mAxisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p2}, Llecho/lib/hellocharts/view/LineChartView;->getTargetWeight()F

    move-result v0

    iput v0, p0, Lcom/boohee/utils/ChartHelper;->targetWeight:F

    .line 95
    invoke-direct {p0}, Lcom/boohee/utils/ChartHelper;->setViewport()V

    .line 96
    invoke-direct {p0}, Lcom/boohee/utils/ChartHelper;->setLinData()V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/boohee/utils/ChartHelper;->mWeightRecords:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/boohee/utils/ChartHelper;->getYVals(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartHelper;->mPointValues:Ljava/util/List;

    goto :goto_1
.end method
