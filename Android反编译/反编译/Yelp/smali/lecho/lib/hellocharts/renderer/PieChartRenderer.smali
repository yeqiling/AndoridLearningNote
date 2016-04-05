.class public Llecho/lib/hellocharts/renderer/PieChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "PieChartRenderer.java"


# static fields
.field private static final DEFAULT_LABEL_INSIDE_RADIUS_FACTOR:F = 0.7f

.field private static final DEFAULT_LABEL_OUTSIDE_RADIUS_FACTOR:F = 1.0f

.field private static final DEFAULT_START_ROTATION:I = 0x2d

.field private static final DEFAULT_TOUCH_ADDITIONAL_DP:I = 0x8

.field private static final MAX_WIDTH_HEIGHT:F = 100.0f

.field private static final MODE_DRAW:I = 0x0

.field private static final MODE_HIGHLIGHT:I = 0x1


# instance fields
.field private centerCirclePaint:Landroid/graphics/Paint;

.field private centerCircleScale:F

.field private centerCircleText1FontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private centerCircleText1Paint:Landroid/graphics/Paint;

.field private centerCircleText2FontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private centerCircleText2Paint:Landroid/graphics/Paint;

.field private circleFillRatio:F

.field private dataProvider:Llecho/lib/hellocharts/provider/PieChartDataProvider;

.field private drawCircleOval:Landroid/graphics/RectF;

.field private hasCenterCircle:Z

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private hasLabelsOutside:Z

.field private maxSum:F

.field private originCircleOval:Landroid/graphics/RectF;

.field private rotation:I

.field private separationLinesPaint:Landroid/graphics/Paint;

.field private slicePaint:Landroid/graphics/Paint;

.field private sliceVector:Landroid/graphics/PointF;

.field private softwareBitmap:Landroid/graphics/Bitmap;

.field private softwareCanvas:Landroid/graphics/Canvas;

.field private tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

.field private touchAdditional:I

.field private valueFormatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/PieChartDataProvider;)V
    .locals 4
    .parameter "context"
    .parameter "chart"
    .parameter "dataProvider"

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    .line 39
    const/16 v0, 0x2d

    iput v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->rotation:I

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->slicePaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawCircleOval:Landroid/graphics/RectF;

    .line 45
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    .line 47
    const/high16 v0, 0x3f80

    iput v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->circleFillRatio:F

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCirclePaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText1Paint:Landroid/graphics/Paint;

    .line 55
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText1FontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText2Paint:Landroid/graphics/Paint;

    .line 58
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText2FontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->separationLinesPaint:Landroid/graphics/Paint;

    .line 66
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 69
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->softwareCanvas:Landroid/graphics/Canvas;

    .line 73
    iput-object p3, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/PieChartDataProvider;

    .line 74
    iget v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->density:F

    const/16 v1, 0x8

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->touchAdditional:I

    .line 76
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->slicePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->slicePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCirclePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCirclePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 83
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText1Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText1Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 86
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText2Paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText2Paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 89
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->separationLinesPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 90
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->separationLinesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->separationLinesPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 92
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->separationLinesPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 93
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->separationLinesPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    return-void
.end method

.method private calculateCircleOval()V
    .locals 12

    .prologue
    const/high16 v11, 0x4000

    .line 422
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v9}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v4

    .line 423
    .local v4, contentRect:Landroid/graphics/Rect;
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v11

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 424
    .local v3, circleRadius:F
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v1, v9

    .line 425
    .local v1, centerX:F
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v9

    int-to-float v2, v9

    .line 426
    .local v2, centerY:F
    sub-float v9, v1, v3

    iget v10, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->touchAdditional:I

    int-to-float v10, v10

    add-float v6, v9, v10

    .line 427
    .local v6, left:F
    sub-float v9, v2, v3

    iget v10, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->touchAdditional:I

    int-to-float v10, v10

    add-float v8, v9, v10

    .line 428
    .local v8, top:F
    add-float v9, v1, v3

    iget v10, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->touchAdditional:I

    int-to-float v10, v10

    sub-float v7, v9, v10

    .line 429
    .local v7, right:F
    add-float v9, v2, v3

    iget v10, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->touchAdditional:I

    int-to-float v10, v10

    sub-float v0, v9, v10

    .line 430
    .local v0, bottom:F
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v9, v6, v8, v7, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 431
    const/high16 v9, 0x3f00

    iget-object v10, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f80

    iget v11, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->circleFillRatio:F

    sub-float/2addr v10, v11

    mul-float v5, v9, v10

    .line 432
    .local v5, inest:F
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v9, v5, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 433
    return-void
.end method

.method private calculateMaxViewport()V
    .locals 5

    .prologue
    const/high16 v4, 0x42c8

    const/4 v3, 0x0

    .line 440
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v2, v3, v4, v4, v3}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 441
    iput v3, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->maxSum:F

    .line 442
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/PieChartDataProvider;

    invoke-interface {v2}, Llecho/lib/hellocharts/provider/PieChartDataProvider;->getPieChartData()Llecho/lib/hellocharts/model/PieChartData;

    move-result-object v2

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PieChartData;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SliceValue;

    .line 443
    .local v1, sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    iget v2, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->maxSum:F

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SliceValue;->getValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->maxSum:F

    goto :goto_0

    .line 445
    .end local v1           #sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    :cond_0
    return-void
.end method

.method private drawCenterCircle(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 211
    iget-object v7, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/PieChartDataProvider;

    invoke-interface {v7}, Llecho/lib/hellocharts/provider/PieChartDataProvider;->getPieChartData()Llecho/lib/hellocharts/model/PieChartData;

    move-result-object v4

    .line 212
    .local v4, data:Llecho/lib/hellocharts/model/PieChartData;
    iget-object v7, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    const/high16 v8, 0x4000

    div-float v3, v7, v8

    .line 213
    .local v3, circleRadius:F
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PieChartData;->getCenterCircleScale()F

    move-result v7

    mul-float v0, v3, v7

    .line 214
    .local v0, centerRadius:F
    iget-object v7, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    .line 215
    .local v1, centerX:F
    iget-object v7, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    .line 217
    .local v2, centerY:F
    iget-object v7, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 220
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PieChartData;->getCenterText1()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 222
    iget-object v7, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText1FontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v5

    .line 224
    .local v5, text1Height:I
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PieChartData;->getCenterText2()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 226
    iget-object v7, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText2FontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 227
    .local v6, text2Height:I
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PieChartData;->getCenterText1()Ljava/lang/String;

    move-result-object v7

    int-to-float v8, v5

    const v9, 0x3e4ccccd

    mul-float/2addr v8, v9

    sub-float v8, v2, v8

    iget-object v9, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText1Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v1, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 228
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PieChartData;->getCenterText2()Ljava/lang/String;

    move-result-object v7

    int-to-float v8, v6

    add-float/2addr v8, v2

    iget-object v9, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText2Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v1, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 233
    .end local v5           #text1Height:I
    .end local v6           #text2Height:I
    :cond_0
    :goto_0
    return-void

    .line 230
    .restart local v5       #text1Height:I
    :cond_1
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/PieChartData;->getCenterText1()Ljava/lang/String;

    move-result-object v7

    div-int/lit8 v8, v5, 0x4

    int-to-float v8, v8

    add-float/2addr v8, v2

    iget-object v9, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText1Paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v1, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/SliceValue;FF)V
    .locals 20
    .parameter "canvas"
    .parameter "sliceValue"
    .parameter "lastAngle"
    .parameter "angle"

    .prologue
    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    const/high16 v3, 0x4000

    div-float v3, p4, v3

    add-float v3, v3, p3

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v3, v4

    const/high16 v4, 0x4000

    div-float v4, p4, v4

    add-float v4, v4, p3

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 333
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->normalizeVector(Landroid/graphics/PointF;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->valueFormatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelBuffer:[C

    move-object/from16 v0, p2

    invoke-interface {v2, v3, v0}, Llecho/lib/hellocharts/formatter/PieChartValueFormatter;->formatChartValue([CLlecho/lib/hellocharts/model/SliceValue;)I

    move-result v6

    .line 337
    .local v6, numChars:I
    if-nez v6, :cond_0

    .line 396
    :goto_0
    return-void

    .line 342
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelBuffer:[C

    move-object/from16 v0, p0

    iget-object v4, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelBuffer:[C

    array-length v4, v4

    sub-int/2addr v4, v6

    invoke-virtual {v2, v3, v4, v6}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v14

    .line 343
    .local v14, labelWidth:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 345
    .local v12, labelHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v9

    .line 346
    .local v9, centerX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    .line 347
    .local v10, centerY:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x4000

    div-float v11, v2, v3

    .line 350
    .local v11, circleRadius:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->hasLabelsOutside:Z

    if-eqz v2, :cond_1

    .line 351
    const/high16 v2, 0x3f80

    mul-float v13, v11, v2

    .line 360
    .local v13, labelRadius:F
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v13

    add-float v16, v2, v9

    .line 361
    .local v16, rawX:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v13

    add-float v17, v2, v10

    .line 368
    .local v17, rawY:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->hasLabelsOutside:Z

    if-eqz v2, :cond_5

    .line 369
    cmpl-float v2, v16, v9

    if-lez v2, :cond_3

    .line 371
    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelMargin:I

    int-to-float v2, v2

    add-float v15, v16, v2

    .line 372
    .local v15, left:F
    add-float v2, v16, v14

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelMargin:I

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    add-float v18, v2, v3

    .line 378
    .local v18, right:F
    :goto_2
    cmpl-float v2, v17, v10

    if-lez v2, :cond_4

    .line 380
    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelMargin:I

    int-to-float v2, v2

    add-float v19, v17, v2

    .line 381
    .local v19, top:F
    int-to-float v2, v12

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelMargin:I

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    add-float v8, v2, v3

    .line 393
    .local v8, bottom:F
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v2, v15, v0, v1, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 394
    move-object/from16 v0, p0

    iget-object v4, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelBuffer:[C

    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelBuffer:[C

    array-length v2, v2

    sub-int v5, v2, v6

    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/SliceValue;->getDarkenColor()I

    move-result v7

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawLabelTextAndBackground(Landroid/graphics/Canvas;[CIII)V

    goto/16 :goto_0

    .line 353
    .end local v8           #bottom:F
    .end local v13           #labelRadius:F
    .end local v15           #left:F
    .end local v16           #rawX:F
    .end local v17           #rawY:F
    .end local v18           #right:F
    .end local v19           #top:F
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->hasCenterCircle:Z

    if-eqz v2, :cond_2

    .line 354
    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleScale:F

    mul-float/2addr v2, v11

    sub-float v2, v11, v2

    const/high16 v3, 0x4000

    div-float/2addr v2, v3

    sub-float v13, v11, v2

    .restart local v13       #labelRadius:F
    goto :goto_1

    .line 356
    .end local v13           #labelRadius:F
    :cond_2
    const v2, 0x3f333333

    mul-float v13, v11, v2

    .restart local v13       #labelRadius:F
    goto :goto_1

    .line 374
    .restart local v16       #rawX:F
    .restart local v17       #rawY:F
    :cond_3
    sub-float v2, v16, v14

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelMargin:I

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    sub-float v15, v2, v3

    .line 375
    .restart local v15       #left:F
    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelMargin:I

    int-to-float v2, v2

    sub-float v18, v16, v2

    .restart local v18       #right:F
    goto :goto_2

    .line 383
    :cond_4
    int-to-float v2, v12

    sub-float v2, v17, v2

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelMargin:I

    mul-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    sub-float v19, v2, v3

    .line 384
    .restart local v19       #top:F
    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelMargin:I

    int-to-float v2, v2

    sub-float v8, v17, v2

    .restart local v8       #bottom:F
    goto :goto_3

    .line 387
    .end local v8           #bottom:F
    .end local v15           #left:F
    .end local v18           #right:F
    .end local v19           #top:F
    :cond_5
    const/high16 v2, 0x4000

    div-float v2, v14, v2

    sub-float v2, v16, v2

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelMargin:I

    int-to-float v3, v3

    sub-float v15, v2, v3

    .line 388
    .restart local v15       #left:F
    const/high16 v2, 0x4000

    div-float v2, v14, v2

    add-float v2, v2, v16

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelMargin:I

    int-to-float v3, v3

    add-float v18, v2, v3

    .line 389
    .restart local v18       #right:F
    div-int/lit8 v2, v12, 0x2

    int-to-float v2, v2

    sub-float v2, v17, v2

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelMargin:I

    int-to-float v3, v3

    sub-float v19, v2, v3

    .line 390
    .restart local v19       #top:F
    div-int/lit8 v2, v12, 0x2

    int-to-float v2, v2

    add-float v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->labelMargin:I

    int-to-float v3, v3

    add-float v8, v2, v3

    .restart local v8       #bottom:F
    goto/16 :goto_3
.end method

.method private drawSeparationLines(Landroid/graphics/Canvas;)V
    .locals 18
    .parameter "canvas"

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/PieChartDataProvider;

    invoke-interface {v2}, Llecho/lib/hellocharts/provider/PieChartDataProvider;->getPieChartData()Llecho/lib/hellocharts/model/PieChartData;

    move-result-object v10

    .line 261
    .local v10, data:Llecho/lib/hellocharts/model/PieChartData;
    invoke-virtual {v10}, Llecho/lib/hellocharts/model/PieChartData;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    .line 288
    :cond_0
    return-void

    .line 265
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->density:F

    invoke-virtual {v10}, Llecho/lib/hellocharts/model/PieChartData;->getSlicesSpacing()I

    move-result v3

    invoke-static {v2, v3}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v14

    .line 266
    .local v14, sliceSpacing:I
    const/4 v2, 0x1

    if-lt v14, v2, :cond_0

    .line 270
    const/high16 v2, 0x43b4

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->maxSum:F

    div-float v13, v2, v3

    .line 271
    .local v13, sliceScale:F
    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->rotation:I

    int-to-float v12, v2

    .line 272
    .local v12, lastAngle:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x4000

    div-float v9, v2, v3

    .line 273
    .local v9, circleRadius:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->separationLinesPaint:Landroid/graphics/Paint;

    int-to-float v3, v14

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 274
    invoke-virtual {v10}, Llecho/lib/hellocharts/model/PieChartData;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Llecho/lib/hellocharts/model/SliceValue;

    .line 275
    .local v15, sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    invoke-virtual {v15}, Llecho/lib/hellocharts/model/SliceValue;->getValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    mul-float v8, v2, v13

    .line 277
    .local v8, angle:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    float-to-double v0, v12

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v3, v0

    float-to-double v0, v12

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->normalizeVector(Landroid/graphics/PointF;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->touchAdditional:I

    int-to-float v3, v3

    add-float/2addr v3, v9

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    add-float v5, v2, v3

    .line 282
    .local v5, x1:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->touchAdditional:I

    int-to-float v3, v3

    add-float/2addr v3, v9

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    add-float v6, v2, v3

    .line 284
    .local v6, y1:F
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    move-object/from16 v0, p0

    iget-object v7, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->separationLinesPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 286
    add-float/2addr v12, v8

    .line 287
    goto/16 :goto_0
.end method

.method private drawSlice(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/SliceValue;FFI)V
    .locals 6
    .parameter "canvas"
    .parameter "sliceValue"
    .parameter "lastAngle"
    .parameter "angle"
    .parameter "mode"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x1

    .line 315
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    div-float v1, p4, v5

    add-float/2addr v1, p3

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v1, v2

    div-float v2, p4, v5

    add-float/2addr v2, p3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 317
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    invoke-direct {p0, v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->normalizeVector(Landroid/graphics/PointF;)V

    .line 318
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawCircleOval:Landroid/graphics/RectF;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 319
    if-ne v4, p5, :cond_0

    .line 321
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawCircleOval:Landroid/graphics/RectF;

    iget v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->touchAdditional:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->touchAdditional:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 322
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->slicePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/SliceValue;->getDarkenColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 323
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawCircleOval:Landroid/graphics/RectF;

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->slicePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 328
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->slicePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/SliceValue;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawCircleOval:Landroid/graphics/RectF;

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->slicePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private drawSlices(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 243
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/PieChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/PieChartDataProvider;->getPieChartData()Llecho/lib/hellocharts/model/PieChartData;

    move-result-object v6

    .line 244
    .local v6, data:Llecho/lib/hellocharts/model/PieChartData;
    const/high16 v0, 0x43b4

    iget v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->maxSum:F

    div-float v9, v0, v1

    .line 245
    .local v9, sliceScale:F
    iget v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->rotation:I

    int-to-float v3, v0

    .line 246
    .local v3, lastAngle:F
    const/4 v8, 0x0

    .line 247
    .local v8, sliceIndex:I
    invoke-virtual {v6}, Llecho/lib/hellocharts/model/PieChartData;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/SliceValue;

    .line 248
    .local v2, sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    invoke-virtual {v2}, Llecho/lib/hellocharts/model/SliceValue;->getValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    mul-float v4, v0, v9

    .line 249
    .local v4, angle:F
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v0

    if-ne v0, v8, :cond_0

    .line 250
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawSlice(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/SliceValue;FFI)V

    .line 254
    :goto_1
    add-float/2addr v3, v4

    .line 255
    add-int/lit8 v8, v8, 0x1

    .line 256
    goto :goto_0

    .line 252
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawSlice(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/SliceValue;FFI)V

    goto :goto_1

    .line 257
    .end local v2           #sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    .end local v4           #angle:F
    :cond_1
    return-void
.end method

.method private normalizeVector(Landroid/graphics/PointF;)V
    .locals 3
    .parameter "point"

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/graphics/PointF;->length()F

    move-result v0

    .line 400
    .local v0, abs:F
    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iget v2, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 401
    return-void
.end method

.method private pointToAngle(FFFF)F
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/high16 v10, 0x43b4

    .line 407
    sub-float v1, p1, p3

    float-to-double v2, v1

    .line 408
    .local v2, diffX:D
    sub-float v1, p2, p4

    float-to-double v4, v1

    .line 410
    .local v4, diffY:D
    neg-double v8, v2

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    .line 412
    .local v6, radian:D
    invoke-static {v6, v7}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v1, v8

    add-float/2addr v1, v10

    rem-float v0, v1, v10

    .line 414
    .local v0, angle:F
    const/high16 v1, 0x42b4

    add-float/2addr v0, v1

    .line 415
    return v0
.end method


# virtual methods
.method public checkTouch(FF)Z
    .locals 17
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 173
    move-object/from16 v0, p0

    iget-object v14, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v14}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 174
    move-object/from16 v0, p0

    iget-object v14, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/PieChartDataProvider;

    invoke-interface {v14}, Llecho/lib/hellocharts/provider/PieChartDataProvider;->getPieChartData()Llecho/lib/hellocharts/model/PieChartData;

    move-result-object v7

    .line 175
    .local v7, data:Llecho/lib/hellocharts/model/PieChartData;
    move-object/from16 v0, p0

    iget-object v14, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    .line 176
    .local v4, centerX:F
    move-object/from16 v0, p0

    iget-object v14, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    .line 177
    .local v5, centerY:F
    move-object/from16 v0, p0

    iget-object v14, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    const/high16 v15, 0x4000

    div-float v6, v14, v15

    .line 179
    .local v6, circleRadius:F
    move-object/from16 v0, p0

    iget-object v14, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    sub-float v15, p1, v4

    sub-float v16, p2, v5

    invoke-virtual/range {v14 .. v16}, Landroid/graphics/PointF;->set(FF)V

    .line 181
    move-object/from16 v0, p0

    iget-object v14, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    invoke-virtual {v14}, Landroid/graphics/PointF;->length()F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->touchAdditional:I

    int-to-float v15, v15

    add-float/2addr v15, v6

    cmpl-float v14, v14, v15

    if-lez v14, :cond_0

    .line 182
    const/4 v14, 0x0

    .line 204
    :goto_0
    return v14

    .line 185
    :cond_0
    invoke-virtual {v7}, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->sliceVector:Landroid/graphics/PointF;

    invoke-virtual {v14}, Landroid/graphics/PointF;->length()F

    move-result v14

    invoke-virtual {v7}, Llecho/lib/hellocharts/model/PieChartData;->getCenterCircleScale()F

    move-result v15

    mul-float/2addr v15, v6

    cmpg-float v14, v14, v15

    if-gez v14, :cond_1

    .line 186
    const/4 v14, 0x0

    goto :goto_0

    .line 192
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v5}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->pointToAngle(FFFF)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->rotation:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    const/high16 v15, 0x43b4

    add-float/2addr v14, v15

    const/high16 v15, 0x43b4

    rem-float v13, v14, v15

    .line 193
    .local v13, touchAngle:F
    const/high16 v14, 0x43b4

    move-object/from16 v0, p0

    iget v15, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->maxSum:F

    div-float v11, v14, v15

    .line 194
    .local v11, sliceScale:F
    const/4 v9, 0x0

    .line 195
    .local v9, lastAngle:F
    const/4 v10, 0x0

    .line 196
    .local v10, sliceIndex:I
    invoke-virtual {v7}, Llecho/lib/hellocharts/model/PieChartData;->getValues()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Llecho/lib/hellocharts/model/SliceValue;

    .line 197
    .local v12, sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    invoke-virtual {v12}, Llecho/lib/hellocharts/model/SliceValue;->getValue()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    mul-float v3, v14, v11

    .line 198
    .local v3, angle:F
    cmpl-float v14, v13, v9

    if-ltz v14, :cond_2

    .line 199
    move-object/from16 v0, p0

    iget-object v14, v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    sget-object v15, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v14, v10, v10, v15}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    .line 201
    :cond_2
    add-float/2addr v9, v3

    .line 202
    add-int/lit8 v10, v10, 0x1

    .line 203
    goto :goto_1

    .line 204
    .end local v3           #angle:F
    .end local v12           #sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->isTouched()Z

    move-result v14

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 148
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 149
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->softwareCanvas:Landroid/graphics/Canvas;

    .line 150
    .local v0, drawCanvas:Landroid/graphics/Canvas;
    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 155
    :goto_0
    invoke-direct {p0, v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawSlices(Landroid/graphics/Canvas;)V

    .line 156
    invoke-direct {p0, v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawSeparationLines(Landroid/graphics/Canvas;)V

    .line 157
    iget-boolean v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->hasCenterCircle:Z

    if-eqz v1, :cond_0

    .line 158
    invoke-direct {p0, v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawCenterCircle(Landroid/graphics/Canvas;)V

    .line 160
    :cond_0
    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawLabels(Landroid/graphics/Canvas;)V

    .line 162
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 165
    :cond_1
    return-void

    .line 152
    .end local v0           #drawCanvas:Landroid/graphics/Canvas;
    :cond_2
    move-object v0, p1

    .restart local v0       #drawCanvas:Landroid/graphics/Canvas;
    goto :goto_0
.end method

.method public drawLabels(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 291
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/PieChartDataProvider;

    invoke-interface {v6}, Llecho/lib/hellocharts/provider/PieChartDataProvider;->getPieChartData()Llecho/lib/hellocharts/model/PieChartData;

    move-result-object v1

    .line 292
    .local v1, data:Llecho/lib/hellocharts/model/PieChartData;
    const/high16 v6, 0x43b4

    iget v7, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->maxSum:F

    div-float v4, v6, v7

    .line 293
    .local v4, sliceScale:F
    iget v6, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->rotation:I

    int-to-float v3, v6

    .line 294
    .local v3, lastAngle:F
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/PieChartData;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llecho/lib/hellocharts/model/SliceValue;

    .line 295
    .local v5, sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    invoke-virtual {v5}, Llecho/lib/hellocharts/model/SliceValue;->getValue()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float v0, v6, v4

    .line 296
    .local v0, angle:F
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->isTouched()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 297
    iget-boolean v6, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->hasLabels:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->hasLabelsOnlyForSelected:Z

    if-eqz v6, :cond_1

    .line 298
    :cond_0
    invoke-direct {p0, p1, v5, v3, v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/SliceValue;FF)V

    .line 305
    :cond_1
    :goto_1
    add-float/2addr v3, v0

    .line 306
    goto :goto_0

    .line 301
    :cond_2
    iget-boolean v6, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->hasLabels:Z

    if-eqz v6, :cond_1

    .line 302
    invoke-direct {p0, p1, v5, v3, v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/SliceValue;FF)V

    goto :goto_1

    .line 307
    .end local v0           #angle:F
    .end local v5           #sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    :cond_3
    return-void
.end method

.method public drawUnclipped(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 169
    return-void
.end method

.method public getChartRotation()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->rotation:I

    return v0
.end method

.method public getCircleFillRatio()F
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->circleFillRatio:F

    return v0
.end method

.method public getCircleOval()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getValueForAngle(ILlecho/lib/hellocharts/model/SelectedValue;)Llecho/lib/hellocharts/model/SliceValue;
    .locals 10
    .parameter "angle"
    .parameter "selectedValue"

    .prologue
    const/high16 v9, 0x43b4

    .line 468
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/PieChartDataProvider;

    invoke-interface {v8}, Llecho/lib/hellocharts/provider/PieChartDataProvider;->getPieChartData()Llecho/lib/hellocharts/model/PieChartData;

    move-result-object v0

    .line 469
    .local v0, data:Llecho/lib/hellocharts/model/PieChartData;
    iget v8, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->rotation:I

    sub-int v8, p1, v8

    int-to-float v8, v8

    add-float/2addr v8, v9

    rem-float v7, v8, v9

    .line 470
    .local v7, touchAngle:F
    iget v8, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->maxSum:F

    div-float v4, v9, v8

    .line 471
    .local v4, sliceScale:F
    const/4 v2, 0x0

    .line 472
    .local v2, lastAngle:F
    const/4 v3, 0x0

    .line 473
    .local v3, sliceIndex:I
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->getValues()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llecho/lib/hellocharts/model/SliceValue;

    .line 474
    .local v5, sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    invoke-virtual {v5}, Llecho/lib/hellocharts/model/SliceValue;->getValue()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    mul-float v6, v8, v4

    .line 475
    .local v6, tempAngle:F
    cmpl-float v8, v7, v2

    if-ltz v8, :cond_1

    .line 476
    if-eqz p2, :cond_0

    .line 477
    sget-object v8, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {p2, v3, v3, v8}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    .line 484
    .end local v5           #sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    .end local v6           #tempAngle:F
    :cond_0
    :goto_1
    return-object v5

    .line 481
    .restart local v5       #sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    .restart local v6       #tempAngle:F
    :cond_1
    add-float/2addr v2, v6

    .line 482
    add-int/lit8 v3, v3, 0x1

    .line 483
    goto :goto_0

    .line 484
    .end local v5           #sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    .end local v6           #tempAngle:F
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onChartDataChanged()V
    .locals 4

    .prologue
    .line 109
    invoke-super {p0}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->onChartDataChanged()V

    .line 110
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/PieChartDataProvider;

    invoke-interface {v1}, Llecho/lib/hellocharts/provider/PieChartDataProvider;->getPieChartData()Llecho/lib/hellocharts/model/PieChartData;

    move-result-object v0

    .line 111
    .local v0, data:Llecho/lib/hellocharts/model/PieChartData;
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside()Z

    move-result v1

    iput-boolean v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->hasLabelsOutside:Z

    .line 112
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->hasLabels()Z

    move-result v1

    iput-boolean v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->hasLabels:Z

    .line 113
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected()Z

    move-result v1

    iput-boolean v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->hasLabelsOnlyForSelected:Z

    .line 114
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->getFormatter()Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    move-result-object v1

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->valueFormatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    .line 115
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle()Z

    move-result v1

    iput-boolean v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->hasCenterCircle:Z

    .line 116
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->getCenterCircleScale()F

    move-result v1

    iput v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleScale:F

    .line 117
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCirclePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->getCenterCircleColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->getCenterText1Typeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText1Paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->getCenterText1Typeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 121
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText1Paint:Landroid/graphics/Paint;

    iget v2, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->scaledDensity:F

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->getCenterText1FontSize()I

    move-result v3

    invoke-static {v2, v3}, Llecho/lib/hellocharts/util/ChartUtils;->sp2px(FI)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 122
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText1Paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->getCenterText1Color()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 123
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText1Paint:Landroid/graphics/Paint;

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText1FontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 124
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->getCenterText2Typeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText2Paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->getCenterText2Typeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 127
    :cond_1
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText2Paint:Landroid/graphics/Paint;

    iget v2, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->scaledDensity:F

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->getCenterText2FontSize()I

    move-result v3

    invoke-static {v2, v3}, Llecho/lib/hellocharts/util/ChartUtils;->sp2px(FI)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 128
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText2Paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/PieChartData;->getCenterText2Color()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText2Paint:Landroid/graphics/Paint;

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->centerCircleText2FontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 131
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->onChartViewportChanged()V

    .line 132
    return-void
.end method

.method public onChartSizeChanged()V
    .locals 3

    .prologue
    .line 98
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->calculateCircleOval()V

    .line 100
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartWidth()I

    move-result v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getChartHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    .line 103
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->softwareCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->softwareBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onChartViewportChanged()V
    .locals 2

    .prologue
    .line 136
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->isViewportCalculationEnabled:Z

    if-eqz v0, :cond_0

    .line 137
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->calculateMaxViewport()V

    .line 138
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 139
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 141
    :cond_0
    return-void
.end method

.method public setChartRotation(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 460
    rem-int/lit16 v0, p1, 0x168

    add-int/lit16 v0, v0, 0x168

    rem-int/lit16 p1, v0, 0x168

    .line 461
    iput p1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->rotation:I

    .line 462
    return-void
.end method

.method public setCircleFillRatio(F)V
    .locals 1
    .parameter "fillRatio"

    .prologue
    .line 499
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 500
    const/4 p1, 0x0

    .line 505
    :cond_0
    :goto_0
    iput p1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->circleFillRatio:F

    .line 506
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->calculateCircleOval()V

    .line 507
    return-void

    .line 501
    :cond_1
    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 502
    const/high16 p1, 0x3f80

    goto :goto_0
.end method

.method public setCircleOval(Landroid/graphics/RectF;)V
    .locals 0
    .parameter "orginCircleOval"

    .prologue
    .line 452
    iput-object p1, p0, Llecho/lib/hellocharts/renderer/PieChartRenderer;->originCircleOval:Landroid/graphics/RectF;

    .line 453
    return-void
.end method
