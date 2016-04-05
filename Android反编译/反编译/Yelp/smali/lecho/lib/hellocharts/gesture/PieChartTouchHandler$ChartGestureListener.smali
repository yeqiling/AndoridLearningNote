.class Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PieChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/gesture/PieChartTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChartGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;


# direct methods
.method private constructor <init>(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;Llecho/lib/hellocharts/gesture/PieChartTouchHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;-><init>(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;)V

    return-void
.end method

.method private vectorToScalarScroll(FFFF)F
    .locals 8
    .parameter "dx"
    .parameter "dy"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 144
    mul-float v5, p1, p1

    mul-float v6, p2, p2

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v3, v6

    .line 148
    .local v3, l:F
    neg-float v0, p4

    .line 149
    .local v0, crossX:F
    move v1, p3

    .line 151
    .local v1, crossY:F
    mul-float v5, v0, p1

    mul-float v6, v1, p2

    add-float v2, v5, v6

    .line 152
    .local v2, dot:F
    invoke-static {v2}, Ljava/lang/Math;->signum(F)F

    move-result v4

    .line 154
    .local v4, sign:F
    mul-float v5, v3, v4

    return v5
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 84
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    #getter for: Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->isRotationEnabled:Z
    invoke-static {v0}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->access$200(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    iget-object v0, v0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->scroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 86
    const/4 v0, 0x1

    .line 89
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 15
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 117
    iget-object v2, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    #getter for: Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->isRotationEnabled:Z
    invoke-static {v2}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->access$200(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    iget-object v2, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    iget-object v2, v2, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->pieChart:Llecho/lib/hellocharts/view/PieChartView;

    invoke-virtual {v2}, Llecho/lib/hellocharts/view/PieChartView;->getCircleOval()Landroid/graphics/RectF;

    move-result-object v13

    .line 120
    .local v13, circleOval:Landroid/graphics/RectF;
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerX()F

    move-result v11

    .line 121
    .local v11, centerX:F
    invoke-virtual {v13}, Landroid/graphics/RectF;->centerY()F

    move-result v12

    .line 122
    .local v12, centerY:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v2, v11

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v3, v12

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {p0, v0, v1, v2, v3}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->vectorToScalarScroll(FFFF)F

    move-result v14

    .line 124
    .local v14, scrollTheta:F
    iget-object v2, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    iget-object v2, v2, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->scroller:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    .line 125
    iget-object v2, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    iget-object v2, v2, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->scroller:Landroid/support/v4/widget/ScrollerCompat;

    const/4 v3, 0x0

    iget-object v4, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    iget-object v4, v4, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->pieChart:Llecho/lib/hellocharts/view/PieChartView;

    invoke-virtual {v4}, Llecho/lib/hellocharts/view/PieChartView;->getChartRotation()I

    move-result v4

    const/4 v5, 0x0

    float-to-int v6, v14

    div-int/lit8 v6, v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v9, -0x8000

    const v10, 0x7fffffff

    invoke-virtual/range {v2 .. v10}, Landroid/support/v4/widget/ScrollerCompat;->fling(IIIIIIII)V

    .line 127
    const/4 v2, 0x1

    .line 130
    .end local v11           #centerX:F
    .end local v12           #centerY:F
    .end local v13           #circleOval:Landroid/graphics/RectF;
    .end local v14           #scrollTheta:F
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 8
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    .line 100
    iget-object v5, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    #getter for: Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->isRotationEnabled:Z
    invoke-static {v5}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->access$200(Llecho/lib/hellocharts/gesture/PieChartTouchHandler;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    iget-object v5, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    iget-object v5, v5, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->pieChart:Llecho/lib/hellocharts/view/PieChartView;

    invoke-virtual {v5}, Llecho/lib/hellocharts/view/PieChartView;->getCircleOval()Landroid/graphics/RectF;

    move-result-object v2

    .line 103
    .local v2, circleOval:Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    .line 104
    .local v0, centerX:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    .line 105
    .local v1, centerY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v5, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v6, v1

    invoke-direct {p0, p3, p4, v5, v6}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->vectorToScalarScroll(FFFF)F

    move-result v3

    .line 107
    .local v3, scrollTheta:F
    iget-object v5, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    iget-object v5, v5, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->pieChart:Llecho/lib/hellocharts/view/PieChartView;

    iget-object v6, p0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    iget-object v6, v6, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->pieChart:Llecho/lib/hellocharts/view/PieChartView;

    invoke-virtual {v6}, Llecho/lib/hellocharts/view/PieChartView;->getChartRotation()I

    move-result v6

    float-to-int v7, v3

    div-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6, v4}, Llecho/lib/hellocharts/view/PieChartView;->setChartRotation(IZ)V

    .line 109
    const/4 v4, 0x1

    .line 112
    .end local v0           #centerX:F
    .end local v1           #centerY:F
    .end local v2           #circleOval:Landroid/graphics/RectF;
    .end local v3           #scrollTheta:F
    :cond_0
    return v4
.end method
