.class public Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;
.super Ljava/lang/Object;
.source "PieChartRotationAnimatorV14.java"

# interfaces
.implements Llecho/lib/hellocharts/animation/PieChartRotationAnimator;
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

.field private final chart:Llecho/lib/hellocharts/view/PieChartView;

.field private startRotation:F

.field private targetRotation:F


# direct methods
.method public constructor <init>(Llecho/lib/hellocharts/view/PieChartView;)V
    .locals 2
    .parameter "chart"

    .prologue
    .line 20
    const-wide/16 v0, 0xc8

    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;-><init>(Llecho/lib/hellocharts/view/PieChartView;J)V

    .line 21
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/view/PieChartView;J)V
    .locals 2
    .parameter "chart"
    .parameter "duration"

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->startRotation:F

    .line 16
    iput v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->targetRotation:F

    .line 17
    new-instance v0, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    .line 24
    iput-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->chart:Llecho/lib/hellocharts/view/PieChartView;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    .line 26
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 27
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 28
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 29
    return-void

    .line 25
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
    .line 40
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 41
    return-void
.end method

.method public isAnimationStarted()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 53
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 57
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->chart:Llecho/lib/hellocharts/view/PieChartView;

    iget v1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->targetRotation:F

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llecho/lib/hellocharts/view/PieChartView;->setChartRotation(IZ)V

    .line 58
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationFinished()V

    .line 59
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 63
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 67
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationStarted()V

    .line 68
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6
    .parameter "animation"

    .prologue
    const/high16 v5, 0x43b4

    .line 45
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    .line 46
    .local v1, scale:F
    iget v2, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->startRotation:F

    iget v3, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->targetRotation:F

    iget v4, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->startRotation:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float v0, v2, v3

    .line 47
    .local v0, rotation:F
    rem-float v2, v0, v5

    add-float/2addr v2, v5

    rem-float v0, v2, v5

    .line 48
    iget-object v2, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->chart:Llecho/lib/hellocharts/view/PieChartView;

    float-to-int v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Llecho/lib/hellocharts/view/PieChartView;->setChartRotation(IZ)V

    .line 49
    return-void
.end method

.method public setChartAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V
    .locals 1
    .parameter "animationListener"

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    goto :goto_0
.end method

.method public startAnimation(FF)V
    .locals 2
    .parameter "startRotation"
    .parameter "targetRotation"

    .prologue
    const/high16 v1, 0x43b4

    .line 33
    rem-float v0, p1, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->startRotation:F

    .line 34
    rem-float v0, p2, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->targetRotation:F

    .line 35
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 36
    return-void
.end method
