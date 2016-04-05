.class public Llecho/lib/hellocharts/renderer/LineChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "LineChartRenderer.java"


# static fields
.field private static final DEFAULT_LINE_STROKE_WIDTH_DP:I = 0x3

.field private static final DEFAULT_TOUCH_TOLERANCE_MARGIN_DP:I = 0x4

.field private static final LINE_SMOOTHNESS:F = 0.16f

.field private static final MODE_DRAW:I = 0x0

.field private static final MODE_HIGHLIGHT:I = 0x1


# instance fields
.field private baseValue:F

.field private checkPrecision:I

.field private dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

.field private lineChartView:Llecho/lib/hellocharts/view/LineChartView;

.field private linePaint:Landroid/graphics/Paint;

.field private path:Landroid/graphics/Path;

.field private pointIndex:I

.field private pointPaint:Landroid/graphics/Paint;

.field private softwareBitmap:Landroid/graphics/Bitmap;

.field private softwareCanvas:Landroid/graphics/Canvas;

.field private targetWeight:F

.field private tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

.field private touchToleranceMargin:I

.field private weightLinePaint:Landroid/graphics/Paint;

.field private weightStrPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V
    .locals 5
    .parameter "context"
    .parameter "chart"
    .parameter "dataProvider"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 71
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightStrPaint:Landroid/graphics/Paint;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->targetWeight:F

    .line 65
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareCanvas:Landroid/graphics/Canvas;

    .line 66
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 68
    iput v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointIndex:I

    .line 72
    iput-object p3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    .line 74
    iget v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/4 v1, 0x4

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->touchToleranceMargin:I

    .line 76
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 79
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/4 v2, 0x3

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 81
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightStrPaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/16 v2, 0xc

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 88
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-static {v1, v3}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 91
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_TARGET_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    iget v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/4 v1, 0x2

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkPrecision:I

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;Llecho/lib/hellocharts/view/LineChartView;)V
    .locals 5
    .parameter "context"
    .parameter "chart"
    .parameter "dataProvider"
    .parameter "lineChartView"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 98
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    .line 49
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    .line 50
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightStrPaint:Landroid/graphics/Paint;

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->targetWeight:F

    .line 65
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareCanvas:Landroid/graphics/Canvas;

    .line 66
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 68
    iput v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointIndex:I

    .line 99
    iput-object p3, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    .line 100
    iput-object p4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->lineChartView:Llecho/lib/hellocharts/view/LineChartView;

    .line 102
    iget v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/4 v1, 0x4

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->touchToleranceMargin:I

    .line 104
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 107
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/4 v2, 0x3

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 113
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightStrPaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/16 v2, 0xc

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 117
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 118
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-static {v1, v3}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 119
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_TARGET_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/4 v1, 0x2

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkPrecision:I

    .line 123
    return-void
.end method

.method private calculateContentRectInternalMargin()I
    .locals 6

    .prologue
    .line 321
    const/4 v0, 0x0

    .line 322
    .local v0, contentAreaMargin:I
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v5}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v1

    .line 323
    .local v1, data:Llecho/lib/hellocharts/model/LineChartData;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/Line;

    .line 324
    .local v3, line:Llecho/lib/hellocharts/model/Line;
    invoke-direct {p0, v3}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkIfShouldDrawPoints(Llecho/lib/hellocharts/model/Line;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 325
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Line;->getPointRadius()I

    move-result v5

    add-int/lit8 v4, v5, 0x4

    .line 326
    .local v4, margin:I
    if-le v4, v0, :cond_0

    .line 327
    move v0, v4

    goto :goto_0

    .line 331
    .end local v3           #line:Llecho/lib/hellocharts/model/Line;
    .end local v4           #margin:I
    :cond_1
    iget v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-static {v5, v0}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v5

    return v5
.end method

.method private calculateMaxViewport()V
    .locals 8

    .prologue
    const v7, 0x7f7fffff

    const/4 v6, 0x1

    .line 297
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v5, v7, v6, v6, v7}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 298
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v5}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    .line 300
    .local v0, data:Llecho/lib/hellocharts/model/LineChartData;
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/Line;

    .line 302
    .local v3, line:Llecho/lib/hellocharts/model/Line;
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llecho/lib/hellocharts/model/PointValue;

    .line 303
    .local v4, pointValue:Llecho/lib/hellocharts/model/PointValue;
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v5

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v6, v6, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 304
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v6

    iput v6, v5, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 306
    :cond_2
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v5

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v6, v6, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 307
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v6

    iput v6, v5, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 309
    :cond_3
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v5

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v6, v6, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    .line 310
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v6

    iput v6, v5, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 312
    :cond_4
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v5

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v6, v6, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 313
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v6

    iput v6, v5, Llecho/lib/hellocharts/model/Viewport;->top:F

    goto :goto_0

    .line 318
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Llecho/lib/hellocharts/model/Line;
    .end local v4           #pointValue:Llecho/lib/hellocharts/model/PointValue;
    :cond_5
    return-void
.end method

.method private checkIfShouldDrawPoints(Llecho/lib/hellocharts/model/Line;)Z
    .locals 2
    .parameter "line"

    .prologue
    const/4 v0, 0x1

    .line 265
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->hasPoints()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawArea(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V
    .locals 8
    .parameter "canvas"
    .parameter "line"

    .prologue
    .line 612
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    .line 613
    .local v3, lineSize:I
    const/4 v5, 0x2

    if-ge v3, v5, :cond_0

    .line 635
    :goto_0
    return-void

    .line 618
    :cond_0
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v5}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    .line 619
    .local v1, contentRect:Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v7, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->baseValue:F

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v6

    iget v7, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 622
    .local v0, baseRawValue:F
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llecho/lib/hellocharts/model/PointValue;

    invoke-virtual {v5}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v5

    invoke-virtual {v6, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 623
    .local v2, left:F
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v5

    add-int/lit8 v7, v3, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llecho/lib/hellocharts/model/PointValue;

    invoke-virtual {v5}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v5

    invoke-virtual {v6, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 626
    .local v4, right:F
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v4, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 627
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 628
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 630
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 631
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getAreaTransparency()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 632
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getAreaColor()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 633
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 634
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/16 :goto_0
.end method

.method private drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V
    .locals 18
    .parameter "canvas"
    .parameter "line"
    .parameter "pointValue"
    .parameter "rawX"
    .parameter "rawY"
    .parameter "offset"

    .prologue
    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v11

    .line 563
    .local v11, contentRect:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getFormatter()Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    move-object/from16 v0, p3

    invoke-interface {v2, v3, v0}, Llecho/lib/hellocharts/formatter/LineChartValueFormatter;->formatChartValue([CLlecho/lib/hellocharts/model/PointValue;)I

    move-result v6

    .line 564
    .local v6, numChars:I
    if-nez v6, :cond_1

    .line 609
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    move-object/from16 v0, p0

    iget-object v4, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    array-length v4, v4

    sub-int/2addr v4, v6

    invoke-virtual {v2, v3, v4, v6}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v13

    .line 570
    .local v13, labelWidth:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 571
    .local v12, labelHeight:I
    const/high16 v2, 0x4000

    div-float v2, v13, v2

    sub-float v2, p4, v2

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    int-to-float v3, v3

    sub-float v14, v2, v3

    .line 572
    .local v14, left:F
    const/high16 v2, 0x4000

    div-float v2, v13, v2

    add-float v2, v2, p4

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    int-to-float v3, v3

    add-float v15, v2, v3

    .line 577
    .local v15, right:F
    invoke-virtual/range {p3 .. p3}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->baseValue:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_6

    .line 578
    sub-float v2, p5, p6

    int-to-float v3, v12

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v16, v2, v3

    .line 579
    .local v16, top:F
    sub-float v10, p5, p6

    .line 585
    .local v10, bottom:F
    :goto_1
    iget v2, v11, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpg-float v2, v16, v2

    if-gez v2, :cond_2

    .line 586
    add-float v16, p5, p6

    .line 587
    add-float v2, p5, p6

    int-to-float v3, v12

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v10, v2, v3

    .line 589
    :cond_2
    iget v2, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    cmpl-float v2, v10, v2

    if-lez v2, :cond_3

    .line 590
    sub-float v2, p5, p6

    int-to-float v3, v12

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v16, v2, v3

    .line 591
    sub-float v10, p5, p6

    .line 593
    :cond_3
    iget v2, v11, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpg-float v2, v14, v2

    if-gez v2, :cond_4

    .line 594
    move/from16 v14, p4

    .line 595
    add-float v2, p4, v13

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v15, v2, v3

    .line 597
    :cond_4
    iget v2, v11, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpl-float v2, v15, v2

    if-lez v2, :cond_5

    .line 598
    sub-float v2, p4, v13

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v14, v2, v3

    .line 599
    move/from16 v15, p4

    .line 603
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    move/from16 v0, v16

    invoke-virtual {v2, v14, v0, v15, v10}, Landroid/graphics/RectF;->set(FFFF)V

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->getMarkView(Landroid/content/Context;Llecho/lib/hellocharts/model/PointValue;)Landroid/view/View;

    move-result-object v17

    .line 605
    .local v17, view:Landroid/view/View;
    if-eqz v17, :cond_0

    .line 606
    move-object/from16 v0, p0

    iget-object v4, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelBuffer:[C

    array-length v2, v2

    sub-int v5, v2, v6

    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getColor()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getLabelColor()I

    move-result v8

    invoke-static/range {v17 .. v17}, Llecho/lib/hellocharts/util/ChartUtils;->getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawLabelTextAndBackgroundForMarkView(Landroid/graphics/Canvas;[CIIIILandroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 581
    .end local v10           #bottom:F
    .end local v16           #top:F
    .end local v17           #view:Landroid/view/View;
    :cond_6
    add-float v16, p5, p6

    .line 582
    .restart local v16       #top:F
    add-float v2, p5, p6

    int-to-float v3, v12

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelMargin:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float v10, v2, v3

    .restart local v10       #bottom:F
    goto/16 :goto_1
.end method

.method private drawPath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V
    .locals 7
    .parameter "canvas"
    .parameter "line"

    .prologue
    .line 338
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->prepareLinePaint(Llecho/lib/hellocharts/model/Line;)V

    .line 340
    const/4 v4, 0x0

    .line 341
    .local v4, valueIndex:I
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/PointValue;

    .line 343
    .local v1, pointValue:Llecho/lib/hellocharts/model/PointValue;
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v6

    invoke-virtual {v5, v6}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v2

    .line 344
    .local v2, rawX:F
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v6

    invoke-virtual {v5, v6}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v3

    .line 346
    .local v3, rawY:F
    if-nez v4, :cond_0

    .line 347
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 352
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 354
    goto :goto_0

    .line 349
    :cond_0
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 356
    .end local v1           #pointValue:Llecho/lib/hellocharts/model/PointValue;
    .end local v2           #rawX:F
    .end local v3           #rawY:F
    :cond_1
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 358
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->isFilled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 359
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawArea(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    .line 362
    :cond_2
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 363
    return-void
.end method

.method private drawPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V
    .locals 6
    .parameter "canvas"
    .parameter "line"
    .parameter "pointValue"
    .parameter "rawX"
    .parameter "rawY"
    .parameter "pointRadius"

    .prologue
    .line 524
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->SQUARE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 525
    sub-float v1, p4, p6

    sub-float v2, p5, p6

    add-float v3, p4, p6

    add-float v4, p5, p6

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 538
    :goto_0
    return-void

    .line 527
    :cond_0
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p5, p6, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 529
    :cond_1
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->DIAMOND:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 530
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 531
    const/high16 v0, 0x4234

    invoke-virtual {p1, v0, p4, p5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 532
    sub-float v1, p4, p6

    sub-float v2, p5, p6

    add-float v3, p4, p6

    add-float v4, p5, p6

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 534
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 536
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid point shape: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private drawPoints(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;II)V
    .locals 10
    .parameter "canvas"
    .parameter "line"
    .parameter "lineIndex"
    .parameter "mode"

    .prologue
    .line 492
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 493
    const/4 v7, 0x0

    .line 494
    .local v7, valueIndex:I
    iget v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 495
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointIndex:I

    .line 497
    :cond_0
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/PointValue;

    .line 498
    .local v3, pointValue:Llecho/lib/hellocharts/model/PointValue;
    iget v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getPointRadius()I

    move-result v1

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v9

    .line 499
    .local v9, pointRadius:I
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v4

    .line 500
    .local v4, rawX:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v5

    .line 501
    .local v5, rawY:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->checkPrecision:I

    int-to-float v1, v1

    invoke-virtual {v0, v4, v5, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->isWithinContentRect(FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 505
    if-nez p4, :cond_3

    .line 506
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->hasPoints()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    int-to-float v6, v9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V

    .line 509
    :cond_1
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->hasLabels()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointIndex:I

    if-ne v7, v0, :cond_2

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/PointValue;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 510
    iget v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->labelOffset:I

    add-int/2addr v0, v9

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V

    .line 518
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 519
    goto :goto_0

    .line 512
    :cond_3
    const/4 v0, 0x1

    if-ne v0, p4, :cond_4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v6, p3

    .line 513
    invoke-direct/range {v0 .. v7}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->highlightPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFII)V

    goto :goto_1

    .line 515
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot process points in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    .end local v3           #pointValue:Llecho/lib/hellocharts/model/PointValue;
    .end local v4           #rawX:F
    .end local v5           #rawY:F
    .end local v9           #pointRadius:I
    :cond_5
    return-void
.end method

.method private drawSmoothPath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V
    .locals 23
    .parameter "canvas"
    .parameter "line"

    .prologue
    .line 398
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->prepareLinePaint(Llecho/lib/hellocharts/model/Line;)V

    .line 400
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    .line 401
    .local v12, lineSize:I
    const/high16 v15, 0x7fc0

    .line 402
    .local v15, prePreviousPointX:F
    const/high16 v16, 0x7fc0

    .line 403
    .local v16, prePreviousPointY:F
    const/high16 v17, 0x7fc0

    .line 404
    .local v17, previousPointX:F
    const/high16 v18, 0x7fc0

    .line 405
    .local v18, previousPointY:F
    const/high16 v7, 0x7fc0

    .line 406
    .local v7, currentPointX:F
    const/high16 v8, 0x7fc0

    .line 407
    .local v8, currentPointY:F
    const/high16 v13, 0x7fc0

    .line 408
    .local v13, nextPointX:F
    const/high16 v14, 0x7fc0

    .line 410
    .local v14, nextPointY:F
    const/16 v21, 0x0

    .local v21, valueIndex:I
    :goto_0
    move/from16 v0, v21

    if-ge v0, v12, :cond_7

    .line 411
    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v2

    move/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Llecho/lib/hellocharts/model/PointValue;

    .line 413
    .local v11, linePoint:Llecho/lib/hellocharts/model/PointValue;
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v11}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v7

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v11}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v8

    .line 416
    .end local v11           #linePoint:Llecho/lib/hellocharts/model/PointValue;
    :cond_0
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 417
    if-lez v21, :cond_3

    .line 418
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v22, v21, -0x1

    move/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Llecho/lib/hellocharts/model/PointValue;

    .line 419
    .restart local v11       #linePoint:Llecho/lib/hellocharts/model/PointValue;
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v11}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v17

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v11}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v18

    .line 427
    .end local v11           #linePoint:Llecho/lib/hellocharts/model/PointValue;
    :cond_1
    :goto_1
    invoke-static {v15}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 428
    const/4 v2, 0x1

    move/from16 v0, v21

    if-le v0, v2, :cond_4

    .line 429
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v22, v21, -0x2

    move/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Llecho/lib/hellocharts/model/PointValue;

    .line 430
    .restart local v11       #linePoint:Llecho/lib/hellocharts/model/PointValue;
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v11}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v15

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v11}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v16

    .line 439
    .end local v11           #linePoint:Llecho/lib/hellocharts/model/PointValue;
    :cond_2
    :goto_2
    add-int/lit8 v2, v12, -0x1

    move/from16 v0, v21

    if-ge v0, v2, :cond_5

    .line 440
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v22, v21, 0x1

    move/from16 v0, v22

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Llecho/lib/hellocharts/model/PointValue;

    .line 441
    .restart local v11       #linePoint:Llecho/lib/hellocharts/model/PointValue;
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v11}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v13

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v11}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v22

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v14

    .line 448
    .end local v11           #linePoint:Llecho/lib/hellocharts/model/PointValue;
    :goto_3
    if-nez v21, :cond_6

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 467
    :goto_4
    move/from16 v15, v17

    .line 468
    move/from16 v16, v18

    .line 469
    move/from16 v17, v7

    .line 470
    move/from16 v18, v8

    .line 471
    move v7, v13

    .line 472
    move v8, v14

    .line 410
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_0

    .line 422
    :cond_3
    move/from16 v17, v7

    .line 423
    move/from16 v18, v8

    goto :goto_1

    .line 433
    :cond_4
    move/from16 v15, v17

    .line 434
    move/from16 v16, v18

    goto :goto_2

    .line 444
    :cond_5
    move v13, v7

    .line 445
    move v14, v8

    goto :goto_3

    .line 453
    :cond_6
    sub-float v9, v7, v15

    .line 454
    .local v9, firstDiffX:F
    sub-float v10, v8, v16

    .line 455
    .local v10, firstDiffY:F
    sub-float v19, v13, v17

    .line 456
    .local v19, secondDiffX:F
    sub-float v20, v14, v18

    .line 457
    .local v20, secondDiffY:F
    const v2, 0x3e23d70a

    mul-float/2addr v2, v9

    add-float v3, v17, v2

    .line 458
    .local v3, firstControlPointX:F
    const v2, 0x3e23d70a

    mul-float/2addr v2, v10

    add-float v4, v18, v2

    .line 459
    .local v4, firstControlPointY:F
    const v2, 0x3e23d70a

    mul-float v2, v2, v19

    sub-float v5, v7, v2

    .line 460
    .local v5, secondControlPointX:F
    const v2, 0x3e23d70a

    mul-float v2, v2, v20

    sub-float v6, v8, v2

    .line 461
    .local v6, secondControlPointY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_4

    .line 475
    .end local v3           #firstControlPointX:F
    .end local v4           #firstControlPointY:F
    .end local v5           #secondControlPointX:F
    .end local v6           #secondControlPointY:F
    .end local v9           #firstDiffX:F
    .end local v10           #firstDiffY:F
    .end local v19           #secondDiffX:F
    .end local v20           #secondDiffY:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v0, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 476
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Line;->isFilled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 477
    invoke-direct/range {p0 .. p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawArea(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    .line 479
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 480
    return-void
.end method

.method private drawSquarePath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V
    .locals 8
    .parameter "canvas"
    .parameter "line"

    .prologue
    .line 366
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->prepareLinePaint(Llecho/lib/hellocharts/model/Line;)V

    .line 368
    const/4 v5, 0x0

    .line 369
    .local v5, valueIndex:I
    const/4 v2, 0x0

    .line 370
    .local v2, previousRawY:F
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/PointValue;

    .line 372
    .local v1, pointValue:Llecho/lib/hellocharts/model/PointValue;
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v7

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v3

    .line 373
    .local v3, rawX:F
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v7

    invoke-virtual {v6, v7}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v4

    .line 375
    .local v4, rawY:F
    if-nez v5, :cond_0

    .line 376
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 382
    :goto_1
    move v2, v4

    .line 384
    add-int/lit8 v5, v5, 0x1

    .line 386
    goto :goto_0

    .line 378
    :cond_0
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 379
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v6, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 388
    .end local v1           #pointValue:Llecho/lib/hellocharts/model/PointValue;
    .end local v3           #rawX:F
    .end local v4           #rawY:F
    :cond_1
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    iget-object v7, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 390
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->isFilled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 391
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawArea(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    .line 394
    :cond_2
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->path:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 395
    return-void
.end method

.method private drawTargetWeightPath(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "drawCanvas"

    .prologue
    .line 196
    const/4 v5, 0x0

    .local v5, currentLeft:F
    const/4 v6, 0x0

    .line 197
    .local v6, currentRight:F
    move-object/from16 v0, p0

    iget v14, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->targetWeight:F

    .line 199
    .local v14, target:F
    move-object/from16 v0, p0

    iget v0, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    move/from16 v20, v0

    const/16 v21, 0x2

    invoke-static/range {v20 .. v21}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v20

    move/from16 v0, v20

    int-to-float v13, v0

    .line 200
    .local v13, rectPadding:F
    invoke-direct/range {p0 .. p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->prepareWeightLinePaint()V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v7

    .line 203
    .local v7, currentViewport:Llecho/lib/hellocharts/model/Viewport;
    if-eqz v7, :cond_0

    .line 204
    iget v5, v7, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 205
    iget v6, v7, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 207
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v10

    .line 208
    .local v10, rawX1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v11

    .line 209
    .local v11, rawX2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v19

    .line 211
    .local v19, y:F
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    .line 212
    .local v9, path1:Landroid/graphics/Path;
    move/from16 v0, v19

    invoke-virtual {v9, v10, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 213
    move/from16 v0, v19

    invoke-virtual {v9, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v9, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 216
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "\u76ee\u6807: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "kg"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 217
    .local v15, targetStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightStrPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    .line 218
    .local v16, textWidth:F
    add-float v20, v10, v11

    const/high16 v21, 0x4000

    div-float v8, v20, v21

    .line 219
    .local v8, middleX:F
    const/high16 v20, 0x4000

    div-float v20, v16, v20

    sub-float v17, v8, v20

    .line 220
    .local v17, textX:F
    invoke-direct/range {p0 .. p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->getTextHeight()F

    move-result v20

    const/high16 v21, 0x4080

    div-float v20, v20, v21

    add-float v18, v19, v20

    .line 222
    .local v18, textY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    new-instance v12, Landroid/graphics/RectF;

    sub-float v20, v17, v13

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-direct/range {p0 .. p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->getTextHeight()F

    move-result v21

    const/high16 v22, 0x4000

    div-float v21, v21, v22

    sub-float v21, v19, v21

    sub-float v21, v21, v13

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v22, v17, v16

    add-float v22, v22, v13

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-direct/range {p0 .. p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->getTextHeight()F

    move-result v23

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v23, v23, v19

    add-float v23, v23, v13

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-direct {v12, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 225
    .local v12, rect:Landroid/graphics/RectF;
    move-object/from16 v0, p0

    iget v0, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    move/from16 v20, v0

    const/16 v21, 0x3

    invoke-static/range {v20 .. v21}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v20

    move/from16 v0, v20

    int-to-float v4, v0

    .line 226
    .local v4, corner:F
    move-object/from16 v0, p0

    iget-object v0, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v12, v4, v4, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightStrPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v20

    invoke-virtual {v0, v15, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 230
    return-void
.end method

.method private getTextHeight()F
    .locals 4

    .prologue
    .line 238
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightStrPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 239
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v1, v2

    const/high16 v2, 0x4000

    add-float/2addr v1, v2

    return v1
.end method

.method private highlightPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFII)V
    .locals 8
    .parameter "canvas"
    .parameter "line"
    .parameter "pointValue"
    .parameter "rawX"
    .parameter "rawY"
    .parameter "lineIndex"
    .parameter "valueIndex"

    .prologue
    .line 548
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v0

    if-ne v0, p6, :cond_0

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v0

    if-ne v0, p7, :cond_0

    .line 549
    iget v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getPointRadius()I

    move-result v1

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v7

    .line 550
    .local v7, pointRadius:I
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->getDarkenColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 551
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Line;->hasPoints()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 552
    iget v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->touchToleranceMargin:I

    add-int/2addr v0, v7

    int-to-float v6, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPoint(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;Llecho/lib/hellocharts/model/PointValue;FFF)V

    .line 559
    .end local v7           #pointRadius:I
    :cond_0
    return-void
.end method

.method private highlightPoints(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 541
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v1

    .line 542
    .local v1, lineIndex:I
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v2}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v2

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/Line;

    .line 543
    .local v0, line:Llecho/lib/hellocharts/model/Line;
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPoints(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;II)V

    .line 544
    return-void
.end method

.method private isInArea(FFFFF)Z
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "touchX"
    .parameter "touchY"
    .parameter "radius"

    .prologue
    const-wide/high16 v6, 0x4000

    .line 638
    sub-float v0, p3, p1

    .line 639
    .local v0, diffX:F
    sub-float v1, p4, p2

    .line 640
    .local v1, diffY:F
    float-to-double v2, v0

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    float-to-double v4, v1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    float-to-double v4, p5

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private prepareLinePaint(Llecho/lib/hellocharts/model/Line;)V
    .locals 3
    .parameter "line"

    .prologue
    .line 483
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->getStrokeWidth()F

    move-result v2

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FF)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 484
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 485
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->linePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Line;->getPathEffect()Landroid/graphics/PathEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 486
    return-void
.end method

.method private prepareWeightLinePaint()V
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 234
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->weightLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/4 v2, 0x1

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 235
    return-void
.end method


# virtual methods
.method public checkTouch(FF)Z
    .locals 21
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 271
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v2}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v11

    .line 272
    .local v11, data:Llecho/lib/hellocharts/model/LineChartData;
    const/16 v17, 0x0

    .line 273
    .local v17, lineIndex:I
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->lineChartView:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v2}, Llecho/lib/hellocharts/view/LineChartView;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, p0

    iget v5, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/16 v6, 0x1e

    invoke-static {v5, v6}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v5

    sub-int/2addr v2, v5

    int-to-float v14, v2

    .line 274
    .local v14, imageValueY:F
    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual {v11}, Llecho/lib/hellocharts/model/LineChartData;->getImgRadius()F

    move-result v5

    invoke-static {v2, v5}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FF)I

    move-result v2

    add-int/lit8 v15, v2, 0xa

    .line 275
    .local v15, imgRadius:I
    invoke-virtual {v11}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Llecho/lib/hellocharts/model/Line;

    .line 276
    .local v16, line:Llecho/lib/hellocharts/model/Line;
    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    invoke-virtual/range {v16 .. v16}, Llecho/lib/hellocharts/model/Line;->getPointRadius()I

    move-result v5

    invoke-static {v2, v5}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v18

    .line 277
    .local v18, pointRadius:I
    const/16 v20, 0x0

    .line 278
    .local v20, valueIndex:I
    invoke-virtual/range {v16 .. v16}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Llecho/lib/hellocharts/model/PointValue;

    .line 279
    .local v19, pointValue:Llecho/lib/hellocharts/model/PointValue;
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual/range {v19 .. v19}, Llecho/lib/hellocharts/model/PointValue;->getX()F

    move-result v5

    invoke-virtual {v2, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v3

    .line 280
    .local v3, rawValueX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual/range {v19 .. v19}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v5

    invoke-virtual {v2, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v4

    .line 281
    .local v4, rawValueY:F
    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->touchToleranceMargin:I

    add-int v2, v2, v18

    int-to-float v7, v2

    move-object/from16 v2, p0

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isInArea(FFFFF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 282
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointIndex:I

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    sget-object v5, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->LINE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    const/4 v6, 0x0

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1, v5, v6}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;I)V

    .line 289
    :cond_0
    :goto_2
    add-int/lit8 v20, v20, 0x1

    .line 290
    goto :goto_1

    .line 284
    :cond_1
    int-to-float v10, v15

    move-object/from16 v5, p0

    move v6, v3

    move v7, v14

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v5 .. v10}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isInArea(FFFFF)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    sget-object v5, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->LINE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    const/4 v6, 0x1

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1, v5, v6}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;I)V

    goto :goto_2

    .line 286
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/16 v5, 0x28

    invoke-static {v2, v5}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v2

    int-to-float v2, v2

    sub-float v7, v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->density:F

    const/16 v5, 0x28

    invoke-static {v2, v5}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v2

    int-to-float v10, v2

    move-object/from16 v5, p0

    move v6, v3

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-direct/range {v5 .. v10}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isInArea(FFFFF)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointIndex:I

    move/from16 v0, v20

    if-ne v2, v0, :cond_0

    .line 287
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    sget-object v5, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->LINE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    const/4 v6, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1, v5, v6}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;I)V

    goto :goto_2

    .line 291
    .end local v3           #rawValueX:F
    .end local v4           #rawValueY:F
    .end local v19           #pointValue:Llecho/lib/hellocharts/model/PointValue;
    :cond_3
    add-int/lit8 v17, v17, 0x1

    .line 292
    goto/16 :goto_0

    .line 293
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v16           #line:Llecho/lib/hellocharts/model/Line;
    .end local v18           #pointRadius:I
    .end local v20           #valueIndex:I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isTouched()Z

    move-result v2

    return v2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v6, 0x0

    .line 158
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v4}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    .line 164
    .local v0, data:Llecho/lib/hellocharts/model/LineChartData;
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 165
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareCanvas:Landroid/graphics/Canvas;

    .line 166
    .local v1, drawCanvas:Landroid/graphics/Canvas;
    const/4 v4, 0x0

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 173
    :goto_0
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->lineChartView:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v4}, Llecho/lib/hellocharts/view/LineChartView;->getTargetWeight()F

    move-result v4

    iput v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->targetWeight:F

    .line 174
    iget v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->targetWeight:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_0

    .line 175
    invoke-direct {p0, v1}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawTargetWeightPath(Landroid/graphics/Canvas;)V

    .line 178
    :cond_0
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/Line;

    .line 179
    .local v3, line:Llecho/lib/hellocharts/model/Line;
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Line;->hasLines()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 180
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Line;->isCubic()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    invoke-direct {p0, v1, v3}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawSmoothPath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    goto :goto_1

    .line 168
    .end local v1           #drawCanvas:Landroid/graphics/Canvas;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #line:Llecho/lib/hellocharts/model/Line;
    :cond_2
    move-object v1, p1

    .restart local v1       #drawCanvas:Landroid/graphics/Canvas;
    goto :goto_0

    .line 182
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #line:Llecho/lib/hellocharts/model/Line;
    :cond_3
    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Line;->isSquare()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 183
    invoke-direct {p0, v1, v3}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawSquarePath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    goto :goto_1

    .line 185
    :cond_4
    invoke-direct {p0, v1, v3}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPath(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;)V

    goto :goto_1

    .line 190
    .end local v3           #line:Llecho/lib/hellocharts/model/Line;
    :cond_5
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_6

    .line 191
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    :cond_6
    return-void
.end method

.method public drawUnclipped(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 244
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v4}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    .line 245
    .local v0, data:Llecho/lib/hellocharts/model/LineChartData;
    const/4 v3, 0x0

    .line 246
    .local v3, lineIndex:I
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Line;

    .line 251
    .local v2, line:Llecho/lib/hellocharts/model/Line;
    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v3, v4}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawPoints(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Line;II)V

    .line 252
    add-int/lit8 v3, v3, 0x1

    .line 253
    goto :goto_0

    .line 258
    .end local v2           #line:Llecho/lib/hellocharts/model/Line;
    :cond_0
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isTouched()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/SelectedValue;->getSelectedType()I

    move-result v4

    if-nez v4, :cond_1

    .line 260
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->highlightPoints(Landroid/graphics/Canvas;)V

    .line 262
    :cond_1
    return-void
.end method

.method public getMarkView(Landroid/content/Context;Llecho/lib/hellocharts/model/PointValue;)Landroid/view/View;
    .locals 7
    .parameter "context"
    .parameter "pointValue"

    .prologue
    .line 650
    const-string v0, ""

    .line 651
    .local v0, record_on:Ljava/lang/String;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Llecho/lib/hellocharts/R$layout;->view_mark_weight:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 652
    .local v3, view:Landroid/view/View;
    sget v4, Llecho/lib/hellocharts/R$id;->txt_value:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 653
    .local v2, txt_value:Landroid/widget/TextView;
    sget v4, Llecho/lib/hellocharts/R$id;->txt_date:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 654
    .local v1, txt_date:Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/PointValue;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->lineChartView:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v4}, Llecho/lib/hellocharts/view/LineChartView;->getUnit()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/PointValue;->getData()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 656
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/PointValue;->getData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    const-string v4, "yyyy-MM-dd"

    invoke-static {v0, v4}, Llecho/lib/hellocharts/util/DateUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    const-string v5, "M\u6708d\u65e5"

    invoke-static {v4, v5}, Llecho/lib/hellocharts/util/DateUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    :cond_0
    return-object v3

    .line 654
    :cond_1
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->lineChartView:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v4}, Llecho/lib/hellocharts/view/LineChartView;->getUnit()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public onChartDataChanged()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->onChartDataChanged()V

    .line 139
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->calculateContentRectInternalMargin()I

    move-result v0

    .line 140
    .local v0, internalMargin:I
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1, v0, v0, v0, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRectByInternalMargins(IIII)V

    .line 142
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-interface {v1}, Llecho/lib/hellocharts/provider/LineChartDataProvider;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/LineChartData;->getBaseValue()F

    move-result v1

    iput v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->baseValue:F

    .line 144
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->onChartViewportChanged()V

    .line 145
    return-void
.end method

.method public onChartSizeChanged()V
    .locals 4

    .prologue
    .line 126
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->calculateContentRectInternalMargin()I

    move-result v0

    .line 127
    .local v0, internalMargin:I
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1, v0, v0, v0, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRectByInternalMargins(IIII)V

    .line 129
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartWidth()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 130
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartWidth()I

    move-result v1

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    .line 132
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareCanvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 134
    :cond_0
    return-void
.end method

.method public onChartViewportChanged()V
    .locals 2

    .prologue
    .line 149
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->isViewportCalculationEnabled:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->calculateMaxViewport()V

    .line 151
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 152
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 154
    :cond_0
    return-void
.end method

.method public resetPointIndex()V
    .locals 1

    .prologue
    .line 666
    const/4 v0, -0x1

    iput v0, p0, Llecho/lib/hellocharts/renderer/LineChartRenderer;->pointIndex:I

    .line 667
    return-void
.end method
