.class public Lme/nereo/multi_image_selector/view/GestureImageView;
.super Landroid/widget/ImageView;
.source "GestureImageView.java"


# static fields
.field private static final MAX_SCALE_FACTOR:F = 3.0f

.field private static final MIN_SCALE_FACTOR:F = 0.3f

.field private static final TAG:Ljava/lang/String; = "GestureImageView"


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentFactor:F

.field private mFirstPointerX:F

.field private mFirstPointerY:F

.field private mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

.field private mImageMatrix:Landroid/graphics/Matrix;

.field private mScaleGesture:Landroid/view/ScaleGestureDetector;

.field private mSecondPointerX:F

.field private mSecondPointerY:F

.field private mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 52
    const/high16 v0, 0x3f80

    iput v0, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mCurrentFactor:F

    .line 28
    invoke-direct {p0, p1}, Lme/nereo/multi_image_selector/view/GestureImageView;->init(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/high16 v0, 0x3f80

    iput v0, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mCurrentFactor:F

    .line 33
    invoke-direct {p0, p1}, Lme/nereo/multi_image_selector/view/GestureImageView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/high16 v0, 0x3f80

    iput v0, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mCurrentFactor:F

    .line 38
    invoke-direct {p0, p1}, Lme/nereo/multi_image_selector/view/GestureImageView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lme/nereo/multi_image_selector/view/GestureImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mCenterX:I

    return v0
.end method

.method static synthetic access$100(Lme/nereo/multi_image_selector/view/GestureImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget v0, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mCenterY:I

    return v0
.end method

.method static synthetic access$200(Lme/nereo/multi_image_selector/view/GestureImageView;)Landroid/graphics/Matrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mImageMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 65
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mTouchSlop:I

    .line 67
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lme/nereo/multi_image_selector/view/GestureImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 69
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mImageMatrix:Landroid/graphics/Matrix;

    .line 71
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lme/nereo/multi_image_selector/view/GestureImageView$1;

    invoke-direct {v1, p0}, Lme/nereo/multi_image_selector/view/GestureImageView$1;-><init>(Lme/nereo/multi_image_selector/view/GestureImageView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mScaleGesture:Landroid/view/ScaleGestureDetector;

    .line 81
    new-instance v0, Landroid/support/v4/view/GestureDetectorCompat;

    new-instance v1, Lme/nereo/multi_image_selector/view/GestureImageView$2;

    invoke-direct {v1, p0}, Lme/nereo/multi_image_selector/view/GestureImageView$2;-><init>(Lme/nereo/multi_image_selector/view/GestureImageView;)V

    invoke-direct {v0, p1, v1}, Landroid/support/v4/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    .line 102
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 107
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/view/GestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int v2, p1, v2

    div-int/lit8 v0, v2, 0x2

    .line 109
    .local v0, cx:I
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/view/GestureImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sub-int v2, p2, v2

    div-int/lit8 v1, v2, 0x2

    .line 110
    .local v1, cy:I
    iget-object v2, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mImageMatrix:Landroid/graphics/Matrix;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 111
    iget-object v2, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Lme/nereo/multi_image_selector/view/GestureImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 113
    div-int/lit8 v2, p1, 0x2

    iput v2, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mCenterX:I

    .line 114
    div-int/lit8 v2, p2, 0x2

    iput v2, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mCenterY:I

    .line 116
    .end local v0           #cx:I
    .end local v1           #cy:I
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 121
    iget-object v3, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mScaleGesture:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 123
    .local v0, retValue:Z
    iget-object v3, p0, Lme/nereo/multi_image_selector/view/GestureImageView;->mGestureDetector:Landroid/support/v4/view/GestureDetectorCompat;

    invoke-virtual {v3, p1}, Landroid/support/v4/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    .line 125
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1

    :cond_3
    move v0, v1

    .line 123
    goto :goto_0
.end method
