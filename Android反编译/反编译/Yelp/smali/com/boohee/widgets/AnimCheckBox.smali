.class public Lcom/boohee/widgets/AnimCheckBox;
.super Landroid/view/View;
.source "AnimCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/widgets/AnimCheckBox$OnCheckedChangeListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final defaultSize:I

.field private mBaseLeftHookOffset:F

.field private mBaseRightHookOffset:F

.field private mChecked:Z

.field private mCircleColor:I

.field private final mDuration:I

.field private mEndLeftHookOffset:F

.field private mEndRightHookOffset:F

.field private mHookOffset:F

.field private mHookSize:F

.field private mHookStartY:F

.field private mInnerCircleAlpha:I

.field private mInnerRectF:Landroid/graphics/RectF;

.field private mOnCheckedChangeListener:Lcom/boohee/widgets/AnimCheckBox$OnCheckedChangeListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mRectF:Landroid/graphics/RectF;

.field private final mSin27:D

.field private final mSin63:D

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mSweepAngle:F

.field private radius:I

.field private size:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/boohee/widgets/AnimCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x1

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const-string v0, "AnimCheckBox"

    iput-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->TAG:Ljava/lang/String;

    .line 26
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    .line 28
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mRectF:Landroid/graphics/RectF;

    .line 29
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mInnerRectF:Landroid/graphics/RectF;

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPath:Landroid/graphics/Path;

    .line 32
    const-wide/high16 v0, 0x403b

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mSin27:D

    .line 33
    const-wide v0, 0x404f800000000000L

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mSin63:D

    .line 40
    iput-boolean v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mChecked:Z

    .line 43
    const/16 v0, 0xff

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mInnerCircleAlpha:I

    .line 44
    const/4 v0, 0x2

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    .line 45
    const/16 v0, 0x1f4

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mDuration:I

    .line 46
    const v0, -0xffff01

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeColor:I

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mCircleColor:I

    .line 48
    const/16 v0, 0x28

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->defaultSize:I

    .line 56
    invoke-direct {p0, p2}, Lcom/boohee/widgets/AnimCheckBox;->init(Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/widgets/AnimCheckBox;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mChecked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/widgets/AnimCheckBox;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookOffset:F

    return p1
.end method

.method static synthetic access$202(Lcom/boohee/widgets/AnimCheckBox;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/boohee/widgets/AnimCheckBox;->mSweepAngle:F

    return p1
.end method

.method static synthetic access$302(Lcom/boohee/widgets/AnimCheckBox;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/boohee/widgets/AnimCheckBox;->mInnerCircleAlpha:I

    return p1
.end method

.method private dip(I)I
    .locals 1
    .parameter "dip"

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/boohee/widgets/AnimCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    float-to-int v0, v0

    mul-int/2addr v0, p1

    return v0
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/high16 v6, 0x43b4

    const/high16 v2, 0x434a

    const/4 v4, 0x0

    .line 131
    invoke-direct {p0}, Lcom/boohee/widgets/AnimCheckBox;->initDrawStrokeCirclePaint()V

    .line 132
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mRectF:Landroid/graphics/RectF;

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->mSweepAngle:F

    iget-object v5, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 133
    invoke-direct {p0}, Lcom/boohee/widgets/AnimCheckBox;->initDrawAlphaStrokeCirclePaint()V

    .line 134
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mRectF:Landroid/graphics/RectF;

    iget v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mSweepAngle:F

    sub-float v3, v0, v6

    iget-object v5, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 135
    invoke-direct {p0}, Lcom/boohee/widgets/AnimCheckBox;->initDrawInnerCirclePaint()V

    .line 136
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mInnerRectF:Landroid/graphics/RectF;

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 137
    return-void
.end method

.method private drawHook(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 140
    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookOffset:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/boohee/widgets/AnimCheckBox;->initDrawHookPaint()V

    .line 143
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 145
    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookOffset:F

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookStartY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    sub-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookStartY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 147
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookOffset:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookStartY:F

    add-float/2addr v3, v4

    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookOffset:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 160
    :goto_1
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 148
    :cond_1
    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookOffset:F

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookSize:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookStartY:F

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 150
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookStartY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 151
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookOffset:F

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookOffset:F

    iget v5, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    iget v6, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookStartY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 154
    :cond_2
    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookOffset:F

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookSize:F

    sub-float v0, v1, v2

    .line 155
    .local v0, offset:F
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    add-float/2addr v2, v0

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookStartY:F

    add-float/2addr v3, v4

    add-float/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 156
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookStartY:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 157
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookSize:F

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookSize:F

    iget v5, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    int-to-float v5, v5

    iget v6, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookStartY:F

    sub-float/2addr v5, v6

    iget v6, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    sub-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v4, v0

    sub-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1
.end method

.method private getAlphaColor(II)I
    .locals 2
    .parameter "color"
    .parameter "alpha"

    .prologue
    const/16 v0, 0xff

    .line 250
    if-gez p2, :cond_0

    const/4 p2, 0x0

    .line 251
    :cond_0
    if-le p2, v0, :cond_1

    move p2, v0

    .line 252
    :cond_1
    const v0, 0xffffff

    and-int/2addr v0, p1

    shl-int/lit8 v1, p2, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "attrs"

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/boohee/widgets/AnimCheckBox;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/boohee/one/R$styleable;->AnimCheckBox:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, array:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    invoke-direct {p0, v2}, Lcom/boohee/widgets/AnimCheckBox;->dip(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    .line 63
    const/4 v1, 0x1

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeColor:I

    .line 64
    const/4 v1, 0x2

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mCircleColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mCircleColor:I

    .line 65
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 69
    .end local v0           #array:Landroid/content/res/TypedArray;
    :goto_0
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 71
    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    new-instance v1, Lcom/boohee/widgets/AnimCheckBox$1;

    invoke-direct {v1, p0}, Lcom/boohee/widgets/AnimCheckBox$1;-><init>(Lcom/boohee/widgets/AnimCheckBox;)V

    invoke-virtual {p0, v1}, Lcom/boohee/widgets/AnimCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void

    .line 67
    :cond_0
    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    invoke-direct {p0, v1}, Lcom/boohee/widgets/AnimCheckBox;->dip(I)I

    move-result v1

    iput v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    goto :goto_0
.end method

.method private initDrawAlphaStrokeCirclePaint()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 179
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 180
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 181
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 182
    return-void
.end method

.method private initDrawHookPaint()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    return-void
.end method

.method private initDrawInnerCirclePaint()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mCircleColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 187
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mInnerCircleAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 188
    return-void
.end method

.method private initDrawStrokeCirclePaint()V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 172
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 173
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 174
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 175
    return-void
.end method

.method private startAnim()V
    .locals 1

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/boohee/widgets/AnimCheckBox;->clearAnimation()V

    .line 241
    iget-boolean v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mChecked:Z

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/boohee/widgets/AnimCheckBox;->startCheckedAnim()V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-direct {p0}, Lcom/boohee/widgets/AnimCheckBox;->startUnCheckedAnim()V

    goto :goto_0
.end method

.method private startCheckedAnim()V
    .locals 6

    .prologue
    .line 191
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 192
    .local v0, animator:Landroid/animation/ValueAnimator;
    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookSize:F

    iget v5, p0, Lcom/boohee/widgets/AnimCheckBox;->mEndLeftHookOffset:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    sub-float v3, v4, v5

    .line 193
    .local v3, hookMaxValue:F
    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookSize:F

    div-float v1, v4, v3

    .line 194
    .local v1, circleMaxFraction:F
    const/high16 v4, 0x43b4

    div-float v2, v4, v1

    .line 195
    .local v2, circleMaxValue:F
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 196
    new-instance v4, Lcom/boohee/widgets/AnimCheckBox$2;

    invoke-direct {v4, p0, v3, v1, v2}, Lcom/boohee/widgets/AnimCheckBox$2;-><init>(Lcom/boohee/widgets/AnimCheckBox;FFF)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 211
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 212
    return-void

    .line 195
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method private startUnCheckedAnim()V
    .locals 6

    .prologue
    .line 215
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 216
    .local v0, animator:Landroid/animation/ValueAnimator;
    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookSize:F

    iget v5, p0, Lcom/boohee/widgets/AnimCheckBox;->mEndLeftHookOffset:F

    add-float/2addr v4, v5

    iget v5, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    sub-float v3, v4, v5

    .line 217
    .local v3, hookMaxValue:F
    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mEndLeftHookOffset:F

    iget v5, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    sub-float/2addr v4, v5

    div-float v2, v4, v3

    .line 218
    .local v2, circleMinFraction:F
    const/high16 v4, 0x43b4

    const/high16 v5, 0x3f80

    sub-float/2addr v5, v2

    div-float v1, v4, v5

    .line 219
    .local v1, circleMaxValue:F
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 220
    new-instance v4, Lcom/boohee/widgets/AnimCheckBox$3;

    invoke-direct {v4, p0, v3, v2, v1}, Lcom/boohee/widgets/AnimCheckBox$3;-><init>(Lcom/boohee/widgets/AnimCheckBox;FFF)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 235
    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 236
    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 237
    return-void

    .line 219
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mChecked:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-direct {p0, p1}, Lcom/boohee/widgets/AnimCheckBox;->drawCircle(Landroid/graphics/Canvas;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/boohee/widgets/AnimCheckBox;->drawHook(Landroid/graphics/Canvas;)V

    .line 128
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 108
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 109
    invoke-virtual {p0}, Lcom/boohee/widgets/AnimCheckBox;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    .line 110
    invoke-virtual {p0}, Lcom/boohee/widgets/AnimCheckBox;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->radius:I

    .line 111
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    iget v5, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 112
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mInnerRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mRectF:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 113
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mInnerRectF:Landroid/graphics/RectF;

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 114
    iget v0, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->radius:I

    int-to-double v2, v2

    iget-wide v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mSin27:D

    mul-double/2addr v2, v4

    iget v4, p0, Lcom/boohee/widgets/AnimCheckBox;->radius:I

    int-to-double v4, v4

    iget v6, p0, Lcom/boohee/widgets/AnimCheckBox;->radius:I

    int-to-double v6, v6

    iget-wide v8, p0, Lcom/boohee/widgets/AnimCheckBox;->mSin63:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    add-double/2addr v2, v4

    sub-double/2addr v0, v2

    double-to-float v0, v0

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookStartY:F

    .line 115
    iget v0, p0, Lcom/boohee/widgets/AnimCheckBox;->radius:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0

    iget-wide v4, p0, Lcom/boohee/widgets/AnimCheckBox;->mSin63:D

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseRightHookOffset:F

    .line 117
    iget v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookStartY:F

    sub-float/2addr v1, v2

    const v2, 0x3ea8f5c3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mEndLeftHookOffset:F

    .line 118
    iget v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseRightHookOffset:F

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    div-int/lit8 v1, v1, 0x3

    int-to-float v1, v1

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookStartY:F

    add-float/2addr v1, v2

    const v2, 0x3ec28f5c

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mEndRightHookOffset:F

    .line 119
    iget v0, p0, Lcom/boohee/widgets/AnimCheckBox;->size:I

    int-to-float v0, v0

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mEndLeftHookOffset:F

    iget v2, p0, Lcom/boohee/widgets/AnimCheckBox;->mEndRightHookOffset:F

    add-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookSize:F

    .line 120
    iget-boolean v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mChecked:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookSize:F

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mEndLeftHookOffset:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    sub-float/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookOffset:F

    .line 121
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/16 v6, 0x28

    const/high16 v5, -0x8000

    .line 92
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 93
    .local v3, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 94
    .local v0, height:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-ne v4, v5, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/boohee/widgets/AnimCheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    .local v1, params:Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {p0, v6}, Lcom/boohee/widgets/AnimCheckBox;->dip(I)I

    move-result v4

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    invoke-direct {p0, v6}, Lcom/boohee/widgets/AnimCheckBox;->dip(I)I

    move-result v5

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    iget v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v3, v0

    .line 101
    .end local v1           #params:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/widgets/AnimCheckBox;->getPaddingLeft()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0}, Lcom/boohee/widgets/AnimCheckBox;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/boohee/widgets/AnimCheckBox;->getPaddingBottom()I

    move-result v5

    sub-int v5, v0, v5

    invoke-virtual {p0}, Lcom/boohee/widgets/AnimCheckBox;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 103
    .local v2, size:I
    invoke-virtual {p0, v2, v2}, Lcom/boohee/widgets/AnimCheckBox;->setMeasuredDimension(II)V

    .line 104
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 308
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 302
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 265
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/boohee/widgets/AnimCheckBox;->setChecked(ZZ)V

    .line 266
    return-void
.end method

.method public setChecked(ZZ)V
    .locals 2
    .parameter "checked"
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-boolean v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mChecked:Z

    if-ne p1, v0, :cond_1

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iput-boolean p1, p0, Lcom/boohee/widgets/AnimCheckBox;->mChecked:Z

    .line 277
    if-eqz p2, :cond_2

    .line 278
    invoke-direct {p0}, Lcom/boohee/widgets/AnimCheckBox;->startAnim()V

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mOnCheckedChangeListener:Lcom/boohee/widgets/AnimCheckBox$OnCheckedChangeListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mOnCheckedChangeListener:Lcom/boohee/widgets/AnimCheckBox$OnCheckedChangeListener;

    iget-boolean v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mChecked:Z

    invoke-interface {v0, v1}, Lcom/boohee/widgets/AnimCheckBox$OnCheckedChangeListener;->onChange(Z)V

    goto :goto_0

    .line 280
    :cond_2
    iget-boolean v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mChecked:Z

    if-eqz v0, :cond_3

    .line 281
    const/16 v0, 0xff

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mInnerCircleAlpha:I

    .line 282
    iput v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mSweepAngle:F

    .line 283
    iget v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookSize:F

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mEndLeftHookOffset:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mBaseLeftHookOffset:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookOffset:F

    .line 289
    :goto_2
    invoke-virtual {p0}, Lcom/boohee/widgets/AnimCheckBox;->invalidate()V

    goto :goto_1

    .line 285
    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mInnerCircleAlpha:I

    .line 286
    const/high16 v0, 0x43b4

    iput v0, p0, Lcom/boohee/widgets/AnimCheckBox;->mSweepAngle:F

    .line 287
    iput v1, p0, Lcom/boohee/widgets/AnimCheckBox;->mHookOffset:F

    goto :goto_2
.end method

.method public setOnCheckedChangeListener(Lcom/boohee/widgets/AnimCheckBox$OnCheckedChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 315
    iput-object p1, p0, Lcom/boohee/widgets/AnimCheckBox;->mOnCheckedChangeListener:Lcom/boohee/widgets/AnimCheckBox$OnCheckedChangeListener;

    .line 316
    return-void
.end method
