.class public Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;
.super Ljava/lang/Object;
.source "ChartViewportAnimatorV14.java"

# interfaces
.implements Llecho/lib/hellocharts/animation/ChartViewportAnimator;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

.field private animator:Landroid/animation/ValueAnimator;

.field private final chart:Llecho/lib/hellocharts/view/Chart;

.field private newViewport:Llecho/lib/hellocharts/model/Viewport;

.field private startViewport:Llecho/lib/hellocharts/model/Viewport;

.field private targetViewport:Llecho/lib/hellocharts/model/Viewport;


# direct methods
.method public constructor <init>(Llecho/lib/hellocharts/view/Chart;)V
    .locals 4
    .parameter "chart"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 17
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 18
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->newViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 19
    new-instance v0, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    .line 22
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->chart:Llecho/lib/hellocharts/view/Chart;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    .line 24
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 25
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 26
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    return-void

    .line 23
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 48
    return-void
.end method

.method public isAnimationStarted()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 64
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 68
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->chart:Llecho/lib/hellocharts/view/Chart;

    iget-object v1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-interface {v0, v1}, Llecho/lib/hellocharts/view/Chart;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 69
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationFinished()V

    .line 70
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 74
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 78
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationStarted()V

    .line 79
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 10
    .parameter "animation"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v4

    .line 53
    .local v4, scale:F
    iget-object v5, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->left:F

    iget-object v6, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v6, v6, Llecho/lib/hellocharts/model/Viewport;->left:F

    sub-float/2addr v5, v6

    mul-float v1, v5, v4

    .line 54
    .local v1, diffLeft:F
    iget-object v5, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->top:F

    iget-object v6, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v6, v6, Llecho/lib/hellocharts/model/Viewport;->top:F

    sub-float/2addr v5, v6

    mul-float v3, v5, v4

    .line 55
    .local v3, diffTop:F
    iget-object v5, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->right:F

    iget-object v6, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v6, v6, Llecho/lib/hellocharts/model/Viewport;->right:F

    sub-float/2addr v5, v6

    mul-float v2, v5, v4

    .line 56
    .local v2, diffRight:F
    iget-object v5, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v5, v5, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    iget-object v6, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v6, v6, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    sub-float/2addr v5, v6

    mul-float v0, v5, v4

    .line 57
    .local v0, diffBottom:F
    iget-object v5, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->newViewport:Llecho/lib/hellocharts/model/Viewport;

    iget-object v6, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v6, v6, Llecho/lib/hellocharts/model/Viewport;->left:F

    add-float/2addr v6, v1

    iget-object v7, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v7, v7, Llecho/lib/hellocharts/model/Viewport;->top:F

    add-float/2addr v7, v3

    iget-object v8, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v8, v8, Llecho/lib/hellocharts/model/Viewport;->right:F

    add-float/2addr v8, v2

    iget-object v9, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    iget v9, v9, Llecho/lib/hellocharts/model/Viewport;->bottom:F

    add-float/2addr v9, v0

    invoke-virtual {v5, v6, v7, v8, v9}, Llecho/lib/hellocharts/model/Viewport;->set(FFFF)V

    .line 59
    iget-object v5, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->chart:Llecho/lib/hellocharts/view/Chart;

    iget-object v6, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->newViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-interface {v5, v6}, Llecho/lib/hellocharts/view/Chart;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 60
    return-void
.end method

.method public setChartAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V
    .locals 1
    .parameter "animationListener"

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    goto :goto_0
.end method

.method public startAnimation(Llecho/lib/hellocharts/model/Viewport;Llecho/lib/hellocharts/model/Viewport;)V
    .locals 4
    .parameter "startViewport"
    .parameter "targetViewport"

    .prologue
    .line 31
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 32
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, p2}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 33
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 34
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 35
    return-void
.end method

.method public startAnimation(Llecho/lib/hellocharts/model/Viewport;Llecho/lib/hellocharts/model/Viewport;J)V
    .locals 1
    .parameter "startViewport"
    .parameter "targetViewport"
    .parameter "duration"

    .prologue
    .line 39
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->startViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 40
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->targetViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v0, p2}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 41
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 42
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartViewportAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 43
    return-void
.end method
