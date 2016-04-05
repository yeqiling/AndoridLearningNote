.class Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;
.super Ljava/lang/Object;
.source "ChartViewportAnimatorV8.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;


# direct methods
.method constructor <init>(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    iget-wide v10, v7, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->start:J

    sub-long v4, v8, v10

    .line 28
    .local v4, elapsed:J
    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->duration:J
    invoke-static {v7}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$000(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)J

    move-result-wide v8

    cmp-long v7, v4, v8

    if-lez v7, :cond_0

    .line 29
    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    const/4 v8, 0x0

    iput-boolean v8, v7, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->isAnimationStarted:Z

    .line 30
    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    iget-object v7, v7, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->handler:Landroid/os/Handler;

    iget-object v8, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->runnable:Ljava/lang/Runnable;
    invoke-static {v8}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$100(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 31
    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    iget-object v7, v7, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->chart:Llecho/lib/hellocharts/view/Chart;

    iget-object v8, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->targetViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v8}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$200(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v8

    invoke-interface {v7, v8}, Llecho/lib/hellocharts/view/Chart;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 32
    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;
    invoke-static {v7}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$300(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/animation/ChartAnimationListener;

    move-result-object v7

    invoke-interface {v7}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationFinished()V

    .line 45
    :goto_0
    return-void

    .line 35
    :cond_0
    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    iget-object v7, v7, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->interpolator:Landroid/view/animation/Interpolator;

    long-to-float v8, v4

    iget-object v9, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->duration:J
    invoke-static {v9}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$000(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)J

    move-result-wide v10

    long-to-float v9, v10

    div-float/2addr v8, v9

    invoke-interface {v7, v8}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v7

    const/high16 v8, 0x3f80

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 36
    .local v6, scale:F
    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->targetViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v7}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$200(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v7

    iget v7, v7, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget-object v8, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->startViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v8}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v8

    iget v8, v8, Llecho/lib/hellocharts/model/Viewport;->left:F

    sub-float/2addr v7, v8

    mul-float v1, v7, v6

    .line 37
    .local v1, diffLeft:F
    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->targetViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v7}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$200(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v7

    iget v7, v7, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget-object v8, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->startViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v8}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v8

    iget v8, v8, Llecho/lib/hellocharts/model/Viewport;->top:F

    sub-float/2addr v7, v8

    mul-float v3, v7, v6

    .line 38
    .local v3, diffTop:F
    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->targetViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v7}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$200(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v7

    iget v7, v7, Llecho/lib/hellocharts/model/Viewport;->right:F

    iget-object v8, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->startViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v8}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v8

    iget v8, v8, Llecho/lib/hellocharts/model/Viewport;->right:F

    sub-float/2addr v7, v8

    mul-float v2, v7, v6

    .line 39
    .local v2, diffRight:F
    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->targetViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v7}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$200(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v7

    iget v7, v7, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iget-object v8, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->startViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v8}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v8

    iget v8, v8, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    sub-float/2addr v7, v8

    mul-float v0, v7, v6

    .line 40
    .local v0, diffBottom:F
    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->newViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v7}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$500(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v7

    iget-object v8, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->startViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v8}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v8

    iget v8, v8, Llecho/lib/hellocharts/model/Viewport;->left:F

    add-float/2addr v8, v1

    iget-object v9, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->startViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v9}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v9

    iget v9, v9, Llecho/lib/hellocharts/model/Viewport;->top:F

    add-float/2addr v9, v3

    iget-object v10, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->startViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v10}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v10

    iget v10, v10, Llecho/lib/hellocharts/model/Viewport;->right:F

    add-float/2addr v10, v2

    iget-object v11, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->startViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v11}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$400(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v11

    iget v11, v11, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    add-float/2addr v11, v0

    invoke-virtual {v7, v8, v9, v10, v11}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 42
    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    iget-object v7, v7, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->chart:Llecho/lib/hellocharts/view/Chart;

    iget-object v8, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    #getter for: Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->newViewport:Llecho/lib/hellocharts/model/Viewport;
    invoke-static {v8}, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->access$500(Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;)Llecho/lib/hellocharts/model/Viewport;

    move-result-object v8

    invoke-interface {v7, v8}, Llecho/lib/hellocharts/view/Chart;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 44
    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8$1;->this$0:Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;

    iget-object v7, v7, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV8;->handler:Landroid/os/Handler;

    const-wide/16 v8, 0x10

    invoke-virtual {v7, p0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
