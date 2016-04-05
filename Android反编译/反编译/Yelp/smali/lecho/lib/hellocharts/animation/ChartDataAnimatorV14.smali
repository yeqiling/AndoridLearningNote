.class public Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;
.super Ljava/lang/Object;
.source "ChartDataAnimatorV14.java"

# interfaces
.implements Llecho/lib/hellocharts/animation/ChartDataAnimator;
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


# direct methods
.method public constructor <init>(Llecho/lib/hellocharts/view/Chart;)V
    .locals 1
    .parameter "chart"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    .line 18
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->chart:Llecho/lib/hellocharts/view/Chart;

    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    .line 20
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 21
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 22
    return-void

    .line 19
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
    .line 36
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 37
    return-void
.end method

.method public isAnimationStarted()Z
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 46
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 50
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->animationDataFinished()V

    .line 51
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationFinished()V

    .line 52
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 56
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 60
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationStarted()V

    .line 61
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 41
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-interface {v0, v1}, Llecho/lib/hellocharts/view/Chart;->animationDataUpdate(F)V

    .line 42
    return-void
.end method

.method public setChartAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V
    .locals 1
    .parameter "animationListener"

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v0, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    goto :goto_0
.end method

.method public startAnimation(J)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 26
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 27
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 31
    :goto_0
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 32
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/animation/ChartDataAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0
.end method
