.class public Lcom/mechat/photoview/PhotoViewAttacher;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Lcom/mechat/photoview/IPhotoView;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/mechat/photoview/gestures/OnGestureListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/photoview/PhotoViewAttacher$AnimatedZoomRunnable;,
        Lcom/mechat/photoview/PhotoViewAttacher$FlingRunnable;,
        Lcom/mechat/photoview/PhotoViewAttacher$OnMatrixChangedListener;,
        Lcom/mechat/photoview/PhotoViewAttacher$OnPhotoTapListener;,
        Lcom/mechat/photoview/PhotoViewAttacher$OnViewTapListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType:[I = null

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field static final EDGE_BOTH:I = 0x2

.field static final EDGE_LEFT:I = 0x0

.field static final EDGE_NONE:I = -0x1

.field static final EDGE_RIGHT:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "PhotoViewAttacher"

.field static final sInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field ZOOM_DURATION:I

.field private mAllowParentInterceptOnEdge:Z

.field private final mBaseMatrix:Landroid/graphics/Matrix;

.field private mCurrentFlingRunnable:Lcom/mechat/photoview/PhotoViewAttacher$FlingRunnable;

.field private final mDisplayRect:Landroid/graphics/RectF;

.field private final mDrawMatrix:Landroid/graphics/Matrix;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mImageView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mIvBottom:I

.field private mIvLeft:I

.field private mIvRight:I

.field private mIvTop:I

.field private mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMatrixChangeListener:Lcom/mechat/photoview/PhotoViewAttacher$OnMatrixChangedListener;

.field private final mMatrixValues:[F

.field private mMaxScale:F

.field private mMidScale:F

.field private mMinScale:F

.field private mPhotoTapListener:Lcom/mechat/photoview/PhotoViewAttacher$OnPhotoTapListener;

.field private mScaleDragDetector:Lcom/mechat/photoview/gestures/GestureDetector;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScrollEdge:I

.field private final mSuppMatrix:Landroid/graphics/Matrix;

.field private mViewTapListener:Lcom/mechat/photoview/PhotoViewAttacher$OnViewTapListener;

.field private mZoomEnabled:Z


# direct methods
.method static synthetic $SWITCH_TABLE$android$widget$ImageView$ScaleType()[I
    .locals 3

    .prologue
    .line 47
    sget-object v0, Lcom/mechat/photoview/PhotoViewAttacher;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/widget/ImageView$ScaleType;->values()[Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/mechat/photoview/PhotoViewAttacher;->$SWITCH_TABLE$android$widget$ImageView$ScaleType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-string v0, "PhotoViewAttacher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/mechat/photoview/PhotoViewAttacher;->DEBUG:Z

    .line 57
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/mechat/photoview/PhotoViewAttacher;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 5
    .parameter "imageView"

    .prologue
    const/4 v4, 0x1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/16 v1, 0xc8

    iput v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 65
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMinScale:F

    .line 66
    const/high16 v1, 0x3fe0

    iput v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMidScale:F

    .line 67
    const/high16 v1, 0x4040

    iput v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 69
    iput-boolean v4, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 129
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 130
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 131
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 132
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 133
    const/16 v1, 0x9

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMatrixValues:[F

    .line 143
    const/4 v1, 0x2

    iput v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 146
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 149
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    .line 151
    invoke-virtual {p1, v4}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 152
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    invoke-virtual {p1}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 155
    .local v0, observer:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 159
    :cond_0
    invoke-static {p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 161
    invoke-virtual {p1}, Landroid/widget/ImageView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    :goto_0
    return-void

    .line 166
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 165
    invoke-static {v1, p0}, Lcom/mechat/photoview/gestures/VersionedGestureDetector;->newInstance(Landroid/content/Context;Lcom/mechat/photoview/gestures/OnGestureListener;)Lcom/mechat/photoview/gestures/GestureDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/mechat/photoview/gestures/GestureDetector;

    .line 168
    new-instance v1, Landroid/view/GestureDetector;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 169
    new-instance v3, Lcom/mechat/photoview/PhotoViewAttacher$1;

    invoke-direct {v3, p0}, Lcom/mechat/photoview/PhotoViewAttacher$1;-><init>(Lcom/mechat/photoview/PhotoViewAttacher;)V

    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 168
    iput-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 180
    iget-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v2, Lcom/mechat/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v2, p0}, Lcom/mechat/photoview/DefaultOnDoubleTapListener;-><init>(Lcom/mechat/photoview/PhotoViewAttacher;)V

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 183
    invoke-virtual {p0, v4}, Lcom/mechat/photoview/PhotoViewAttacher;->setZoomable(Z)V

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mechat/photoview/PhotoViewAttacher;)Landroid/graphics/Matrix;
    .locals 1
    .parameter

    .prologue
    .line 131
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mechat/photoview/PhotoViewAttacher;)V
    .locals 0
    .parameter

    .prologue
    .line 668
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    return-void
.end method

.method static synthetic access$2()Z
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/mechat/photoview/PhotoViewAttacher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$3(Lcom/mechat/photoview/PhotoViewAttacher;Landroid/graphics/Matrix;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 810
    invoke-direct {p0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method static synthetic access$5(Lcom/mechat/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method private cancelFling()V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/mechat/photoview/PhotoViewAttacher$FlingRunnable;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/mechat/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Lcom/mechat/photoview/PhotoViewAttacher$FlingRunnable;->cancelFling()V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/mechat/photoview/PhotoViewAttacher$FlingRunnable;

    .line 663
    :cond_0
    return-void
.end method

.method private checkAndDisplayMatrix()V
    .locals 1

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mechat/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 672
    :cond_0
    return-void
.end method

.method private checkImageViewScaleType()V
    .locals 3

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 681
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/mechat/photoview/IPhotoView;

    if-nez v1, :cond_0

    .line 682
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 683
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 684
    const-string v2, "The ImageView\'s ScaleType has been changed since attaching a PhotoViewAttacher"

    .line 683
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 687
    :cond_0
    return-void
.end method

.method private checkMatrixBounds()Z
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/high16 v13, 0x4000

    const/4 v12, 0x0

    const/4 v8, 0x0

    .line 690
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 691
    .local v3, imageView:Landroid/widget/ImageView;
    if-nez v3, :cond_1

    .line 748
    :cond_0
    :goto_0
    return v8

    .line 695
    :cond_1
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mechat/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v4

    .line 696
    .local v4, rect:Landroid/graphics/RectF;
    if-eqz v4, :cond_0

    .line 700
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .local v2, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 701
    .local v7, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 703
    .local v1, deltaY:F
    invoke-direct {p0, v3}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v5

    .line 704
    .local v5, viewHeight:I
    int-to-float v10, v5

    cmpg-float v10, v2, v10

    if-gtz v10, :cond_3

    .line 705
    invoke-static {}, Lcom/mechat/photoview/PhotoViewAttacher;->$SWITCH_TABLE$android$widget$ImageView$ScaleType()[I

    move-result-object v10

    iget-object v11, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 713
    int-to-float v10, v5

    sub-float/2addr v10, v2

    div-float/2addr v10, v13

    iget v11, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v10, v11

    .line 722
    :cond_2
    :goto_1
    invoke-direct {p0, v3}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v6

    .line 723
    .local v6, viewWidth:I
    int-to-float v10, v6

    cmpg-float v10, v7, v10

    if-gtz v10, :cond_5

    .line 724
    invoke-static {}, Lcom/mechat/photoview/PhotoViewAttacher;->$SWITCH_TABLE$android$widget$ImageView$ScaleType()[I

    move-result-object v8

    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v10

    aget v8, v8, v10

    packed-switch v8, :pswitch_data_1

    .line 732
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v13

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v10

    .line 735
    :goto_2
    const/4 v8, 0x2

    iput v8, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 747
    :goto_3
    iget-object v8, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    move v8, v9

    .line 748
    goto :goto_0

    .line 707
    .end local v6           #viewWidth:I
    :pswitch_0
    iget v10, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v10

    .line 708
    goto :goto_1

    .line 710
    :pswitch_1
    int-to-float v10, v5

    sub-float/2addr v10, v2

    iget v11, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v10, v11

    .line 711
    goto :goto_1

    .line 716
    :cond_3
    iget v10, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_4

    .line 717
    iget v10, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v10

    .line 718
    goto :goto_1

    :cond_4
    iget v10, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v11, v5

    cmpg-float v10, v10, v11

    if-gez v10, :cond_2

    .line 719
    int-to-float v10, v5

    iget v11, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v10, v11

    goto :goto_1

    .line 726
    .restart local v6       #viewWidth:I
    :pswitch_2
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 727
    goto :goto_2

    .line 729
    :pswitch_3
    int-to-float v8, v6

    sub-float/2addr v8, v7

    iget v10, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v10

    .line 730
    goto :goto_2

    .line 736
    :cond_5
    iget v10, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v10, v10, v12

    if-lez v10, :cond_6

    .line 737
    iput v8, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScrollEdge:I

    .line 738
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    .line 739
    goto :goto_3

    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v10, v6

    cmpg-float v8, v8, v10

    if-gez v8, :cond_7

    .line 740
    int-to-float v8, v6

    iget v10, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v10

    .line 741
    iput v9, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    .line 743
    :cond_7
    const/4 v8, -0x1

    iput v8, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScrollEdge:I

    goto :goto_3

    .line 705
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 724
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private static checkZoomLevels(FFF)V
    .locals 2
    .parameter "minZoom"
    .parameter "midZoom"
    .parameter "maxZoom"

    .prologue
    .line 73
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 75
    const-string v1, "MinZoom has to be less than MidZoom"

    .line 74
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    .line 77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 78
    const-string v1, "MidZoom has to be less than MaxZoom"

    .line 77
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    return-void
.end method

.method private getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;
    .locals 6
    .parameter "matrix"

    .prologue
    const/4 v5, 0x0

    .line 758
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 760
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 761
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 762
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 763
    iget-object v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    .line 764
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    .line 763
    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 765
    iget-object v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 766
    iget-object v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mDisplayRect:Landroid/graphics/RectF;

    .line 769
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getImageViewHeight(Landroid/widget/ImageView;)I
    .locals 2
    .parameter "imageView"

    .prologue
    .line 901
    if-nez p1, :cond_0

    .line 902
    const/4 v0, 0x0

    .line 903
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getImageViewWidth(Landroid/widget/ImageView;)I
    .locals 2
    .parameter "imageView"

    .prologue
    .line 895
    if-nez p1, :cond_0

    .line 896
    const/4 v0, 0x0

    .line 897
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 797
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 798
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method private static hasDrawable(Landroid/widget/ImageView;)Z
    .locals 1
    .parameter "imageView"

    .prologue
    .line 86
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z
    .locals 3
    .parameter "scaleType"

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 94
    const/4 v0, 0x0

    .line 103
    :goto_0
    return v0

    .line 97
    :cond_0
    invoke-static {}, Lcom/mechat/photoview/PhotoViewAttacher;->$SWITCH_TABLE$android$widget$ImageView$ScaleType()[I

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 103
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v2, " is not supported in PhotoView"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 99
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method private resetMatrix()V
    .locals 1

    .prologue
    .line 805
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 806
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mechat/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 807
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 808
    return-void
.end method

.method private setImageViewMatrix(Landroid/graphics/Matrix;)V
    .locals 3
    .parameter "matrix"

    .prologue
    .line 811
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 812
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_0

    .line 814
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->checkImageViewScaleType()V

    .line 815
    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 818
    iget-object v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/mechat/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    if-eqz v2, :cond_0

    .line 819
    invoke-direct {p0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    .line 820
    .local v0, displayRect:Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 821
    iget-object v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/mechat/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    invoke-interface {v2, v0}, Lcom/mechat/photoview/PhotoViewAttacher$OnMatrixChangedListener;->onMatrixChanged(Landroid/graphics/RectF;)V

    .line 825
    .end local v0           #displayRect:Landroid/graphics/RectF;
    :cond_0
    return-void
.end method

.method private static setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "imageView"

    .prologue
    .line 115
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/mechat/photoview/IPhotoView;

    if-nez v0, :cond_0

    .line 116
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView$ScaleType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 120
    :cond_0
    return-void
.end method

.method private updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 14
    .parameter "d"

    .prologue
    const/4 v12, 0x0

    const/high16 v13, 0x4000

    .line 833
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v3

    .line 834
    .local v3, imageView:Landroid/widget/ImageView;
    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 838
    :cond_1
    invoke-direct {p0, v3}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v10

    int-to-float v8, v10

    .line 839
    .local v8, viewWidth:F
    invoke-direct {p0, v3}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v10

    int-to-float v7, v10

    .line 840
    .local v7, viewHeight:F
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 841
    .local v1, drawableWidth:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 843
    .local v0, drawableHeight:I
    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10}, Landroid/graphics/Matrix;->reset()V

    .line 845
    int-to-float v10, v1

    div-float v9, v8, v10

    .line 846
    .local v9, widthScale:F
    int-to-float v10, v0

    div-float v2, v7, v10

    .line 848
    .local v2, heightScale:F
    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_2

    .line 849
    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    .line 850
    int-to-float v12, v0

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    .line 849
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 891
    :goto_1
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0

    .line 852
    :cond_2
    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_3

    .line 853
    invoke-static {v9, v2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 854
    .local v6, scale:F
    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 855
    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    .line 856
    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    .line 855
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 858
    .end local v6           #scale:F
    :cond_3
    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    if-ne v10, v11, :cond_4

    .line 859
    const/high16 v10, 0x3f80

    invoke-static {v9, v2}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 860
    .restart local v6       #scale:F
    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v10, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 861
    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v11, v1

    mul-float/2addr v11, v6

    sub-float v11, v8, v11

    div-float/2addr v11, v13

    .line 862
    int-to-float v12, v0

    mul-float/2addr v12, v6

    sub-float v12, v7, v12

    div-float/2addr v12, v13

    .line 861
    invoke-virtual {v10, v11, v12}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 865
    .end local v6           #scale:F
    :cond_4
    new-instance v5, Landroid/graphics/RectF;

    int-to-float v10, v1

    int-to-float v11, v0

    invoke-direct {v5, v12, v12, v10, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 866
    .local v5, mTempSrc:Landroid/graphics/RectF;
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v12, v12, v8, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 868
    .local v4, mTempDst:Landroid/graphics/RectF;
    invoke-static {}, Lcom/mechat/photoview/PhotoViewAttacher;->$SWITCH_TABLE$android$widget$ImageView$ScaleType()[I

    move-result-object v10

    iget-object v11, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v11}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    goto :goto_1

    .line 870
    :pswitch_0
    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 871
    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 875
    :pswitch_1
    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 879
    :pswitch_2
    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto :goto_1

    .line 883
    :pswitch_3
    iget-object v10, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    sget-object v11, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v10, v5, v4, v11}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    goto/16 :goto_1

    .line 868
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    return v0
.end method

.method public cleanup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    iget-object v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    .line 238
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 213
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 216
    .local v1, observer:Landroid/view/ViewTreeObserver;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 221
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 224
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->cancelFling()V

    .line 227
    .end local v1           #observer:Landroid/view/ViewTreeObserver;
    :cond_2
    iget-object v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v2, :cond_3

    .line 228
    iget-object v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 232
    :cond_3
    iput-object v3, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/mechat/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 233
    iput-object v3, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/mechat/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 234
    iput-object v3, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/mechat/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 237
    iput-object v3, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 649
    new-instance v0, Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    return-object v0
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 243
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mechat/photoview/PhotoViewAttacher;->getDisplayRect(Landroid/graphics/Matrix;)Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getDrawMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 653
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 654
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 655
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getIPhotoViewImplementation()Lcom/mechat/photoview/IPhotoView;
    .locals 0

    .prologue
    .line 786
    return-object p0
.end method

.method public getImageView()Landroid/widget/ImageView;
    .locals 3

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mImageView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #imageView:Landroid/widget/ImageView;
    check-cast v0, Landroid/widget/ImageView;

    .line 294
    .restart local v0       #imageView:Landroid/widget/ImageView;
    :cond_0
    if-nez v0, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->cleanup()V

    .line 296
    const-string v1, "PhotoViewAttacher"

    .line 297
    const-string v2, "ImageView no longer exists. You should not use this PhotoViewAttacher any more."

    .line 296
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_1
    return-object v0
.end method

.method public getMaxScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    .prologue
    .line 333
    iget v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMaxScale:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMidScale:F

    return v0
.end method

.method public getMidScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMinScale:F

    return v0
.end method

.method public getOnPhotoTapListener()Lcom/mechat/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/mechat/photoview/PhotoViewAttacher$OnPhotoTapListener;

    return-object v0
.end method

.method public getOnViewTapListener()Lcom/mechat/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/mechat/photoview/PhotoViewAttacher$OnViewTapListener;

    return-object v0
.end method

.method public getScale()F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x4000

    .line 338
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/mechat/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    iget-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x3

    invoke-direct {p0, v1, v2}, Lcom/mechat/photoview/PhotoViewAttacher;->getValue(Landroid/graphics/Matrix;I)F

    move-result v1

    float-to-double v2, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v1, v2

    add-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 773
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 774
    .local v0, imageView:Landroid/widget/ImageView;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public onDrag(FF)V
    .locals 10
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 348
    iget-object v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/mechat/photoview/gestures/GestureDetector;

    invoke-interface {v2}, Lcom/mechat/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    sget-boolean v2, Lcom/mechat/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 353
    invoke-static {}, Lcom/mechat/photoview/log/LogManager;->getLogger()Lcom/mechat/photoview/log/Logger;

    move-result-object v2

    const-string v3, "PhotoViewAttacher"

    .line 354
    const-string v4, "onDrag: dx: %.2f. dy: %.2f"

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 353
    invoke-interface {v2, v3, v4}, Lcom/mechat/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_2
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 358
    .local v0, imageView:Landroid/widget/ImageView;
    iget-object v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 359
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 370
    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 371
    .local v1, parent:Landroid/view/ViewParent;
    iget-boolean v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/mechat/photoview/gestures/GestureDetector;

    invoke-interface {v2}, Lcom/mechat/photoview/gestures/GestureDetector;->isScaling()Z

    move-result v2

    if-nez v2, :cond_5

    .line 372
    iget v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-eq v2, v9, :cond_4

    .line 373
    iget v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-nez v2, :cond_3

    const/high16 v2, 0x3f80

    cmpl-float v2, p1, v2

    if-gez v2, :cond_4

    .line 374
    :cond_3
    iget v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScrollEdge:I

    if-ne v2, v7, :cond_0

    const/high16 v2, -0x4080

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 375
    :cond_4
    if-eqz v1, :cond_0

    .line 376
    invoke-interface {v1, v8}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 379
    :cond_5
    if-eqz v1, :cond_0

    .line 380
    invoke-interface {v1, v7}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method public onFling(FFFF)V
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 388
    sget-boolean v1, Lcom/mechat/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 389
    invoke-static {}, Lcom/mechat/photoview/log/LogManager;->getLogger()Lcom/mechat/photoview/log/Logger;

    move-result-object v1

    .line 390
    const-string v2, "PhotoViewAttacher"

    .line 391
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onFling. sX: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " sY: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Vx: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 392
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Vy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 391
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 389
    invoke-interface {v1, v2, v3}, Lcom/mechat/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 395
    .local v0, imageView:Landroid/widget/ImageView;
    new-instance v1, Lcom/mechat/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/mechat/photoview/PhotoViewAttacher$FlingRunnable;-><init>(Lcom/mechat/photoview/PhotoViewAttacher;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/mechat/photoview/PhotoViewAttacher$FlingRunnable;

    .line 396
    iget-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/mechat/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-direct {p0, v0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v2

    .line 397
    invoke-direct {p0, v0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v3

    float-to-int v4, p3

    float-to-int v5, p4

    .line 396
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mechat/photoview/PhotoViewAttacher$FlingRunnable;->fling(IIII)V

    .line 398
    iget-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mCurrentFlingRunnable:Lcom/mechat/photoview/PhotoViewAttacher$FlingRunnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 399
    return-void
.end method

.method public onGlobalLayout()V
    .locals 6

    .prologue
    .line 403
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 405
    .local v1, imageView:Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 406
    iget-boolean v5, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v5, :cond_2

    .line 407
    invoke-virtual {v1}, Landroid/widget/ImageView;->getTop()I

    move-result v4

    .line 408
    .local v4, top:I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    .line 409
    .local v3, right:I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBottom()I

    move-result v0

    .line 410
    .local v0, bottom:I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v2

    .line 419
    .local v2, left:I
    iget v5, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mIvTop:I

    if-ne v4, v5, :cond_0

    iget v5, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mIvBottom:I

    if-ne v0, v5, :cond_0

    iget v5, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mIvLeft:I

    if-ne v2, v5, :cond_0

    .line 420
    iget v5, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mIvRight:I

    if-eq v3, v5, :cond_1

    .line 422
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mechat/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 425
    iput v4, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mIvTop:I

    .line 426
    iput v3, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mIvRight:I

    .line 427
    iput v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mIvBottom:I

    .line 428
    iput v2, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mIvLeft:I

    .line 434
    .end local v0           #bottom:I
    .end local v2           #left:I
    .end local v3           #right:I
    .end local v4           #top:I
    :cond_1
    :goto_0
    return-void

    .line 431
    :cond_2
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mechat/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onScale(FFF)V
    .locals 6
    .parameter "scaleFactor"
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    .line 438
    sget-boolean v0, Lcom/mechat/photoview/PhotoViewAttacher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 439
    invoke-static {}, Lcom/mechat/photoview/log/LogManager;->getLogger()Lcom/mechat/photoview/log/Logger;

    move-result-object v0

    .line 440
    const-string v1, "PhotoViewAttacher"

    .line 441
    const-string v2, "onScale: scale: %.2f. fX: %.2f. fY: %.2f"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 442
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 441
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 439
    invoke-interface {v0, v1, v2}, Lcom/mechat/photoview/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f80

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 446
    :cond_1
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 447
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 449
    :cond_2
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "ev"

    .prologue
    .line 453
    const/4 v6, 0x0

    .line 455
    .local v6, handled:Z
    iget-boolean v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->hasDrawable(Landroid/widget/ImageView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 456
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    .line 457
    .local v7, parent:Landroid/view/ViewParent;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 487
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/mechat/photoview/gestures/GestureDetector;

    if-eqz v0, :cond_1

    .line 488
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleDragDetector:Lcom/mechat/photoview/gestures/GestureDetector;

    invoke-interface {v0, p2}, Lcom/mechat/photoview/gestures/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    const/4 v6, 0x1

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 494
    const/4 v6, 0x1

    .line 498
    .end local v7           #parent:Landroid/view/ViewParent;
    :cond_2
    return v6

    .line 461
    .restart local v7       #parent:Landroid/view/ViewParent;
    :pswitch_1
    if-eqz v7, :cond_3

    .line 462
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 468
    :goto_1
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->cancelFling()V

    goto :goto_0

    .line 464
    :cond_3
    const-string v0, "PhotoViewAttacher"

    const-string v1, "onTouch getParent() returned null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 475
    :pswitch_2
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    iget v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 476
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v8

    .line 477
    .local v8, rect:Landroid/graphics/RectF;
    if-eqz v8, :cond_0

    .line 478
    new-instance v0, Lcom/mechat/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    iget v3, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMinScale:F

    .line 479
    invoke-virtual {v8}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    invoke-virtual {v8}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mechat/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/mechat/photoview/PhotoViewAttacher;FFFF)V

    .line 478
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 480
    const/4 v6, 0x1

    goto :goto_0

    .line 457
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 503
    iput-boolean p1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mAllowParentInterceptOnEdge:Z

    .line 504
    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 3
    .parameter "finalMatrix"

    .prologue
    const/4 v1, 0x0

    .line 248
    if-nez p1, :cond_0

    .line 249
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Matrix cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 252
    .local v0, imageView:Landroid/widget/ImageView;
    if-nez v0, :cond_2

    .line 262
    :cond_1
    :goto_0
    return v1

    .line 255
    :cond_2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 258
    iget-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 259
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getDrawMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mechat/photoview/PhotoViewAttacher;->setImageViewMatrix(Landroid/graphics/Matrix;)V

    .line 260
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->checkMatrixBounds()Z

    .line 262
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setMaxScale(F)V
    .locals 0
    .parameter "maxScale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 533
    invoke-virtual {p0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    .line 534
    return-void
.end method

.method public setMaximumScale(F)V
    .locals 2
    .parameter "maximumScale"

    .prologue
    .line 538
    iget v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMidScale:F

    invoke-static {v0, v1, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 539
    iput p1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMaxScale:F

    .line 540
    return-void
.end method

.method public setMediumScale(F)V
    .locals 2
    .parameter "mediumScale"

    .prologue
    .line 526
    iget v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMinScale:F

    iget v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {v0, p1, v1}, Lcom/mechat/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 527
    iput p1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMidScale:F

    .line 528
    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .parameter "midScale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 521
    invoke-virtual {p0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setMediumScale(F)V

    .line 522
    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .parameter "minScale"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p0, p1}, Lcom/mechat/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    .line 510
    return-void
.end method

.method public setMinimumScale(F)V
    .locals 2
    .parameter "minimumScale"

    .prologue
    .line 514
    iget v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMidScale:F

    iget v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMaxScale:F

    invoke-static {p1, v0, v1}, Lcom/mechat/photoview/PhotoViewAttacher;->checkZoomLevels(FFF)V

    .line 515
    iput p1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMinScale:F

    .line 516
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 2
    .parameter "newOnDoubleTapListener"

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 189
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v1, Lcom/mechat/photoview/DefaultOnDoubleTapListener;

    invoke-direct {v1, p0}, Lcom/mechat/photoview/DefaultOnDoubleTapListener;-><init>(Lcom/mechat/photoview/PhotoViewAttacher;)V

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    goto :goto_0
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 545
    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/mechat/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 549
    iput-object p1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMatrixChangeListener:Lcom/mechat/photoview/PhotoViewAttacher$OnMatrixChangedListener;

    .line 550
    return-void
.end method

.method public setOnPhotoTapListener(Lcom/mechat/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 554
    iput-object p1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mPhotoTapListener:Lcom/mechat/photoview/PhotoViewAttacher$OnPhotoTapListener;

    .line 555
    return-void
.end method

.method public setOnViewTapListener(Lcom/mechat/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 564
    iput-object p1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mViewTapListener:Lcom/mechat/photoview/PhotoViewAttacher$OnViewTapListener;

    .line 565
    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 270
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b4

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 271
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 272
    return-void
.end method

.method public setRotationBy(F)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b4

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 283
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 284
    return-void
.end method

.method public setRotationTo(F)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x43b4

    rem-float v1, p1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 277
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    .line 278
    return-void
.end method

.method public setScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 574
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mechat/photoview/PhotoViewAttacher;->setScale(FZ)V

    .line 575
    return-void
.end method

.method public setScale(FFFZ)V
    .locals 7
    .parameter "scale"
    .parameter "focalX"
    .parameter "focalY"
    .parameter "animate"

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    .line 594
    .local v6, imageView:Landroid/widget/ImageView;
    if-eqz v6, :cond_1

    .line 596
    iget v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMinScale:F

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mMaxScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 598
    :cond_0
    invoke-static {}, Lcom/mechat/photoview/log/LogManager;->getLogger()Lcom/mechat/photoview/log/Logger;

    move-result-object v0

    .line 599
    const-string v1, "PhotoViewAttacher"

    .line 600
    const-string v2, "Scale must be within the range of minScale and maxScale"

    .line 599
    invoke-interface {v0, v1, v2}, Lcom/mechat/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1
    :goto_0
    return-void

    .line 604
    :cond_2
    if-eqz p4, :cond_3

    .line 605
    new-instance v0, Lcom/mechat/photoview/PhotoViewAttacher$AnimatedZoomRunnable;

    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getScale()F

    move-result v2

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    .line 606
    invoke-direct/range {v0 .. v5}, Lcom/mechat/photoview/PhotoViewAttacher$AnimatedZoomRunnable;-><init>(Lcom/mechat/photoview/PhotoViewAttacher;FFFF)V

    .line 605
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->setScale(FFFF)V

    .line 609
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->checkAndDisplayMatrix()V

    goto :goto_0
.end method

.method public setScale(FZ)V
    .locals 3
    .parameter "scale"
    .parameter "animate"

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 581
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {v0}, Landroid/widget/ImageView;->getRight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 584
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBottom()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 582
    invoke-virtual {p0, p1, v1, v2, p2}, Lcom/mechat/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    .line 587
    :cond_0
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .parameter "scaleType"

    .prologue
    .line 616
    invoke-static {p1}, Lcom/mechat/photoview/PhotoViewAttacher;->isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq p1, v0, :cond_0

    .line 617
    iput-object p1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 620
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->update()V

    .line 622
    :cond_0
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 0
    .parameter "milliseconds"

    .prologue
    .line 779
    if-gez p1, :cond_0

    .line 780
    const/16 p1, 0xc8

    .line 781
    :cond_0
    iput p1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    .line 782
    return-void
.end method

.method public setZoomable(Z)V
    .locals 0
    .parameter "zoomable"

    .prologue
    .line 626
    iput-boolean p1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    .line 627
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->update()V

    .line 628
    return-void
.end method

.method public update()V
    .locals 2

    .prologue
    .line 631
    invoke-virtual {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    .line 633
    .local v0, imageView:Landroid/widget/ImageView;
    if-eqz v0, :cond_0

    .line 634
    iget-boolean v1, p0, Lcom/mechat/photoview/PhotoViewAttacher;->mZoomEnabled:Z

    if-eqz v1, :cond_1

    .line 636
    invoke-static {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->setImageViewScaleTypeMatrix(Landroid/widget/ImageView;)V

    .line 639
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mechat/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    invoke-direct {p0}, Lcom/mechat/photoview/PhotoViewAttacher;->resetMatrix()V

    goto :goto_0
.end method
