.class public Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;
.super Llecho/lib/hellocharts/gesture/ChartTouchHandler;
.source "PreviewChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$PreviewChartGestureListener;,
        Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$ChartScaleGestureListener;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V
    .locals 3
    .parameter "context"
    .parameter "chart"

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    .line 17
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$PreviewChartGestureListener;

    invoke-direct {v1, p0}, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$PreviewChartGestureListener;-><init>(Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;->gestureDetector:Landroid/view/GestureDetector;

    .line 18
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$ChartScaleGestureListener;

    invoke-direct {v1, p0}, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler$ChartScaleGestureListener;-><init>(Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 21
    iput-boolean v2, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;->isValueTouchEnabled:Z

    .line 22
    iput-boolean v2, p0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;->isValueSelectionEnabled:Z

    .line 23
    return-void
.end method
