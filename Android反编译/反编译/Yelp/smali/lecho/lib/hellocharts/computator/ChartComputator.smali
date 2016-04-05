.class public Llecho/lib/hellocharts/computator/ChartComputator;
.super Ljava/lang/Object;
.source "ChartComputator.java"


# static fields
.field protected static final DEFAULT_MAXIMUM_ZOOM:F = 20.0f


# instance fields
.field protected chartHeight:I

.field protected chartWidth:I

.field protected contentRectMinusAllMargins:Landroid/graphics/Rect;

.field protected contentRectMinusAxesMargins:Landroid/graphics/Rect;

.field protected currentViewport:Llecho/lib/hellocharts/model/Viewport;

.field protected maxContentRect:Landroid/graphics/Rect;

.field protected maxViewport:Llecho/lib/hellocharts/model/Viewport;

.field protected maxZoom:F

.field protected minViewportHeight:F

.field protected minViewportWidth:F

.field protected viewportChangeListener:Llecho/lib/hellocharts/listener/ViewportChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/high16 v0, 0x41a0

    iput v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxZoom:F

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAxesMargins:Landroid/graphics/Rect;

    .line 26
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxContentRect:Landroid/graphics/Rect;

    .line 32
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 33
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 40
    new-instance v0, Llecho/lib/hellocharts/listener/DummyVieportChangeListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/listener/DummyVieportChangeListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->viewportChangeListener:Llecho/lib/hellocharts/listener/ViewportChangeListener;

    return-void
.end method

.method private computeMinimumWidthAndHeight()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v0

    iget v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxZoom:F

    div-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->minViewportWidth:F

    .line 346
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v0

    iget v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxZoom:F

    div-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->minViewportHeight:F

    .line 347
    return-void
.end method


# virtual methods
.method public computeRawDistanceX(F)F
    .locals 2
    .parameter "distance"

    .prologue
    .line 160
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public computeRawDistanceY(F)F
    .locals 2
    .parameter "distance"

    .prologue
    .line 167
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v1

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    return v0
.end method

.method public computeRawX(F)F
    .locals 4
    .parameter "valueX"

    .prologue
    .line 140
    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    sub-float v1, p1, v1

    iget-object v2, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 142
    .local v0, pixelOffset:F
    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    return v1
.end method

.method public computeRawY(F)F
    .locals 4
    .parameter "valueY"

    .prologue
    .line 151
    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    sub-float v1, p1, v1

    iget-object v2, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v3

    div-float/2addr v2, v3

    mul-float v0, v1, v2

    .line 153
    .local v0, pixelOffset:F
    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    sub-float/2addr v1, v0

    return v1
.end method

.method public computeScrollSurfaceSize(Landroid/graphics/Point;)V
    .locals 3
    .parameter "out"

    .prologue
    .line 196
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v0

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v1

    iget-object v2, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 198
    return-void
.end method

.method public constrainViewport(FFFF)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 81
    sub-float v0, p3, p1

    iget v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->minViewportWidth:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 83
    iget v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->minViewportWidth:F

    add-float p3, p1, v0

    .line 84
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 85
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget p1, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 86
    iget v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->minViewportWidth:F

    add-float p3, p1, v0

    .line 93
    :cond_0
    :goto_0
    sub-float v0, p2, p4

    iget v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->minViewportHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 95
    iget v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->minViewportHeight:F

    sub-float p4, p2, v0

    .line 96
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpl-float v0, p2, v0

    if-lez v0, :cond_3

    .line 97
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget p2, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 98
    iget v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->minViewportHeight:F

    sub-float p4, p2, v0

    .line 105
    :cond_1
    :goto_1
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    .line 106
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->top:F

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    .line 107
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 108
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    invoke-static {v1, p4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 110
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->viewportChangeListener:Llecho/lib/hellocharts/listener/ViewportChangeListener;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-interface {v0, v1}, Llecho/lib/hellocharts/listener/ViewportChangeListener;->onViewportChanged(Llecho/lib/hellocharts/model/Viewport;)V

    .line 111
    return-void

    .line 87
    :cond_2
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpl-float v0, p3, v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget p3, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    .line 89
    iget v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->minViewportWidth:F

    sub-float p1, p3, v0

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpg-float v0, p4, v0

    if-gez v0, :cond_1

    .line 100
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget p4, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    .line 101
    iget v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->minViewportHeight:F

    add-float p2, p4, v0

    goto :goto_1
.end method

.method public getChartHeight()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->chartHeight:I

    return v0
.end method

.method public getChartWidth()I
    .locals 1

    .prologue
    .line 315
    iget v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->chartWidth:I

    return v0
.end method

.method public getContentRectMinusAllMargins()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getContentRectMinusAxesMargins()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAxesMargins:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    return-object v0
.end method

.method public getMaxZoom()F
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxZoom:F

    return v0
.end method

.method public getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    return-object v0
.end method

.method public getMinimumViewportHeight()F
    .locals 1

    .prologue
    .line 303
    iget v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->minViewportHeight:F

    return v0
.end method

.method public getMinimumViewportWidth()F
    .locals 1

    .prologue
    .line 299
    iget v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->minViewportWidth:F

    return v0
.end method

.method public getVisibleViewport()Llecho/lib/hellocharts/model/Viewport;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    return-object v0
.end method

.method public insetContentRect(IIII)V
    .locals 2
    .parameter "deltaLeft"
    .parameter "deltaTop"
    .parameter "deltaRight"
    .parameter "deltaBottom"

    .prologue
    .line 61
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAxesMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAxesMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 62
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAxesMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAxesMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 63
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAxesMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAxesMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 64
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAxesMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAxesMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 66
    invoke-virtual {p0, p1, p2, p3, p4}, Llecho/lib/hellocharts/computator/ChartComputator;->insetContentRectByInternalMargins(IIII)V

    .line 67
    return-void
.end method

.method public insetContentRectByInternalMargins(IIII)V
    .locals 2
    .parameter "deltaLeft"
    .parameter "deltaTop"
    .parameter "deltaRight"
    .parameter "deltaBottom"

    .prologue
    .line 70
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 71
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 72
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p3

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 73
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, p4

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 74
    return-void
.end method

.method public isWithinContentRect(FFF)Z
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "precision"

    .prologue
    .line 204
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 205
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    sub-float/2addr v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public rawPixelsToDataPoint(FFLandroid/graphics/PointF;)Z
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "dest"

    .prologue
    .line 179
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    float-to-int v1, p1

    float-to-int v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 186
    :goto_0
    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float v1, p1, v1

    iget-object v2, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v2

    mul-float/2addr v1, v2

    iget-object v2, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iget-object v2, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    sub-float v2, p2, v2

    iget-object v3, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p3, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 186
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public resetContentRect()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAxesMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 57
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 58
    return-void
.end method

.method public setContentRect(IIIIII)V
    .locals 3
    .parameter "width"
    .parameter "height"
    .parameter "paddingLeft"
    .parameter "paddingTop"
    .parameter "paddingRight"
    .parameter "paddingBottom"

    .prologue
    .line 48
    iput p1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->chartWidth:I

    .line 49
    iput p2, p0, Llecho/lib/hellocharts/computator/ChartComputator;->chartHeight:I

    .line 50
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxContentRect:Landroid/graphics/Rect;

    sub-int v1, p1, p5

    sub-int v2, p2, p6

    invoke-virtual {v0, p3, p4, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 51
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAxesMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 52
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->contentRectMinusAllMargins:Landroid/graphics/Rect;

    iget-object v1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 53
    return-void
.end method

.method public setCurrentViewport(FFFF)V
    .locals 0
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 257
    invoke-virtual {p0, p1, p2, p3, p4}, Llecho/lib/hellocharts/computator/ChartComputator;->constrainViewport(FFFF)V

    .line 258
    return-void
.end method

.method public setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 4
    .parameter "viewport"

    .prologue
    .line 249
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v1, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget v2, p1, Llecho/lib/hellocharts/model/Viewport;->right:F

    iget v3, p1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->constrainViewport(FFFF)V

    .line 250
    return-void
.end method

.method public setMaxViewport(FFFF)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 281
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, p1, p2, p3, p4}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 282
    invoke-direct {p0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeMinimumWidthAndHeight()V

    .line 283
    return-void
.end method

.method public setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 4
    .parameter "maxViewport"

    .prologue
    .line 274
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v1, p1, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget v2, p1, Llecho/lib/hellocharts/model/Viewport;->right:F

    iget v3, p1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    invoke-virtual {p0, v0, v1, v2, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(FFFF)V

    .line 275
    return-void
.end method

.method public setMaxZoom(F)V
    .locals 1
    .parameter "maxZoom"

    .prologue
    .line 332
    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 333
    const/high16 p1, 0x3f80

    .line 336
    :cond_0
    iput p1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxZoom:F

    .line 338
    invoke-direct {p0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeMinimumWidthAndHeight()V

    .line 340
    iget-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 342
    return-void
.end method

.method public setViewportChangeListener(Llecho/lib/hellocharts/listener/ViewportChangeListener;)V
    .locals 1
    .parameter "viewportChangeListener"

    .prologue
    .line 307
    if-nez p1, :cond_0

    .line 308
    new-instance v0, Llecho/lib/hellocharts/listener/DummyVieportChangeListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/listener/DummyVieportChangeListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/computator/ChartComputator;->viewportChangeListener:Llecho/lib/hellocharts/listener/ViewportChangeListener;

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/computator/ChartComputator;->viewportChangeListener:Llecho/lib/hellocharts/listener/ViewportChangeListener;

    goto :goto_0
.end method

.method public setViewportTopLeft(FF)V
    .locals 4
    .parameter "left"
    .parameter "top"

    .prologue
    .line 124
    iget-object v2, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v1

    .line 125
    .local v1, curWidth:F
    iget-object v2, p0, Llecho/lib/hellocharts/computator/ChartComputator;->currentViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v0

    .line 127
    .local v0, curHeight:F
    iget-object v2, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v2, v2, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget-object v3, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v3, v3, Llecho/lib/hellocharts/model/Viewport;->right:F

    sub-float/2addr v3, v1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 128
    iget-object v2, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v2, v2, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    add-float/2addr v2, v0

    iget-object v3, p0, Llecho/lib/hellocharts/computator/ChartComputator;->maxViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v3, v3, Llecho/lib/hellocharts/model/Viewport;->top:F

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 129
    add-float v2, p1, v1

    sub-float v3, p2, v0

    invoke-virtual {p0, p1, p2, v2, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->constrainViewport(FFFF)V

    .line 130
    return-void
.end method

.method public setVisibleViewport(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 0
    .parameter "visibleViewport"

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 296
    return-void
.end method
