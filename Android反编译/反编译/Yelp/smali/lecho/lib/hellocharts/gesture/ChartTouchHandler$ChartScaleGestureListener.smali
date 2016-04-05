.class public Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "ChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/gesture/ChartTouchHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ChartScaleGestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;


# direct methods
.method protected constructor <init>(Llecho/lib/hellocharts/gesture/ChartTouchHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartScaleGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 5
    .parameter "detector"

    .prologue
    .line 269
    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartScaleGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-boolean v1, v1, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled:Z

    if-eqz v1, :cond_1

    .line 270
    const/high16 v1, 0x4000

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    sub-float v0, v1, v2

    .line 271
    .local v0, scale:F
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    const/high16 v0, 0x3f80

    .line 274
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartScaleGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v1, v1, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

    iget-object v2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartScaleGestureListener;->this$0:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    iget-object v2, v2, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v4

    invoke-virtual {v1, v2, v3, v4, v0}, Llecho/lib/hellocharts/gesture/ChartZoomer;->scale(Llecho/lib/hellocharts/computator/ChartComputator;FFF)Z

    move-result v1

    .line 277
    .end local v0           #scale:F
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
