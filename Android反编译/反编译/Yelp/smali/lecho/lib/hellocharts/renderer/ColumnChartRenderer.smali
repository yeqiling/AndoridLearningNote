.class public Llecho/lib/hellocharts/renderer/ColumnChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "ColumnChartRenderer.java"


# static fields
.field public static final DEFAULT_COLUMN_TOUCH_ADDITIONAL_WIDTH_DP:I = 0x4

.field public static final DEFAULT_SUBCOLUMN_SPACING_DP:I = 0x1

.field private static final MODE_CHECK_TOUCH:I = 0x1

.field private static final MODE_DRAW:I = 0x0

.field private static final MODE_HIGHLIGHT:I = 0x2


# instance fields
.field private baseValue:F

.field private caloryLinePaint:Landroid/graphics/Paint;

.field private caloryTextPaint:Landroid/graphics/Paint;

.field private columnPaint:Landroid/graphics/Paint;

.field private dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

.field private drawRect:Landroid/graphics/RectF;

.field private fillRatio:F

.field private maxCaloryLimit:F

.field private subcolumnSpacing:I

.field private targetCalory:I

.field private tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

.field private touchAdditionalWidth:I

.field private touchedPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;)V
    .locals 3
    .parameter "context"
    .parameter "chart"
    .parameter "dataProvider"

    .prologue
    const/4 v2, 0x1

    .line 76
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    .line 65
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->targetCalory:I

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->maxCaloryLimit:F

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryLinePaint:Landroid/graphics/Paint;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryTextPaint:Landroid/graphics/Paint;

    .line 77
    iput-object p3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    .line 78
    iget v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->density:F

    invoke-static {v0, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    .line 79
    iget v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->density:F

    const/4 v1, 0x4

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchAdditionalWidth:I

    .line 81
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 83
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 85
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryLinePaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->density:F

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryLinePaint:Landroid/graphics/Paint;

    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_TARGET_COLOR:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 90
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 92
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->density:F

    const/16 v2, 0xc

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 93
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryTextPaint:Landroid/graphics/Paint;

    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_BACKGROUND:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    return-void
.end method

.method private calculateColumnWidth()F
    .locals 3

    .prologue
    .line 387
    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->fillRatio:F

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getVisibleViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v2

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v2

    div-float v0, v1, v2

    .line 389
    .local v0, columnWidth:F
    const/high16 v1, 0x4000

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 390
    const/high16 v0, 0x4000

    .line 392
    :cond_0
    return v0
.end method

.method private calculateMaxViewport()V
    .locals 6

    .prologue
    .line 152
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v1}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 156
    .local v0, data:Llecho/lib/hellocharts/model/ColumnChartData;
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    const/high16 v2, -0x4100

    iget v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f00

    sub-float/2addr v4, v5

    iget v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    invoke-virtual {v1, v2, v3, v4, v5}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 157
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    invoke-direct {p0, v0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateMaxViewportForStacked(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-direct {p0, v0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateMaxViewportForSubcolumns(Llecho/lib/hellocharts/model/ColumnChartData;)V

    goto :goto_0
.end method

.method private calculateMaxViewportForStacked(Llecho/lib/hellocharts/model/ColumnChartData;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 178
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/Column;

    .line 179
    .local v0, column:Llecho/lib/hellocharts/model/Column;
    iget v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    .line 180
    .local v5, sumPositive:F
    iget v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    .line 181
    .local v4, sumNegative:F
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 182
    .local v1, columnValue:Llecho/lib/hellocharts/model/SubcolumnValue;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v6

    iget v7, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 183
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v6

    add-float/2addr v5, v6

    goto :goto_1

    .line 185
    :cond_1
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v6

    add-float/2addr v4, v6

    goto :goto_1

    .line 188
    .end local v1           #columnValue:Llecho/lib/hellocharts/model/SubcolumnValue;
    :cond_2
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v6, v6, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v6, v5, v6

    if-lez v6, :cond_3

    .line 189
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iput v5, v6, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 191
    :cond_3
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v6, v6, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v6, v4, v6

    if-gez v6, :cond_0

    .line 192
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iput v4, v6, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    goto :goto_0

    .line 195
    .end local v0           #column:Llecho/lib/hellocharts/model/Column;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #sumNegative:F
    .end local v5           #sumPositive:F
    :cond_4
    return-void
.end method

.method private calculateMaxViewportForSubcolumns(Llecho/lib/hellocharts/model/ColumnChartData;)V
    .locals 6
    .parameter "data"

    .prologue
    .line 165
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/Column;

    .line 166
    .local v0, column:Llecho/lib/hellocharts/model/Column;
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 167
    .local v1, columnValue:Llecho/lib/hellocharts/model/SubcolumnValue;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v4

    iget v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_2

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v4

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 168
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v5

    iput v5, v4, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 170
    :cond_2
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v4

    iget v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v4

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 171
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v5

    iput v5, v4, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    goto :goto_0

    .line 175
    .end local v0           #column:Llecho/lib/hellocharts/model/Column;
    .end local v1           #columnValue:Llecho/lib/hellocharts/model/SubcolumnValue;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method private calculateRectToDraw(Llecho/lib/hellocharts/model/SubcolumnValue;FFFF)V
    .locals 2
    .parameter "columnValue"
    .parameter "left"
    .parameter "right"
    .parameter "rawBaseY"
    .parameter "rawY"

    .prologue
    .line 397
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->left:F

    .line 398
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 399
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v0

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 400
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iput p5, v0, Landroid/graphics/RectF;->top:F

    .line 401
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    int-to-float v1, v1

    sub-float v1, p4, v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 406
    :goto_0
    return-void

    .line 403
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iput p5, v0, Landroid/graphics/RectF;->bottom:F

    .line 404
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    int-to-float v1, v1

    add-float/2addr v1, p4

    iput v1, v0, Landroid/graphics/RectF;->top:F

    goto :goto_0
.end method

.method private checkRectToDraw(II)V
    .locals 3
    .parameter "columnIndex"
    .parameter "valueIndex"

    .prologue
    .line 380
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    sget-object v1, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->COLUMN:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v0, p1, p2, v1}, Llecho/lib/hellocharts/model/SelectedValue;->set(IILlecho/lib/hellocharts/model/SelectedValue$SelectedValueType;)V

    .line 383
    :cond_0
    return-void
.end method

.method private checkTouchForStacked(FF)V
    .locals 8
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 307
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 308
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 309
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v6

    .line 310
    .local v6, data:Llecho/lib/hellocharts/model/ColumnChartData;
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v3

    .line 311
    .local v3, columnWidth:F
    const/4 v4, 0x0

    .line 312
    .local v4, columnIndex:I
    invoke-virtual {v6}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Column;

    .line 314
    .local v2, column:Llecho/lib/hellocharts/model/Column;
    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForStacked(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    .line 315
    add-int/lit8 v4, v4, 0x1

    .line 316
    goto :goto_0

    .line 317
    .end local v2           #column:Llecho/lib/hellocharts/model/Column;
    :cond_0
    return-void
.end method

.method private checkTouchForSubcolumns(FF)V
    .locals 8
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 216
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iput p1, v0, Landroid/graphics/PointF;->x:F

    .line 217
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchedPoint:Landroid/graphics/PointF;

    iput p2, v0, Landroid/graphics/PointF;->y:F

    .line 218
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v6

    .line 219
    .local v6, data:Llecho/lib/hellocharts/model/ColumnChartData;
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v3

    .line 220
    .local v3, columnWidth:F
    const/4 v4, 0x0

    .line 221
    .local v4, columnIndex:I
    invoke-virtual {v6}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Column;

    .line 223
    .local v2, column:Llecho/lib/hellocharts/model/Column;
    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForSubcolumns(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    .line 224
    add-int/lit8 v4, v4, 0x1

    .line 225
    goto :goto_0

    .line 226
    .end local v2           #column:Llecho/lib/hellocharts/model/Column;
    :cond_0
    return-void
.end method

.method private drawColumnForStacked(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 288
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v6

    .line 289
    .local v6, data:Llecho/lib/hellocharts/model/ColumnChartData;
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v3

    .line 291
    .local v3, columnWidth:F
    const/4 v4, 0x0

    .line 292
    .local v4, columnIndex:I
    invoke-virtual {v6}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Column;

    .line 293
    .local v2, column:Llecho/lib/hellocharts/model/Column;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForStacked(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    .line 294
    add-int/lit8 v4, v4, 0x1

    .line 295
    goto :goto_0

    .line 296
    .end local v2           #column:Llecho/lib/hellocharts/model/Column;
    :cond_0
    return-void
.end method

.method private drawColumnsForSubcolumns(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    .line 198
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v6

    .line 199
    .local v6, data:Llecho/lib/hellocharts/model/ColumnChartData;
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v3

    .line 200
    .local v3, columnWidth:F
    const/4 v4, 0x0

    .line 201
    .local v4, columnIndex:I
    invoke-virtual {v6}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Column;

    .line 202
    .local v2, column:Llecho/lib/hellocharts/model/Column;
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForSubcolumns(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    .line 203
    add-int/lit8 v4, v4, 0x1

    .line 204
    goto :goto_0

    .line 205
    .end local v2           #column:Llecho/lib/hellocharts/model/Column;
    :cond_0
    return-void
.end method

.method private drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;ZF)V
    .locals 12
    .parameter "canvas"
    .parameter "column"
    .parameter "columnValue"
    .parameter "isStacked"
    .parameter "offset"

    .prologue
    .line 409
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Column;->getFormatter()Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;

    move-result-object v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    invoke-interface {v0, v1, p3}, Llecho/lib/hellocharts/formatter/ColumnChartValueFormatter;->formatChartValue([CLlecho/lib/hellocharts/model/SubcolumnValue;)I

    move-result v4

    .line 411
    .local v4, numChars:I
    if-nez v4, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    array-length v2, v2

    sub-int/2addr v2, v4

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v8

    .line 417
    .local v8, labelWidth:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 418
    .local v7, labelHeight:I
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    const/high16 v1, 0x4000

    div-float v1, v8, v1

    sub-float/2addr v0, v1

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    int-to-float v1, v1

    sub-float v9, v0, v1

    .line 419
    .local v9, left:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    const/high16 v1, 0x4000

    div-float v1, v8, v1

    add-float/2addr v0, v1

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    int-to-float v1, v1

    add-float v10, v0, v1

    .line 422
    .local v10, right:F
    if-eqz p4, :cond_3

    int-to-float v0, v7

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 424
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v0

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 425
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v11, v0, Landroid/graphics/RectF;->top:F

    .line 426
    .local v11, top:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    int-to-float v1, v7

    add-float/2addr v0, v1

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v6, v0, v1

    .line 455
    .local v6, bottom:F
    :goto_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v9, v11, v10, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 456
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelBuffer:[C

    array-length v0, v0

    sub-int v3, v0, v4

    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getDarkenColor()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawLabelTextAndBackground(Landroid/graphics/Canvas;[CIII)V

    goto :goto_0

    .line 428
    .end local v6           #bottom:F
    .end local v11           #top:F
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    int-to-float v1, v7

    sub-float/2addr v0, v1

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v11, v0, v1

    .line 429
    .restart local v11       #top:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v6, v0, Landroid/graphics/RectF;->bottom:F

    .restart local v6       #bottom:F
    goto :goto_1

    .line 431
    .end local v6           #bottom:F
    .end local v11           #top:F
    :cond_3
    if-nez p4, :cond_0

    .line 433
    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v0

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5

    .line 434
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v0, v0, p5

    int-to-float v1, v7

    sub-float/2addr v0, v1

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v11, v0, v1

    .line 435
    .restart local v11       #top:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    cmpg-float v0, v11, v0

    if-gez v0, :cond_4

    .line 436
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float v11, v0, p5

    .line 437
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    add-float v0, v0, p5

    int-to-float v1, v7

    add-float/2addr v0, v1

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v6, v0, v1

    .restart local v6       #bottom:F
    goto :goto_1

    .line 439
    .end local v6           #bottom:F
    :cond_4
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sub-float v6, v0, p5

    .restart local v6       #bottom:F
    goto :goto_1

    .line 442
    .end local v6           #bottom:F
    .end local v11           #top:F
    :cond_5
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v0, v0, p5

    int-to-float v1, v7

    add-float/2addr v0, v1

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float v6, v0, v1

    .line 443
    .restart local v6       #bottom:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpl-float v0, v6, v0

    if-lez v0, :cond_6

    .line 444
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v0, p5

    int-to-float v1, v7

    sub-float/2addr v0, v1

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelMargin:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v11, v0, v1

    .line 445
    .restart local v11       #top:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v0, p5

    goto/16 :goto_1

    .line 447
    .end local v11           #top:F
    :cond_6
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    add-float v11, v0, p5

    .restart local v11       #top:F
    goto/16 :goto_1
.end method

.method private drawSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;Z)V
    .locals 6
    .parameter "canvas"
    .parameter "column"
    .parameter "columnValue"
    .parameter "isStacked"

    .prologue
    .line 360
    const-string v0, "drawRect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rect top : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 362
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Column;->hasLabels()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    iget v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelOffset:I

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;ZF)V

    .line 365
    :cond_0
    return-void
.end method

.method private getColumnValue(Llecho/lib/hellocharts/model/SubcolumnValue;)F
    .locals 2
    .parameter "columnValue"

    .prologue
    .line 517
    iget v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->maxCaloryLimit:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 518
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v0

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->maxCaloryLimit:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->maxCaloryLimit:F

    .line 520
    :goto_0
    return v0

    .line 518
    :cond_0
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v0

    goto :goto_0

    .line 520
    :cond_1
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v0

    goto :goto_0
.end method

.method private getTextHeight()F
    .locals 4

    .prologue
    .line 512
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 513
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

.method private highlightColumnForStacked(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 299
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v6

    .line 300
    .local v6, data:Llecho/lib/hellocharts/model/ColumnChartData;
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v3

    .line 302
    .local v3, columnWidth:F
    invoke-virtual {v6}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Column;

    .line 303
    .local v2, column:Llecho/lib/hellocharts/model/Column;
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v4

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForStacked(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    .line 304
    return-void
.end method

.method private highlightColumnsForSubcolumns(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 208
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v0}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v6

    .line 209
    .local v6, data:Llecho/lib/hellocharts/model/ColumnChartData;
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateColumnWidth()F

    move-result v3

    .line 210
    .local v3, columnWidth:F
    invoke-virtual {v6}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Column;

    .line 211
    .local v2, column:Llecho/lib/hellocharts/model/Column;
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v4

    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->processColumnForSubcolumns(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V

    .line 212
    return-void
.end method

.method private highlightSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;IZ)V
    .locals 6
    .parameter "canvas"
    .parameter "column"
    .parameter "columnValue"
    .parameter "valueIndex"
    .parameter "isStacked"

    .prologue
    .line 369
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v0

    if-ne v0, p4, :cond_1

    .line 370
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getDarkenColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 371
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchAdditionalWidth:I

    int-to-float v1, v1

    sub-float v1, v0, v1

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->touchAdditionalWidth:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 373
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Column;->hasLabels()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Column;->hasLabelsOnlyForSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    :cond_0
    iget v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->labelOffset:I

    int-to-float v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawLabel(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;ZF)V

    .line 377
    :cond_1
    return-void
.end method

.method private processColumnForStacked(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V
    .locals 21
    .parameter "canvas"
    .parameter "column"
    .parameter "columnWidth"
    .parameter "columnIndex"
    .parameter "mode"

    .prologue
    .line 320
    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    move/from16 v0, p4

    int-to-float v5, v0

    invoke-virtual {v3, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v19

    .line 321
    .local v19, rawX:F
    const/high16 v3, 0x4000

    div-float v15, p3, v3

    .line 322
    .local v15, halfColumnWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    move/from16 v18, v0

    .line 323
    .local v18, mostPositiveValue:F
    move-object/from16 v0, p0

    iget v0, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    move/from16 v17, v0

    .line 324
    .local v17, mostNegativeValue:F
    move-object/from16 v0, p0

    iget v0, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    move/from16 v20, v0

    .line 325
    .local v20, subcolumnBaseValue:F
    const/4 v13, 0x0

    .line 326
    .local v13, valueIndex:I
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 327
    .local v4, columnValue:Llecho/lib/hellocharts/model/SubcolumnValue;
    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/SubcolumnValue;->getColor()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 328
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 331
    move/from16 v20, v18

    .line 332
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v3

    add-float v18, v18, v3

    .line 337
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v7

    .line 338
    .local v7, rawBaseY:F
    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v5

    add-float v5, v5, v20

    invoke-virtual {v3, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v8

    .line 339
    .local v8, rawY:F
    sub-float v5, v19, v15

    add-float v6, v19, v15

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateRectToDraw(Llecho/lib/hellocharts/model/SubcolumnValue;FFFF)V

    .line 340
    packed-switch p5, :pswitch_data_0

    .line 353
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot process column in mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 334
    .end local v7           #rawBaseY:F
    .end local v8           #rawY:F
    :cond_0
    move/from16 v20, v17

    .line 335
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v3

    add-float v17, v17, v3

    goto :goto_1

    .line 342
    .restart local v7       #rawBaseY:F
    .restart local v8       #rawY:F
    :pswitch_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v3}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;Z)V

    .line 355
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 356
    goto :goto_0

    .line 345
    :pswitch_1
    const/4 v14, 0x1

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v4

    invoke-direct/range {v9 .. v14}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->highlightSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;IZ)V

    goto :goto_2

    .line 348
    :pswitch_2
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v13}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->checkRectToDraw(II)V

    goto :goto_2

    .line 357
    .end local v4           #columnValue:Llecho/lib/hellocharts/model/SubcolumnValue;
    .end local v7           #rawBaseY:F
    .end local v8           #rawY:F
    :cond_1
    return-void

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private processColumnForSubcolumns(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;FII)V
    .locals 20
    .parameter "canvas"
    .parameter "column"
    .parameter "columnWidth"
    .parameter "columnIndex"
    .parameter "mode"

    .prologue
    .line 232
    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v3, v6

    int-to-float v3, v3

    sub-float v3, p3, v3

    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    div-float v19, v3, v6

    .line 234
    .local v19, subcolumnWidth:F
    const/high16 v3, 0x3f80

    cmpg-float v3, v19, v3

    if-gez v3, :cond_0

    .line 235
    const/high16 v19, 0x3f80

    .line 238
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    move/from16 v0, p4

    int-to-float v6, v0

    invoke-virtual {v3, v6}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v17

    .line 239
    .local v17, rawX:F
    const/high16 v3, 0x4000

    div-float v15, p3, v3

    .line 240
    .local v15, halfColumnWidth:F
    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    move-object/from16 v0, p0

    iget v6, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    invoke-virtual {v3, v6}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v7

    .line 243
    .local v7, baseRawY:F
    sub-float v5, v17, v15

    .line 244
    .local v5, subcolumnRawX:F
    const/4 v13, 0x0

    .line 247
    .local v13, valueIndex:I
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x1

    if-le v3, v6, :cond_1

    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Llecho/lib/hellocharts/model/SubcolumnValue;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-nez v3, :cond_1

    .line 248
    const/high16 v3, 0x4000

    div-float v3, v19, v3

    add-float/2addr v5, v3

    .line 251
    :cond_1
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v18

    .line 252
    .local v18, subcolumnValueList:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/SubcolumnValue;>;"
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_4

    .line 253
    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 254
    .local v4, columnValue:Llecho/lib/hellocharts/model/SubcolumnValue;
    invoke-virtual {v4}, Llecho/lib/hellocharts/model/SubcolumnValue;->getValue()F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-nez v3, :cond_3

    .line 255
    if-nez v16, :cond_2

    .line 256
    const/high16 v3, 0x4000

    div-float v3, v19, v3

    add-float/2addr v5, v3

    .line 252
    :cond_2
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 259
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->columnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/SubcolumnValue;->getColor()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    add-float v3, v17, v15

    cmpl-float v3, v5, v3

    if-lez v3, :cond_5

    .line 285
    .end local v4           #columnValue:Llecho/lib/hellocharts/model/SubcolumnValue;
    :cond_4
    return-void

    .line 264
    .restart local v4       #columnValue:Llecho/lib/hellocharts/model/SubcolumnValue;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->getColumnValue(Llecho/lib/hellocharts/model/SubcolumnValue;)F

    move-result v6

    invoke-virtual {v3, v6}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v8

    .line 265
    .local v8, rawY:F
    add-float v6, v5, v19

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateRectToDraw(Llecho/lib/hellocharts/model/SubcolumnValue;FFFF)V

    .line 266
    packed-switch p5, :pswitch_data_0

    .line 279
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot process column in mode: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 268
    :pswitch_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2, v4, v3}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;Z)V

    .line 281
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->subcolumnSpacing:I

    int-to-float v3, v3

    add-float v3, v3, v19

    add-float/2addr v5, v3

    .line 282
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 271
    :pswitch_1
    const/4 v14, 0x0

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object v12, v4

    invoke-direct/range {v9 .. v14}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->highlightSubcolumn(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Column;Llecho/lib/hellocharts/model/SubcolumnValue;IZ)V

    goto :goto_2

    .line 274
    :pswitch_2
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-direct {v0, v1, v13}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->checkRectToDraw(II)V

    goto :goto_2

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public checkTouch(FF)Z
    .locals 2
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 141
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 142
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v1}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 143
    .local v0, data:Llecho/lib/hellocharts/model/ColumnChartData;
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->checkTouchForStacked(FF)V

    .line 148
    :goto_0
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->isTouched()Z

    move-result v1

    return v1

    .line 146
    :cond_0
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->checkTouchForSubcolumns(FF)V

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 120
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v1}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 122
    .local v0, data:Llecho/lib/hellocharts/model/ColumnChartData;
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->isStacked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawColumnForStacked(Landroid/graphics/Canvas;)V

    .line 124
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->isTouched()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->highlightColumnForStacked(Landroid/graphics/Canvas;)V

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawColumnsForSubcolumns(Landroid/graphics/Canvas;)V

    .line 129
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->isTouched()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->highlightColumnsForSubcolumns(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawTargetCaloryLine(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "drawCanvas"

    .prologue
    .line 470
    iget v8, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->targetCalory:I

    if-gtz v8, :cond_0

    .line 487
    :goto_0
    return-void

    .line 471
    :cond_0
    const/4 v0, 0x0

    .local v0, currentLeft:F
    const/4 v1, 0x0

    .line 472
    .local v1, currentRight:F
    iget v6, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->targetCalory:I

    .line 474
    .local v6, target:I
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v8}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v2

    .line 475
    .local v2, currentViewport:Llecho/lib/hellocharts/model/Viewport;
    if-eqz v2, :cond_1

    .line 476
    iget v0, v2, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 477
    iget v1, v2, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 479
    :cond_1
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v8, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v4

    .line 480
    .local v4, rawX1:F
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v8, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v5

    .line 481
    .local v5, rawX2:F
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    int-to-float v9, v6

    invoke-virtual {v8, v9}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v7

    .line 483
    .local v7, y:F
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 484
    .local v3, path1:Landroid/graphics/Path;
    invoke-virtual {v3, v4, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 485
    invoke-virtual {v3, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 486
    iget-object v8, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawTargetCaloryText(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "drawCanvas"

    .prologue
    const/high16 v12, 0x4000

    .line 490
    iget v9, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->targetCalory:I

    if-gtz v9, :cond_0

    .line 509
    :goto_0
    return-void

    .line 492
    :cond_0
    const/4 v0, 0x0

    .line 493
    .local v0, currentLeft:F
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v9}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    .line 494
    .local v1, currentViewport:Llecho/lib/hellocharts/model/Viewport;
    if-eqz v1, :cond_1

    .line 495
    iget v0, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 497
    :cond_1
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v9, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v2

    .line 498
    .local v2, rawX1:F
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v10, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->targetCalory:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v8

    .line 499
    .local v8, y:F
    iget v9, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->targetCalory:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 500
    .local v4, targetStr:Ljava/lang/String;
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 501
    .local v5, textWidth:F
    sub-float v9, v2, v5

    iget v10, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->density:F

    const/4 v11, 0x2

    invoke-static {v10, v11}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v10

    int-to-float v10, v10

    sub-float v6, v9, v10

    .line 502
    .local v6, textX:F
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->getTextHeight()F

    move-result v9

    const/high16 v10, 0x4080

    div-float/2addr v9, v10

    add-float v7, v8, v9

    .line 504
    .local v7, textY:F
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->getTextHeight()F

    move-result v9

    div-float/2addr v9, v12

    sub-float v9, v8, v9

    add-float v10, v6, v5

    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->getTextHeight()F

    move-result v11

    div-float/2addr v11, v12

    add-float/2addr v11, v8

    invoke-direct {v3, v6, v9, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 505
    .local v3, rect:Landroid/graphics/RectF;
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryTextPaint:Landroid/graphics/Paint;

    sget v10, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_BACKGROUND:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 506
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 507
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryTextPaint:Landroid/graphics/Paint;

    sget v10, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_TARGET_COLOR:I

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 508
    iget-object v9, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->caloryTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v6, v7, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public drawUnclipped(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 138
    return-void
.end method

.method public onChartDataChanged()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->onChartDataChanged()V

    .line 103
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->dataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    invoke-interface {v1}, Llecho/lib/hellocharts/provider/ColumnChartDataProvider;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    .line 104
    .local v0, data:Llecho/lib/hellocharts/model/ColumnChartData;
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getFillRatio()F

    move-result v1

    iput v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->fillRatio:F

    .line 105
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/ColumnChartData;->getBaseValue()F

    move-result v1

    iput v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->baseValue:F

    .line 107
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->onChartViewportChanged()V

    .line 108
    return-void
.end method

.method public onChartSizeChanged()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public onChartViewportChanged()V
    .locals 2

    .prologue
    .line 112
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->isViewportCalculationEnabled:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->calculateMaxViewport()V

    .line 114
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->tempMaximumViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 115
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 117
    :cond_0
    return-void
.end method

.method public setMaxCaloryLimit(F)V
    .locals 0
    .parameter "maxCalory"

    .prologue
    .line 466
    iput p1, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->maxCaloryLimit:F

    .line 467
    return-void
.end method

.method public setTargetCalory(F)V
    .locals 1
    .parameter "targetCalory"

    .prologue
    .line 462
    new-instance v0, Ljava/lang/Float;

    invoke-direct {v0, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->targetCalory:I

    .line 463
    return-void
.end method
