.class public abstract Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.super Ljava/lang/Object;
.source "AbstractChartRenderer.java"

# interfaces
.implements Llecho/lib/hellocharts/renderer/ChartRenderer;


# instance fields
.field public DEFAULT_LABEL_MARGIN_DP:I

.field protected chart:Llecho/lib/hellocharts/view/Chart;

.field protected computator:Llecho/lib/hellocharts/computator/ChartComputator;

.field protected context:Landroid/content/Context;

.field protected density:F

.field protected fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field protected isValueLabelBackgroundAuto:Z

.field protected isValueLabelBackgroundEnabled:Z

.field protected isViewportCalculationEnabled:Z

.field protected labelBackgroundPaint:Landroid/graphics/Paint;

.field protected labelBackgroundRect:Landroid/graphics/RectF;

.field protected labelBuffer:[C

.field protected labelMargin:I

.field protected labelOffset:I

.field protected labelPaint:Landroid/graphics/Paint;

.field protected resources:Landroid/content/res/Resources;

.field protected scaledDensity:F

.field protected selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

.field protected valueLabelBackgroundColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V
    .locals 3
    .parameter "context"
    .parameter "chart"

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x4

    iput v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->DEFAULT_LABEL_MARGIN_DP:I

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    .line 44
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 48
    iput-boolean v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isViewportCalculationEnabled:Z

    .line 51
    new-instance v0, Llecho/lib/hellocharts/model/SelectedValue;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/SelectedValue;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    .line 52
    const/16 v0, 0x40

    new-array v0, v0, [C

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBuffer:[C

    .line 61
    iput-object p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->context:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->density:F

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    iput v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->scaledDensity:F

    .line 64
    iput-object p2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    .line 65
    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->resources:Landroid/content/res/Resources;

    .line 67
    iget v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->density:F

    iget v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->DEFAULT_LABEL_MARGIN_DP:I

    invoke-static {v0, v1}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelMargin:I

    .line 68
    iget v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelMargin:I

    iput v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelOffset:I

    .line 70
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 73
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 74
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 76
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 78
    return-void
.end method


# virtual methods
.method public clearTouch()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 202
    return-void
.end method

.method protected drawLabelTextAndBackground(Landroid/graphics/Canvas;[CIII)V
    .locals 7
    .parameter "canvas"
    .parameter "labelBuffer"
    .parameter "startIndex"
    .parameter "numChars"
    .parameter "autoBackgroundColor"

    .prologue
    .line 116
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isValueLabelBackgroundEnabled:Z

    if-eqz v0, :cond_2

    .line 118
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isValueLabelBackgroundAuto:Z

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 124
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelMargin:I

    int-to-float v1, v1

    add-float v4, v0, v1

    .line 125
    .local v4, textX:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelMargin:I

    int-to-float v1, v1

    sub-float v5, v0, v1

    .line 132
    .local v5, textY:F
    :goto_0
    aget-char v0, p2, p3

    const/16 v1, 0x30

    if-eq v0, v1, :cond_1

    .line 133
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 135
    :cond_1
    return-void

    .line 127
    .end local v4           #textX:F
    .end local v5           #textY:F
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    .line 128
    .restart local v4       #textX:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .restart local v5       #textY:F
    goto :goto_0
.end method

.method protected drawLabelTextAndBackgroundForLight(Landroid/graphics/Canvas;[CIIII)V
    .locals 7
    .parameter "canvas"
    .parameter "labelBuffer"
    .parameter "startIndex"
    .parameter "numChars"
    .parameter "autoBackgroundColor"
    .parameter "labelColor"

    .prologue
    .line 145
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isValueLabelBackgroundEnabled:Z

    if-eqz v0, :cond_1

    .line 147
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isValueLabelBackgroundAuto:Z

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 151
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 153
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelMargin:I

    int-to-float v1, v1

    add-float v4, v0, v1

    .line 154
    .local v4, textX:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelMargin:I

    int-to-float v1, v1

    sub-float v5, v0, v1

    .line 160
    .local v5, textY:F
    :goto_0
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->scaledDensity:F

    const/16 v2, 0xf

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->sp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 162
    iget-object v6, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 163
    return-void

    .line 156
    .end local v4           #textX:F
    .end local v5           #textY:F
    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->left:F

    .line 157
    .restart local v4       #textX:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    .restart local v5       #textY:F
    goto :goto_0
.end method

.method protected drawLabelTextAndBackgroundForMarkView(Landroid/graphics/Canvas;[CIIIILandroid/graphics/Bitmap;)V
    .locals 5
    .parameter "canvas"
    .parameter "labelBuffer"
    .parameter "startIndex"
    .parameter "numChars"
    .parameter "autoBackgroundColor"
    .parameter "labelColor"
    .parameter "bitmap"

    .prologue
    .line 173
    iget-boolean v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isValueLabelBackgroundEnabled:Z

    if-eqz v2, :cond_1

    .line 175
    iget-boolean v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isValueLabelBackgroundAuto:Z

    if-eqz v2, :cond_0

    .line 176
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    :cond_0
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelMargin:I

    int-to-float v3, v3

    add-float v0, v2, v3

    .line 182
    .local v0, textX:F
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelMargin:I

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 191
    .local v1, textY:F
    :goto_0
    iget v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->density:F

    const/16 v3, 0x21

    invoke-static {v2, v3}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v2

    int-to-float v2, v2

    sub-float v2, v0, v2

    iget v3, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->density:F

    const/16 v4, 0x55

    invoke-static {v3, v4}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v3

    int-to-float v3, v3

    sub-float v3, v1, v3

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p7, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 192
    return-void

    .line 184
    .end local v0           #textX:F
    .end local v1           #textY:F
    :cond_1
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v0, v2, Landroid/graphics/RectF;->left:F

    .line 185
    .restart local v0       #textX:F
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundRect:Landroid/graphics/RectF;

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    .restart local v1       #textY:F
    goto :goto_0
.end method

.method public getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    return-object v0
.end method

.method public getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    return-object v0
.end method

.method public isTouched()Z
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result v0

    return v0
.end method

.method public isViewportCalculationEnabled()Z
    .locals 1

    .prologue
    .line 230
    iget-boolean v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isViewportCalculationEnabled:Z

    return v0
.end method

.method public onChartDataChanged()V
    .locals 5

    .prologue
    .line 87
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v2}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    .line 89
    .local v0, data:Llecho/lib/hellocharts/model/ChartData;
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v2}, Llecho/lib/hellocharts/view/Chart;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v2

    invoke-interface {v2}, Llecho/lib/hellocharts/model/ChartData;->getValueLabelTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    .line 90
    .local v1, typeface:Landroid/graphics/Typeface;
    if-eqz v1, :cond_0

    .line 91
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 94
    :cond_0
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getValueLabelTextColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    iget v3, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->scaledDensity:F

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getValueLabelTextSize()I

    move-result v4

    invoke-static {v3, v4}, Llecho/lib/hellocharts/util/ChartUtils;->sp2px(FI)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 96
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 98
    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->isValueLabelBackgroundEnabled()Z

    move-result v2

    iput-boolean v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isValueLabelBackgroundEnabled:Z

    .line 99
    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->isValueLabelBackgroundAuto()Z

    move-result v2

    iput-boolean v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isValueLabelBackgroundAuto:Z

    .line 100
    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->getValueLabelBackgroundColor()I

    move-result v2

    iput v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->valueLabelBackgroundColor:I

    .line 101
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->labelBackgroundPaint:Landroid/graphics/Paint;

    iget v3, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->valueLabelBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 104
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 106
    return-void
.end method

.method public resetRenderer()V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 83
    return-void
.end method

.method public selectValue(Llecho/lib/hellocharts/model/SelectedValue;)V
    .locals 1
    .parameter "selectedValue"

    .prologue
    .line 240
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/SelectedValue;->set(Llecho/lib/hellocharts/model/SelectedValue;)V

    .line 241
    return-void
.end method

.method public setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 1
    .parameter "viewport"

    .prologue
    .line 223
    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 226
    :cond_0
    return-void
.end method

.method public setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 1
    .parameter "maxViewport"

    .prologue
    .line 211
    if-eqz p1, :cond_0

    .line 212
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 214
    :cond_0
    return-void
.end method

.method public setViewportCalculationEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 235
    iput-boolean p1, p0, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->isViewportCalculationEnabled:Z

    .line 236
    return-void
.end method
