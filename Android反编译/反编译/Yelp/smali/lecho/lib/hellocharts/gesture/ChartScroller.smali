.class public Llecho/lib/hellocharts/gesture/ChartScroller;
.super Ljava/lang/Object;
.source "ChartScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;
    }
.end annotation


# instance fields
.field private scroller:Landroid/support/v4/widget/ScrollerCompat;

.field private scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

.field private surfaceSizeBuffer:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 17
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->surfaceSizeBuffer:Landroid/graphics/Point;

    .line 21
    invoke-static {p1}, Landroid/support/v4/widget/ScrollerCompat;->create(Landroid/content/Context;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->scroller:Landroid/support/v4/widget/ScrollerCompat;

    .line 22
    return-void
.end method


# virtual methods
.method public computeScrollOffset(Llecho/lib/hellocharts/computator/ChartComputator;)Z
    .locals 6
    .parameter "computator"

    .prologue
    .line 81
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->scroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    invoke-virtual {p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v2

    .line 87
    .local v2, maxViewport:Llecho/lib/hellocharts/model/Viewport;
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->surfaceSizeBuffer:Landroid/graphics/Point;

    invoke-virtual {p1, v3}, Llecho/lib/hellocharts/computator/ChartComputator;->computeScrollSurfaceSize(Landroid/graphics/Point;)V

    .line 89
    iget v3, v2, Llecho/lib/hellocharts/model/Viewport;->left:F

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v4

    iget-object v5, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->scroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->getCurrX()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->surfaceSizeBuffer:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    add-float v0, v3, v4

    .line 91
    .local v0, currXRange:F
    iget v3, v2, Llecho/lib/hellocharts/model/Viewport;->top:F

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v4

    iget-object v5, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->scroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v5}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->surfaceSizeBuffer:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    sub-float v1, v3, v4

    .line 94
    .local v1, currYRange:F
    invoke-virtual {p1, v0, v1}, Llecho/lib/hellocharts/computator/ChartComputator;->setViewportTopLeft(FF)V

    .line 96
    const/4 v3, 0x1

    .line 99
    .end local v0           #currXRange:F
    .end local v1           #currYRange:F
    .end local v2           #maxViewport:Llecho/lib/hellocharts/model/Viewport;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public fling(IILlecho/lib/hellocharts/computator/ChartComputator;)Z
    .locals 11
    .parameter "velocityX"
    .parameter "velocityY"
    .parameter "computator"

    .prologue
    const/4 v5, 0x0

    .line 104
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->surfaceSizeBuffer:Landroid/graphics/Point;

    invoke-virtual {p3, v0}, Llecho/lib/hellocharts/computator/ChartComputator;->computeScrollSurfaceSize(Landroid/graphics/Point;)V

    .line 105
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {p3}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v3

    invoke-virtual {v0, v3}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 107
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->surfaceSizeBuffer:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v3, v3, Llecho/lib/hellocharts/model/Viewport;->left:F

    invoke-virtual {p3}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v4

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->left:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    invoke-virtual {p3}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v3

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v3

    div-float/2addr v0, v3

    float-to-int v1, v0

    .line 109
    .local v1, startX:I
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->surfaceSizeBuffer:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-virtual {p3}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v3

    iget v3, v3, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget-object v4, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v4, v4, Llecho/lib/hellocharts/model/Viewport;->top:F

    sub-float/2addr v3, v4

    mul-float/2addr v0, v3

    invoke-virtual {p3}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v3

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v3

    div-float/2addr v0, v3

    float-to-int v2, v0

    .line 113
    .local v2, startY:I
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->scroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 115
    invoke-virtual {p3}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 116
    .local v10, width:I
    invoke-virtual {p3}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    .line 117
    .local v9, height:I
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->scroller:Landroid/support/v4/widget/ScrollerCompat;

    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->surfaceSizeBuffer:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v10

    add-int/lit8 v6, v3, 0x1

    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->surfaceSizeBuffer:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v9

    add-int/lit8 v8, v3, 0x1

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public scroll(Llecho/lib/hellocharts/computator/ChartComputator;FFLlecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;)Z
    .locals 15
    .parameter "computator"
    .parameter "distanceX"
    .parameter "distanceY"
    .parameter "scrollResult"

    .prologue
    .line 38
    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v9

    .line 39
    .local v9, maxViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getVisibleViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v12

    .line 40
    .local v12, visibleViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v8

    .line 41
    .local v8, currentViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-virtual/range {p1 .. p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getContentRectMinusAllMargins()Landroid/graphics/Rect;

    move-result-object v7

    .line 43
    .local v7, contentRect:Landroid/graphics/Rect;
    iget v13, v8, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget v14, v9, Llecho/lib/hellocharts/model/Viewport;->left:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_5

    const/4 v2, 0x1

    .line 44
    .local v2, canScrollLeft:Z
    :goto_0
    iget v13, v8, Llecho/lib/hellocharts/model/Viewport;->right:F

    iget v14, v9, Llecho/lib/hellocharts/model/Viewport;->right:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_6

    const/4 v3, 0x1

    .line 45
    .local v3, canScrollRight:Z
    :goto_1
    iget v13, v8, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget v14, v9, Llecho/lib/hellocharts/model/Viewport;->top:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_7

    const/4 v4, 0x1

    .line 46
    .local v4, canScrollTop:Z
    :goto_2
    iget v13, v8, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iget v14, v9, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_8

    const/4 v1, 0x1

    .line 48
    .local v1, canScrollBottom:Z
    :goto_3
    const/4 v5, 0x0

    .line 49
    .local v5, canScrollX:Z
    const/4 v6, 0x0

    .line 51
    .local v6, canScrollY:Z
    if-eqz v2, :cond_9

    const/4 v13, 0x0

    cmpg-float v13, p2, v13

    if-gtz v13, :cond_9

    .line 52
    const/4 v5, 0x1

    .line 57
    :cond_0
    :goto_4
    if-eqz v4, :cond_a

    const/4 v13, 0x0

    cmpg-float v13, p3, v13

    if-gtz v13, :cond_a

    .line 58
    const/4 v6, 0x1

    .line 63
    :cond_1
    :goto_5
    if-nez v5, :cond_2

    if-eqz v6, :cond_3

    .line 65
    :cond_2
    iget-object v13, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->surfaceSizeBuffer:Landroid/graphics/Point;

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Llecho/lib/hellocharts/computator/ChartComputator;->computeScrollSurfaceSize(Landroid/graphics/Point;)V

    .line 67
    invoke-virtual {v12}, Llecho/lib/hellocharts/model/Viewport;->width()F

    move-result v13

    mul-float v13, v13, p2

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    div-float v10, v13, v14

    .line 68
    .local v10, viewportOffsetX:F
    move/from16 v0, p3

    neg-float v13, v0

    invoke-virtual {v12}, Llecho/lib/hellocharts/model/Viewport;->height()F

    move-result v14

    mul-float/2addr v13, v14

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    div-float v11, v13, v14

    .line 70
    .local v11, viewportOffsetY:F
    iget v13, v8, Llecho/lib/hellocharts/model/Viewport;->left:F

    add-float/2addr v13, v10

    iget v14, v8, Llecho/lib/hellocharts/model/Viewport;->top:F

    add-float/2addr v14, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Llecho/lib/hellocharts/computator/ChartComputator;->setViewportTopLeft(FF)V

    .line 74
    .end local v10           #viewportOffsetX:F
    .end local v11           #viewportOffsetY:F
    :cond_3
    move-object/from16 v0, p4

    iput-boolean v5, v0, Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;->canScrollX:Z

    .line 75
    move-object/from16 v0, p4

    iput-boolean v6, v0, Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;->canScrollY:Z

    .line 77
    if-nez v5, :cond_4

    if-eqz v6, :cond_b

    :cond_4
    const/4 v13, 0x1

    :goto_6
    return v13

    .line 43
    .end local v1           #canScrollBottom:Z
    .end local v2           #canScrollLeft:Z
    .end local v3           #canScrollRight:Z
    .end local v4           #canScrollTop:Z
    .end local v5           #canScrollX:Z
    .end local v6           #canScrollY:Z
    :cond_5
    const/4 v2, 0x0

    goto :goto_0

    .line 44
    .restart local v2       #canScrollLeft:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 45
    .restart local v3       #canScrollRight:Z
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 46
    .restart local v4       #canScrollTop:Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_3

    .line 53
    .restart local v1       #canScrollBottom:Z
    .restart local v5       #canScrollX:Z
    .restart local v6       #canScrollY:Z
    :cond_9
    if-eqz v3, :cond_0

    const/4 v13, 0x0

    cmpl-float v13, p2, v13

    if-ltz v13, :cond_0

    .line 54
    const/4 v5, 0x1

    goto :goto_4

    .line 59
    :cond_a
    if-eqz v1, :cond_1

    const/4 v13, 0x0

    cmpl-float v13, p3, v13

    if-ltz v13, :cond_1

    .line 60
    const/4 v6, 0x1

    goto :goto_5

    .line 77
    :cond_b
    const/4 v13, 0x0

    goto :goto_6
.end method

.method public startScroll(Llecho/lib/hellocharts/computator/ChartComputator;)Z
    .locals 2
    .parameter "computator"

    .prologue
    .line 25
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->scroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 26
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartScroller;->scrollerStartViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {p1}, Llecho/lib/hellocharts/computator/ChartComputator;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 27
    const/4 v0, 0x1

    return v0
.end method
