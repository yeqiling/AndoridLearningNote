.class public Llecho/lib/hellocharts/renderer/AxesRenderer;
.super Ljava/lang/Object;
.source "AxesRenderer.java"


# static fields
.field private static final BOTTOM:I = 0x3

.field private static final DEFAULT_AXIS_MARGIN_DP:I = 0x2

.field private static final LEFT:I = 0x1

.field private static final RIGHT:I = 0x2

.field private static final TOP:I

.field private static final labelWidthChars:[C


# instance fields
.field private autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

.field private autoValuesToDrawTab:[[F

.field private axisMargin:I

.field private chart:Llecho/lib/hellocharts/view/Chart;

.field private computator:Llecho/lib/hellocharts/computator/ChartComputator;

.field private density:F

.field private fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

.field private imgRadius:I

.field private labelBaselineTab:[F

.field private labelBuffer:[C

.field private labelDimensionForMarginsTab:[I

.field private labelDimensionForStepsTab:[I

.field private labelPaintTab:[Landroid/graphics/Paint;

.field private labelTextAscentTab:[I

.field private labelTextDescentTab:[I

.field private labelWidthTab:[I

.field private linePaintTab:[Landroid/graphics/Paint;

.field private linesDrawBufferTab:[[F

.field private mContext:Landroid/content/Context;

.field private nameBaselineTab:[F

.field private namePaintTab:[Landroid/graphics/Paint;

.field private rawValuesTab:[[F

.field private resources:Landroid/content/res/Resources;

.field private scaledDensity:F

.field private separationLineTab:[F

.field private tiltedLabelXTranslation:[I

.field private tiltedLabelYTranslation:[I

.field private valuesToDrawNumTab:[I

.field private valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthChars:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
        0x30t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V
    .locals 8
    .parameter "context"
    .parameter "chart"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-array v1, v3, [Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v7

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    .line 60
    new-array v1, v3, [Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v7

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    .line 61
    new-array v1, v3, [Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v7

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    .line 62
    new-array v1, v3, [F

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    .line 63
    new-array v1, v3, [F

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    .line 64
    new-array v1, v3, [F

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    .line 65
    new-array v1, v3, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    .line 66
    new-array v1, v3, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    .line 67
    new-array v1, v3, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    .line 68
    new-array v1, v3, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    .line 69
    new-array v1, v3, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    .line 70
    new-array v1, v3, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelXTranslation:[I

    .line 71
    new-array v1, v3, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelYTranslation:[I

    .line 72
    new-array v1, v3, [Landroid/graphics/Paint$FontMetricsInt;

    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v2}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    aput-object v2, v1, v7

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

    .line 76
    const/16 v1, 0x28

    iput v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->imgRadius:I

    .line 80
    const/16 v1, 0x40

    new-array v1, v1, [C

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    .line 85
    new-array v1, v3, [I

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    .line 90
    filled-new-array {v3, v4}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    .line 96
    filled-new-array {v3, v4}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    .line 101
    filled-new-array {v3, v4}, [I

    move-result-object v1

    const-class v2, Llecho/lib/hellocharts/model/AxisValue;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Llecho/lib/hellocharts/model/AxisValue;

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    .line 106
    filled-new-array {v3, v4}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    .line 111
    new-array v1, v3, [Llecho/lib/hellocharts/util/AxisAutoValues;

    new-instance v2, Llecho/lib/hellocharts/util/AxisAutoValues;

    invoke-direct {v2}, Llecho/lib/hellocharts/util/AxisAutoValues;-><init>()V

    aput-object v2, v1, v4

    new-instance v2, Llecho/lib/hellocharts/util/AxisAutoValues;

    invoke-direct {v2}, Llecho/lib/hellocharts/util/AxisAutoValues;-><init>()V

    aput-object v2, v1, v5

    new-instance v2, Llecho/lib/hellocharts/util/AxisAutoValues;

    invoke-direct {v2}, Llecho/lib/hellocharts/util/AxisAutoValues;-><init>()V

    aput-object v2, v1, v6

    new-instance v2, Llecho/lib/hellocharts/util/AxisAutoValues;

    invoke-direct {v2}, Llecho/lib/hellocharts/util/AxisAutoValues;-><init>()V

    aput-object v2, v1, v7

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    .line 115
    iput-object p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    .line 116
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->resources:Landroid/content/res/Resources;

    .line 117
    iput-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->mContext:Landroid/content/Context;

    .line 118
    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v1

    iput-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->density:F

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->scaledDensity:F

    .line 121
    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->density:F

    invoke-static {v1, v6}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    iput v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    .line 122
    const/4 v0, 0x0

    .local v0, position:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 123
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 125
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 126
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 128
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method private checkRawValue(Landroid/graphics/Rect;FZIZ)Z
    .locals 7
    .parameter "rect"
    .parameter "rawValue"
    .parameter "axisInside"
    .parameter "position"
    .parameter "isVertical"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 531
    if-eqz p3, :cond_0

    .line 532
    if-eqz p5, :cond_2

    .line 533
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    iget v6, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v5, v6

    int-to-float v1, v5

    .line 534
    .local v1, marginBottom:F
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v5, v5, v4

    iget v6, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v5, v6

    int-to-float v2, v5

    .line 535
    .local v2, marginTop:F
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_1

    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_1

    .line 549
    .end local v1           #marginBottom:F
    .end local v2           #marginTop:F
    :cond_0
    :goto_0
    return v3

    .restart local v1       #marginBottom:F
    .restart local v2       #marginTop:F
    :cond_1
    move v3, v4

    .line 538
    goto :goto_0

    .line 541
    .end local v1           #marginBottom:F
    .end local v2           #marginTop:F
    :cond_2
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget v5, v5, p4

    div-int/lit8 v5, v5, 0x2

    int-to-float v0, v5

    .line 542
    .local v0, margin:F
    iget v5, p1, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    add-float/2addr v5, v0

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_3

    iget v5, p1, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    cmpg-float v5, p2, v5

    if-lez v5, :cond_0

    :cond_3
    move v3, v4

    .line 545
    goto :goto_0
.end method

.method private drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V
    .locals 12
    .parameter "canvas"
    .parameter "axis"
    .parameter "position"

    .prologue
    .line 599
    const/4 v5, 0x0

    .local v5, labelY:F
    move v4, v5

    .line 600
    .local v4, labelX:F
    invoke-direct {p0, p3}, Llecho/lib/hellocharts/renderer/AxesRenderer;->isAxisVertical(I)Z

    move-result v9

    .line 601
    .local v9, isAxisVertical:Z
    const/4 v0, 0x1

    if-eq v0, p3, :cond_0

    const/4 v0, 0x2

    if-ne v0, p3, :cond_2

    .line 602
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v4, v0, p3

    .line 607
    :cond_1
    :goto_0
    const/4 v11, 0x0

    .local v11, valueToDrawIndex:I
    :goto_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    aget v0, v0, p3

    if-ge v11, v0, :cond_7

    .line 608
    const/4 v3, 0x0

    .line 609
    .local v3, charsNumber:I
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 610
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    aget-object v0, v0, p3

    aget v10, v0, v11

    .line 611
    .local v10, value:F
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getFormatter()Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    move-result-object v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v2, v2, p3

    iget v2, v2, Llecho/lib/hellocharts/util/AxisAutoValues;->decimals:I

    invoke-interface {v0, v1, v10, v2}, Llecho/lib/hellocharts/formatter/AxisValueFormatter;->formatValueForAutoGeneratedAxis([CFI)I

    move-result v3

    .line 618
    .end local v10           #value:F
    :goto_2
    if-eqz v9, :cond_5

    .line 619
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v0, v0, p3

    aget v5, v0, v11

    .line 624
    :goto_3
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->hasTiltedLabels()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 625
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 626
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelXTranslation:[I

    aget v0, v0, p3

    int-to-float v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelYTranslation:[I

    aget v1, v1, p3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 627
    const/high16 v0, -0x3dcc

    invoke-virtual {p1, v0, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 628
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    array-length v0, v0

    sub-int v2, v0, v3

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v6, v0, p3

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 631
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 607
    :goto_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 603
    .end local v3           #charsNumber:I
    .end local v11           #valueToDrawIndex:I
    :cond_2
    if-eqz p3, :cond_3

    const/4 v0, 0x3

    if-ne v0, p3, :cond_1

    .line 604
    :cond_3
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v5, v0, p3

    goto :goto_0

    .line 614
    .restart local v3       #charsNumber:I
    .restart local v11       #valueToDrawIndex:I
    :cond_4
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    aget-object v0, v0, p3

    aget-object v7, v0, v11

    .line 615
    .local v7, axisValue:Llecho/lib/hellocharts/model/AxisValue;
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getFormatter()Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    move-result-object v0

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    invoke-interface {v0, v1, v7}, Llecho/lib/hellocharts/formatter/AxisValueFormatter;->formatValueForManualAxis([CLlecho/lib/hellocharts/model/AxisValue;)I

    move-result v3

    goto :goto_2

    .line 621
    .end local v7           #axisValue:Llecho/lib/hellocharts/model/AxisValue;
    :cond_5
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v0, v0, p3

    aget v4, v0, v11

    goto :goto_3

    .line 633
    :cond_6
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    array-length v0, v0

    sub-int v2, v0, v3

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v6, v0, p3

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 639
    .end local v3           #charsNumber:I
    :cond_7
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v8

    .line 640
    .local v8, contentRectMargins:Landroid/graphics/Rect;
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 641
    if-eqz v9, :cond_9

    .line 642
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 643
    const/high16 v0, -0x3d4c

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 644
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    aget v2, v2, p3

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v6, v6, p3

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 646
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 652
    :cond_8
    :goto_5
    return-void

    .line 648
    :cond_9
    invoke-virtual {p2}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    aget v2, v2, p3

    iget-object v6, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v6, v6, p3

    invoke-virtual {p1, v0, v1, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5
.end method

.method private drawAxisLabelsAndNameForBottom(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V
    .locals 21
    .parameter "canvas"
    .parameter "axis"
    .parameter "position"

    .prologue
    .line 657
    const/16 v18, 0x0

    .local v18, nameY:F
    move/from16 v17, v18

    .local v17, nameX:F
    move/from16 v7, v18

    .local v7, labelY:F
    move/from16 v6, v18

    .line 658
    .local v6, labelX:F
    const/4 v14, 0x0

    .line 659
    .local v14, axisValue:Llecho/lib/hellocharts/model/AxisValue;
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->isAxisVertical(I)Z

    move-result v16

    .line 660
    .local v16, isAxisVertical:Z
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v2, v0, :cond_0

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v2, v0, :cond_3

    .line 661
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v6, v2, p3

    .line 666
    :cond_1
    :goto_0
    const/16 v20, 0x0

    .local v20, valueToDrawIndex:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    aget v2, v2, p3

    move/from16 v0, v20

    if-ge v0, v2, :cond_8

    .line 667
    const/4 v5, 0x0

    .line 668
    .local v5, charsNumber:I
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 669
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    aget-object v2, v2, p3

    aget v19, v2, v20

    .line 670
    .local v19, value:F
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->getFormatter()Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    move-object/from16 v0, p0

    iget-object v4, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v4, v4, p3

    iget v4, v4, Llecho/lib/hellocharts/util/AxisAutoValues;->decimals:I

    move/from16 v0, v19

    invoke-interface {v2, v3, v0, v4}, Llecho/lib/hellocharts/formatter/AxisValueFormatter;->formatValueForAutoGeneratedAxis([CFI)I

    move-result v5

    .line 677
    .end local v19           #value:F
    :goto_2
    if-eqz v16, :cond_6

    .line 678
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v2, v2, p3

    aget v7, v2, v20

    .line 683
    :goto_3
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->hasTiltedLabels()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 685
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelXTranslation:[I

    aget v2, v2, p3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelYTranslation:[I

    aget v3, v3, p3

    int-to-float v3, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 686
    const/high16 v2, -0x3dcc

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6, v7}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    array-length v2, v2

    sub-int v4, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v8, v2, p3

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 689
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 666
    :cond_2
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 662
    .end local v5           #charsNumber:I
    .end local v20           #valueToDrawIndex:I
    :cond_3
    if-eqz p3, :cond_4

    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v2, v0, :cond_1

    .line 663
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v7, v2, p3

    goto/16 :goto_0

    .line 673
    .restart local v5       #charsNumber:I
    .restart local v20       #valueToDrawIndex:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    aget-object v2, v2, p3

    aget-object v14, v2, v20

    .line 674
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->getFormatter()Llecho/lib/hellocharts/formatter/AxisValueFormatter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    invoke-interface {v2, v3, v14}, Llecho/lib/hellocharts/formatter/AxisValueFormatter;->formatValueForManualAxis([CLlecho/lib/hellocharts/model/AxisValue;)I

    move-result v5

    goto :goto_2

    .line 680
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v2, v2, p3

    aget v6, v2, v20

    goto :goto_3

    .line 691
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBuffer:[C

    array-length v2, v2

    sub-int v4, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v8, v2, p3

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 695
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ge v2, v3, :cond_2

    .line 699
    if-eqz v14, :cond_2

    invoke-virtual {v14}, Llecho/lib/hellocharts/model/AxisValue;->getData()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 700
    invoke-virtual {v14}, Llecho/lib/hellocharts/model/AxisValue;->getData()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 701
    .local v9, url:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 702
    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->imgRadius:I

    int-to-float v2, v2

    sub-float v11, v6, v2

    move-object/from16 v0, p0

    iget v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->imgRadius:I

    int-to-float v2, v2

    add-float/2addr v2, v7

    const/high16 v3, 0x4120

    sub-float v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v13, v2, p3

    move-object/from16 v8, p0

    move-object/from16 v10, p1

    invoke-direct/range {v8 .. v13}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawThumbPhoto(Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 709
    .end local v5           #charsNumber:I
    .end local v9           #url:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v15

    .line 710
    .local v15, contentRectMargins:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 711
    if-eqz v16, :cond_a

    .line 712
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 713
    const/high16 v2, -0x3d4c

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 714
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    aget v4, v4, p3

    move-object/from16 v0, p0

    iget-object v8, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v8, v8, p3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 716
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 722
    :cond_9
    :goto_5
    return-void

    .line 718
    :cond_a
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    aget v4, v4, p3

    move-object/from16 v0, p0

    iget-object v8, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v8, v8, p3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5
.end method

.method private drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V
    .locals 17
    .parameter "canvas"
    .parameter "axis"
    .parameter "position"

    .prologue
    .line 554
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v8

    .line 556
    .local v8, contentRectMargins:Landroid/graphics/Rect;
    const/4 v6, 0x0

    .local v6, separationY2:F
    move v5, v6

    .local v5, separationX2:F
    move v4, v6

    .local v4, separationY1:F
    move v3, v6

    .line 558
    .local v3, separationX1:F
    const/4 v13, 0x0

    .local v13, lineY2:F
    move v11, v13

    .local v11, lineX2:F
    move v12, v13

    .local v12, lineY1:F
    move v10, v13

    .line 559
    .local v10, lineX1:F
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->isAxisVertical(I)Z

    move-result v9

    .line 560
    .local v9, isAxisVertical:Z
    const/4 v2, 0x1

    move/from16 v0, p3

    if-eq v2, v0, :cond_0

    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v2, v0, :cond_3

    .line 561
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    aget v5, v2, p3

    move v3, v5

    .line 562
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v2

    .line 563
    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v6, v2

    .line 564
    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v10, v2

    .line 565
    iget v2, v8, Landroid/graphics/Rect;->right:I

    int-to-float v11, v2

    .line 574
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->hasSeparationLine()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v7, v2, p3

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 578
    :cond_2
    invoke-virtual/range {p2 .. p2}, Llecho/lib/hellocharts/model/Axis;->hasLines()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 579
    const/4 v14, 0x0

    .line 580
    .local v14, valueToDrawIndex:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    aget v2, v2, p3

    if-ge v14, v2, :cond_6

    .line 581
    if-eqz v9, :cond_5

    .line 582
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v2, v2, p3

    aget v13, v2, v14

    move v12, v13

    .line 586
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v2, v2, p3

    mul-int/lit8 v7, v14, 0x4

    add-int/lit8 v7, v7, 0x0

    aput v10, v2, v7

    .line 587
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v2, v2, p3

    mul-int/lit8 v7, v14, 0x4

    add-int/lit8 v7, v7, 0x1

    aput v12, v2, v7

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v2, v2, p3

    mul-int/lit8 v7, v14, 0x4

    add-int/lit8 v7, v7, 0x2

    aput v11, v2, v7

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v2, v2, p3

    mul-int/lit8 v7, v14, 0x4

    add-int/lit8 v7, v7, 0x3

    aput v13, v2, v7

    .line 580
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 566
    .end local v14           #valueToDrawIndex:I
    :cond_3
    if-eqz p3, :cond_4

    const/4 v2, 0x3

    move/from16 v0, p3

    if-ne v2, v0, :cond_1

    .line 567
    :cond_4
    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v3, v2

    .line 568
    iget v2, v8, Landroid/graphics/Rect;->right:I

    int-to-float v5, v2

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    aget v6, v2, p3

    move v4, v6

    .line 570
    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v12, v2

    .line 571
    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v13, v2

    goto :goto_0

    .line 584
    .restart local v14       #valueToDrawIndex:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v2, v2, p3

    aget v11, v2, v14

    move v10, v11

    goto :goto_2

    .line 592
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v2, v2, p3

    const/4 v7, 0x0

    mul-int/lit8 v15, v14, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    move-object/from16 v16, v0

    aget-object v16, v16, p3

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v7, v15, v1}, Landroid/graphics/Canvas;->drawLines([FIILandroid/graphics/Paint;)V

    .line 594
    .end local v14           #valueToDrawIndex:I
    :cond_7
    return-void
.end method

.method private drawThumbPhoto(Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 7
    .parameter "url"
    .parameter "canvas"
    .parameter "x"
    .parameter "y"
    .parameter "paint"

    .prologue
    .line 734
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v1, Llecho/lib/hellocharts/util/CircleTransform;

    invoke-direct {v1}, Llecho/lib/hellocharts/util/CircleTransform;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->imgRadius:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->imgRadius:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v6

    new-instance v0, Llecho/lib/hellocharts/renderer/AxesRenderer$1;

    move-object v1, p0

    move v2, p4

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/AxesRenderer$1;-><init>(Llecho/lib/hellocharts/renderer/AxesRenderer;FLandroid/graphics/Canvas;FLandroid/graphics/Paint;)V

    invoke-virtual {v6, v0}, Lcom/squareup/picasso/RequestCreator;->into(Lcom/squareup/picasso/Target;)V

    .line 755
    return-void
.end method

.method private getAxisNameMargin(Llecho/lib/hellocharts/model/Axis;I)I
    .locals 2
    .parameter "axis"
    .parameter "position"

    .prologue
    .line 273
    const/4 v0, 0x0

    .line 274
    .local v0, margin:I
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 275
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    .line 276
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v1, v1, p2

    add-int/2addr v0, v1

    .line 277
    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v0, v1

    .line 279
    :cond_0
    return v0
.end method

.method private initAxis(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 0
    .parameter "axis"
    .parameter "position"

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisAttributes(Llecho/lib/hellocharts/model/Axis;I)V

    .line 162
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisMargin(Llecho/lib/hellocharts/model/Axis;I)V

    .line 163
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisMeasurements(Llecho/lib/hellocharts/model/Axis;I)V

    goto :goto_0
.end method

.method private initAxisAttributes(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 1
    .parameter "axis"
    .parameter "position"

    .prologue
    .line 167
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisPaints(Llecho/lib/hellocharts/model/Axis;I)V

    .line 168
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisTextAlignment(Llecho/lib/hellocharts/model/Axis;I)V

    .line 169
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->hasTiltedLabels()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisDimensionForTiltedLabels(I)V

    .line 171
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->intiTiltedLabelsTranslation(Llecho/lib/hellocharts/model/Axis;I)V

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxisDimension(I)V

    goto :goto_0
.end method

.method private initAxisDimension(I)V
    .locals 3
    .parameter "position"

    .prologue
    .line 223
    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 v0, 0x2

    if-ne v0, p1, :cond_2

    .line 224
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 225
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 226
    :cond_2
    if-eqz p1, :cond_3

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    .line 227
    :cond_3
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v1, v1, p1

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v2, v2, p1

    add-int/2addr v1, v2

    aput v1, v0, p1

    .line 229
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget v1, v1, p1

    aput v1, v0, p1

    goto :goto_0
.end method

.method private initAxisDimensionForTiltedLabels(I)V
    .locals 6
    .parameter "position"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 216
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget v2, v2, p1

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 217
    .local v1, pythagoreanFromLabelWidth:I
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v2, v2, p1

    int-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 218
    .local v0, pythagoreanFromAscent:I
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    add-int v3, v0, v1

    aput v3, v2, p1

    .line 219
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v3, v3, p1

    int-to-float v3, v3

    const/high16 v4, 0x3f40

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    aput v3, v2, p1

    .line 220
    return-void
.end method

.method private initAxisMargin(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 3
    .parameter "axis"
    .parameter "position"

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, margin:I
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 266
    :cond_0
    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 268
    :cond_1
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->getAxisNameMargin(Llecho/lib/hellocharts/model/Axis;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 269
    invoke-direct {p0, v0, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->insetContentRectWithAxesMargins(II)V

    .line 270
    return-void
.end method

.method private initAxisMeasurements(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 3
    .parameter "axis"
    .parameter "position"

    .prologue
    .line 295
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 296
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, p2

    .line 298
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v2, v2, p2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, p2

    .line 305
    :goto_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    aput v1, v0, p2

    .line 346
    :goto_1
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, p2

    .line 302
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v1, v1, p2

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v2, v2, p2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v2, v2, p2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, v0, p2

    goto :goto_0

    .line 306
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p2, :cond_3

    .line 307
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, p2

    .line 309
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, p2

    .line 316
    :goto_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    aput v1, v0, p2

    goto :goto_1

    .line 312
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, p2

    .line 313
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v1, v1, p2

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v2, v2, p2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v2, v2, p2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, p2

    goto :goto_2

    .line 317
    :cond_3
    const/4 v0, 0x3

    if-ne v0, p2, :cond_5

    .line 318
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 319
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v2, v2, p2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, p2

    .line 321
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, p2

    .line 329
    :goto_3
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    aput v1, v0, p2

    goto/16 :goto_1

    .line 324
    :cond_4
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, p2

    .line 326
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v1, v1, p2

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v2, v2, p2

    int-to-float v2, v2

    add-float/2addr v1, v2

    aput v1, v0, p2

    goto :goto_3

    .line 330
    :cond_5
    if-nez p2, :cond_7

    .line 331
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 332
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    add-int/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v2, v2, p2

    add-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, p2

    .line 334
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v2, v2, p2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, p2

    .line 342
    :goto_4
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->separationLineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    aput v1, v0, p2

    goto/16 :goto_1

    .line 337
    :cond_6
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAxesMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    aget v2, v2, p2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    aput v1, v0, p2

    .line 339
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->nameBaselineTab:[F

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelBaselineTab:[F

    aget v1, v1, p2

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->axisMargin:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForMarginsTab:[I

    aget v2, v2, p2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, v0, p2

    goto :goto_4

    .line 344
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid axis position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private initAxisPaints(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 6
    .parameter "axis"
    .parameter "position"

    .prologue
    .line 178
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    .line 179
    .local v0, typeface:Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 181
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 183
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 184
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->scaledDensity:F

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTextSize()I

    move-result v3

    invoke-static {v2, v3}, Llecho/lib/hellocharts/util/ChartUtils;->sp2px(FI)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 185
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

    aget-object v2, v2, p2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 186
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTextColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->scaledDensity:F

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getTextSize()I

    move-result v3

    invoke-static {v2, v3}, Llecho/lib/hellocharts/util/ChartUtils;->sp2px(FI)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 188
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linePaintTab:[Landroid/graphics/Paint;

    aget-object v1, v1, p2

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getLineColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

    aget-object v2, v2, p2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    aput v2, v1, p2

    .line 191
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextDescentTab:[I

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->fontMetricsTab:[Landroid/graphics/Paint$FontMetricsInt;

    aget-object v2, v2, p2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    aput v2, v1, p2

    .line 192
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v2, v2, p2

    sget-object v3, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthChars:[C

    const/4 v4, 0x0

    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->getMaxLabelChars()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v2

    float-to-int v2, v2

    aput v2, v1, p2

    .line 194
    return-void
.end method

.method private initAxisTextAlignment(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 2
    .parameter "axis"
    .parameter "position"

    .prologue
    .line 197
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->namePaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 198
    if-eqz p2, :cond_0

    const/4 v0, 0x3

    if-ne v0, p2, :cond_2

    .line 199
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 213
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    const/4 v0, 0x1

    if-ne v0, p2, :cond_4

    .line 201
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 204
    :cond_3
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 206
    :cond_4
    const/4 v0, 0x2

    if-ne v0, p2, :cond_1

    .line 207
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 208
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0

    .line 210
    :cond_5
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelPaintTab:[Landroid/graphics/Paint;

    aget-object v0, v0, p2

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_0
.end method

.method private insetContentRectWithAxesMargins(II)V
    .locals 2
    .parameter "axisMargin"
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 283
    const/4 v0, 0x1

    if-ne v0, p2, :cond_1

    .line 284
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRect(IIII)V

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    const/4 v0, 0x2

    if-ne v0, p2, :cond_2

    .line 286
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    invoke-virtual {v0, v1, v1, p1, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRect(IIII)V

    goto :goto_0

    .line 287
    :cond_2
    if-nez p2, :cond_3

    .line 288
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v1, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRect(IIII)V

    goto :goto_0

    .line 289
    :cond_3
    const/4 v0, 0x3

    if-ne v0, p2, :cond_0

    .line 290
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, p1}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRect(IIII)V

    goto :goto_0
.end method

.method private intiTiltedLabelsTranslation(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 11
    .parameter "axis"
    .parameter "position"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const-wide/high16 v6, 0x4000

    .line 234
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelWidthTab:[I

    aget v4, v4, p2

    int-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    .line 235
    .local v3, pythagoreanFromLabelWidth:I
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v4, v4, p2

    int-to-double v4, v4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 236
    .local v2, pythagoreanFromAscent:I
    const/4 v0, 0x0

    .line 237
    .local v0, dx:I
    const/4 v1, 0x0

    .line 238
    .local v1, dy:I
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 239
    if-ne v8, p2, :cond_1

    .line 240
    move v0, v2

    .line 259
    :cond_0
    :goto_0
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelXTranslation:[I

    aput v0, v4, p2

    .line 260
    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->tiltedLabelYTranslation:[I

    aput v1, v4, p2

    .line 261
    return-void

    .line 241
    :cond_1
    if-ne v9, p2, :cond_2

    .line 242
    neg-int v4, v3

    div-int/lit8 v1, v4, 0x2

    goto :goto_0

    .line 243
    :cond_2
    if-nez p2, :cond_3

    .line 244
    div-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v2

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v5, v5, p2

    sub-int v1, v4, v5

    goto :goto_0

    .line 245
    :cond_3
    if-ne v10, p2, :cond_0

    .line 246
    neg-int v4, v3

    div-int/lit8 v1, v4, 0x2

    goto :goto_0

    .line 249
    :cond_4
    if-ne v8, p2, :cond_5

    .line 250
    neg-int v4, v3

    div-int/lit8 v1, v4, 0x2

    goto :goto_0

    .line 251
    :cond_5
    if-ne v9, p2, :cond_6

    .line 252
    move v0, v2

    goto :goto_0

    .line 253
    :cond_6
    if-nez p2, :cond_7

    .line 254
    neg-int v4, v3

    div-int/lit8 v1, v4, 0x2

    goto :goto_0

    .line 255
    :cond_7
    if-ne v10, p2, :cond_0

    .line 256
    div-int/lit8 v4, v3, 0x2

    add-int/2addr v4, v2

    iget-object v5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelTextAscentTab:[I

    aget v5, v5, p2

    sub-int v1, v4, v5

    goto :goto_0
.end method

.method private isAxisVertical(I)Z
    .locals 3
    .parameter "position"

    .prologue
    const/4 v0, 0x1

    .line 759
    if-eq v0, p1, :cond_0

    const/4 v1, 0x2

    if-ne v1, p1, :cond_1

    .line 762
    :cond_0
    :goto_0
    return v0

    .line 761
    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x3

    if-ne v0, p1, :cond_3

    .line 762
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 764
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid axis position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onChartDataOrSizeChanged()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    instance-of v0, v0, Llecho/lib/hellocharts/model/LineChartData;

    if-eqz v0, :cond_0

    .line 142
    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->density:F

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/LineChartData;->getImgRadius()F

    move-result v0

    invoke-static {v1, v0}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FF)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->imgRadius:I

    .line 144
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXTop()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxis(Llecho/lib/hellocharts/model/Axis;I)V

    .line 145
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxis(Llecho/lib/hellocharts/model/Axis;I)V

    .line 146
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYLeft()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxis(Llecho/lib/hellocharts/model/Axis;I)V

    .line 147
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->initAxis(Llecho/lib/hellocharts/model/Axis;I)V

    .line 148
    return-void
.end method

.method private prepareAutoGeneratedAxis(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 12
    .parameter "axis"
    .parameter "position"

    .prologue
    .line 484
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getVisibleViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v11

    .line 485
    .local v11, visibleViewport:Llecho/lib/hellocharts/model/Viewport;
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    .line 486
    .local v1, contentRect:Landroid/graphics/Rect;
    invoke-direct {p0, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->isAxisVertical(I)Z

    move-result v5

    .line 489
    .local v5, isAxisVertical:Z
    if-eqz v5, :cond_4

    .line 490
    iget v8, v11, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 491
    .local v8, start:F
    iget v9, v11, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 492
    .local v9, stop:F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 498
    .local v6, contentRectDimension:I
    :goto_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    aget v0, v0, p2

    div-int v0, v6, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v3, v3, p2

    invoke-static {v8, v9, v0, v3}, Llecho/lib/hellocharts/util/FloatUtils;->computeAutoGeneratedAxisValues(FFILlecho/lib/hellocharts/util/AxisAutoValues;)V

    .line 501
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->hasLines()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v0, v0, p2

    array-length v0, v0

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v3, v3, p2

    iget v3, v3, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    mul-int/lit8 v3, v3, 0x4

    if-ge v0, v3, :cond_0

    .line 503
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v3, v3, p2

    iget v3, v3, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    mul-int/lit8 v3, v3, 0x4

    new-array v3, v3, [F

    aput-object v3, v0, p2

    .line 506
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v0, v0, p2

    array-length v0, v0

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v3, v3, p2

    iget v3, v3, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    if-ge v0, v3, :cond_1

    .line 507
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v3, v3, p2

    iget v3, v3, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    new-array v3, v3, [F

    aput-object v3, v0, p2

    .line 509
    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    aget-object v0, v0, p2

    array-length v0, v0

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v3, v3, p2

    iget v3, v3, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    if-ge v0, v3, :cond_2

    .line 510
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v3, v3, p2

    iget v3, v3, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    new-array v3, v3, [F

    aput-object v3, v0, p2

    .line 514
    :cond_2
    const/4 v10, 0x0

    .line 515
    .local v10, valueToDrawIndex:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v0, v0, p2

    iget v0, v0, Llecho/lib/hellocharts/util/AxisAutoValues;->valuesNumber:I

    if-ge v7, v0, :cond_6

    .line 516
    if-eqz v5, :cond_5

    .line 517
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v3, v3, p2

    iget-object v3, v3, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    aget v3, v3, v7

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v2

    .line 521
    .local v2, rawValue:F
    :goto_2
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v3

    move-object v0, p0

    move v4, p2

    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/renderer/AxesRenderer;->checkRawValue(Landroid/graphics/Rect;FZIZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 522
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v0, v0, p2

    aput v2, v0, v10

    .line 523
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesToDrawTab:[[F

    aget-object v0, v0, p2

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v3, v3, p2

    iget-object v3, v3, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    aget v3, v3, v7

    aput v3, v0, v10

    .line 524
    add-int/lit8 v10, v10, 0x1

    .line 515
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 494
    .end local v2           #rawValue:F
    .end local v6           #contentRectDimension:I
    .end local v7           #i:I
    .end local v8           #start:F
    .end local v9           #stop:F
    .end local v10           #valueToDrawIndex:I
    :cond_4
    iget v8, v11, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 495
    .restart local v8       #start:F
    iget v9, v11, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 496
    .restart local v9       #stop:F
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    .restart local v6       #contentRectDimension:I
    goto/16 :goto_0

    .line 519
    .restart local v7       #i:I
    .restart local v10       #valueToDrawIndex:I
    :cond_5
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->autoValuesBufferTab:[Llecho/lib/hellocharts/util/AxisAutoValues;

    aget-object v3, v3, p2

    iget-object v3, v3, Llecho/lib/hellocharts/util/AxisAutoValues;->values:[F

    aget v3, v3, v7

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v2

    .restart local v2       #rawValue:F
    goto :goto_2

    .line 527
    .end local v2           #rawValue:F
    :cond_6
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    aput v10, v0, p2

    .line 528
    return-void
.end method

.method private prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 1
    .parameter "axis"
    .parameter "position"

    .prologue
    .line 380
    invoke-virtual {p1}, Llecho/lib/hellocharts/model/Axis;->isAutoGenerated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAutoGeneratedAxis(Llecho/lib/hellocharts/model/Axis;I)V

    .line 385
    :goto_0
    return-void

    .line 383
    :cond_0
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareCustomAxis(Llecho/lib/hellocharts/model/Axis;I)V

    goto :goto_0
.end method

.method private prepareCustomAxis(Llecho/lib/hellocharts/model/Axis;I)V
    .locals 26
    .parameter "axis"
    .parameter "position"

    .prologue
    .line 419
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v10

    .line 420
    .local v10, maxViewport:Llecho/lib/hellocharts/model/Viewport;
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getVisibleViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v18

    .line 421
    .local v18, visibleViewport:Llecho/lib/hellocharts/model/Viewport;
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v3

    .line 422
    .local v3, contentRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->isAxisVertical(I)Z

    move-result v7

    .line 424
    .local v7, isAxisVertical:Z
    const/high16 v12, 0x3f80

    .line 425
    .local v12, scale:F
    if-eqz v7, :cond_7

    .line 426
    invoke-virtual {v10}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    invoke-virtual/range {v18 .. v18}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 427
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v5

    invoke-virtual/range {v18 .. v18}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v6

    div-float/2addr v5, v6

    mul-float v12, v2, v5

    .line 429
    :cond_0
    move-object/from16 v0, v18

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    move/from16 v17, v0

    .line 430
    .local v17, viewportMin:F
    move-object/from16 v0, v18

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    move/from16 v16, v0

    .line 438
    .local v16, viewportMax:F
    :goto_0
    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-nez v2, :cond_1

    .line 439
    const/high16 v12, 0x3f80

    .line 441
    :cond_1
    const-wide/high16 v20, 0x3ff0

    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->labelDimensionForStepsTab:[I

    aget v5, v5, p2

    mul-int/2addr v2, v5

    int-to-double v0, v2

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff8

    mul-double v22, v22, v24

    float-to-double v0, v12

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-int v11, v0

    .line 444
    .local v11, module:I
    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->hasLines()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    aget-object v2, v2, p2

    array-length v2, v2

    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    if-ge v2, v5, :cond_2

    .line 445
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->linesDrawBufferTab:[[F

    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    new-array v5, v5, [F

    aput-object v5, v2, p2

    .line 448
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v2, v2, p2

    array-length v2, v2

    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [F

    aput-object v5, v2, p2

    .line 452
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    aget-object v2, v2, p2

    array-length v2, v2

    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Llecho/lib/hellocharts/model/AxisValue;

    aput-object v5, v2, p2

    .line 457
    :cond_4
    const/4 v14, 0x0

    .line 458
    .local v14, valueIndex:I
    const/4 v15, 0x0

    .line 459
    .local v15, valueToDrawIndex:I
    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Llecho/lib/hellocharts/model/AxisValue;

    .line 461
    .local v8, axisValue:Llecho/lib/hellocharts/model/AxisValue;
    invoke-virtual {v8}, Llecho/lib/hellocharts/model/AxisValue;->getValue()F

    move-result v13

    .line 462
    .local v13, value:F
    cmpl-float v2, v13, v17

    if-ltz v2, :cond_5

    cmpg-float v2, v13, v16

    if-gtz v2, :cond_5

    .line 464
    rem-int v2, v14, v11

    if-nez v2, :cond_6

    .line 465
    if-eqz v7, :cond_9

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2, v13}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v4

    .line 470
    .local v4, rawValue:F
    :goto_2
    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/model/Axis;->isInside()Z

    move-result v5

    move-object/from16 v2, p0

    move/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Llecho/lib/hellocharts/renderer/AxesRenderer;->checkRawValue(Landroid/graphics/Rect;FZIZ)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->rawValuesTab:[[F

    aget-object v2, v2, p2

    aput v4, v2, v15

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawTab:[[Llecho/lib/hellocharts/model/AxisValue;

    aget-object v2, v2, p2

    aput-object v8, v2, v15

    .line 473
    add-int/lit8 v15, v15, 0x1

    .line 477
    .end local v4           #rawValue:F
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 432
    .end local v8           #axisValue:Llecho/lib/hellocharts/model/AxisValue;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v11           #module:I
    .end local v13           #value:F
    .end local v14           #valueIndex:I
    .end local v15           #valueToDrawIndex:I
    .end local v16           #viewportMax:F
    .end local v17           #viewportMin:F
    :cond_7
    invoke-virtual {v10}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    invoke-virtual/range {v18 .. v18}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v2

    const/4 v5, 0x0

    cmpl-float v2, v2, v5

    if-lez v2, :cond_8

    .line 433
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v10}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v5

    invoke-virtual/range {v18 .. v18}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v6

    div-float/2addr v5, v6

    mul-float v12, v2, v5

    .line 435
    :cond_8
    move-object/from16 v0, v18

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    move/from16 v17, v0

    .line 436
    .restart local v17       #viewportMin:F
    move-object/from16 v0, v18

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    move/from16 v16, v0

    .restart local v16       #viewportMax:F
    goto/16 :goto_0

    .line 468
    .restart local v8       #axisValue:Llecho/lib/hellocharts/model/AxisValue;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v11       #module:I
    .restart local v13       #value:F
    .restart local v14       #valueIndex:I
    .restart local v15       #valueToDrawIndex:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v2, v13}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v4

    .restart local v4       #rawValue:F
    goto :goto_2

    .line 480
    .end local v4           #rawValue:F
    .end local v8           #axisValue:Llecho/lib/hellocharts/model/AxisValue;
    .end local v13           #value:F
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Llecho/lib/hellocharts/renderer/AxesRenderer;->valuesToDrawNumTab:[I

    aput v15, v2, p2

    .line 481
    return-void
.end method


# virtual methods
.method public drawInBackground(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 354
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v1}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v1

    invoke-interface {v1}, Llecho/lib/hellocharts/model/ChartData;->getAxisYLeft()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    .line 355
    .local v0, axis:Llecho/lib/hellocharts/model/Axis;
    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0, v0, v3}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V

    .line 357
    invoke-direct {p0, p1, v0, v3}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 360
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v1}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v1

    invoke-interface {v1}, Llecho/lib/hellocharts/model/ChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_1

    .line 362
    invoke-direct {p0, v0, v4}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V

    .line 363
    invoke-direct {p0, p1, v0, v4}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 366
    :cond_1
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v1}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v1

    invoke-interface {v1}, Llecho/lib/hellocharts/model/ChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_2

    .line 368
    invoke-direct {p0, v0, v5}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V

    .line 369
    invoke-direct {p0, p1, v0, v5}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 372
    :cond_2
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v1}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v1

    invoke-interface {v1}, Llecho/lib/hellocharts/model/ChartData;->getAxisXTop()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    .line 373
    if-eqz v0, :cond_3

    .line 374
    invoke-direct {p0, v0, v2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->prepareAxisToDraw(Llecho/lib/hellocharts/model/Axis;I)V

    .line 375
    invoke-direct {p0, p1, v0, v2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLines(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 377
    :cond_3
    return-void
.end method

.method public drawInForeground(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x3

    .line 393
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v1}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v1

    invoke-interface {v1}, Llecho/lib/hellocharts/model/ChartData;->getAxisYLeft()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    .line 394
    .local v0, axis:Llecho/lib/hellocharts/model/Axis;
    if-eqz v0, :cond_0

    .line 395
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 398
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v1}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v1

    invoke-interface {v1}, Llecho/lib/hellocharts/model/ChartData;->getAxisYRight()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    .line 399
    if-eqz v0, :cond_1

    .line 400
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 403
    :cond_1
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v1}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v1

    invoke-interface {v1}, Llecho/lib/hellocharts/model/ChartData;->getAxisXBottom()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    .line 404
    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Axis;->isHasThumb()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 406
    invoke-direct {p0, p1, v0, v2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLabelsAndNameForBottom(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 412
    :cond_2
    :goto_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v1}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v1

    invoke-interface {v1}, Llecho/lib/hellocharts/model/ChartData;->getAxisXTop()Llecho/lib/hellocharts/model/Axis;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_3

    .line 414
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    .line 416
    :cond_3
    return-void

    .line 408
    :cond_4
    invoke-direct {p0, p1, v0, v2}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawAxisLabelsAndName(Landroid/graphics/Canvas;Llecho/lib/hellocharts/model/Axis;I)V

    goto :goto_0
.end method

.method public onChartDataChanged()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/AxesRenderer;->onChartDataOrSizeChanged()V

    .line 138
    return-void
.end method

.method public onChartSizeChanged()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Llecho/lib/hellocharts/renderer/AxesRenderer;->onChartDataOrSizeChanged()V

    .line 134
    return-void
.end method

.method public resetRenderer()V
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AxesRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 152
    return-void
.end method
