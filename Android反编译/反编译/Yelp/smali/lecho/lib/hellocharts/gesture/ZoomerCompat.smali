.class public Llecho/lib/hellocharts/gesture/ZoomerCompat;
.super Ljava/lang/Object;
.source "ZoomerCompat.java"


# static fields
.field private static final DEFAULT_SHORT_ANIMATION_DURATION:I = 0xc8


# instance fields
.field private mAnimationDurationMillis:J

.field private mCurrentZoom:F

.field private mEndZoom:F

.field private mFinished:Z

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mStartRTC:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mFinished:Z

    .line 60
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 62
    const-wide/16 v0, 0xc8

    iput-wide v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mAnimationDurationMillis:J

    .line 63
    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mFinished:Z

    .line 82
    iget v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mEndZoom:F

    iput v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mCurrentZoom:F

    .line 83
    return-void
.end method

.method public computeZoom()Z
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 104
    iget-boolean v5, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mFinished:Z

    if-eqz v5, :cond_0

    .line 117
    :goto_0
    return v1

    .line 108
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mStartRTC:J

    sub-long v2, v6, v8

    .line 109
    .local v2, tRTC:J
    iget-wide v6, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mAnimationDurationMillis:J

    cmp-long v5, v2, v6

    if-ltz v5, :cond_1

    .line 110
    iput-boolean v4, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mFinished:Z

    .line 111
    iget v4, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mEndZoom:F

    iput v4, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mCurrentZoom:F

    goto :goto_0

    .line 115
    :cond_1
    long-to-float v1, v2

    const/high16 v5, 0x3f80

    mul-float/2addr v1, v5

    iget-wide v6, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mAnimationDurationMillis:J

    long-to-float v5, v6

    div-float v0, v1, v5

    .line 116
    .local v0, t:F
    iget v1, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mEndZoom:F

    iget-object v5, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float/2addr v1, v5

    iput v1, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mCurrentZoom:F

    move v1, v4

    .line 117
    goto :goto_0
.end method

.method public forceFinished(Z)V
    .locals 0
    .parameter "finished"

    .prologue
    .line 72
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mFinished:Z

    .line 73
    return-void
.end method

.method public getCurrZoom()F
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mCurrentZoom:F

    return v0
.end method

.method public startZoom(F)V
    .locals 2
    .parameter "endZoom"

    .prologue
    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mStartRTC:J

    .line 92
    iput p1, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mEndZoom:F

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mFinished:Z

    .line 95
    const/high16 v0, 0x3f80

    iput v0, p0, Llecho/lib/hellocharts/gesture/ZoomerCompat;->mCurrentZoom:F

    .line 96
    return-void
.end method
