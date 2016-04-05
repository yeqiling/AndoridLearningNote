.class public Lcom/boohee/utils/ChartPunchHelper;
.super Ljava/lang/Object;
.source "ChartPunchHelper.java"


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

.field private mClockOuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/ClockOutRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

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

.field private resources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/ChartPunchHelper;->mRecordValues:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/ChartPunchHelper;->mHasLabelMaps:Ljava/util/Map;

    return-void
.end method

.method private addPhoto(Lcom/boohee/model/chanllenge/ClockOutRecord;I)V
    .locals 4
    .parameter "record"
    .parameter "xIndex"

    .prologue
    .line 166
    iget-object v0, p1, Lcom/boohee/model/chanllenge/ClockOutRecord;->photos:Ljava/util/List;

    .line 167
    .local v0, photos:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/status/Photo;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 168
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/status/Photo;

    iget-object v1, v2, Lcom/boohee/model/status/Photo;->small_url:Ljava/lang/String;

    .line 169
    .local v1, url:Ljava/lang/String;
    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mHasLabelMaps:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
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

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 79
    new-instance v0, Llecho/lib/hellocharts/model/Line;

    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mPointValues:Ljava/util/List;

    invoke-direct {v0, v2}, Llecho/lib/hellocharts/model/Line;-><init>(Ljava/util/List;)V

    .line 80
    .local v0, line:Llecho/lib/hellocharts/model/Line;
    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Line;->setColor(I)Llecho/lib/hellocharts/model/Line;

    .line 81
    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->resources:Landroid/content/res/Resources;

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Line;->setLabelColor(I)V

    .line 82
    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Line;->setFilled(Z)Llecho/lib/hellocharts/model/Line;

    .line 83
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Line;->setCubic(Z)Llecho/lib/hellocharts/model/Line;

    .line 84
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Line;->setHasLabels(Z)Llecho/lib/hellocharts/model/Line;

    .line 85
    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mClockOuts:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mClockOuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 86
    :cond_0
    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

    .line 90
    :goto_0
    new-instance v2, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;

    invoke-direct {v2}, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;-><init>()V

    invoke-virtual {v2, v4}, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;->setDecimalDigitsNumber(I)Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;

    move-result-object v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/Line;->setFormatter(Llecho/lib/hellocharts/formatter/LineChartValueFormatter;)Llecho/lib/hellocharts/model/Line;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v1, lines:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/Line;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    return-object v1

    .line 88
    .end local v1           #lines:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/Line;>;"
    :cond_1
    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Line;->setHasPoints(Z)Llecho/lib/hellocharts/model/Line;

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
    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v0, axisValues:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/AxisValue;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mClockOuts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mHasLabelMaps:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mHasLabelMaps:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    new-instance v3, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v4, v1

    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mClockOuts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/chanllenge/ClockOutRecord;

    iget-object v2, v2, Lcom/boohee/model/chanllenge/ClockOutRecord;->record_on:Ljava/lang/String;

    const-string v5, "yyyy-MM-dd"

    invoke-static {v2, v5}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const-string v5, "M/d"

    invoke-static {v2, v5}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v5, p0, Lcom/boohee/utils/ChartPunchHelper;->mHasLabelMaps:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v2, v5}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F[CLjava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 152
    :cond_0
    new-instance v3, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v4, v1

    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mClockOuts:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/chanllenge/ClockOutRecord;

    iget-object v2, v2, Lcom/boohee/model/chanllenge/ClockOutRecord;->record_on:Ljava/lang/String;

    const-string v5, "yyyy-MM-dd"

    invoke-static {v2, v5}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    const-string v5, "M/d"

    invoke-static {v2, v5}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v3, v4, v2}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F[C)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 155
    :cond_1
    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mHasLabelMaps:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 156
    return-object v0
.end method

.method private getYVals(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/ClockOutRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, clockOutRecords:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/chanllenge/ClockOutRecord;>;"
    iget-object v3, p0, Lcom/boohee/utils/ChartPunchHelper;->mRecordValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 132
    .local v2, yVals:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Llecho/lib/hellocharts/model/PointValue;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 133
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/chanllenge/ClockOutRecord;

    iget v3, v3, Lcom/boohee/model/chanllenge/ClockOutRecord;->amount:I

    int-to-float v1, v3

    .line 134
    .local v1, weight:F
    new-instance v4, Llecho/lib/hellocharts/model/PointValue;

    int-to-float v5, v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/chanllenge/ClockOutRecord;

    iget-object v3, v3, Lcom/boohee/model/chanllenge/ClockOutRecord;->record_on:Ljava/lang/String;

    invoke-direct {v4, v5, v1, v3}, Llecho/lib/hellocharts/model/PointValue;-><init>(FFLjava/lang/Object;)V

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v3, p0, Lcom/boohee/utils/ChartPunchHelper;->mRecordValues:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/chanllenge/ClockOutRecord;

    invoke-direct {p0, v3, v0}, Lcom/boohee/utils/ChartPunchHelper;->addPhoto(Lcom/boohee/model/chanllenge/ClockOutRecord;I)V

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v1           #weight:F
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

    .line 114
    iget-object v1, p0, Lcom/boohee/utils/ChartPunchHelper;->mRecordValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v0, pointValues:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/PointValue;>;"
    new-instance v1, Llecho/lib/hellocharts/model/PointValue;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v1, Llecho/lib/hellocharts/model/PointValue;

    add-int/lit8 v2, p1, -0x1

    int-to-float v2, v2

    invoke-direct {v1, v2, v3}, Llecho/lib/hellocharts/model/PointValue;-><init>(FF)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, p0, Lcom/boohee/utils/ChartPunchHelper;->mRecordValues:Ljava/util/List;

    const/high16 v2, 0x41f0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v1, p0, Lcom/boohee/utils/ChartPunchHelper;->mRecordValues:Ljava/util/List;

    const/high16 v2, 0x4270

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-object v0
.end method

.method private setLinData()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 61
    new-instance v0, Llecho/lib/hellocharts/model/LineChartData;

    invoke-direct {p0}, Lcom/boohee/utils/ChartPunchHelper;->getLines()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;-><init>(Ljava/util/List;)V

    .line 62
    .local v0, lineData:Llecho/lib/hellocharts/model/LineChartData;
    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;->setImgRadius(F)V

    .line 63
    new-instance v1, Llecho/lib/hellocharts/model/Axis;

    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mAxisValues:Ljava/util/List;

    invoke-direct {v1, v2}, Llecho/lib/hellocharts/model/Axis;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setTextColor(I)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d012b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setLineColor(I)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Axis;->setHasThumb(Z)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 66
    new-instance v1, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v1}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setMaxLabelChars(I)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/LineChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    .line 67
    iget-object v1, p0, Lcom/boohee/utils/ChartPunchHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    iget-object v2, p0, Lcom/boohee/utils/ChartPunchHelper;->mContext:Landroid/content/Context;

    const/high16 v3, 0x4100

    invoke-static {v2, v3}, Lcom/boohee/utility/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/boohee/utils/ChartPunchHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getImgRadius()F

    move-result v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    const/high16 v5, 0x4120

    add-float/2addr v4, v5

    invoke-static {v3, v4}, Lcom/boohee/utility/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v6, v6, v2, v3}, Llecho/lib/hellocharts/view/LineChartView;->setPadding(IIII)V

    .line 69
    iget-object v1, p0, Lcom/boohee/utils/ChartPunchHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v7}, Llecho/lib/hellocharts/view/LineChartView;->setDrawingCacheEnabled(Z)V

    .line 70
    iget-object v1, p0, Lcom/boohee/utils/ChartPunchHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/view/LineChartView;->setViewportCalculationEnabled(Z)V

    .line 71
    iget-object v1, p0, Lcom/boohee/utils/ChartPunchHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/view/LineChartView;->setZoomEnabled(Z)V

    .line 72
    iget-object v1, p0, Lcom/boohee/utils/ChartPunchHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/view/LineChartView;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

    .line 73
    iget-object v1, p0, Lcom/boohee/utils/ChartPunchHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/view/LineChartView;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Lcom/boohee/utils/ChartPunchHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/LineChartView;->startDataAnimation()V

    .line 75
    iget-object v1, p0, Lcom/boohee/utils/ChartPunchHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1, v6}, Llecho/lib/hellocharts/view/LineChartView;->setClickable(Z)V

    .line 76
    return-void
.end method

.method private setViewport()V
    .locals 7

    .prologue
    const/high16 v6, 0x40a0

    .line 100
    iget-object v3, p0, Lcom/boohee/utils/ChartPunchHelper;->mRecordValues:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 101
    .local v0, max:F
    iget-object v3, p0, Lcom/boohee/utils/ChartPunchHelper;->mRecordValues:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 102
    .local v1, min:F
    new-instance v2, Llecho/lib/hellocharts/model/Viewport;

    const/high16 v3, -0x4100

    add-float v4, v0, v6

    const/high16 v5, 0x40c0

    sub-float v6, v1, v6

    invoke-direct {v2, v3, v4, v5, v6}, Llecho/lib/hellocharts/model/Viewport;-><init>(FFFF)V

    .line 103
    .local v2, v_corrent:Llecho/lib/hellocharts/model/Viewport;
    iget-object v3, p0, Lcom/boohee/utils/ChartPunchHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v3, v2}, Llecho/lib/hellocharts/view/LineChartView;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 104
    iget-object v3, p0, Lcom/boohee/utils/ChartPunchHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v3, v2}, Llecho/lib/hellocharts/view/LineChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 105
    return-void
.end method


# virtual methods
.method public initLine(Landroid/content/Context;Llecho/lib/hellocharts/view/LineChartView;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter "lineChart"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Llecho/lib/hellocharts/view/LineChartView;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/ClockOutRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, clockOutRecords:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/chanllenge/ClockOutRecord;>;"
    iput-object p1, p0, Lcom/boohee/utils/ChartPunchHelper;->mContext:Landroid/content/Context;

    .line 40
    iput-object p3, p0, Lcom/boohee/utils/ChartPunchHelper;->mClockOuts:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lcom/boohee/utils/ChartPunchHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartPunchHelper;->resources:Landroid/content/res/Resources;

    .line 43
    iget-object v0, p0, Lcom/boohee/utils/ChartPunchHelper;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 47
    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 48
    :cond_2
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/boohee/utils/ChartPunchHelper;->getYValsForNone(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartPunchHelper;->mPointValues:Ljava/util/List;

    .line 52
    :goto_1
    iget-object v0, p0, Lcom/boohee/utils/ChartPunchHelper;->mPointValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/utils/ChartPunchHelper;->mPointValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/boohee/utils/ChartPunchHelper;->getXals()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartPunchHelper;->mAxisValues:Ljava/util/List;

    .line 55
    iget-object v0, p0, Lcom/boohee/utils/ChartPunchHelper;->mAxisValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/utils/ChartPunchHelper;->mAxisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/boohee/utils/ChartPunchHelper;->setViewport()V

    .line 57
    invoke-direct {p0}, Lcom/boohee/utils/ChartPunchHelper;->setLinData()V

    goto :goto_0

    .line 50
    :cond_3
    invoke-direct {p0, p3}, Lcom/boohee/utils/ChartPunchHelper;->getYVals(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/ChartPunchHelper;->mPointValues:Ljava/util/List;

    goto :goto_1
.end method
