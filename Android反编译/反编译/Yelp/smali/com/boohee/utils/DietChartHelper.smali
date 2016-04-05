.class public Lcom/boohee/utils/DietChartHelper;
.super Ljava/lang/Object;
.source "DietChartHelper.java"


# instance fields
.field private axisValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/AxisValue;",
            ">;"
        }
    .end annotation
.end field

.field private chartView:Llecho/lib/hellocharts/view/ColumnChartView;

.field private columns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/Column;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private dietRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/DietRecord;",
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

.field private max:F

.field private min:F

.field private resources:Landroid/content/res/Resources;

.field private viewportLeft:F

.field private viewportRight:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/high16 v0, 0x452f

    iput v0, p0, Lcom/boohee/utils/DietChartHelper;->max:F

    .line 37
    iput v1, p0, Lcom/boohee/utils/DietChartHelper;->min:F

    .line 38
    iput v1, p0, Lcom/boohee/utils/DietChartHelper;->viewportLeft:F

    .line 39
    iput v1, p0, Lcom/boohee/utils/DietChartHelper;->viewportRight:F

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/DietChartHelper;->dietRecords:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/DietChartHelper;->mRecordValues:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/DietChartHelper;->columns:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/utils/DietChartHelper;->axisValues:Ljava/util/List;

    return-void
.end method

.method private getColumnsData(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/DietRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/Column;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, records:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/DietRecord;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v1, 0x0

    .line 77
    :cond_1
    return-object v1

    .line 64
    :cond_2
    iget-object v4, p0, Lcom/boohee/utils/DietChartHelper;->mRecordValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, columnList:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/Column;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 68
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v3, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/SubcolumnValue;>;"
    new-instance v5, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/mine/DietRecord;

    iget v4, v4, Lcom/boohee/model/mine/DietRecord;->eating_calory:F

    iget-object v6, p0, Lcom/boohee/utils/DietChartHelper;->resources:Landroid/content/res/Resources;

    const v7, 0x7f0d0046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v4, v6}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v5, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/mine/DietRecord;

    iget v4, v4, Lcom/boohee/model/mine/DietRecord;->activity_calory:F

    iget-object v6, p0, Lcom/boohee/utils/DietChartHelper;->resources:Landroid/content/res/Resources;

    const v7, 0x7f0d00f0

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v4, v6}, Llecho/lib/hellocharts/model/SubcolumnValue;-><init>(FI)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v5, p0, Lcom/boohee/utils/DietChartHelper;->mRecordValues:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/mine/DietRecord;

    iget v4, v4, Lcom/boohee/model/mine/DietRecord;->eating_calory:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v5, p0, Lcom/boohee/utils/DietChartHelper;->mRecordValues:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/mine/DietRecord;

    iget v4, v4, Lcom/boohee/model/mine/DietRecord;->activity_calory:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    new-instance v0, Llecho/lib/hellocharts/model/Column;

    invoke-direct {v0, v3}, Llecho/lib/hellocharts/model/Column;-><init>(Ljava/util/List;)V

    .line 74
    .local v0, column:Llecho/lib/hellocharts/model/Column;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/Column;->setHasLabels(Z)Llecho/lib/hellocharts/model/Column;

    .line 75
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getXals(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/DietRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/AxisValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, records:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/DietRecord;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    const/4 v0, 0x0

    .line 88
    :cond_1
    return-object v0

    .line 83
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v0, axisValues:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/AxisValue;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 85
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/mine/DietRecord;

    invoke-virtual {v3}, Lcom/boohee/model/mine/DietRecord;->getMonth()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/mine/DietRecord;

    invoke-virtual {v3}, Lcom/boohee/model/mine/DietRecord;->getDay()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86
    .local v1, date:Ljava/lang/String;
    new-instance v3, Llecho/lib/hellocharts/model/AxisValue;

    int-to-float v4, v2

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    invoke-direct {v3, v4, v5}, Llecho/lib/hellocharts/model/AxisValue;-><init>(F[C)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private setColumnData()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 109
    new-instance v0, Llecho/lib/hellocharts/model/ColumnChartData;

    iget-object v1, p0, Lcom/boohee/utils/DietChartHelper;->columns:Ljava/util/List;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;-><init>(Ljava/util/List;)V

    .line 110
    .local v0, data:Llecho/lib/hellocharts/model/ColumnChartData;
    new-instance v1, Llecho/lib/hellocharts/model/Axis;

    iget-object v2, p0, Lcom/boohee/utils/DietChartHelper;->axisValues:Ljava/util/List;

    invoke-direct {v1, v2}, Llecho/lib/hellocharts/model/Axis;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 111
    new-instance v1, Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v1}, Llecho/lib/hellocharts/model/Axis;-><init>()V

    const/4 v1, 0x0

    const/high16 v2, 0x452f

    const/high16 v3, 0x43fa

    invoke-static {v1, v2, v3}, Llecho/lib/hellocharts/model/Axis;->generateAxisFromRange(FFF)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setHasLines(Z)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Axis;->setMaxLabelChars(I)Llecho/lib/hellocharts/model/Axis;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    .line 112
    invoke-virtual {v0, v4}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelBackgroundAuto(Z)V

    .line 113
    iget-object v1, p0, Lcom/boohee/utils/DietChartHelper;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0d0102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelBackgroundColor(I)V

    .line 114
    iget-object v1, p0, Lcom/boohee/utils/DietChartHelper;->resources:Landroid/content/res/Resources;

    const v2, 0x7f0d0079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ColumnChartData;->setValueLabelsTextColor(I)V

    .line 115
    iget-object v1, p0, Lcom/boohee/utils/DietChartHelper;->chartView:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/view/ColumnChartView;->setViewportCalculationEnabled(Z)V

    .line 116
    iget-object v1, p0, Lcom/boohee/utils/DietChartHelper;->chartView:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/view/ColumnChartView;->setZoomEnabled(Z)V

    .line 117
    iget-object v1, p0, Lcom/boohee/utils/DietChartHelper;->chartView:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 118
    iget-object v1, p0, Lcom/boohee/utils/DietChartHelper;->chartView:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v1, v4}, Llecho/lib/hellocharts/view/ColumnChartView;->setVisibility(I)V

    .line 119
    return-void
.end method

.method private setViewport()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/high16 v6, -0x4080

    .line 92
    iget-object v3, p0, Lcom/boohee/utils/DietChartHelper;->axisValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 93
    .local v0, axisSize:I
    iget v3, p0, Lcom/boohee/utils/DietChartHelper;->viewportLeft:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/boohee/utils/DietChartHelper;->viewportRight:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 94
    const/16 v3, 0x9

    if-ge v0, v3, :cond_1

    .line 95
    iput v6, p0, Lcom/boohee/utils/DietChartHelper;->viewportLeft:F

    .line 96
    const/high16 v3, 0x4100

    iput v3, p0, Lcom/boohee/utils/DietChartHelper;->viewportRight:F

    .line 102
    :cond_0
    :goto_0
    new-instance v2, Llecho/lib/hellocharts/model/Viewport;

    iget v3, p0, Lcom/boohee/utils/DietChartHelper;->max:F

    iget-object v4, p0, Lcom/boohee/utils/DietChartHelper;->axisValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/boohee/utils/DietChartHelper;->min:F

    invoke-direct {v2, v6, v3, v4, v5}, Llecho/lib/hellocharts/model/Viewport;-><init>(FFFF)V

    .line 103
    .local v2, v_max:Llecho/lib/hellocharts/model/Viewport;
    new-instance v1, Llecho/lib/hellocharts/model/Viewport;

    iget v3, p0, Lcom/boohee/utils/DietChartHelper;->viewportLeft:F

    iget v4, p0, Lcom/boohee/utils/DietChartHelper;->max:F

    iget v5, p0, Lcom/boohee/utils/DietChartHelper;->viewportRight:F

    const v6, 0x3e4ccccd

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/boohee/utils/DietChartHelper;->min:F

    invoke-direct {v1, v3, v4, v5, v6}, Llecho/lib/hellocharts/model/Viewport;-><init>(FFFF)V

    .line 104
    .local v1, v_current:Llecho/lib/hellocharts/model/Viewport;
    iget-object v3, p0, Lcom/boohee/utils/DietChartHelper;->chartView:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v3, v2}, Llecho/lib/hellocharts/view/ColumnChartView;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 105
    iget-object v3, p0, Lcom/boohee/utils/DietChartHelper;->chartView:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v3, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 106
    return-void

    .line 98
    .end local v1           #v_current:Llecho/lib/hellocharts/model/Viewport;
    .end local v2           #v_max:Llecho/lib/hellocharts/model/Viewport;
    :cond_1
    add-int/lit8 v3, v0, -0x9

    int-to-float v3, v3

    iput v3, p0, Lcom/boohee/utils/DietChartHelper;->viewportLeft:F

    .line 99
    int-to-float v3, v0

    iput v3, p0, Lcom/boohee/utils/DietChartHelper;->viewportRight:F

    goto :goto_0
.end method


# virtual methods
.method public initLine(Landroid/content/Context;Llecho/lib/hellocharts/view/ColumnChartView;Ljava/util/List;FF)V
    .locals 1
    .parameter "context"
    .parameter "chartView"
    .parameter
    .parameter "viewportLeft"
    .parameter "viewportRight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Llecho/lib/hellocharts/view/ColumnChartView;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/DietRecord;",
            ">;FF)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p3, dietRecords:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/DietRecord;>;"
    iput-object p1, p0, Lcom/boohee/utils/DietChartHelper;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/boohee/utils/DietChartHelper;->chartView:Llecho/lib/hellocharts/view/ColumnChartView;

    .line 48
    iput-object p3, p0, Lcom/boohee/utils/DietChartHelper;->dietRecords:Ljava/util/List;

    .line 49
    iput p4, p0, Lcom/boohee/utils/DietChartHelper;->viewportLeft:F

    .line 50
    iput p5, p0, Lcom/boohee/utils/DietChartHelper;->viewportRight:F

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/DietChartHelper;->resources:Landroid/content/res/Resources;

    .line 52
    invoke-direct {p0, p3}, Lcom/boohee/utils/DietChartHelper;->getColumnsData(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/DietChartHelper;->columns:Ljava/util/List;

    .line 53
    iget-object v0, p0, Lcom/boohee/utils/DietChartHelper;->columns:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/utils/DietChartHelper;->columns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-direct {p0, p3}, Lcom/boohee/utils/DietChartHelper;->getXals(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/utils/DietChartHelper;->axisValues:Ljava/util/List;

    .line 55
    iget-object v0, p0, Lcom/boohee/utils/DietChartHelper;->axisValues:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/utils/DietChartHelper;->axisValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-direct {p0}, Lcom/boohee/utils/DietChartHelper;->setViewport()V

    .line 57
    invoke-direct {p0}, Lcom/boohee/utils/DietChartHelper;->setColumnData()V

    goto :goto_0
.end method
