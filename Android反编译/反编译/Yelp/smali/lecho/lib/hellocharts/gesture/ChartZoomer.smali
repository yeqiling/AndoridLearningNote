.class public Llecho/lib/hellocharts/gesture/ChartZoomer;
.super Ljava/lang/Object;
.source "ChartZoomer.java"


# static fields
.field public static final ZOOM_AMOUNT:F = 0.25f


# instance fields
.field private scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

.field private viewportFocus:Landroid/graphics/PointF;

.field private zoomFocalPoint:Landroid/graphics/PointF;

.field private zoomType:Llecho/lib/hellocharts/gesture/ZoomType;

.field private zoomer:Llecho/lib/hellocharts/gesture/ZoomerCompat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/gesture/ZoomType;)V
    .locals 1
    .parameter "context"
    .parameter "zoomType"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomFocalPoint:Landroid/graphics/PointF;

    .line 18
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->viewportFocus:Landroid/graphics/PointF;

    .line 19
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 22
    new-instance v0, Llecho/lib/hellocharts/gesture/ZoomerCompat;

    invoke-direct {v0, p1}, Llecho/lib/hellocharts/gesture/ZoomerCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomer:Llecho/lib/hellocharts/gesture/ZoomerCompat;

    .line 23
    iput-object p2, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomType:Llecho/lib/hellocharts/gesture/ZoomType;

    .line 24
    return-void
.end method

.method private setCurrentViewport(Llecho/lib/hellocharts/computator/ChartComputator;FFFF)V
    .locals 3
    .parameter "computator"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 79
    invoke-virtual {p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    .line 80
    .local v0, currentViewport:Llecho/lib/hellocharts/model/Viewport;
    sget-object v1, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL_AND_VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    iget-object v2, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomType:Llecho/lib/hellocharts/gesture/ZoomType;

    if-ne v1, v2, :cond_1

    .line 81
    invoke-virtual {p1, p2, p3, p4, p5}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(FFFF)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    sget-object v1, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL:Llecho/lib/hellocharts/gesture/ZoomType;

    iget-object v2, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomType:Llecho/lib/hellocharts/gesture/ZoomType;

    if-ne v1, v2, :cond_2

    .line 83
    iget v1, v0, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget v2, v0, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    invoke-virtual {p1, p2, v1, p4, v2}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(FFFF)V

    goto :goto_0

    .line 84
    :cond_2
    sget-object v1, Llecho/lib/hellocharts/gesture/ZoomType;->VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    iget-object v2, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomType:Llecho/lib/hellocharts/gesture/ZoomType;

    if-ne v1, v2, :cond_0

    .line 85
    iget v1, v0, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v2, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    invoke-virtual {p1, v1, p3, v2, p5}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(FFFF)V

    goto :goto_0
.end method


# virtual methods
.method public computeZoom(Llecho/lib/hellocharts/computator/ChartComputator;)Z
    .locals 11
    .parameter "computator"

    .prologue
    const/high16 v10, 0x3f80

    .line 38
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomer:Llecho/lib/hellocharts/gesture/ZoomerCompat;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ZoomerCompat;->computeZoom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomer:Llecho/lib/hellocharts/gesture/ZoomerCompat;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ZoomerCompat;->getCurrZoom()F

    move-result v0

    sub-float v0, v10, v0

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v1

    mul-float v7, v0, v1

    .line 41
    .local v7, newWidth:F
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomer:Llecho/lib/hellocharts/gesture/ZoomerCompat;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ZoomerCompat;->getCurrZoom()F

    move-result v0

    sub-float v0, v10, v0

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v1

    mul-float v6, v0, v1

    .line 42
    .local v6, newHeight:F
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomFocalPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v1

    div-float v8, v0, v1

    .line 44
    .local v8, pointWithinViewportX:F
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomFocalPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v1

    div-float v9, v0, v1

    .line 47
    .local v9, pointWithinViewportY:F
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomFocalPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    mul-float v1, v7, v8

    sub-float v2, v0, v1

    .line 48
    .local v2, left:F
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomFocalPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float v1, v10, v9

    mul-float/2addr v1, v6

    add-float v3, v0, v1

    .line 49
    .local v3, top:F
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomFocalPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    sub-float v1, v10, v8

    mul-float/2addr v1, v7

    add-float v4, v0, v1

    .line 50
    .local v4, right:F
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomFocalPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    mul-float v1, v6, v9

    sub-float v5, v0, v1

    .local v5, bottom:F
    move-object v0, p0

    move-object v1, p1

    .line 51
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/gesture/ChartZoomer;->setCurrentViewport(Llecho/lib/hellocharts/computator/ChartComputator;FFFF)V

    .line 52
    const/4 v0, 0x1

    .line 54
    .end local v2           #left:F
    .end local v3           #top:F
    .end local v4           #right:F
    .end local v5           #bottom:F
    .end local v6           #newHeight:F
    .end local v7           #newWidth:F
    .end local v8           #pointWithinViewportX:F
    .end local v9           #pointWithinViewportY:F
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getZoomType()Llecho/lib/hellocharts/gesture/ZoomType;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomType:Llecho/lib/hellocharts/gesture/ZoomType;

    return-object v0
.end method

.method public scale(Llecho/lib/hellocharts/computator/ChartComputator;FFF)Z
    .locals 9
    .parameter "computator"
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scale"

    .prologue
    .line 61
    invoke-virtual {p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v0

    mul-float v7, p4, v0

    .line 62
    .local v7, newWidth:F
    invoke-virtual {p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v0

    mul-float v6, p4, v0

    .line 63
    .local v6, newHeight:F
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->viewportFocus:Landroid/graphics/PointF;

    invoke-virtual {p1, p2, p3, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->rawPixelsToDataPoint(FFLandroid/graphics/PointF;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    .line 68
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->viewportFocus:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v7, v8

    mul-float/2addr v1, v8

    sub-float v2, v0, v1

    .line 70
    .local v2, left:F
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->viewportFocus:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p3, v1

    invoke-virtual {p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v6, v8

    mul-float/2addr v1, v8

    add-float v3, v0, v1

    .line 72
    .local v3, top:F
    add-float v4, v2, v7

    .line 73
    .local v4, right:F
    sub-float v5, v3, v6

    .local v5, bottom:F
    move-object v0, p0

    move-object v1, p1

    .line 74
    invoke-direct/range {v0 .. v5}, Llecho/lib/hellocharts/gesture/ChartZoomer;->setCurrentViewport(Llecho/lib/hellocharts/computator/ChartComputator;FFFF)V

    .line 75
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setZoomType(Llecho/lib/hellocharts/gesture/ZoomType;)V
    .locals 0
    .parameter "zoomType"

    .prologue
    .line 94
    iput-object p1, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomType:Llecho/lib/hellocharts/gesture/ZoomType;

    .line 95
    return-void
.end method

.method public startZoom(Landroid/view/MotionEvent;Llecho/lib/hellocharts/computator/ChartComputator;)Z
    .locals 4
    .parameter "e"
    .parameter "computator"

    .prologue
    const/4 v0, 0x1

    .line 27
    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomer:Llecho/lib/hellocharts/gesture/ZoomerCompat;

    invoke-virtual {v1, v0}, Llecho/lib/hellocharts/gesture/ZoomerCompat;->forceFinished(Z)V

    .line 28
    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {p2}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v2

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomFocalPoint:Landroid/graphics/PointF;

    invoke-virtual {p2, v1, v2, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->rawPixelsToDataPoint(FFLandroid/graphics/PointF;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const/4 v0, 0x0

    .line 34
    :goto_0
    return v0

    .line 33
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartZoomer;->zoomer:Llecho/lib/hellocharts/gesture/ZoomerCompat;

    const/high16 v2, 0x3e80

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/gesture/ZoomerCompat;->startZoom(F)V

    goto :goto_0
.end method
