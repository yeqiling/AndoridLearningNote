.class public Llecho/lib/hellocharts/renderer/BubbleChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "BubbleChartRenderer.java"


# static fields
.field private static final DEFAULT_TOUCH_ADDITIONAL_DP:I = 0x4

.field private static final MODE_DRAW:I = 0x0

.field private static final MODE_HIGHLIGHT:I = 0x1


# instance fields
.field private bubbleCenter:Landroid/graphics/PointF;

.field private bubblePaint:Landroid/graphics/Paint;

.field private bubbleRect:Landroid/graphics/RectF;

.field private bubbleScaleX:F

.field private bubbleScaleY:F

.field private dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private isBubbleScaledByX:Z

.field private maxRadius:F

.field private minRawRadius:F

.field private tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

.field private touchAdditional:I

.field private valueFormatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/BubbleChartDataProvider;)V
    .locals 3
    .parameter "context"
    .parameter "chart"
    .parameter "dataProvider"

    .prologue
    const/4 v2, 0x1

    .line 69
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    .line 44
    iput-boolean v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isBubbleScaledByX:Z

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    .line 61
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleRect:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 70
    iput-object p3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    .line 72
    iget v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->density:F

    const/4 v1, 0x4

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->touchAdditional:I

    .line 74
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    return-void
.end method

.method private calculateMaxViewport()V
    .locals 11

    .prologue
    const v6, 0x7f7fffff

    const/high16 v10, 0x4080

    const/high16 v9, 0x3f80

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 304
    const/4 v3, 0x1

    .line 305
    .local v3, maxZ:F
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v4, v6, v5, v5, v6}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 306
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    invoke-interface {v4}, Llecho/lib/hellocharts/provider/BubbleChartDataProvider;->getBubbleChartData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v1

    .line 308
    .local v1, data:Llecho/lib/hellocharts/model/BubbleChartData;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/BubbleChartData;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/BubbleValue;

    .line 309
    .local v0, bubbleValue:Llecho/lib/hellocharts/model/BubbleValue;
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleValue;->getZ()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_1

    .line 310
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleValue;->getZ()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 312
    :cond_1
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleValue;->getX()F

    move-result v4

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_2

    .line 313
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleValue;->getX()F

    move-result v5

    iput v5, v4, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 315
    :cond_2
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleValue;->getX()F

    move-result v4

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    .line 316
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleValue;->getX()F

    move-result v5

    iput v5, v4, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 318
    :cond_3
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleValue;->getY()F

    move-result v4

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    .line 319
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleValue;->getY()F

    move-result v5

    iput v5, v4, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 321
    :cond_4
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleValue;->getY()F

    move-result v4

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 322
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleValue;->getY()F

    move-result v5

    iput v5, v4, Llecho/lib/hellocharts/model/Viewport;->top:F

    goto :goto_0

    .line 326
    .end local v0           #bubbleValue:Llecho/lib/hellocharts/model/BubbleValue;
    :cond_5
    float-to-double v4, v3

    const-wide v6, 0x400921fb54442d18L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    iput v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    .line 329
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v4

    iget v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    mul-float/2addr v5, v10

    div-float/2addr v4, v5

    iput v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    .line 330
    iget v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_6

    .line 332
    iput v9, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    .line 335
    :cond_6
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v4

    iget v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    mul-float/2addr v5, v10

    div-float/2addr v4, v5

    iput v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    .line 336
    iget v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_7

    .line 338
    iput v9, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    .line 342
    :cond_7
    iget v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/BubbleChartData;->getBubbleScale()F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    .line 343
    iget v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/BubbleChartData;->getBubbleScale()F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    .line 346
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    neg-float v5, v5

    iget v6, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    mul-float/2addr v5, v6

    iget v6, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    neg-float v6, v6

    iget v7, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    mul-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Llecho/lib/hellocharts/model/Viewport;->inset(FF)V

    .line 348
    iget v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->density:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    invoke-interface {v5}, Llecho/lib/hellocharts/provider/BubbleChartDataProvider;->getBubbleChartData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v5

    invoke-virtual {v5}, Llecho/lib/hellocharts/model/BubbleChartData;->getMinBubbleRadius()I

    move-result v5

    invoke-static {v4, v5}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->minRawRadius:F

    .line 349
    return-void
.end method

.method private drawBubble(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;)V
    .locals 4
    .parameter "canvas"
    .parameter "bubbleValue"

    .prologue
    .line 193
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    invoke-direct {p0, p2, v1}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->processBubble(Llecho/lib/hellocharts/model/BubbleValue;Landroid/graphics/PointF;)F

    move-result v0

    .line 195
    .local v0, rawRadius:F
    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->touchAdditional:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 196
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleRect:Landroid/graphics/RectF;

    iget v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->touchAdditional:I

    int-to-float v2, v2

    iget v3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->touchAdditional:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 197
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/BubbleValue;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawBubbleShapeAndLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;FI)V

    .line 200
    return-void
.end method

.method private drawBubbleShapeAndLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;FI)V
    .locals 3
    .parameter "canvas"
    .parameter "bubbleValue"
    .parameter "rawRadius"
    .parameter "mode"

    .prologue
    .line 203
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->SQUARE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleRect:Landroid/graphics/RectF;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 211
    :goto_0
    const/4 v0, 0x1

    if-ne v0, p4, :cond_4

    .line 212
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->hasLabels:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->hasLabelsOnlyForSelected:Z

    if-eqz v0, :cond_1

    .line 213
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, p2, v0, v1}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;FF)V

    .line 222
    :cond_1
    :goto_1
    return-void

    .line 205
    :cond_2
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p3, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 208
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid bubble shape: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 215
    :cond_4
    if-nez p4, :cond_5

    .line 216
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->hasLabels:Z

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, p1, p2, v0, v1}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;FF)V

    goto :goto_1

    .line 220
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot process bubble in mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private drawBubbles(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 186
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    invoke-interface {v3}, Llecho/lib/hellocharts/provider/BubbleChartDataProvider;->getBubbleChartData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v1

    .line 187
    .local v1, data:Llecho/lib/hellocharts/model/BubbleChartData;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/BubbleChartData;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/BubbleValue;

    .line 188
    .local v0, bubbleValue:Llecho/lib/hellocharts/model/BubbleValue;
    invoke-direct {p0, p1, v0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawBubble(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;)V

    goto :goto_0

    .line 190
    .end local v0           #bubbleValue:Llecho/lib/hellocharts/model/BubbleValue;
    :cond_0
    return-void
.end method

.method private drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;FF)V
    .locals 13
    .parameter "canvas"
    .parameter "bubbleValue"
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    .line 265
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v7

    .line 266
    .local v7, contentRect:Landroid/graphics/Rect;
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->valueFormatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelBuffer:[C

    invoke-interface {v0, v1, p2}, Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;->formatChartValue([CLlecho/lib/hellocharts/model/BubbleValue;)I

    move-result v4

    .line 268
    .local v4, numChars:I
    if-nez v4, :cond_0

    .line 301
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelBuffer:[C

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelBuffer:[C

    array-length v2, v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v9

    .line 274
    .local v9, labelWidth:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v8

    .line 275
    .local v8, labelHeight:I
    const/high16 v0, 0x4000

    div-float v0, v9, v0

    sub-float v0, p3, v0

    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    int-to-float v1, v1

    sub-float v10, v0, v1

    .line 276
    .local v10, left:F
    const/high16 v0, 0x4000

    div-float v0, v9, v0

    add-float v0, v0, p3

    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    int-to-float v1, v1

    add-float v11, v0, v1

    .line 277
    .local v11, right:F
    div-int/lit8 v0, v8, 0x2

    int-to-float v0, v0

    sub-float v0, p4, v0

    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    int-to-float v1, v1

    sub-float v12, v0, v1

    .line 278
    .local v12, top:F
    div-int/lit8 v0, v8, 0x2

    int-to-float v0, v0

    add-float v0, v0, p4

    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    int-to-float v1, v1

    add-float v6, v0, v1

    .line 280
    .local v6, bottom:F
    iget v0, v7, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, v12, v0

    if-gez v0, :cond_1

    .line 281
    move/from16 v12, p4

    .line 282
    int-to-float v0, v8

    add-float v0, v0, p4

    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v6, v0, v1

    .line 284
    :cond_1
    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_2

    .line 285
    int-to-float v0, v8

    sub-float v0, p4, v0

    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v12, v0, v1

    .line 286
    move/from16 v6, p4

    .line 288
    :cond_2
    iget v0, v7, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpg-float v0, v10, v0

    if-gez v0, :cond_3

    .line 289
    move/from16 v10, p3

    .line 290
    add-float v0, p3, v9

    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v11, v0, v1

    .line 292
    :cond_3
    iget v0, v7, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_4

    .line 293
    sub-float v0, p3, v9

    iget v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelMargin:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v10, v0, v1

    .line 294
    move/from16 v11, p3

    .line 297
    :cond_4
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v10, v12, v11, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 298
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelBuffer:[C

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->labelBuffer:[C

    array-length v0, v0

    sub-int v3, v0, v4

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/BubbleValue;->getDarkenColor()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawLabelTextAndBackground(Landroid/graphics/Canvas;[CIII)V

    goto/16 :goto_0
.end method

.method private highlightBubble(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;)V
    .locals 3
    .parameter "canvas"
    .parameter "bubbleValue"

    .prologue
    .line 231
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    invoke-direct {p0, p2, v1}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->processBubble(Llecho/lib/hellocharts/model/BubbleValue;Landroid/graphics/PointF;)F

    move-result v0

    .line 232
    .local v0, rawRadius:F
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubblePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/BubbleValue;->getDarkenColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawBubbleShapeAndLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;FI)V

    .line 234
    return-void
.end method

.method private highlightBubbles(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 225
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    invoke-interface {v2}, Llecho/lib/hellocharts/provider/BubbleChartDataProvider;->getBubbleChartData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v1

    .line 226
    .local v1, data:Llecho/lib/hellocharts/model/BubbleChartData;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/BubbleChartData;->getValues()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/BubbleValue;

    .line 227
    .local v0, bubbleValue:Llecho/lib/hellocharts/model/BubbleValue;
    invoke-direct {p0, p1, v0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->highlightBubble(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/BubbleValue;)V

    .line 228
    return-void
.end method

.method private processBubble(Llecho/lib/hellocharts/model/BubbleValue;Landroid/graphics/PointF;)F
    .locals 9
    .parameter "bubbleValue"
    .parameter "point"

    .prologue
    .line 241
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/BubbleValue;->getX()F

    move-result v5

    invoke-virtual {v4, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v2

    .line 242
    .local v2, rawX:F
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/BubbleValue;->getY()F

    move-result v5

    invoke-virtual {v4, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v3

    .line 243
    .local v3, rawY:F
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/BubbleValue;->getZ()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x400921fb54442d18L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 245
    .local v0, radius:F
    iget-boolean v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isBubbleScaledByX:Z

    if-eqz v4, :cond_2

    .line 246
    iget v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    mul-float/2addr v0, v4

    .line 247
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v4, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawDistanceX(F)F

    move-result v1

    .line 253
    .local v1, rawRadius:F
    :goto_0
    iget v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->minRawRadius:F

    iget v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->touchAdditional:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 254
    iget v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->minRawRadius:F

    iget v5, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->touchAdditional:I

    int-to-float v5, v5

    add-float v1, v4, v5

    .line 257
    :cond_0
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    invoke-virtual {v4, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 258
    sget-object v4, Llecho/lib/hellocharts/model/ValueShape;->SQUARE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v5

    invoke-virtual {v4, v5}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 259
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleRect:Landroid/graphics/RectF;

    sub-float v5, v2, v1

    sub-float v6, v3, v1

    add-float v7, v2, v1

    add-float v8, v3, v1

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 261
    :cond_1
    return v1

    .line 249
    .end local v1           #rawRadius:F
    :cond_2
    iget v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    mul-float/2addr v0, v4

    .line 250
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v4, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawDistanceY(F)F

    move-result v1

    .restart local v1       #rawRadius:F
    goto :goto_0
.end method


# virtual methods
.method public checkTouch(FF)Z
    .locals 11
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 124
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v8}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 125
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    invoke-interface {v8}, Llecho/lib/hellocharts/provider/BubbleChartDataProvider;->getBubbleChartData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v1

    .line 126
    .local v1, data:Llecho/lib/hellocharts/model/BubbleChartData;
    const/4 v7, 0x0

    .line 127
    .local v7, valueIndex:I
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/BubbleChartData;->getValues()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/BubbleValue;

    .line 128
    .local v0, bubbleValue:Llecho/lib/hellocharts/model/BubbleValue;
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v8}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->processBubble(Llecho/lib/hellocharts/model/BubbleValue;Landroid/graphics/PointF;)F

    move-result v5

    .line 130
    .local v5, rawRadius:F
    sget-object v8, Llecho/lib/hellocharts/model/ValueShape;->SQUARE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v9

    invoke-virtual {v8, v9}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 131
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleRect:Landroid/graphics/RectF;

    invoke-virtual {v8, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 132
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    sget-object v9, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v8, v7, v7, v9}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    .line 146
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 147
    goto :goto_0

    .line 134
    :cond_1
    sget-object v8, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v9

    invoke-virtual {v8, v9}, Llecho/lib/hellocharts/model/ValueShape;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 135
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    sub-float v2, p1, v8

    .line 136
    .local v2, diffX:F
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleCenter:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    sub-float v3, p2, v8

    .line 137
    .local v3, diffY:F
    mul-float v8, v2, v2

    mul-float v9, v3, v3

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v6, v8

    .line 139
    .local v6, touchDistance:F
    cmpg-float v8, v6, v5

    if-gtz v8, :cond_0

    .line 140
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    sget-object v9, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->NONE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v8, v7, v7, v9}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    goto :goto_1

    .line 143
    .end local v2           #diffX:F
    .end local v3           #diffY:F
    .end local v6           #touchDistance:F
    :cond_2
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid bubble shape: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleValue;->getShape()Llecho/lib/hellocharts/model/ValueShape;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 149
    .end local v0           #bubbleValue:Llecho/lib/hellocharts/model/BubbleValue;
    .end local v5           #rawRadius:F
    :cond_3
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isTouched()Z

    move-result v8

    return v8
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 112
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->drawBubbles(Landroid/graphics/Canvas;)V

    .line 113
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isTouched()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->highlightBubbles(Landroid/graphics/Canvas;)V

    .line 116
    :cond_0
    return-void
.end method

.method public drawUnclipped(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 120
    return-void
.end method

.method public onChartDataChanged()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->onChartDataChanged()V

    .line 93
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/BubbleChartDataProvider;

    invoke-interface {v1}, Llecho/lib/hellocharts/provider/BubbleChartDataProvider;->getBubbleChartData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v0

    .line 94
    .local v0, data:Llecho/lib/hellocharts/model/BubbleChartData;
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabels()Z

    move-result v1

    iput-boolean v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->hasLabels:Z

    .line 95
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleChartData;->hasLabelsOnlyForSelected()Z

    move-result v1

    iput-boolean v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->hasLabelsOnlyForSelected:Z

    .line 96
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/BubbleChartData;->getFormatter()Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    move-result-object v1

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->valueFormatter:Llecho/lib/hellocharts/formatter/BubbleChartValueFormatter;

    .line 98
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->onChartViewportChanged()V

    .line 99
    return-void
.end method

.method public onChartSizeChanged()V
    .locals 4

    .prologue
    .line 81
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    .line 82
    .local v0, computator:Llecho/lib/hellocharts/computator/ChartComputator;
    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    .line 83
    .local v1, contentRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 84
    const/4 v2, 0x1

    iput-boolean v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isBubbleScaledByX:Z

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isBubbleScaledByX:Z

    goto :goto_0
.end method

.method public onChartViewportChanged()V
    .locals 2

    .prologue
    .line 103
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isViewportCalculationEnabled:Z

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->calculateMaxViewport()V

    .line 105
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 106
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 108
    :cond_0
    return-void
.end method

.method public removeMargins()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f40

    .line 160
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v9}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    .line 161
    .local v0, contentRect:Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-nez v9, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v10, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    iget v11, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleX:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawDistanceX(F)F

    move-result v5

    .line 166
    .local v5, pxX:F
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v10, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->maxRadius:F

    iget v11, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->bubbleScaleY:F

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawDistanceY(F)F

    move-result v6

    .line 167
    .local v6, pxY:F
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v9}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v9

    invoke-virtual {v9}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    div-float v7, v9, v10

    .line 168
    .local v7, scaleX:F
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v9}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v9

    invoke-virtual {v9}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float v8, v9, v10

    .line 169
    .local v8, scaleY:F
    const/4 v2, 0x0

    .line 170
    .local v2, dx:F
    const/4 v3, 0x0

    .line 171
    .local v3, dy:F
    iget-boolean v9, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->isBubbleScaledByX:Z

    if-eqz v9, :cond_2

    .line 172
    sub-float v9, v6, v5

    mul-float/2addr v9, v8

    mul-float v3, v9, v12

    .line 177
    :goto_1
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v9}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v4

    .line 178
    .local v4, maxViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual {v4, v2, v3}, Llecho/lib/hellocharts/model/Viewport;->inset(FF)V

    .line 179
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v9}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    .line 180
    .local v1, currentViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual {v1, v2, v3}, Llecho/lib/hellocharts/model/Viewport;->inset(FF)V

    .line 181
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v9, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 182
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v9, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    goto :goto_0

    .line 174
    .end local v1           #currentViewport:Llecho/lib/hellocharts/model/Viewport;
    .end local v4           #maxViewport:Llecho/lib/hellocharts/model/Viewport;
    :cond_2
    sub-float v9, v5, v6

    mul-float/2addr v9, v7

    mul-float v2, v9, v12

    goto :goto_1
.end method
