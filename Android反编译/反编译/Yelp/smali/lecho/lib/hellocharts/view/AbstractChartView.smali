.class public abstract Llecho/lib/hellocharts/view/AbstractChartView;
.super Landroid/view/View;
.source "AbstractChartView.java"

# interfaces
.implements Llecho/lib/hellocharts/view/Chart;


# instance fields
.field protected axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

.field protected chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

.field protected chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

.field protected containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

.field protected dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

.field protected isContainerScrollEnabled:Z

.field protected isInteractive:Z

.field private refreshCount:I

.field protected touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

.field protected viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/view/AbstractChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llecho/lib/hellocharts/view/AbstractChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isInteractive:Z

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isContainerScrollEnabled:Z

    .line 60
    new-instance v0, Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-direct {v0}, Llecho/lib/hellocharts/computator/ChartComputator;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 61
    new-instance v0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-direct {v0, p1, p0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    .line 62
    new-instance v0, Llecho/lib/hellocharts/renderer/AxesRenderer;

    invoke-direct {v0, p1, p0}, Llecho/lib/hellocharts/renderer/AxesRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 65
    new-instance v0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    invoke-direct {v0, p0}, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;-><init>(Llecho/lib/hellocharts/view/Chart;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

    .line 66
    new-instance v0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-direct {v0, p0}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;-><init>(Llecho/lib/hellocharts/view/Chart;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    new-instance v0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;

    invoke-direct {v0, p0}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;-><init>(Llecho/lib/hellocharts/view/Chart;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    .line 69
    new-instance v0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;

    invoke-direct {v0, p0}, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;-><init>(Llecho/lib/hellocharts/view/Chart;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

    goto :goto_0
.end method

.method private computeScrollViewport(FF)Llecho/lib/hellocharts/model/Viewport;
    .locals 11
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v10, 0x4000

    .line 266
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v5

    .line 267
    .local v5, maxViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 268
    .local v0, currentViewport:Llecho/lib/hellocharts/model/Viewport;
    new-instance v6, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v6, v0}, Llecho/lib/hellocharts/model/Viewport;-><init>(Llecho/lib/hellocharts/model/Viewport;)V

    .line 270
    .local v6, scrollViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual {v5, p1, p2}, Llecho/lib/hellocharts/model/Viewport;->contains(FF)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 271
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v8

    .line 272
    .local v8, width:F
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v3

    .line 274
    .local v3, height:F
    div-float v2, v8, v10

    .line 275
    .local v2, halfWidth:F
    div-float v1, v3, v10

    .line 277
    .local v1, halfHeight:F
    sub-float v4, p1, v2

    .line 278
    .local v4, left:F
    add-float v7, p2, v1

    .line 280
    .local v7, top:F
    iget v9, v5, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v10, v5, Llecho/lib/hellocharts/model/Viewport;->right:F

    sub-float/2addr v10, v8

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 281
    iget v9, v5, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    add-float/2addr v9, v3

    iget v10, v5, Llecho/lib/hellocharts/model/Viewport;->top:F

    invoke-static {v7, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 283
    add-float v9, v4, v3

    sub-float v10, v7, v3

    invoke-virtual {v6, v4, v7, v9, v10}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 286
    .end local v1           #halfHeight:F
    .end local v2           #halfWidth:F
    .end local v3           #height:F
    .end local v4           #left:F
    .end local v7           #top:F
    .end local v8           #width:F
    :cond_0
    return-object v6
.end method

.method private computeZoomViewport(FFF)Llecho/lib/hellocharts/model/Viewport;
    .locals 12
    .parameter "x"
    .parameter "y"
    .parameter "zoomLevel"

    .prologue
    .line 343
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v4

    .line 344
    .local v4, maxViewport:Llecho/lib/hellocharts/model/Viewport;
    new-instance v10, Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v11

    invoke-direct {v10, v11}, Llecho/lib/hellocharts/model/Viewport;-><init>(Llecho/lib/hellocharts/model/Viewport;)V

    .line 346
    .local v10, zoomViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual {v4, p1, p2}, Llecho/lib/hellocharts/model/Viewport;->contains(FF)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 348
    const/high16 v11, 0x3f80

    cmpg-float v11, p3, v11

    if-gez v11, :cond_4

    .line 349
    const/high16 p3, 0x3f80

    .line 354
    :cond_0
    :goto_0
    invoke-virtual {v10}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v11

    div-float v6, v11, p3

    .line 355
    .local v6, newWidth:F
    invoke-virtual {v10}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v11

    div-float v5, v11, p3

    .line 357
    .local v5, newHeight:F
    const/high16 v11, 0x4000

    div-float v2, v6, v11

    .line 358
    .local v2, halfWidth:F
    const/high16 v11, 0x4000

    div-float v1, v5, v11

    .line 360
    .local v1, halfHeight:F
    sub-float v3, p1, v2

    .line 361
    .local v3, left:F
    add-float v7, p1, v2

    .line 362
    .local v7, right:F
    add-float v8, p2, v1

    .line 363
    .local v8, top:F
    sub-float v0, p2, v1

    .line 365
    .local v0, bottom:F
    iget v11, v4, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpg-float v11, v3, v11

    if-gez v11, :cond_5

    .line 366
    iget v3, v4, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 367
    add-float v7, v3, v6

    .line 373
    :cond_1
    :goto_1
    iget v11, v4, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v11, v8, v11

    if-lez v11, :cond_6

    .line 374
    iget v8, v4, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 375
    sub-float v0, v8, v5

    .line 381
    :cond_2
    :goto_2
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getZoomType()Llecho/lib/hellocharts/gesture/ZoomType;

    move-result-object v9

    .line 382
    .local v9, zoomType:Llecho/lib/hellocharts/gesture/ZoomType;
    sget-object v11, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL_AND_VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    if-ne v11, v9, :cond_7

    .line 383
    invoke-virtual {v10, v3, v8, v7, v0}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 393
    .end local v0           #bottom:F
    .end local v1           #halfHeight:F
    .end local v2           #halfWidth:F
    .end local v3           #left:F
    .end local v5           #newHeight:F
    .end local v6           #newWidth:F
    .end local v7           #right:F
    .end local v8           #top:F
    .end local v9           #zoomType:Llecho/lib/hellocharts/gesture/ZoomType;
    :cond_3
    :goto_3
    return-object v10

    .line 350
    :cond_4
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getMaxZoom()F

    move-result v11

    cmpl-float v11, p3, v11

    if-lez v11, :cond_0

    .line 351
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getMaxZoom()F

    move-result p3

    goto :goto_0

    .line 368
    .restart local v0       #bottom:F
    .restart local v1       #halfHeight:F
    .restart local v2       #halfWidth:F
    .restart local v3       #left:F
    .restart local v5       #newHeight:F
    .restart local v6       #newWidth:F
    .restart local v7       #right:F
    .restart local v8       #top:F
    :cond_5
    iget v11, v4, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpl-float v11, v7, v11

    if-lez v11, :cond_1

    .line 369
    iget v7, v4, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 370
    sub-float v3, v7, v6

    goto :goto_1

    .line 376
    :cond_6
    iget v11, v4, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v11, v0, v11

    if-gez v11, :cond_2

    .line 377
    iget v0, v4, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 378
    add-float v8, v0, v5

    goto :goto_2

    .line 384
    .restart local v9       #zoomType:Llecho/lib/hellocharts/gesture/ZoomType;
    :cond_7
    sget-object v11, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL:Llecho/lib/hellocharts/gesture/ZoomType;

    if-ne v11, v9, :cond_8

    .line 385
    iput v3, v10, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 386
    iput v7, v10, Llecho/lib/hellocharts/model/Viewport;->right:F

    goto :goto_3

    .line 387
    :cond_8
    sget-object v11, Llecho/lib/hellocharts/gesture/ZoomType;->VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    if-ne v11, v9, :cond_3

    .line 388
    iput v8, v10, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 389
    iput v0, v10, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    goto :goto_3
.end method


# virtual methods
.method public animationDataFinished()V
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/model/ChartData;->finish()V

    .line 177
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->onChartViewportChanged()V

    .line 178
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 179
    return-void
.end method

.method public animationDataUpdate(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 169
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getChartData()Llecho/lib/hellocharts/model/ChartData;

    move-result-object v0

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/model/ChartData;->update(F)V

    .line 170
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->onChartViewportChanged()V

    .line 171
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method public cancelDataAnimation()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartDataAnimator;->cancelAnimation()V

    .line 165
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/view/View;->computeScroll()V

    .line 145
    iget-boolean v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isInteractive:Z

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computeScroll()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 150
    :cond_0
    return-void
.end method

.method public getAxesRenderer()Llecho/lib/hellocharts/renderer/AxesRenderer;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    return-object v0
.end method

.method public getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    return-object v0
.end method

.method public getChartRenderer()Llecho/lib/hellocharts/renderer/ChartRenderer;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    return-object v0
.end method

.method public getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;
    .locals 1

    .prologue
    .line 427
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getChartRenderer()Llecho/lib/hellocharts/renderer/ChartRenderer;

    move-result-object v0

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaxZoom()F

    move-result v0

    return v0
.end method

.method public getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object v0

    return-object v0
.end method

.method public getTouchHandler()Llecho/lib/hellocharts/gesture/ChartTouchHandler;
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    return-object v0
.end method

.method public getZoomLevel()F
    .locals 5

    .prologue
    .line 323
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    .line 324
    .local v1, maxViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 326
    .local v0, currentViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v2

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v3

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v4

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2
.end method

.method public getZoomType()Llecho/lib/hellocharts/gesture/ZoomType;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->getZoomType()Llecho/lib/hellocharts/gesture/ZoomType;

    move-result-object v0

    return-object v0
.end method

.method public isContainerScrollEnabled()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isContainerScrollEnabled:Z

    return v0
.end method

.method public isInteractive()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isInteractive:Z

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled()Z

    move-result v0

    return v0
.end method

.method public isValueSelectionEnabled()Z
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueSelectionEnabled()Z

    move-result v0

    return v0
.end method

.method public isValueTouchEnabled()Z
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueTouchEnabled()Z

    move-result v0

    return v0
.end method

.method public isViewportCalculationEnabled()Z
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isViewportCalculationEnabled()Z

    move-result v0

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled()Z

    move-result v0

    return v0
.end method

.method public moveTo(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 255
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/view/AbstractChartView;->computeScrollViewport(FF)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 256
    .local v0, scrollViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/AbstractChartView;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 257
    return-void
.end method

.method public moveToWithAnimation(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/view/AbstractChartView;->computeScrollViewport(FF)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 262
    .local v0, scrollViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/AbstractChartView;->setCurrentViewportWithAnimation(Llecho/lib/hellocharts/model/Viewport;)V

    .line 263
    return-void
.end method

.method protected onChartDataChange()V
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0}, Llecho/lib/hellocharts/computator/ChartComputator;->resetContentRect()V

    .line 489
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->onChartDataChanged()V

    .line 490
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/AxesRenderer;->onChartDataChanged()V

    .line 491
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 492
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 89
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 91
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    iget-object v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    instance-of v1, v1, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    check-cast v1, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawTargetCaloryLine(Landroid/graphics/Canvas;)V

    .line 96
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawInBackground(Landroid/graphics/Canvas;)V

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 98
    .local v0, clipRestoreCount:I
    iget-object v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 99
    iget-object v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v1, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->draw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 101
    iget-object v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v1, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->drawUnclipped(Landroid/graphics/Canvas;)V

    .line 102
    iget-object v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/renderer/AxesRenderer;->drawInForeground(Landroid/graphics/Canvas;)V

    .line 104
    iget v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->refreshCount:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 105
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->invalidate()V

    .line 106
    iget v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->refreshCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->refreshCount:I

    .line 109
    :cond_1
    iget-object v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    instance-of v1, v1, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    if-eqz v1, :cond_2

    .line 110
    iget-object v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    check-cast v1, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->drawTargetCaloryText(Landroid/graphics/Canvas;)V

    .line 115
    .end local v0           #clipRestoreCount:I
    :cond_2
    :goto_0
    return-void

    .line 113
    :cond_3
    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 76
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7
    .parameter "width"
    .parameter "height"
    .parameter "oldWidth"
    .parameter "oldHeight"

    .prologue
    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 81
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getPaddingBottom()I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Llecho/lib/hellocharts/computator/ChartComputator;->setContentRect(IIIIII)V

    .line 83
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->onChartSizeChanged()V

    .line 84
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/AxesRenderer;->onChartSizeChanged()V

    .line 85
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 121
    iget-boolean v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isInteractive:Z

    if-eqz v1, :cond_2

    .line 125
    iget-boolean v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isContainerScrollEnabled:Z

    if-eqz v1, :cond_1

    .line 126
    iget-object v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, Llecho/lib/hellocharts/view/AbstractChartView;->containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    invoke-virtual {v1, p1, v2, v3}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/ViewParent;Llecho/lib/hellocharts/gesture/ContainerScrollType;)Z

    move-result v0

    .line 131
    .local v0, needInvalidate:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 132
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 135
    :cond_0
    const/4 v1, 0x1

    .line 138
    .end local v0           #needInvalidate:Z
    :goto_1
    return v1

    .line 128
    :cond_1
    iget-object v1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #needInvalidate:Z
    goto :goto_0

    .line 138
    .end local v0           #needInvalidate:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected resetRendererAndTouchHandler()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->resetRenderer()V

    .line 500
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->axesRenderer:Llecho/lib/hellocharts/renderer/AxesRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/AxesRenderer;->resetRenderer()V

    .line 501
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->resetTouchHandler()V

    .line 502
    return-void
.end method

.method public resetViewports()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, v1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 441
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, v1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 442
    return-void
.end method

.method public selectValue(Llecho/lib/hellocharts/model/SelectedValue;)V
    .locals 1
    .parameter "selectedValue"

    .prologue
    .line 466
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->selectValue(Llecho/lib/hellocharts/model/SelectedValue;)V

    .line 467
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->callTouchListener()V

    .line 468
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 469
    return-void
.end method

.method public setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V
    .locals 0
    .parameter "renderer"

    .prologue
    .line 203
    iput-object p1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 204
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->resetRendererAndTouchHandler()V

    .line 205
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 206
    return-void
.end method

.method public setContainerScrollEnabled(ZLlecho/lib/hellocharts/gesture/ContainerScrollType;)V
    .locals 0
    .parameter "isContainerScrollEnabled"
    .parameter "containerScrollType"

    .prologue
    .line 483
    iput-boolean p1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isContainerScrollEnabled:Z

    .line 484
    iput-object p2, p0, Llecho/lib/hellocharts/view/AbstractChartView;->containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    .line 485
    return-void
.end method

.method public setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 1
    .parameter "targetViewport"

    .prologue
    .line 432
    if-eqz p1, :cond_0

    .line 433
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 435
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 436
    return-void
.end method

.method public setCurrentViewportWithAnimation(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 2
    .parameter "targetViewport"

    .prologue
    .line 409
    if-eqz p1, :cond_0

    .line 410
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartViewportAnimator;->cancelAnimation()V

    .line 411
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Llecho/lib/hellocharts/animation/ChartViewportAnimator;->startAnimation(Llecho/lib/hellocharts/model/Viewport;Llecho/lib/hellocharts/model/Viewport;)V

    .line 413
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 414
    return-void
.end method

.method public setCurrentViewportWithAnimation(Llecho/lib/hellocharts/model/Viewport;J)V
    .locals 2
    .parameter "targetViewport"
    .parameter "duration"

    .prologue
    .line 418
    if-eqz p1, :cond_0

    .line 419
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartViewportAnimator;->cancelAnimation()V

    .line 420
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    invoke-virtual {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Llecho/lib/hellocharts/animation/ChartViewportAnimator;->startAnimation(Llecho/lib/hellocharts/model/Viewport;Llecho/lib/hellocharts/model/Viewport;J)V

    .line 422
    :cond_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 423
    return-void
.end method

.method public setDataAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V
    .locals 1
    .parameter "animationListener"

    .prologue
    .line 183
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/animation/ChartDataAnimator;->setChartAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V

    .line 184
    return-void
.end method

.method public setInteractive(Z)V
    .locals 0
    .parameter "isInteractive"

    .prologue
    .line 230
    iput-boolean p1, p0, Llecho/lib/hellocharts/view/AbstractChartView;->isInteractive:Z

    .line 231
    return-void
.end method

.method public setMaxZoom(F)V
    .locals 1
    .parameter "maxZoom"

    .prologue
    .line 317
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxZoom(F)V

    .line 318
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 319
    return-void
.end method

.method public setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 1
    .parameter "maxViewport"

    .prologue
    .line 403
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->setMaximumViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 404
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 405
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1
    .parameter "isScrollEnabled"

    .prologue
    .line 250
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->setScrollEnabled(Z)V

    .line 251
    return-void
.end method

.method public setValueSelectionEnabled(Z)V
    .locals 1
    .parameter "isValueSelectionEnabled"

    .prologue
    .line 461
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->setValueSelectionEnabled(Z)V

    .line 462
    return-void
.end method

.method public setValueTouchEnabled(Z)V
    .locals 1
    .parameter "isValueTouchEnabled"

    .prologue
    .line 296
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->setValueTouchEnabled(Z)V

    .line 298
    return-void
.end method

.method public setViewportAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V
    .locals 1
    .parameter "animationListener"

    .prologue
    .line 188
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->viewportAnimator:Llecho/lib/hellocharts/animation/ChartViewportAnimator;

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/animation/ChartViewportAnimator;->setChartAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V

    .line 189
    return-void
.end method

.method public setViewportCalculationEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 451
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->setViewportCalculationEnabled(Z)V

    .line 452
    return-void
.end method

.method public setViewportChangeListener(Llecho/lib/hellocharts/listener/ViewportChangeListener;)V
    .locals 1
    .parameter "viewportChangeListener"

    .prologue
    .line 193
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/computator/ChartComputator;->setViewportChangeListener(Llecho/lib/hellocharts/listener/ViewportChangeListener;)V

    .line 194
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 1
    .parameter "isZoomEnabled"

    .prologue
    .line 240
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->setZoomEnabled(Z)V

    .line 241
    return-void
.end method

.method public setZoomLevel(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "zoomLevel"

    .prologue
    .line 332
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/AbstractChartView;->computeZoomViewport(FFF)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 333
    .local v0, zoomViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/AbstractChartView;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 334
    return-void
.end method

.method public setZoomLevelWithAnimation(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "zoomLevel"

    .prologue
    .line 338
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/AbstractChartView;->computeZoomViewport(FFF)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 339
    .local v0, zoomViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/AbstractChartView;->setCurrentViewportWithAnimation(Llecho/lib/hellocharts/model/Viewport;)V

    .line 340
    return-void
.end method

.method public setZoomType(Llecho/lib/hellocharts/gesture/ZoomType;)V
    .locals 1
    .parameter "zoomType"

    .prologue
    .line 307
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->setZoomType(Llecho/lib/hellocharts/gesture/ZoomType;)V

    .line 308
    return-void
.end method

.method public startDataAnimation()V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

    const-wide/high16 v2, -0x8000

    invoke-interface {v0, v2, v3}, Llecho/lib/hellocharts/animation/ChartDataAnimator;->startAnimation(J)V

    .line 155
    return-void
.end method

.method public startDataAnimation(J)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 159
    iget-object v0, p0, Llecho/lib/hellocharts/view/AbstractChartView;->dataAnimator:Llecho/lib/hellocharts/animation/ChartDataAnimator;

    invoke-interface {v0, p1, p2}, Llecho/lib/hellocharts/animation/ChartDataAnimator;->startAnimation(J)V

    .line 160
    return-void
.end method
