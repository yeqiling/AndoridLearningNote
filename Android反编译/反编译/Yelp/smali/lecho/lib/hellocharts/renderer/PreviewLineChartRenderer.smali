.class public Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;
.super Llecho/lib/hellocharts/renderer/LineChartRenderer;
.source "PreviewLineChartRenderer.java"


# static fields
.field private static final DEFAULT_PREVIEW_STROKE_WIDTH_DP:I = 0x2

.field private static final DEFAULT_PREVIEW_TRANSPARENCY:I = 0x40

.field private static final FULL_ALPHA:I = 0xff


# instance fields
.field private previewPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V
    .locals 3
    .parameter "context"
    .parameter "chart"
    .parameter "dataProvider"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/renderer/LineChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V

    .line 22
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    .line 26
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 27
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 28
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    iget v1, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->density:F

    const/4 v2, 0x2

    invoke-static {v1, v2}, Llecho/lib/hellocharts/util/ChartUtils;->dp2px(FI)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    return-void
.end method


# virtual methods
.method public drawUnclipped(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 33
    invoke-super {p0, p1}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->drawUnclipped(Landroid/graphics/Canvas;)V

    .line 34
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v6

    .line 35
    .local v6, currentViewport:Llecho/lib/hellocharts/model/Viewport;
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v5, v6, Llecho/lib/hellocharts/model/Viewport;->left:F

    invoke-virtual {v0, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v1

    .line 36
    .local v1, left:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v5, v6, Llecho/lib/hellocharts/model/Viewport;->top:F

    invoke-virtual {v0, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v2

    .line 37
    .local v2, top:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v5, v6, Llecho/lib/hellocharts/model/Viewport;->right:F

    invoke-virtual {v0, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawX(F)F

    move-result v3

    .line 38
    .local v3, right:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget v5, v6, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    invoke-virtual {v0, v5}, Llecho/lib/hellocharts/computator/ChartComputator;->computeRawY(F)F

    move-result v4

    .line 39
    .local v4, bottom:F
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    const/16 v5, 0x40

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 40
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 41
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 42
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 44
    iget-object v5, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 45
    return-void
.end method

.method public getPreviewColor()I
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public setPreviewColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 52
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/PreviewLineChartRenderer;->previewPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    return-void
.end method
