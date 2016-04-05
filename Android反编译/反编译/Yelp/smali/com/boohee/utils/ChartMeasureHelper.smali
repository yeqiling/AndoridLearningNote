.class public Lcom/boohee/utils/ChartMeasureHelper;
.super Ljava/lang/Object;
.source "ChartMeasureHelper.java"


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
            "Lcom/boohee/model/mine/Measure;",
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

.field private resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mRecordValues:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mAxisValues:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mPointValues:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mWeightRecords:Ljava/util/List;

    .line 37
    iput v1, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportLeft:F

    .line 38
    iput v1, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportRight:F

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

    .line 92
    new-instance v0, Llecho/lib/hellocharts/model/Line;

    iget-object v2, p0, Lcom/boohee/utils/ChartMeasureHelper;->mPointValues:Ljava/util/List;

    invoke-direct {v0, v2}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    .line 93
    .local v0, line:Llecho/lib/hellocharts/model/Line;
    iget-object v2, p0, Lcom/boohee/utils/ChartMeasureHelper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    .line 94
    iget-object v2, p0, Lcom/boohee/utils/ChartMeasureHelper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Line;->setLabelColor(I)V

    .line 95
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Line;->setFilled(Z)Llecho/lib/hellocharts/model/Line;

    .line 96
    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Line;->setCubic(Z)Llecho/lib/hellocharts/model/Line;

    .line 97
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Line;->setHasLabels(Z)Llecho/lib/hellocharts/model/Line;

    .line 98
    iget-object v2, p0, Lcom/boohee/utils/ChartMeasureHelper;->mWeightRecords:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/utils/ChartMeasureHelper;->mWeightRecords:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/boohee/utils/ChartMeasureHelper;->mTypeMode:I

    if-lez v2, :cond_1

    .line 99
    :cond_0
    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    .line 103
    :goto_0
    new-instance v2, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;

    invoke-direct {v2}, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;-><init>()V

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->setDecimalDigitsNumber(I)Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;

    move-result-object v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Line;->setFormatter(Llecho/lib/hellocharts/formatter/LineChartValueFormatter;)Llecho/lib/hellocharts/model/Line;

    .line 104
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v1, lines:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/Line;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object v1

    .line 101
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

    .line 206
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 212
    :cond_0
    :goto_0
    return v0

    .line 207
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 208
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 212
    goto :goto_0
.end method

.method private getXals()Ljava/util/List;
    .locals 7
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
    .line 186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v0, axisValues:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/AxisValue;>;"
    iget-object v4, p0, Lcom/boohee/utils/ChartMeasureHelper;->mBeginDate:Ljava/lang/String;

    iget-object v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mEndDate:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/boohee/utils/DateFormatUtils;->getEveryMonthDay(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 189
    .local v3, xVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 194
    .end local v0           #axisValues:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/AxisValue;>;"
    :cond_0
    return-object v0

    .line 190
    .restart local v0       #axisValues:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/AxisValue;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 191
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 192
    new-instance v5, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v6, v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-direct {v5, v6, v4}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F[C)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    add-int/lit8 v1, v1, 0x1

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
            "Lcom/boohee/model/mine/Measure;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, measures:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/Measure;>;"
    iget-object v3, p0, Lcom/boohee/utils/ChartMeasureHelper;->mRecordValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 170
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v2, yVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llecho/lib/hellocharts/model/PointValue;>;"
    new-instance v4, Llecho/lib/hellocharts/model/PointValue;

    const/high16 v5, -0x4000

    const/4 v3, 0x0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/mine/Measure;

    iget v3, v3, Lcom/boohee/model/mine/Measure;->value:F

    invoke-direct {v4, v5, v3}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 173
    iget-object v4, p0, Lcom/boohee/utils/ChartMeasureHelper;->mXDates:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/mine/Measure;

    iget-object v3, v3, Lcom/boohee/model/mine/Measure;->record_on:Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Lcom/boohee/utils/ChartMeasureHelper;->getXIndex(Ljava/util/List;Ljava/lang/String;)I

    move-result v1

    .line 174
    .local v1, xIndex:I
    new-instance v4, Llecho/lib/hellocharts/model/PointValue;

    int-to-float v5, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/mine/Measure;

    iget v6, v3, Lcom/boohee/model/mine/Measure;->value:F

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/mine/Measure;

    iget-object v3, v3, Lcom/boohee/model/mine/Measure;->record_on:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v3}, Llecho/lib/hellocharts/model/PointValue;-><init>(FFLjava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v4, p0, Lcom/boohee/utils/ChartMeasureHelper;->mRecordValues:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/mine/Measure;

    iget v3, v3, Lcom/boohee/model/mine/Measure;->value:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
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

    .line 153
    iget-object v1, p0, Lcom/boohee/utils/ChartMeasureHelper;->mRecordValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 154
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .local v0, pointValues:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/PointValue;>;"
    new-instance v1, Llecho/lib/hellocharts/model/PointValue;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    new-instance v1, Llecho/lib/hellocharts/model/PointValue;

    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    invoke-direct {v1, v2, v3}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget-object v1, p0, Lcom/boohee/utils/ChartMeasureHelper;->mRecordValues:Ljava/util/List;

    const/high16 v2, 0x41f0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v1, p0, Lcom/boohee/utils/ChartMeasureHelper;->mRecordValues:Ljava/util/List;

    const/high16 v2, 0x4270

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    return-object v0
.end method

.method private setLinData()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 81
    new-instance v0, Llecho/lib/hellocharts/model/LineChartData;

    invoke-direct {p0}, Lcom/boohee/utils/ChartMeasureHelper;->getLines()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;-><init>(Ljava/util/List;)V

    .line 82
    .local v0, lineData:Llecho/lib/hellocharts/model/LineChartData;
    new-instance v1, Llecho/lib/hellocharts/model/Axis;

    iget-object v2, p0, Lcom/boohee/utils/ChartMeasureHelper;->mAxisValues:Ljava/util/List;

    invoke-direct {v1, v2}, Llecho/lib/hellocharts/model/Axis;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v5}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/utils/ChartMeasureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d012a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/utils/ChartMeasureHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/model/Axis;->setHasThumb(Z)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 83
    new-instance v1, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v1}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    invoke-virtual {v1, v5}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setMaxLabelChars(I)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    .line 84
    iget-object v1, p0, Lcom/boohee/utils/ChartMeasureHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/view/LineChartView;->setViewportCalculationEnabled(Z)V

    .line 85
    iget-object v1, p0, Lcom/boohee/utils/ChartMeasureHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/view/LineChartView;->setZoomEnabled(Z)V

    .line 86
    iget-object v1, p0, Lcom/boohee/utils/ChartMeasureHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/view/LineChartView;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

    .line 87
    iget-object v1, p0, Lcom/boohee/utils/ChartMeasureHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/view/LineChartView;->setVisibility(I)V

    .line 88
    return-void
.end method

.method private setViewport()V
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/high16 v9, -0x4080

    const/high16 v8, 0x40a0

    .line 113
    iget-object v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mAxisValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 114
    .local v0, axisSize:I
    iget v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportLeft:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    iget v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportRight:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_0

    .line 115
    const/4 v5, 0x7

    if-ge v0, v5, :cond_2

    .line 116
    iput v9, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportLeft:F

    .line 117
    const/high16 v5, 0x40c0

    iput v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportRight:F

    .line 135
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mRecordValues:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 136
    .local v1, max:F
    iget-object v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mRecordValues:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 137
    .local v2, min:F
    new-instance v4, Llecho/lib/hellocharts/model/Viewport;

    add-float v5, v1, v8

    iget-object v6, p0, Lcom/boohee/utils/ChartMeasureHelper;->mAxisValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    sub-float v7, v2, v8

    invoke-direct {v4, v9, v5, v6, v7}, Llecho/lib/hellocharts/model/Viewport;-><init>(FFFF)V

    .line 138
    .local v4, v_max:Llecho/lib/hellocharts/model/Viewport;
    iget v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mTypeMode:I

    if-lez v5, :cond_1

    .line 139
    new-instance v4, Llecho/lib/hellocharts/model/Viewport;

    .end local v4           #v_max:Llecho/lib/hellocharts/model/Viewport;
    add-float v5, v1, v8

    iget-object v6, p0, Lcom/boohee/utils/ChartMeasureHelper;->mAxisValues:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    int-to-float v6, v6

    sub-float v7, v2, v8

    invoke-direct {v4, v9, v5, v6, v7}, Llecho/lib/hellocharts/model/Viewport;-><init>(FFFF)V

    .line 141
    .restart local v4       #v_max:Llecho/lib/hellocharts/model/Viewport;
    :cond_1
    new-instance v3, Llecho/lib/hellocharts/model/Viewport;

    iget v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportLeft:F

    add-float v6, v1, v8

    iget v7, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportRight:F

    sub-float v8, v2, v8

    invoke-direct {v3, v5, v6, v7, v8}, Llecho/lib/hellocharts/model/Viewport;-><init>(FFFF)V

    .line 142
    .local v3, v_corrent:Llecho/lib/hellocharts/model/Viewport;
    iget-object v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v5, v4}, Llecho/lib/hellocharts/view/LineChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 143
    iget-object v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v5, v3}, Llecho/lib/hellocharts/view/LineChartView;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 144
    return-void

    .line 119
    .end local v1           #max:F
    .end local v2           #min:F
    .end local v3           #v_corrent:Llecho/lib/hellocharts/model/Viewport;
    .end local v4           #v_max:Llecho/lib/hellocharts/model/Viewport;
    :cond_2
    iget v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mTypeMode:I

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 121
    :pswitch_0
    add-int/lit8 v5, v0, -0x7

    int-to-float v5, v5

    iput v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportLeft:F

    .line 122
    int-to-float v5, v0

    iput v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportRight:F

    goto :goto_0

    .line 125
    :pswitch_1
    add-int/lit8 v5, v0, -0x1e

    int-to-float v5, v5

    iput v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportLeft:F

    .line 126
    add-int/lit8 v5, v0, 0x4

    int-to-float v5, v5

    iput v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportRight:F

    goto :goto_0

    .line 129
    :pswitch_2
    add-int/lit16 v5, v0, -0xb6

    int-to-float v5, v5

    iput v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportLeft:F

    .line 130
    int-to-float v5, v0

    iput v5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportRight:F

    goto :goto_0

    .line 119
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
    .line 44
    iget-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mRecordValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mAxisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 46
    iget-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mPointValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    iget-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mWeightRecords:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    iget-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    .line 51
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
            "Lcom/boohee/model/mine/Measure;",
            ">;FFIZ)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p5, measures:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/Measure;>;"
    iput-object p1, p0, Lcom/boohee/utils/ChartMeasureHelper;->mContext:Landroid/content/Context;

    .line 55
    iput-object p3, p0, Lcom/boohee/utils/ChartMeasureHelper;->mBeginDate:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/boohee/utils/ChartMeasureHelper;->mEndDate:Ljava/lang/String;

    .line 57
    iput-object p5, p0, Lcom/boohee/utils/ChartMeasureHelper;->mWeightRecords:Ljava/util/List;

    .line 58
    iput-object p2, p0, Lcom/boohee/utils/ChartMeasureHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    .line 59
    iput p6, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportLeft:F

    .line 60
    iput p7, p0, Lcom/boohee/utils/ChartMeasureHelper;->mViewportRight:F

    .line 61
    iput p8, p0, Lcom/boohee/utils/ChartMeasureHelper;->mTypeMode:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->resources:Landroid/content/res/Resources;

    .line 64
    invoke-static {p3, p4}, Lcom/boohee/utils/DateFormatUtils;->getEveryday(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mXDates:Ljava/util/List;

    .line 65
    iget-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mXDates:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mXDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    if-eqz p5, :cond_2

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mXDates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/boohee/utils/ChartMeasureHelper;->getYValsForNone(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mPointValues:Ljava/util/List;

    .line 72
    :goto_1
    iget-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mPointValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mPointValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/boohee/utils/ChartMeasureHelper;->getXals()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mAxisValues:Ljava/util/List;

    .line 75
    iget-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mAxisValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mAxisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/boohee/utils/ChartMeasureHelper;->setViewport()V

    .line 77
    invoke-direct {p0}, Lcom/boohee/utils/ChartMeasureHelper;->setLinData()V

    goto :goto_0

    .line 70
    :cond_3
    invoke-direct {p0, p5}, Lcom/boohee/utils/ChartMeasureHelper;->getYVals(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartMeasureHelper;->mPointValues:Ljava/util/List;

    goto :goto_1
.end method
