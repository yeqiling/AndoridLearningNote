.class Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;
.super Ljava/lang/Object;
.source "PieChartRotationAnimatorV8.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;


# direct methods
.method constructor <init>(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x43b4

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-wide v6, v6, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->start:J

    sub-long v0, v4, v6

    .line 26
    .local v0, elapsed:J
    iget-object v4, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-wide v4, v4, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->duration:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    .line 27
    iget-object v4, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iput-boolean v9, v4, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->isAnimationStarted:Z

    .line 28
    iget-object v4, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-object v4, v4, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->handler:Landroid/os/Handler;

    iget-object v5, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->runnable:Ljava/lang/Runnable;
    invoke-static {v5}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->access$000(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 29
    iget-object v4, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-object v4, v4, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->chart:Llecho/lib/hellocharts/view/PieChartView;

    iget-object v5, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->targetRotation:F
    invoke-static {v5}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->access$100(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v4, v5, v9}, Llecho/lib/hellocharts/view/PieChartView;->setChartRotation(IZ)V

    .line 30
    iget-object v4, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;
    invoke-static {v4}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->access$200(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)Llecho/lib/hellocharts/animation/ChartAnimationListener;

    move-result-object v4

    invoke-interface {v4}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationFinished()V

    .line 38
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v4, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-object v4, v4, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->interpolator:Landroid/view/animation/Interpolator;

    long-to-float v5, v0

    iget-object v6, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-wide v6, v6, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->duration:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    const/high16 v5, 0x3f80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 34
    .local v3, scale:F
    iget-object v4, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->startRotation:F
    invoke-static {v4}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->access$300(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)F

    move-result v4

    iget-object v5, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->targetRotation:F
    invoke-static {v5}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->access$100(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)F

    move-result v5

    iget-object v6, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->startRotation:F
    invoke-static {v6}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->access$300(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, v3

    add-float v2, v4, v5

    .line 35
    .local v2, rotation:F
    rem-float v4, v2, v8

    add-float/2addr v4, v8

    rem-float v2, v4, v8

    .line 36
    iget-object v4, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-object v4, v4, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->chart:Llecho/lib/hellocharts/view/PieChartView;

    float-to-int v5, v2

    invoke-virtual {v4, v5, v9}, Llecho/lib/hellocharts/view/PieChartView;->setChartRotation(IZ)V

    .line 37
    iget-object v4, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    iget-object v4, v4, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->handler:Landroid/os/Handler;

    const-wide/16 v6, 0x10

    invoke-virtual {v4, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
