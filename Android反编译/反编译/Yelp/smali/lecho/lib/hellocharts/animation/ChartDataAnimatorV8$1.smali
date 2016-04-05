.class Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;
.super Ljava/lang/Object;
.source "ChartDataAnimatorV8.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;


# direct methods
.method constructor <init>(Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v3, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-wide v6, v3, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->start:J

    sub-long v0, v4, v6

    .line 23
    .local v0, elapsed:J
    iget-object v3, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-wide v4, v3, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->duration:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 24
    iget-object v3, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    const/4 v4, 0x0

    iput-boolean v4, v3, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->isAnimationStarted:Z

    .line 25
    iget-object v3, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-object v3, v3, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->handler:Landroid/os/Handler;

    iget-object v4, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->runnable:Ljava/lang/Runnable;
    invoke-static {v4}, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->access$000(Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 26
    iget-object v3, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-object v3, v3, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v3}, Llecho/lib/hellocharts/view/Chart;->animationDataFinished()V

    .line 33
    :goto_0
    return-void

    .line 29
    :cond_0
    iget-object v3, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-object v3, v3, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->interpolator:Landroid/view/animation/Interpolator;

    long-to-float v4, v0

    iget-object v5, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-wide v6, v5, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->duration:J

    long-to-float v5, v6

    div-float/2addr v4, v5

    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 30
    .local v2, scale:F
    iget-object v3, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-object v3, v3, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v3, v2}, Llecho/lib/hellocharts/view/Chart;->animationDataUpdate(F)V

    .line 31
    iget-object v3, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;

    iget-object v3, v3, Llecho/lib/hellocharts/animation/ChartDataAnimatorV8;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x10

    invoke-virtual {v3, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
