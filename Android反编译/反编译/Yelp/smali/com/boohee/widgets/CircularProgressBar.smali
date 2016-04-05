.class public Lcom/boohee/widgets/CircularProgressBar;
.super Landroid/view/View;
.source "CircularProgressBar.java"


# static fields
.field private static final MAX_PROGRESS:I = 0x64

.field private static final PADDING:I = 0x14


# instance fields
.field private circlePaint:Landroid/graphics/Paint;

.field private fillPaint:Landroid/graphics/Paint;

.field private layout_height:I

.field private layout_width:I

.field private mBackgroundColor:I

.field private mIsCapRound:Z

.field private mIsIndicatorEnabled:Z

.field private mProgress:I

.field private mProgressColor:I

.field private mStartAngle:I

.field private mStrokeWidth:I

.field private mSweepAngle:I

.field private oval:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v1, p0, Lcom/boohee/widgets/CircularProgressBar;->mProgress:I

    .line 28
    const/4 v0, 0x4

    iput v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mStrokeWidth:I

    .line 31
    const-string v0, "#DFDFDF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mBackgroundColor:I

    .line 32
    const-string v0, "#03A9F5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mProgressColor:I

    .line 34
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->circlePaint:Landroid/graphics/Paint;

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->fillPaint:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->oval:Landroid/graphics/RectF;

    .line 41
    iput v1, p0, Lcom/boohee/widgets/CircularProgressBar;->layout_width:I

    .line 42
    iput v1, p0, Lcom/boohee/widgets/CircularProgressBar;->layout_height:I

    .line 44
    iput-boolean v1, p0, Lcom/boohee/widgets/CircularProgressBar;->mIsCapRound:Z

    .line 45
    iput-boolean v1, p0, Lcom/boohee/widgets/CircularProgressBar;->mIsIndicatorEnabled:Z

    .line 48
    const/16 v0, 0x10e

    iput v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mStartAngle:I

    .line 49
    const/16 v0, 0x168

    iput v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mSweepAngle:I

    .line 53
    sget-object v0, Lcom/boohee/one/R$styleable;->CircularProgressBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/boohee/widgets/CircularProgressBar;->parseAttributes(Landroid/content/res/TypedArray;)V

    .line 54
    return-void
.end method

.method private getMarkerRotation()F
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mProgress:I

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float/2addr v0, v1

    const/high16 v1, 0x43b4

    mul-float/2addr v0, v1

    return v0
.end method

.method private parseAttributes(Landroid/content/res/TypedArray;)V
    .locals 2
    .parameter "a"

    .prologue
    .line 57
    const/4 v0, 0x1

    iget v1, p0, Lcom/boohee/widgets/CircularProgressBar;->mBackgroundColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mBackgroundColor:I

    .line 58
    const/4 v0, 0x0

    iget v1, p0, Lcom/boohee/widgets/CircularProgressBar;->mProgressColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mProgressColor:I

    .line 59
    const/4 v0, 0x6

    iget v1, p0, Lcom/boohee/widgets/CircularProgressBar;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mStrokeWidth:I

    .line 60
    const/4 v0, 0x3

    iget v1, p0, Lcom/boohee/widgets/CircularProgressBar;->mStartAngle:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mStartAngle:I

    .line 61
    const/4 v0, 0x4

    iget v1, p0, Lcom/boohee/widgets/CircularProgressBar;->mSweepAngle:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mSweepAngle:I

    .line 62
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/boohee/widgets/CircularProgressBar;->mIsCapRound:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mIsCapRound:Z

    .line 63
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method

.method private setupBounds()V
    .locals 6

    .prologue
    .line 97
    iget v1, p0, Lcom/boohee/widgets/CircularProgressBar;->layout_width:I

    iget v2, p0, Lcom/boohee/widgets/CircularProgressBar;->layout_height:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 98
    .local v0, minValue:I
    new-instance v1, Landroid/graphics/RectF;

    iget v2, p0, Lcom/boohee/widgets/CircularProgressBar;->mStrokeWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/boohee/widgets/CircularProgressBar;->mStrokeWidth:I

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/boohee/widgets/CircularProgressBar;->mStrokeWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v0, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/boohee/widgets/CircularProgressBar;->mStrokeWidth:I

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v0, v5

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/boohee/widgets/CircularProgressBar;->oval:Landroid/graphics/RectF;

    .line 99
    return-void
.end method

.method private setupPaints()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 78
    iget-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->circlePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iget-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->circlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/widgets/CircularProgressBar;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    iget-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->circlePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/widgets/CircularProgressBar;->mBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    iget-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->fillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/widgets/CircularProgressBar;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 85
    iget-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 86
    iget-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 87
    iget-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->fillPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/widgets/CircularProgressBar;->mProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-boolean v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mIsCapRound:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->circlePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 90
    iget-object v0, p0, Lcom/boohee/widgets/CircularProgressBar;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 94
    :cond_0
    return-void
.end method


# virtual methods
.method public animateProgess(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 118
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/boohee/widgets/CircularProgressBar;->animateProgess(ILandroid/view/animation/Interpolator;)V

    .line 119
    return-void
.end method

.method public animateProgess(ILandroid/view/animation/Interpolator;)V
    .locals 4
    .parameter "progress"
    .parameter "interpolator"

    .prologue
    .line 122
    const-string v1, "progress"

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 123
    .local v0, animation:Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 124
    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 125
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 126
    return-void
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mProgress:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 103
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 104
    iget-object v1, p0, Lcom/boohee/widgets/CircularProgressBar;->oval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mStartAngle:I

    int-to-float v2, v0

    iget v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mSweepAngle:I

    int-to-float v3, v0

    iget-object v5, p0, Lcom/boohee/widgets/CircularProgressBar;->circlePaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 105
    iget-object v1, p0, Lcom/boohee/widgets/CircularProgressBar;->oval:Landroid/graphics/RectF;

    iget v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mStartAngle:I

    int-to-float v2, v0

    iget v0, p0, Lcom/boohee/widgets/CircularProgressBar;->mProgress:I

    int-to-float v0, v0

    const/high16 v3, 0x42c8

    div-float/2addr v0, v3

    iget v3, p0, Lcom/boohee/widgets/CircularProgressBar;->mSweepAngle:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/boohee/widgets/CircularProgressBar;->fillPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 106
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 71
    iput p1, p0, Lcom/boohee/widgets/CircularProgressBar;->layout_width:I

    .line 72
    iput p2, p0, Lcom/boohee/widgets/CircularProgressBar;->layout_height:I

    .line 73
    invoke-direct {p0}, Lcom/boohee/widgets/CircularProgressBar;->setupPaints()V

    .line 74
    invoke-direct {p0}, Lcom/boohee/widgets/CircularProgressBar;->setupBounds()V

    .line 75
    return-void
.end method

.method public setProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    const/16 v0, 0x64

    .line 109
    if-le p1, v0, :cond_0

    move p1, v0

    .end local p1
    :cond_0
    iput p1, p0, Lcom/boohee/widgets/CircularProgressBar;->mProgress:I

    .line 110
    invoke-virtual {p0}, Lcom/boohee/widgets/CircularProgressBar;->postInvalidate()V

    .line 111
    return-void
.end method

.method public setProgressColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 133
    iput p1, p0, Lcom/boohee/widgets/CircularProgressBar;->mProgressColor:I

    .line 134
    invoke-virtual {p0}, Lcom/boohee/widgets/CircularProgressBar;->invalidate()V

    .line 135
    return-void
.end method
