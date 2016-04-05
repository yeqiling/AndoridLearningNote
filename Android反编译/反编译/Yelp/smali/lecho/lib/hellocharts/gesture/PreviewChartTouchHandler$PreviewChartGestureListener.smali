.class public Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$PreviewChartGestureListener;
.super Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;
.source "PreviewChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PreviewChartGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;


# direct methods
.method protected constructor <init>(Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$PreviewChartGestureListener;->this$0:Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;

    invoke-direct {p0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;-><init>(Llecho/lib/hellocharts/gesture/ChartTouchHandler;)V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 50
    neg-float v0, p3

    neg-float v1, p4

    invoke-super {p0, p1, p2, v0, v1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 45
    neg-float v0, p3

    neg-float v1, p4

    invoke-super {p0, p1, p2, v0, v1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method
