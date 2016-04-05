.class public Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;
.super Ljava/lang/Object;
.source "PieChartRotationAnimatorV8.java"

# interfaces
.implements Llecho/lib/hellocharts/animation/PieChartRotationAnimator;


# instance fields
.field private animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

.field final chart:Llecho/lib/hellocharts/view/PieChartView;

.field final duration:J

.field final handler:Landroid/os/Handler;

.field final interpolator:Landroid/view/animation/Interpolator;

.field isAnimationStarted:Z

.field private final runnable:Ljava/lang/Runnable;

.field start:J

.field private startRotation:F

.field private targetRotation:F


# direct methods
.method public constructor <init>(Llecho/lib/hellocharts/view/PieChartView;)V
    .locals 2
    .parameter "chart"

    .prologue
    .line 42
    const-wide/16 v0, 0xc8

    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;-><init>(Llecho/lib/hellocharts/view/PieChartView;J)V

    .line 43
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/view/PieChartView;J)V
    .locals 2
    .parameter "chart"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->interpolator:Landroid/view/animation/Interpolator;

    .line 17
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->isAnimationStarted:Z

    .line 18
    iput v1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->startRotation:F

    .line 19
    iput v1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->targetRotation:F

    .line 20
    new-instance v0, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    .line 21
    new-instance v0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;

    invoke-direct {v0, p0}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8$1;-><init>(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->runnable:Ljava/lang/Runnable;

    .line 46
    iput-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->chart:Llecho/lib/hellocharts/view/PieChartView;

    .line 47
    iput-wide p2, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->duration:J

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->handler:Landroid/os/Handler;

    .line 49
    return-void
.end method

.method static synthetic access$000(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->targetRotation:F

    return v0
.end method

.method static synthetic access$200(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)Llecho/lib/hellocharts/animation/ChartAnimationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    return-object v0
.end method

.method static synthetic access$300(Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 10
    iget v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->startRotation:F

    return v0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 63
    iput-boolean v2, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->isAnimationStarted:Z

    .line 64
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->handler:Landroid/os/Handler;

    iget-object v1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 65
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->chart:Llecho/lib/hellocharts/view/PieChartView;

    iget v1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->targetRotation:F

    float-to-int v1, v1

    invoke-virtual {v0, v1, v2}, Llecho/lib/hellocharts/view/PieChartView;->setChartRotation(IZ)V

    .line 66
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationFinished()V

    .line 67
    return-void
.end method

.method public isAnimationStarted()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->isAnimationStarted:Z

    return v0
.end method

.method public setChartAnimationListener(Llecho/lib/hellocharts/animation/ChartAnimationListener;)V
    .locals 1
    .parameter "animationListener"

    .prologue
    .line 76
    if-nez p1, :cond_0

    .line 77
    new-instance v0, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/animation/DummyChartAnimationListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    goto :goto_0
.end method

.method public startAnimation(FF)V
    .locals 2
    .parameter "startRotation"
    .parameter "targetRotation"

    .prologue
    const/high16 v1, 0x43b4

    .line 53
    rem-float v0, p1, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->startRotation:F

    .line 54
    rem-float v0, p2, v1

    add-float/2addr v0, v1

    rem-float/2addr v0, v1

    iput v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->targetRotation:F

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->isAnimationStarted:Z

    .line 56
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->animationListener:Llecho/lib/hellocharts/animation/ChartAnimationListener;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/ChartAnimationListener;->onAnimationStarted()V

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->start:J

    .line 58
    iget-object v0, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->handler:Landroid/os/Handler;

    iget-object v1, p0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method
