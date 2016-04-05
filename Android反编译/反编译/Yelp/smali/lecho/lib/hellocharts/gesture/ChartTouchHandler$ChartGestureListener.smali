.class public Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/gesture/ChartTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChartGestureListener"
.end annotation


# instance fields
.field protected scrollResult:Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;

.field final synthetic this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;


# direct methods
.method protected constructor <init>(Llecho/lib/hellocharts/gesture/ChartTouchHandler;)V
    .locals 1
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 283
    new-instance v0, Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;

    invoke-direct {v0}, Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->scrollResult:Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 300
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-boolean v0, v0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled:Z

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v0, v0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v1, v1, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, p1, v1}, Llecho/lib/hellocharts/gesture/ChartZoomer;->startZoom(Landroid/view/MotionEvent;Llecho/lib/hellocharts/computator/ChartComputator;)Z

    move-result v0

    .line 304
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e"

    .prologue
    .line 287
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-boolean v0, v0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    #calls: Llecho/lib/hellocharts/gesture/ChartTouchHandler;->disallowParentInterceptTouchEvent()V
    invoke-static {v0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->access$000(Llecho/lib/hellocharts/gesture/ChartTouchHandler;)V

    .line 291
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v0, v0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartScroller:Llecho/lib/hellocharts/gesture/ChartScroller;

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v1, v1, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/gesture/ChartScroller;->startScroll(Llecho/lib/hellocharts/computator/ChartComputator;)Z

    move-result v0

    .line 294
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 324
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-boolean v0, v0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v0, v0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartScroller:Llecho/lib/hellocharts/gesture/ChartScroller;

    const/high16 v1, 0x4000

    div-float v1, p3, v1

    neg-float v1, v1

    float-to-int v1, v1

    neg-float v2, p4

    float-to-int v2, v2

    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v3, v3, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v0, v1, v2, v3}, Llecho/lib/hellocharts/gesture/ChartScroller;->fling(IILlecho/lib/hellocharts/computator/ChartComputator;)Z

    move-result v0

    .line 327
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 309
    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-boolean v1, v1, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v1, v1, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartScroller:Llecho/lib/hellocharts/gesture/ChartScroller;

    iget-object v2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v2, v2, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->scrollResult:Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;

    invoke-virtual {v1, v2, p3, p4, v3}, Llecho/lib/hellocharts/gesture/ChartScroller;->scroll(Llecho/lib/hellocharts/computator/ChartComputator;FFLlecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;)Z

    move-result v0

    .line 313
    .local v0, canScroll:Z
    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->scrollResult:Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;

    #calls: Llecho/lib/hellocharts/gesture/ChartTouchHandler;->allowParentInterceptTouchEvent(Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;)V
    invoke-static {v1, v2}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->access$100(Llecho/lib/hellocharts/gesture/ChartTouchHandler;Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;)V

    .line 318
    .end local v0           #canScroll:Z
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
