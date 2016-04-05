.class public abstract Lcom/huewu/pla/lib/internal/PLA_AbsListView;
.super Lcom/huewu/pla/lib/internal/PLA_AdapterView;
.source "PLA_AbsListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;,
        Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;,
        Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;,
        Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;,
        Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;,
        Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;,
        Lcom/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap;,
        Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;,
        Lcom/huewu/pla/lib/internal/PLA_AbsListView$WindowRunnnable;,
        Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huewu/pla/lib/internal/PLA_AdapterView",
        "<",
        "Landroid/widget/ListAdapter;",
        ">;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;"
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field static final LAYOUT_FORCE_BOTTOM:I = 0x3

.field static final LAYOUT_FORCE_TOP:I = 0x1

.field static final LAYOUT_MOVE_SELECTION:I = 0x6

.field static final LAYOUT_NORMAL:I = 0x0

.field static final LAYOUT_SET_SELECTION:I = 0x2

.field static final LAYOUT_SPECIFIC:I = 0x4

.field static final LAYOUT_SYNC:I = 0x5

.field private static final PROFILE_FLINGING:Z = false

.field private static final PROFILE_SCROLLING:Z = false

.field private static final TAG:Ljava/lang/String; = "PLA_AbsListView"

.field protected static final TOUCH_MODE_DONE_WAITING:I = 0x2

.field protected static final TOUCH_MODE_DOWN:I = 0x0

.field protected static final TOUCH_MODE_FLING:I = 0x4

.field private static final TOUCH_MODE_OFF:I = 0x1

.field private static final TOUCH_MODE_ON:I = 0x0

.field static final TOUCH_MODE_REST:I = -0x1

.field protected static final TOUCH_MODE_SCROLL:I = 0x3

.field protected static final TOUCH_MODE_TAP:I = 0x1

.field private static final TOUCH_MODE_UNKNOWN:I = -0x1

.field public static final TRANSCRIPT_MODE_ALWAYS_SCROLL:I = 0x2

.field public static final TRANSCRIPT_MODE_DISABLED:I = 0x0

.field public static final TRANSCRIPT_MODE_NORMAL:I = 0x1


# instance fields
.field private mActivePointerId:I

.field protected mAdapter:Landroid/widget/ListAdapter;

.field private mCacheColorHint:I

.field protected mCachingStarted:Z

.field private mClearScrollingCache:Ljava/lang/Runnable;

.field private mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

.field mDataSetObserver:Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huewu/pla/lib/internal/PLA_AdapterView",
            "<",
            "Landroid/widget/ListAdapter;",
            ">.AdapterDataSetObserver;"
        }
    .end annotation
.end field

.field mDrawSelectorOnTop:Z

.field private mFlingProfilingStarted:Z

.field private mFlingRunnable:Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

.field private mIsChildViewEnabled:Z

.field final mIsScrap:[Z

.field private mLastScrollState:I

.field private mLastTouchMode:I

.field mLastY:I

.field mLayoutMode:I

.field protected mListPadding:Landroid/graphics/Rect;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field mMotionCorrection:I

.field protected mMotionPosition:I

.field mMotionViewNewTop:I

.field mMotionViewOriginalTop:I

.field mMotionX:I

.field mMotionY:I

.field private mOnScrollListener:Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;

.field private mPendingCheckForTap:Ljava/lang/Runnable;

.field private mPendingSync:Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;

.field private mPerformClick:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;

.field mPositionScroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;

.field final mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

.field mResurrectToPosition:I

.field private mScrollProfilingStarted:Z

.field mScrollingCacheEnabled:Z

.field mSelectedTop:I

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field mSelector:Landroid/graphics/drawable/Drawable;

.field mSelectorRect:Landroid/graphics/Rect;

.field private mSmoothScrollbarEnabled:Z

.field mStackFromBottom:Z

.field private mTouchFrame:Landroid/graphics/Rect;

.field protected mTouchMode:I

.field private mTouchSlop:I

.field private mTranscriptMode:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mWidthMeasureSpec:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 456
    invoke-direct {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;-><init>(Landroid/content/Context;)V

    .line 172
    iput v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLayoutMode:I

    .line 187
    iput-boolean v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mDrawSelectorOnTop:Z

    .line 197
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 203
    new-instance v3, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-direct {v3, p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;-><init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V

    iput-object v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    .line 208
    iput v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionLeftPadding:I

    .line 213
    iput v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionTopPadding:I

    .line 218
    iput v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionRightPadding:I

    .line 223
    iput v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionBottomPadding:I

    .line 228
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 233
    iput v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mWidthMeasureSpec:I

    .line 270
    iput v6, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    .line 301
    iput v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectedTop:I

    .line 326
    iput-boolean v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSmoothScrollbarEnabled:Z

    .line 336
    iput v6, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mResurrectToPosition:I

    .line 338
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 347
    iput v6, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastTouchMode:I

    .line 350
    iput-boolean v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mScrollProfilingStarted:Z

    .line 353
    iput-boolean v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFlingProfilingStarted:Z

    .line 385
    iput v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastScrollState:I

    .line 392
    new-array v3, v5, [Z

    iput-object v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mIsScrap:[Z

    .line 398
    iput v6, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mActivePointerId:I

    .line 457
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->initAbsListView()V

    .line 459
    invoke-virtual {p0, v5}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 460
    sget-object v3, Lcom/huewu/pla/R$styleable;->View:[I

    invoke-virtual {p1, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 465
    .local v0, a:Landroid/content/res/TypedArray;
    :try_start_0
    const-class v3, Landroid/view/View;

    const-string v4, "initializeScrollbars"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/res/TypedArray;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 468
    .local v2, initializeScrollbars:Ljava/lang/reflect/Method;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 473
    .end local v2           #initializeScrollbars:Ljava/lang/reflect/Method;
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 474
    return-void

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, e:Ljava/lang/ReflectiveOperationException;
    :goto_1
    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    goto :goto_0

    .line 469
    .end local v1           #e:Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 477
    sget v0, Lcom/huewu/pla/R$attr;->absListViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 478
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 481
    invoke-direct {p0, p1, p2, p3}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 172
    iput v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLayoutMode:I

    .line 187
    iput-boolean v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mDrawSelectorOnTop:Z

    .line 197
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 203
    new-instance v7, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-direct {v7, p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;-><init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V

    iput-object v7, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    .line 208
    iput v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionLeftPadding:I

    .line 213
    iput v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionTopPadding:I

    .line 218
    iput v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionRightPadding:I

    .line 223
    iput v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionBottomPadding:I

    .line 228
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 233
    iput v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mWidthMeasureSpec:I

    .line 270
    iput v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    .line 301
    iput v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectedTop:I

    .line 326
    iput-boolean v10, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSmoothScrollbarEnabled:Z

    .line 336
    iput v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mResurrectToPosition:I

    .line 338
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 347
    iput v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastTouchMode:I

    .line 350
    iput-boolean v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mScrollProfilingStarted:Z

    .line 353
    iput-boolean v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFlingProfilingStarted:Z

    .line 385
    iput v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastScrollState:I

    .line 392
    new-array v7, v10, [Z

    iput-object v7, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mIsScrap:[Z

    .line 398
    iput v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mActivePointerId:I

    .line 482
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->initAbsListView()V

    .line 484
    sget-object v7, Lcom/huewu/pla/R$styleable;->AbsListView:[I

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 487
    .local v0, a:Landroid/content/res/TypedArray;
    sget v7, Lcom/huewu/pla/R$styleable;->AbsListView_listSelector:I

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 488
    .local v2, d:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 489
    invoke-virtual {p0, v2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 492
    :cond_0
    sget v7, Lcom/huewu/pla/R$styleable;->AbsListView_drawSelectorOnTop:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mDrawSelectorOnTop:Z

    .line 495
    sget v7, Lcom/huewu/pla/R$styleable;->AbsListView_stackFromBottom:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 496
    .local v5, stackFromBottom:Z
    invoke-virtual {p0, v5}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setStackFromBottom(Z)V

    .line 498
    sget v7, Lcom/huewu/pla/R$styleable;->AbsListView_scrollingCache:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 499
    .local v3, scrollingCacheEnabled:Z
    invoke-virtual {p0, v3}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setScrollingCacheEnabled(Z)V

    .line 501
    sget v7, Lcom/huewu/pla/R$styleable;->AbsListView_transcriptMode:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    .line 503
    .local v6, transcriptMode:I
    invoke-virtual {p0, v6}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setTranscriptMode(I)V

    .line 505
    sget v7, Lcom/huewu/pla/R$styleable;->AbsListView_cacheColorHint:I

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 506
    .local v1, color:I
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setCacheColorHint(I)V

    .line 508
    sget v7, Lcom/huewu/pla/R$styleable;->AbsListView_smoothScrollbar:I

    invoke-virtual {v0, v7, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 509
    .local v4, smoothScrollbar:Z
    invoke-virtual {p0, v4}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setSmoothScrollbarEnabled(Z)V

    .line 511
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 512
    return-void
.end method

.method static synthetic access$100(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->clearScrollingCache()V

    return-void
.end method

.method static synthetic access$600(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-virtual {p0, p1, p2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method private clearScrollingCache()V
    .locals 1

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2213
    new-instance v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$2;

    invoke-direct {v0, p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$2;-><init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V

    iput-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    .line 2229
    :cond_0
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mClearScrollingCache:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2230
    return-void
.end method

.method private createScrollingCache()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2204
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mCachingStarted:Z

    if-nez v0, :cond_0

    .line 2205
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 2206
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 2207
    iput-boolean v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mCachingStarted:Z

    .line 2209
    :cond_0
    return-void
.end method

.method private dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 3212
    if-nez p1, :cond_1

    .line 3223
    :cond_0
    return-void

    .line 3215
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 3216
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p1

    .line 3217
    check-cast v1, Landroid/view/ViewGroup;

    .line 3218
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 3219
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 3220
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    .line 3219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1030
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->shouldShowSelector()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1031
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1032
    .local v0, selector:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1033
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1035
    .end local v0           #selector:Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method static getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I
    .locals 8
    .parameter "source"
    .parameter "dest"
    .parameter "direction"

    .prologue
    .line 2588
    sparse-switch p2, :sswitch_data_0

    .line 2614
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}."

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2590
    :sswitch_0
    iget v4, p0, Landroid/graphics/Rect;->right:I

    .line 2591
    .local v4, sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 2592
    .local v5, sY:I
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 2593
    .local v0, dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 2617
    .local v1, dY:I
    :goto_0
    sub-int v2, v0, v4

    .line 2618
    .local v2, deltaX:I
    sub-int v3, v1, v5

    .line 2619
    .local v3, deltaY:I
    mul-int v6, v3, v3

    mul-int v7, v2, v2

    add-int/2addr v6, v7

    return v6

    .line 2596
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_1
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 2597
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    .line 2598
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 2599
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 2600
    .restart local v1       #dY:I
    goto :goto_0

    .line 2602
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_2
    iget v4, p0, Landroid/graphics/Rect;->left:I

    .line 2603
    .restart local v4       #sX:I
    iget v6, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    .line 2604
    .restart local v5       #sY:I
    iget v0, p1, Landroid/graphics/Rect;->right:I

    .line 2605
    .restart local v0       #dX:I
    iget v6, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v1, v6, v7

    .line 2606
    .restart local v1       #dY:I
    goto :goto_0

    .line 2608
    .end local v0           #dX:I
    .end local v1           #dY:I
    .end local v4           #sX:I
    .end local v5           #sY:I
    :sswitch_3
    iget v6, p0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v4, v6, v7

    .line 2609
    .restart local v4       #sX:I
    iget v5, p0, Landroid/graphics/Rect;->top:I

    .line 2610
    .restart local v5       #sY:I
    iget v6, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int v0, v6, v7

    .line 2611
    .restart local v0       #dX:I
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 2612
    .restart local v1       #dY:I
    goto :goto_0

    .line 2588
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_3
        0x42 -> :sswitch_0
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method private initAbsListView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 516
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setClickable(Z)V

    .line 517
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setFocusableInTouchMode(Z)V

    .line 518
    invoke-virtual {p0, v2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setWillNotDraw(Z)V

    .line 519
    invoke-virtual {p0, v2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 520
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setScrollingCacheEnabled(Z)V

    .line 522
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 523
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchSlop:I

    .line 524
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMinimumVelocity:I

    .line 525
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMaximumVelocity:I

    .line 526
    return-void
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "ev"

    .prologue
    .line 1736
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 1738
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 1739
    .local v1, pointerId:I
    iget v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 1743
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1744
    .local v0, newPointerIndex:I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionX:I

    .line 1745
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionY:I

    .line 1746
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mActivePointerId:I

    .line 1747
    iget-object v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 1748
    iget-object v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 1751
    .end local v0           #newPointerIndex:I
    :cond_0
    return-void

    .line 1743
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private positionSelector(IIII)V
    .locals 5
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionLeftPadding:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionTopPadding:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionRightPadding:I

    add-int/2addr v3, p3

    iget v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionBottomPadding:I

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 975
    return-void
.end method

.method private startScrollIfNeeded(I)Z
    .locals 7
    .parameter "deltaY"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1370
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1371
    .local v0, distance:I
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchSlop:I

    .line 1372
    .local v2, touchSlop:I
    if-le v0, v2, :cond_1

    .line 1373
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->createScrollingCache()V

    .line 1374
    const/4 v5, 0x3

    iput v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    .line 1375
    iput p1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionCorrection:I

    .line 1376
    invoke-virtual {p0, v4}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setPressed(Z)V

    .line 1377
    iget v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionPosition:I

    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1378
    .local v1, motionView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1379
    invoke-virtual {v1, v4}, Landroid/view/View;->setPressed(Z)V

    .line 1381
    :cond_0
    invoke-virtual {p0, v3}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->reportScrollStateChange(I)V

    .line 1384
    invoke-virtual {p0, v3}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->requestDisallowInterceptTouchEvent(Z)V

    .line 1388
    .end local v1           #motionView:Landroid/view/View;
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method private useDefaultSelector()V
    .locals 2

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 632
    return-void
.end method


# virtual methods
.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1758
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v2

    .line 1759
    .local v2, count:I
    iget v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    .line 1760
    .local v3, firstPosition:I
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1762
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-nez v0, :cond_1

    .line 1773
    :cond_0
    return-void

    .line 1766
    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 1767
    invoke-virtual {p0, v4}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1768
    .local v1, child:Landroid/view/View;
    add-int v5, v3, v4

    invoke-interface {v0, v5}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1769
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    :cond_2
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 1766
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 2639
    instance-of v0, p1, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    return v0
.end method

.method protected computeVerticalScrollExtent()I
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 691
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v1

    .line 692
    .local v1, count:I
    if-lez v1, :cond_3

    .line 693
    iget-boolean v7, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v7, :cond_2

    .line 694
    mul-int/lit8 v2, v1, 0x64

    .line 696
    .local v2, extent:I
    invoke-virtual {p0, v6}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 698
    .local v5, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getFillChildTop()I

    move-result v4

    .line 700
    .local v4, top:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 701
    .local v3, height:I
    if-lez v3, :cond_0

    .line 702
    mul-int/lit8 v6, v4, 0x64

    div-int/2addr v6, v3

    add-int/2addr v2, v6

    .line 705
    :cond_0
    add-int/lit8 v6, v1, -0x1

    invoke-virtual {p0, v6}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 707
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getScrollChildBottom()I

    move-result v0

    .line 708
    .local v0, bottom:I
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 709
    if-lez v3, :cond_1

    .line 710
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getHeight()I

    move-result v6

    sub-int v6, v0, v6

    mul-int/lit8 v6, v6, 0x64

    div-int/2addr v6, v3

    sub-int/2addr v2, v6

    .line 718
    .end local v0           #bottom:I
    .end local v2           #extent:I
    .end local v3           #height:I
    .end local v4           #top:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    :goto_0
    return v2

    .line 715
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v6

    .line 718
    goto :goto_0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 723
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    .line 724
    .local v2, firstPosition:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    .line 725
    .local v0, childCount:I
    if-ltz v2, :cond_0

    if-lez v0, :cond_0

    .line 726
    iget-boolean v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v8, :cond_1

    .line 727
    invoke-virtual {p0, v7}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 729
    .local v6, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getFillChildTop()I

    move-result v5

    .line 730
    .local v5, top:I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 731
    .local v3, height:I
    if-lez v3, :cond_0

    .line 732
    mul-int/lit8 v8, v2, 0x64

    mul-int/lit8 v9, v5, 0x64

    div-int/2addr v9, v3

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getScrollY()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    invoke-static {v8, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 748
    .end local v3           #height:I
    .end local v5           #top:I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_0
    return v7

    .line 737
    :cond_1
    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    .line 738
    .local v1, count:I
    if-nez v2, :cond_2

    .line 739
    const/4 v4, 0x0

    .line 745
    .local v4, index:I
    :goto_1
    int-to-float v7, v2

    int-to-float v8, v0

    int-to-float v9, v4

    int-to-float v10, v1

    div-float/2addr v9, v10

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    float-to-int v7, v7

    goto :goto_0

    .line 740
    .end local v4           #index:I
    :cond_2
    add-int v7, v2, v0

    if-ne v7, v1, :cond_3

    .line 741
    move v4, v1

    .restart local v4       #index:I
    goto :goto_1

    .line 743
    .end local v4           #index:I
    :cond_3
    div-int/lit8 v7, v0, 0x2

    add-int v4, v2, v7

    .restart local v4       #index:I
    goto :goto_1
.end method

.method protected computeVerticalScrollRange()I
    .locals 3

    .prologue
    .line 754
    iget-boolean v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSmoothScrollbarEnabled:Z

    if-eqz v1, :cond_0

    .line 755
    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    mul-int/lit8 v1, v1, 0x64

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 759
    .local v0, result:I
    :goto_0
    return v0

    .line 757
    .end local v0           #result:I
    :cond_0
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    .restart local v0       #result:I
    goto :goto_0
.end method

.method createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1204
    new-instance v0, Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 980
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mDrawSelectorOnTop:Z

    .line 981
    .local v0, drawSelectorOnTop:Z
    if-nez v0, :cond_0

    .line 982
    invoke-direct {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 985
    :cond_0
    invoke-super {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 987
    if-eqz v0, :cond_1

    .line 988
    invoke-direct {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->drawSelector(Landroid/graphics/Canvas;)V

    .line 990
    :cond_1
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .locals 0
    .parameter "pressed"

    .prologue
    .line 1280
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 1089
    invoke-super {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->drawableStateChanged()V

    .line 1090
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1093
    :cond_0
    return-void
.end method

.method abstract fillGap(Z)V
.end method

.method findClosestMotionRow(I)I
    .locals 3
    .parameter "y"

    .prologue
    const/4 v2, -0x1

    .line 2433
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    .line 2434
    .local v0, childCount:I
    if-nez v0, :cond_1

    move v1, v2

    .line 2439
    :cond_0
    :goto_0
    return v1

    .line 2438
    :cond_1
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->findMotionRow(I)I

    move-result v1

    .line 2439
    .local v1, motionRow:I
    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    add-int/2addr v2, v0

    add-int/lit8 v1, v2, -0x1

    goto :goto_0
.end method

.method abstract findMotionRow(I)I
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 2629
    new-instance v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    invoke-direct {v0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 2634
    new-instance v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v1

    .line 783
    .local v1, count:I
    invoke-super {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 784
    .local v2, fadeEdge:F
    if-nez v1, :cond_1

    .line 795
    .end local v2           #fadeEdge:F
    :cond_0
    :goto_0
    return v2

    .line 787
    .restart local v2       #fadeEdge:F
    :cond_1
    iget v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    add-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_2

    .line 788
    const/high16 v2, 0x3f80

    goto :goto_0

    .line 791
    :cond_2
    add-int/lit8 v5, v1, -0x1

    invoke-virtual {p0, v5}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 792
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getHeight()I

    move-result v4

    .line 793
    .local v4, height:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v3, v5

    .line 795
    .local v3, fadeLength:F
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getPaddingBottom()I

    move-result v5

    sub-int v5, v4, v5

    if-le v0, v5, :cond_0

    sub-int v5, v0, v4

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getPaddingBottom()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v5, v3

    goto :goto_0
.end method

.method public getCacheColorHint()I
    .locals 1

    .prologue
    .line 2695
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    return-object v0
.end method

.method protected getFillChildBottom()I
    .locals 2

    .prologue
    .line 3267
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    .line 3268
    .local v0, count:I
    if-nez v0, :cond_0

    .line 3269
    const/4 v1, 0x0

    .line 3270
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0
.end method

.method protected getFillChildTop()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3256
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    .line 3257
    .local v0, count:I
    if-nez v0, :cond_0

    .line 3259
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method protected getFirstChildTop()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3245
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    .line 3246
    .local v0, count:I
    if-nez v0, :cond_0

    .line 3248
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 617
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 618
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 621
    invoke-virtual {v0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 622
    invoke-virtual {p0, v0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 627
    :goto_0
    return-void

    .line 625
    :cond_0
    invoke-super {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getFocusedRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method getFooterViewsCount()I
    .locals 1

    .prologue
    .line 2390
    const/4 v0, 0x0

    return v0
.end method

.method getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 2380
    const/4 v0, 0x0

    return v0
.end method

.method public getListPaddingBottom()I
    .locals 1

    .prologue
    .line 869
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getListPaddingLeft()I
    .locals 1

    .prologue
    .line 881
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getListPaddingRight()I
    .locals 1

    .prologue
    .line 893
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    return v0
.end method

.method public getListPaddingTop()I
    .locals 1

    .prologue
    .line 857
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method protected getScrollChildBottom()I
    .locals 2

    .prologue
    .line 3278
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    .line 3279
    .local v0, count:I
    if-nez v0, :cond_0

    .line 3280
    const/4 v1, 0x0

    .line 3281
    :goto_0
    return v1

    :cond_0
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_0
.end method

.method protected getScrollChildTop()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3238
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    .line 3239
    .local v0, count:I
    if-nez v0, :cond_0

    .line 3241
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 845
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelector()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 2668
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mCacheColorHint:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 5

    .prologue
    .line 764
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    .line 765
    .local v0, count:I
    invoke-super {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 766
    .local v1, fadeEdge:F
    if-nez v0, :cond_1

    .line 776
    .end local v1           #fadeEdge:F
    :cond_0
    :goto_0
    return v1

    .line 769
    .restart local v1       #fadeEdge:F
    :cond_1
    iget v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    if-lez v4, :cond_2

    .line 770
    const/high16 v1, 0x3f80

    goto :goto_0

    .line 773
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v3

    .line 774
    .local v3, top:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getVerticalFadingEdgeLength()I

    move-result v4

    int-to-float v2, v4

    .line 776
    .local v2, fadeLength:F
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getPaddingTop()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getPaddingTop()I

    move-result v4

    sub-int v4, v3, v4

    neg-int v4, v4

    int-to-float v4, v4

    div-float v1, v4, v2

    goto :goto_0
.end method

.method public getTranscriptMode()I
    .locals 1

    .prologue
    .line 2663
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTranscriptMode:I

    return v0
.end method

.method protected handleDataChanged()V
    .locals 10

    .prologue
    const/4 v3, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 2455
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    .line 2456
    .local v0, count:I
    if-lez v0, :cond_6

    .line 2462
    iget-boolean v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mNeedSync:Z

    if-eqz v5, :cond_3

    .line 2464
    iput-boolean v7, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mNeedSync:Z

    .line 2465
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPendingSync:Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;

    .line 2467
    iget v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTranscriptMode:I

    if-eq v5, v9, :cond_0

    iget v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTranscriptMode:I

    if-ne v5, v4, :cond_2

    iget v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v6

    add-int/2addr v5, v6

    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mOldItemCount:I

    if-lt v5, v6, :cond_2

    .line 2470
    :cond_0
    iput v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLayoutMode:I

    .line 2559
    :cond_1
    :goto_0
    return-void

    .line 2474
    :cond_2
    iget v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSyncMode:I

    packed-switch v5, :pswitch_data_0

    .line 2518
    :cond_3
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2520
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getSelectedItemPosition()I

    move-result v1

    .line 2523
    .local v1, newPos:I
    if-lt v1, v0, :cond_4

    .line 2524
    add-int/lit8 v1, v0, -0x1

    .line 2526
    :cond_4
    if-gez v1, :cond_5

    .line 2527
    const/4 v1, 0x0

    .line 2531
    :cond_5
    invoke-virtual {p0, v1, v4}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2533
    .local v2, selectablePos:I
    if-gez v2, :cond_1

    .line 2537
    invoke-virtual {p0, v1, v7}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2538
    if-gez v2, :cond_1

    .line 2553
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :cond_6
    iget-boolean v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mStackFromBottom:Z

    if-eqz v5, :cond_a

    :goto_1
    iput v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLayoutMode:I

    .line 2554
    const/4 v3, -0x1

    iput v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectedPosition:I

    .line 2555
    const-wide/high16 v4, -0x8000

    iput-wide v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectedRowId:J

    .line 2556
    iput-boolean v7, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mNeedSync:Z

    .line 2557
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPendingSync:Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;

    .line 2558
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->checkSelectionChanged()V

    goto :goto_0

    .line 2476
    :pswitch_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->isInTouchMode()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2481
    iput v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLayoutMode:I

    .line 2482
    iget v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSyncPosition:I

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSyncPosition:I

    goto :goto_0

    .line 2488
    :cond_7
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->findSyncPosition()I

    move-result v1

    .line 2489
    .restart local v1       #newPos:I
    if-ltz v1, :cond_3

    .line 2491
    invoke-virtual {p0, v1, v4}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->lookForSelectablePosition(IZ)I

    move-result v2

    .line 2492
    .restart local v2       #selectablePos:I
    if-ne v2, v1, :cond_3

    .line 2494
    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSyncPosition:I

    .line 2496
    iget-wide v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSyncHeight:J

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getHeight()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_8

    .line 2499
    iput v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLayoutMode:I

    goto :goto_0

    .line 2503
    :cond_8
    iput v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLayoutMode:I

    goto :goto_0

    .line 2512
    .end local v1           #newPos:I
    .end local v2           #selectablePos:I
    :pswitch_1
    iput v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLayoutMode:I

    .line 2513
    iget v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSyncPosition:I

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v4, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSyncPosition:I

    goto :goto_0

    .line 2545
    :cond_9
    iget v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mResurrectToPosition:I

    if-ltz v5, :cond_6

    goto/16 :goto_0

    :cond_a
    move v3, v4

    .line 2553
    goto :goto_1

    .line 2474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public invalidateViews()V
    .locals 1

    .prologue
    .line 2446
    const-string v0, "data changed by invalidateViews()"

    invoke-static {v0}, Lcom/huewu/pla/lib/DebugUtil;->LogDebug(Ljava/lang/String;)V

    .line 2447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mDataChanged:Z

    .line 2448
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->rememberSyncState()V

    .line 2449
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->requestLayout()V

    .line 2450
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->invalidate()V

    .line 2451
    return-void
.end method

.method invokeOnItemScrollListener()V
    .locals 4

    .prologue
    .line 576
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mOnScrollListener:Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 577
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mOnScrollListener:Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;

    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v2

    iget v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;->onScroll(Lcom/huewu/pla/lib/internal/PLA_AbsListView;III)V

    .line 579
    :cond_0
    return-void
.end method

.method public isScrollingCacheEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mScrollingCacheEnabled:Z

    return v0
.end method

.method public isSmoothScrollbarEnabled()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 559
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSmoothScrollbarEnabled:Z

    return v0
.end method

.method public isStackFromBottom()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mStackFromBottom:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 0

    .prologue
    .line 840
    return-void
.end method

.method protected modifyFlingInitialVelocity(I)I
    .locals 0
    .parameter "initialVelocity"

    .prologue
    .line 3230
    return p1
.end method

.method obtainView(I[Z)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "isScrap"

    .prologue
    const/4 v3, 0x0

    .line 910
    aput-boolean v3, p2, v3

    .line 913
    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->getScrapView(I)Landroid/view/View;

    move-result-object v1

    .line 916
    .local v1, scrapView:Landroid/view/View;
    if-eqz v1, :cond_2

    .line 922
    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, p1, v1, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 929
    .local v0, child:Landroid/view/View;
    if-eq v0, v1, :cond_1

    .line 930
    const-string v2, "obtainView"

    invoke-static {v2}, Lcom/huewu/pla/lib/DebugUtil;->i(Ljava/lang/String;)V

    .line 931
    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-virtual {v2, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 932
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 933
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 956
    :cond_0
    :goto_0
    return-object v0

    .line 940
    :cond_1
    const/4 v2, 0x1

    aput-boolean v2, p2, v3

    .line 942
    invoke-direct {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->dispatchFinishTemporaryDetach(Landroid/view/View;)V

    goto :goto_0

    .line 945
    .end local v0           #child:Landroid/view/View;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeView:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huewu/pla/lib/DebugUtil;->i(Ljava/lang/String;)V

    .line 946
    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 947
    .restart local v0       #child:Landroid/view/View;
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mCacheColorHint:I

    if-eqz v2, :cond_0

    .line 948
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mCacheColorHint:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 1136
    invoke-super {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->onAttachedToWindow()V

    .line 1138
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1139
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1140
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1142
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 6
    .parameter "extraSpace"

    .prologue
    .line 1098
    iget-boolean v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mIsChildViewEnabled:Z

    if-eqz v4, :cond_1

    .line 1100
    invoke-super {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1126
    :cond_0
    :goto_0
    return-object v3

    .line 1106
    :cond_1
    sget-object v4, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->ENABLED_STATE_SET:[I

    const/4 v5, 0x0

    aget v1, v4, v5

    .line 1111
    .local v1, enabledState:I
    add-int/lit8 v4, p1, 0x1

    invoke-super {p0, v4}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->onCreateDrawableState(I)[I

    move-result-object v3

    .line 1112
    .local v3, state:[I
    const/4 v0, -0x1

    .line 1113
    .local v0, enabledPos:I
    array-length v4, v3

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_2

    .line 1114
    aget v4, v3, v2

    if-ne v4, v1, :cond_3

    .line 1115
    move v0, v2

    .line 1121
    :cond_2
    if-ltz v0, :cond_0

    .line 1122
    add-int/lit8 v4, v0, 0x1

    array-length v5, v3

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v4, v3, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1113
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 1146
    invoke-super {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->onDetachedFromWindow()V

    .line 1149
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->clear()V

    .line 1151
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1152
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1153
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 1155
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .prologue
    .line 2625
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v11, 0x4

    const/4 v7, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    .line 1676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1679
    .local v0, action:I
    and-int/lit16 v9, v0, 0xff

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v7, v8

    .line 1732
    :goto_1
    return v7

    .line 1681
    :pswitch_1
    iget v3, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    .line 1683
    .local v3, touchMode:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 1684
    .local v5, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 1685
    .local v6, y:I
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    iput v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mActivePointerId:I

    .line 1687
    invoke-virtual {p0, v6}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->findMotionRow(I)I

    move-result v1

    .line 1688
    .local v1, motionPosition:I
    if-eq v3, v11, :cond_1

    if-ltz v1, :cond_1

    .line 1691
    iget v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    sub-int v9, v1, v9

    invoke-virtual {p0, v9}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1692
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iput v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionViewOriginalTop:I

    .line 1693
    iput v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionX:I

    .line 1694
    iput v6, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionY:I

    .line 1695
    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionPosition:I

    .line 1696
    iput v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    .line 1697
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->clearScrollingCache()V

    .line 1699
    .end local v4           #v:Landroid/view/View;
    :cond_1
    const/high16 v9, -0x8000

    iput v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastY:I

    .line 1700
    if-ne v3, v11, :cond_0

    goto :goto_1

    .line 1707
    .end local v1           #motionPosition:I
    .end local v3           #touchMode:I
    .end local v5           #x:I
    .end local v6           #y:I
    :pswitch_2
    iget v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    packed-switch v9, :pswitch_data_1

    goto :goto_0

    .line 1709
    :pswitch_3
    iget v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mActivePointerId:I

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 1710
    .local v2, pointerIndex:I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    float-to-int v6, v9

    .line 1711
    .restart local v6       #y:I
    iget v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionY:I

    sub-int v9, v6, v9

    invoke-direct {p0, v9}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->startScrollIfNeeded(I)Z

    move-result v9

    if-eqz v9, :cond_0

    goto :goto_1

    .line 1720
    .end local v2           #pointerIndex:I
    .end local v6           #y:I
    :pswitch_4
    iput v10, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    .line 1721
    iput v10, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mActivePointerId:I

    .line 1722
    invoke-virtual {p0, v8}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->reportScrollStateChange(I)V

    goto :goto_0

    .line 1727
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 1679
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    .line 1707
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1273
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 821
    invoke-super/range {p0 .. p5}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->onLayout(ZIIII)V

    .line 822
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mInLayout:Z

    .line 823
    if-eqz p1, :cond_1

    .line 824
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    .line 825
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 826
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->forceLayout()V

    .line 825
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 828
    :cond_0
    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-virtual {v2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->markChildrenDirty()V

    .line 830
    .end local v0           #childCount:I
    .end local v1           #i:I
    :cond_1
    const-string v2, "onLayout"

    invoke-static {v2}, Lcom/huewu/pla/lib/DebugUtil;->i(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->layoutChildren()V

    .line 833
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mInLayout:Z

    .line 834
    return-void
.end method

.method protected onLayoutSync(I)V
    .locals 0
    .parameter "syncPosition"

    .prologue
    .line 2566
    return-void
.end method

.method protected onLayoutSyncFinished(I)V
    .locals 0
    .parameter "syncPosition"

    .prologue
    .line 2573
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 801
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 802
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->useDefaultSelector()V

    .line 804
    :cond_0
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mListPadding:Landroid/graphics/Rect;

    .line 809
    .local v0, listPadding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionLeftPadding:I

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 810
    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionTopPadding:I

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 811
    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionRightPadding:I

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 812
    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionBottomPadding:I

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 813
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x1

    .line 3350
    instance-of v4, p1, Landroid/os/Bundle;

    if-eqz v4, :cond_1

    move-object v0, p1

    .line 3351
    check-cast v0, Landroid/os/Bundle;

    .line 3352
    .local v0, bundle:Landroid/os/Bundle;
    iput-boolean v6, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mDataChanged:Z

    .line 3353
    const-string v4, "height"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSyncHeight:J

    .line 3354
    const-string v4, "firstId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 3355
    .local v2, firstId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_0

    .line 3356
    iput-boolean v6, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mNeedSync:Z

    .line 3357
    new-instance v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;

    invoke-direct {v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;-><init>()V

    .line 3358
    .local v1, ss:Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;
    iput-wide v2, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->firstId:J

    .line 3359
    iget-wide v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSyncHeight:J

    long-to-int v4, v4

    iput v4, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->height:I

    .line 3360
    const-string v4, "position"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->position:I

    .line 3361
    const-string v4, "viewTop"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->viewTop:I

    .line 3362
    const-string v4, "childCount"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->childCount:I

    .line 3363
    const-string v4, "viewTops"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->viewTops:[I

    .line 3364
    iput-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPendingSync:Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;

    .line 3365
    iget-wide v4, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->firstId:J

    iput-wide v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSyncRowId:J

    .line 3366
    iget v4, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->position:I

    iput v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSyncPosition:I

    .line 3367
    iget v4, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->viewTop:I

    iput v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSpecificTop:I

    .line 3368
    iget-object v4, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->viewTops:[I

    iput-object v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSpecificTops:[I

    .line 3370
    .end local v1           #ss:Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;
    :cond_0
    const-string v4, "instanceState"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 3372
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #firstId:J
    :cond_1
    invoke-super {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3373
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->requestLayout()V

    .line 3374
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 12

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3297
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3298
    .local v4, ss:Landroid/os/Bundle;
    const-string v9, "instanceState"

    invoke-super {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3300
    iget-object v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPendingSync:Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;

    if-eqz v9, :cond_0

    .line 3302
    const-string v7, "firstId"

    iget-object v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPendingSync:Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;

    iget-wide v8, v8, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->firstId:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3303
    const-string v7, "viewTop"

    iget-object v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPendingSync:Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;

    iget v8, v8, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->viewTop:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3304
    const-string v7, "viewTops"

    iget-object v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPendingSync:Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;

    iget-object v8, v8, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->viewTops:[I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 3305
    const-string v7, "position"

    iget-object v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPendingSync:Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;

    iget v8, v8, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->position:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3306
    const-string v7, "height"

    iget-object v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPendingSync:Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;

    iget v8, v8, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->height:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3307
    const-string v7, "childCount"

    iget-object v8, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPendingSync:Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;

    iget v8, v8, Lcom/huewu/pla/lib/internal/PLA_AbsListView$SavedState;->childCount:I

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3345
    :goto_0
    return-object v4

    .line 3311
    :cond_0
    const-string v9, "height"

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getHeight()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3312
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    .line 3313
    .local v0, childCount:I
    const-string v9, "childCount"

    invoke-virtual {v4, v9, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3314
    if-lez v0, :cond_2

    iget v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    if-lez v9, :cond_2

    move v2, v7

    .line 3315
    .local v2, haveChildren:Z
    :goto_1
    if-eqz v2, :cond_4

    iget v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 3326
    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    .line 3327
    .local v1, firstPos:I
    iget v7, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    if-lt v1, v7, :cond_1

    .line 3328
    iget v7, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .line 3330
    :cond_1
    const-string v7, "position"

    invoke-virtual {v4, v7, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3331
    const-string v7, "firstId"

    iget-object v9, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v9, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    invoke-virtual {v4, v7, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3332
    invoke-virtual {p0, v8}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 3333
    .local v5, v:Landroid/view/View;
    const-string v7, "viewTop"

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3334
    new-array v6, v0, [I

    .line 3335
    .local v6, viewTops:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_3

    .line 3336
    invoke-virtual {p0, v3}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v7

    aput v7, v6, v3

    .line 3335
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v1           #firstPos:I
    .end local v2           #haveChildren:Z
    .end local v3           #i:I
    .end local v5           #v:Landroid/view/View;
    .end local v6           #viewTops:[I
    :cond_2
    move v2, v8

    .line 3314
    goto :goto_1

    .line 3338
    .restart local v1       #firstPos:I
    .restart local v2       #haveChildren:Z
    .restart local v3       #i:I
    .restart local v5       #v:Landroid/view/View;
    .restart local v6       #viewTops:[I
    :cond_3
    const-string v7, "viewTops"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0

    .line 3340
    .end local v1           #firstPos:I
    .end local v3           #i:I
    .end local v5           #v:Landroid/view/View;
    .end local v6           #viewTops:[I
    :cond_4
    const-string v9, "viewTop"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3341
    const-string v9, "firstId"

    const-wide/16 v10, -0x1

    invoke-virtual {v4, v9, v10, v11}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 3342
    const-string v9, "position"

    invoke-virtual {v4, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3343
    const-string v8, "viewTops"

    new-array v7, v7, [I

    invoke-virtual {v4, v8, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 994
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 996
    const-string v0, "data changed by onSizeChanged()"

    invoke-static {v0}, Lcom/huewu/pla/lib/DebugUtil;->LogDebug(Ljava/lang/String;)V

    .line 998
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mDataChanged:Z

    .line 999
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->rememberSyncState()V

    .line 1001
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "ev"

    .prologue
    .line 1407
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->isEnabled()Z

    move-result v22

    if-nez v22, :cond_2

    .line 1410
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->isClickable()Z

    move-result v22

    if-nez v22, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->isLongClickable()Z

    move-result v22

    if-eqz v22, :cond_1

    :cond_0
    const/16 v22, 0x1

    .line 1670
    :goto_0
    return v22

    .line 1410
    :cond_1
    const/16 v22, 0x0

    goto :goto_0

    .line 1413
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1418
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-nez v22, :cond_3

    .line 1419
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1421
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1423
    and-int/lit16 v0, v4, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 1670
    :cond_4
    :goto_1
    :pswitch_0
    const/16 v22, 0x1

    goto :goto_0

    .line 1425
    :pswitch_1
    const/16 v22, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mActivePointerId:I

    .line 1426
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v20, v0

    .line 1427
    .local v20, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1428
    .local v21, y:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->pointToPosition(II)I

    move-result v13

    .line 1429
    .local v13, motionPosition:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_6

    .line 1430
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    if-ltz v13, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v22

    check-cast v22, Landroid/widget/ListAdapter;

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 1434
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    if-nez v22, :cond_5

    .line 1437
    new-instance v22, Lcom/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$CheckForTap;-><init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    .line 1439
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPendingCheckForTap:Ljava/lang/Runnable;

    move-object/from16 v22, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1459
    :cond_6
    :goto_2
    if-ltz v13, :cond_7

    .line 1461
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v13, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1462
    .local v18, v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionViewOriginalTop:I

    .line 1464
    .end local v18           #v:Landroid/view/View;
    :cond_7
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionX:I

    .line 1465
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionY:I

    .line 1466
    move-object/from16 v0, p0

    iput v13, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionPosition:I

    .line 1467
    const/high16 v22, -0x8000

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastY:I

    goto/16 :goto_1

    .line 1441
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v22

    if-eqz v22, :cond_9

    if-gez v13, :cond_9

    .line 1445
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 1448
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_6

    .line 1450
    invoke-direct/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->createScrollingCache()V

    .line 1451
    const/16 v22, 0x3

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    .line 1452
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionCorrection:I

    .line 1453
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->findMotionRow(I)I

    move-result v13

    .line 1454
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->reportScrollStateChange(I)V

    goto :goto_2

    .line 1472
    .end local v13           #motionPosition:I
    .end local v20           #x:I
    .end local v21           #y:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v16

    .line 1473
    .local v16, pointerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v21, v0

    .line 1474
    .restart local v21       #y:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionY:I

    move/from16 v22, v0

    sub-int v10, v21, v22

    .line 1475
    .local v10, deltaY:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_1

    goto/16 :goto_1

    .line 1481
    :pswitch_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->startScrollIfNeeded(I)Z

    goto/16 :goto_1

    .line 1491
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastY:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 1492
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionCorrection:I

    move/from16 v22, v0

    sub-int v10, v10, v22

    .line 1493
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastY:I

    move/from16 v22, v0

    const/high16 v23, -0x8000

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastY:I

    move/from16 v22, v0

    sub-int v11, v21, v22

    .line 1496
    .local v11, incrementalDeltaY:I
    :goto_3
    const/4 v5, 0x0

    .line 1497
    .local v5, atEdge:Z
    if-eqz v11, :cond_a

    .line 1498
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->trackMotionScroll(II)Z

    move-result v5

    .line 1502
    :cond_a
    if-eqz v5, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v22

    if-lez v22, :cond_c

    .line 1507
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->findMotionRow(I)I

    move-result v13

    .line 1508
    .restart local v13       #motionPosition:I
    if-ltz v13, :cond_b

    .line 1509
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v13, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1510
    .local v14, motionView:Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionViewOriginalTop:I

    .line 1512
    .end local v14           #motionView:Landroid/view/View;
    :cond_b
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionY:I

    .line 1513
    move-object/from16 v0, p0

    iput v13, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionPosition:I

    .line 1514
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->invalidate()V

    .line 1516
    .end local v13           #motionPosition:I
    :cond_c
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastY:I

    goto/16 :goto_1

    .end local v5           #atEdge:Z
    .end local v11           #incrementalDeltaY:I
    :cond_d
    move v11, v10

    .line 1493
    goto :goto_3

    .line 1525
    .end local v10           #deltaY:I
    .end local v16           #pointerIndex:I
    .end local v21           #y:I
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_2

    .line 1615
    :goto_4
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setPressed(Z)V

    .line 1618
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->invalidate()V

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 1622
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1625
    :cond_e
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 1529
    :pswitch_6
    move-object/from16 v0, p0

    iget v13, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionPosition:I

    .line 1530
    .restart local v13       #motionPosition:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v13, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1531
    .local v7, child:Landroid/view/View;
    if-eqz v7, :cond_15

    invoke-virtual {v7}, Landroid/view/View;->hasFocusable()Z

    move-result v22

    if-nez v22, :cond_15

    .line 1532
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_f

    .line 1533
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1536
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPerformClick:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;

    move-object/from16 v22, v0

    if-nez v22, :cond_10

    .line 1537
    new-instance v22, Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;-><init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Lcom/huewu/pla/lib/internal/PLA_AbsListView$1;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPerformClick:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;

    .line 1540
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPerformClick:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;

    .line 1541
    .local v15, performClick:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;
    iput-object v7, v15, Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;->mChild:Landroid/view/View;

    .line 1542
    iput v13, v15, Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;->mClickMotionPosition:I

    .line 1543
    invoke-virtual {v15}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;->rememberWindowAttachCount()V

    .line 1545
    move-object/from16 v0, p0

    iput v13, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mResurrectToPosition:I

    .line 1547
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    move/from16 v22, v0

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_14

    .line 1548
    :cond_11
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLayoutMode:I

    .line 1549
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_13

    .line 1550
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    .line 1551
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->layoutChildren()V

    .line 1552
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1553
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->positionSelector(Landroid/view/View;)V

    .line 1554
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setPressed(Z)V

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-eqz v22, :cond_12

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1557
    .local v9, d:Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_12

    instance-of v0, v9, Landroid/graphics/drawable/TransitionDrawable;

    move/from16 v22, v0

    if-eqz v22, :cond_12

    .line 1558
    check-cast v9, Landroid/graphics/drawable/TransitionDrawable;

    .end local v9           #d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 1561
    :cond_12
    new-instance v22, Lcom/huewu/pla/lib/internal/PLA_AbsListView$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v7, v15}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$1;-><init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;Landroid/view/View;Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;)V

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide/from16 v2, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1574
    :goto_5
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 1572
    :cond_13
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    goto :goto_5

    .line 1575
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mDataChanged:Z

    move/from16 v22, v0

    if-nez v22, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v22

    if-eqz v22, :cond_15

    .line 1576
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->post(Ljava/lang/Runnable;)Z

    .line 1579
    .end local v15           #performClick:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PerformClick;
    :cond_15
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    goto/16 :goto_4

    .line 1582
    .end local v7           #child:Landroid/view/View;
    .end local v13           #motionPosition:I
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v8

    .line 1583
    .local v8, childCount:I
    if-lez v8, :cond_19

    .line 1584
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getFillChildTop()I

    move-result v17

    .line 1585
    .local v17, top:I
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getFillChildBottom()I

    move-result v6

    .line 1586
    .local v6, bottom:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    if-nez v22, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    if-lt v0, v1, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    add-int v22, v22, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    if-gt v6, v0, :cond_16

    .line 1589
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    .line 1590
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 1592
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v19, v0

    .line 1593
    .local v19, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v22, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMaximumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1594
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mActivePointerId:I

    move/from16 v22, v0

    move-object/from16 v0, v19

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v22

    move/from16 v0, v22

    float-to-int v12, v0

    .line 1596
    .local v12, initialVelocity:I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMinimumVelocity:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_18

    .line 1597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFlingRunnable:Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

    move-object/from16 v22, v0

    if-nez v22, :cond_17

    .line 1598
    new-instance v22, Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;-><init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFlingRunnable:Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

    .line 1600
    :cond_17
    const/16 v22, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->reportScrollStateChange(I)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFlingRunnable:Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

    move-object/from16 v22, v0

    neg-int v0, v12

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;->start(I)V

    goto/16 :goto_4

    .line 1604
    :cond_18
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    .line 1605
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 1609
    .end local v6           #bottom:I
    .end local v12           #initialVelocity:I
    .end local v17           #top:I
    .end local v19           #velocityTracker:Landroid/view/VelocityTracker;
    :cond_19
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    .line 1610
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_4

    .line 1637
    .end local v8           #childCount:I
    :pswitch_8
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    .line 1638
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setPressed(Z)V

    .line 1639
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionPosition:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1640
    .restart local v14       #motionView:Landroid/view/View;
    if-eqz v14, :cond_1a

    .line 1641
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v14, v0}, Landroid/view/View;->setPressed(Z)V

    .line 1643
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->clearScrollingCache()V

    .line 1645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1b

    .line 1646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/VelocityTracker;->recycle()V

    .line 1647
    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1650
    :cond_1b
    const/16 v22, -0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mActivePointerId:I

    goto/16 :goto_1

    .line 1655
    .end local v14           #motionView:Landroid/view/View;
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 1656
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionX:I

    move/from16 v20, v0

    .line 1657
    .restart local v20       #x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionY:I

    move/from16 v21, v0

    .line 1658
    .restart local v21       #y:I
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->pointToPosition(II)I

    move-result v13

    .line 1659
    .restart local v13       #motionPosition:I
    if-ltz v13, :cond_1c

    .line 1661
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    sub-int v22, v13, v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    .line 1662
    .restart local v18       #v:Landroid/view/View;
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionViewOriginalTop:I

    .line 1663
    move-object/from16 v0, p0

    iput v13, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionPosition:I

    .line 1665
    .end local v18           #v:Landroid/view/View;
    :cond_1c
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastY:I

    goto/16 :goto_1

    .line 1423
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    .line 1475
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 1525
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onTouchModeChanged(Z)V
    .locals 1
    .parameter "isInTouchMode"

    .prologue
    .line 1392
    if-eqz p1, :cond_0

    .line 1397
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1400
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->layoutChildren()V

    .line 1403
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    const/4 v1, 0x0

    .line 1159
    invoke-super {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->onWindowFocusChanged(Z)V

    .line 1160
    const-string v2, "onWindowFocusChanged"

    invoke-static {v2}, Lcom/huewu/pla/lib/DebugUtil;->i(Ljava/lang/String;)V

    .line 1162
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 1164
    .local v0, touchMode:I
    :goto_0
    if-nez p1, :cond_2

    .line 1165
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setChildrenDrawingCacheEnabled(Z)V

    .line 1166
    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFlingRunnable:Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

    if-eqz v2, :cond_0

    .line 1167
    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFlingRunnable:Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

    invoke-virtual {p0, v2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1170
    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFlingRunnable:Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

    invoke-static {v2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;->access$000(Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;)V

    .line 1172
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getScrollY()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1174
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getScrollX()I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->scrollTo(II)V

    .line 1175
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->invalidate()V

    .line 1189
    :cond_0
    :goto_1
    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastTouchMode:I

    .line 1190
    return-void

    .line 1162
    .end local v0           #touchMode:I
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1181
    .restart local v0       #touchMode:I
    :cond_2
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastTouchMode:I

    if-eq v0, v2, :cond_0

    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastTouchMode:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1183
    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLayoutMode:I

    .line 1184
    const-string v1, "onWindowFocusChanged"

    invoke-static {v1}, Lcom/huewu/pla/lib/DebugUtil;->i(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->layoutChildren()V

    goto :goto_1
.end method

.method public pointToPosition(II)I
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1291
    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1292
    .local v2, frame:Landroid/graphics/Rect;
    if-nez v2, :cond_0

    .line 1293
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1294
    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchFrame:Landroid/graphics/Rect;

    .line 1297
    :cond_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v1

    .line 1298
    .local v1, count:I
    add-int/lit8 v3, v1, -0x1

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_2

    .line 1299
    invoke-virtual {p0, v3}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1300
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 1301
    invoke-virtual {v0, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 1302
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1303
    iget v4, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    add-int/2addr v4, v3

    .line 1307
    .end local v0           #child:Landroid/view/View;
    :goto_1
    return v4

    .line 1298
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 1307
    .end local v0           #child:Landroid/view/View;
    :cond_2
    const/4 v4, -0x1

    goto :goto_1
.end method

.method public pointToRowId(II)J
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1320
    invoke-virtual {p0, p1, p2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->pointToPosition(II)I

    move-result v0

    .line 1321
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 1322
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 1324
    :goto_0
    return-wide v2

    :cond_0
    const-wide/high16 v2, -0x8000

    goto :goto_0
.end method

.method positionSelector(Landroid/view/View;)V
    .locals 6
    .parameter "sel"

    .prologue
    .line 960
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 961
    .local v1, selectorRect:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 962
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->positionSelector(IIII)V

    .line 965
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mIsChildViewEnabled:Z

    .line 966
    .local v0, isChildViewEnabled:Z
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eq v2, v0, :cond_0

    .line 967
    if-nez v0, :cond_1

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mIsChildViewEnabled:Z

    .line 968
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->refreshDrawableState()V

    .line 970
    :cond_0
    return-void

    .line 967
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public reclaimViews(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2706
    .local p1, views:Ljava/util/List;,"Ljava/util/List<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v1

    .line 2707
    .local v1, childCount:I
    iget-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-static {v5}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->access$800(Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;)Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;

    move-result-object v3

    .line 2710
    .local v3, listener:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 2711
    invoke-virtual {p0, v2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2712
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    .line 2714
    .local v4, lp:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    iget v6, v4, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v5, v6}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2715
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2716
    if-eqz v3, :cond_0

    .line 2718
    invoke-interface {v3, v0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;->onMovedToScrapHeap(Landroid/view/View;)V

    .line 2710
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2722
    .end local v0           #child:Landroid/view/View;
    .end local v4           #lp:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    :cond_1
    iget-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-virtual {v5, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->reclaimScrapViews(Ljava/util/List;)V

    .line 2723
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->removeAllViewsInLayout()V

    .line 2724
    return-void
.end method

.method reconcileSelectedPosition()I
    .locals 2

    .prologue
    .line 2409
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectedPosition:I

    .line 2410
    .local v0, position:I
    if-gez v0, :cond_0

    .line 2411
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mResurrectToPosition:I

    .line 2413
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2414
    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2415
    return v0
.end method

.method reportScrollStateChange(I)V
    .locals 1
    .parameter "newState"

    .prologue
    .line 1783
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastScrollState:I

    if-eq p1, v0, :cond_0

    .line 1784
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mOnScrollListener:Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1785
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mOnScrollListener:Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;

    invoke-interface {v0, p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;->onScrollStateChanged(Lcom/huewu/pla/lib/internal/PLA_AbsListView;I)V

    .line 1786
    iput p1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mLastScrollState:I

    .line 1789
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 669
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mInLayout:Z

    if-nez v0, :cond_0

    .line 670
    invoke-super {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->requestLayout()V

    .line 672
    :cond_0
    return-void
.end method

.method requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 660
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 661
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->resetList()V

    .line 662
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->requestLayout()V

    .line 663
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->invalidate()V

    .line 665
    :cond_0
    return-void
.end method

.method resetList()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 678
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->removeAllViewsInLayout()V

    .line 679
    iput v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    .line 680
    iput-boolean v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mDataChanged:Z

    .line 681
    iput-boolean v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mNeedSync:Z

    .line 682
    const/4 v0, -0x1

    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mOldSelectedPosition:I

    .line 683
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mOldSelectedRowId:J

    .line 684
    iput v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectedTop:I

    .line 685
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 686
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->invalidate()V

    .line 687
    return-void
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 2678
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mCacheColorHint:I

    if-eq p1, v2, :cond_1

    .line 2679
    iput p1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mCacheColorHint:I

    .line 2680
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    .line 2681
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2682
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 2681
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2684
    :cond_0
    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-virtual {v2, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->setCacheColorHint(I)V

    .line 2686
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0
    .parameter "onTop"

    .prologue
    .line 1047
    iput-boolean p1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mDrawSelectorOnTop:Z

    .line 1048
    return-void
.end method

.method public setOnScrollListener(Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 568
    iput-object p1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mOnScrollListener:Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;

    .line 569
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->invokeOnItemScrollListener()V

    .line 570
    return-void
.end method

.method public setRecyclerListener(Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2794
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-static {v0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->access$802(Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;)Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecyclerListener;

    .line 2795
    return-void
.end method

.method public setScrollingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mScrollingCacheEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->clearScrollingCache()V

    .line 612
    :cond_0
    iput-boolean p1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mScrollingCacheEnabled:Z

    .line 613
    return-void
.end method

.method public setSelector(I)V
    .locals 1
    .parameter "resID"

    .prologue
    .line 1058
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1059
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "sel"

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1064
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1066
    :cond_0
    iput-object p1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    .line 1067
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1068
    .local v0, padding:Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1069
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionLeftPadding:I

    .line 1070
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionTopPadding:I

    .line 1071
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionRightPadding:I

    .line 1072
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelectionBottomPadding:I

    .line 1073
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1074
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1075
    return-void
.end method

.method public setSmoothScrollbarEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSmoothScrollbarEnabled:Z

    .line 548
    return-void
.end method

.method public setStackFromBottom(Z)V
    .locals 1
    .parameter "stackFromBottom"

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mStackFromBottom:Z

    if-eq v0, p1, :cond_0

    .line 654
    iput-boolean p1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mStackFromBottom:Z

    .line 655
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->requestLayoutIfNecessary()V

    .line 657
    :cond_0
    return-void
.end method

.method public setTranscriptMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 2653
    iput p1, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTranscriptMode:I

    .line 2654
    return-void
.end method

.method protected shouldShowSelector()Z
    .locals 1

    .prologue
    .line 1026
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->touchModeDrawsInPressedState()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 7
    .parameter "originalView"

    .prologue
    .line 1250
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 1251
    .local v3, longPressPosition:I
    if-ltz v3, :cond_2

    .line 1252
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1253
    .local v4, longPressId:J
    const/4 v6, 0x0

    .line 1255
    .local v6, handled:Z
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mOnItemLongClickListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mOnItemLongClickListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1259
    :cond_0
    if-nez v6, :cond_1

    .line 1260
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    sub-int v0, v3, v0

    invoke-virtual {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4, v5}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->createContextMenuInfo(Landroid/view/View;IJ)Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mContextMenuInfo:Landroid/view/ContextMenu$ContextMenuInfo;

    .line 1263
    invoke-super {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1268
    .end local v4           #longPressId:J
    .end local v6           #handled:Z
    :cond_1
    :goto_0
    return v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public smoothScrollBy(II)V
    .locals 1
    .parameter "distance"
    .parameter "duration"

    .prologue
    .line 2195
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFlingRunnable:Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

    if-nez v0, :cond_0

    .line 2196
    new-instance v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;-><init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V

    iput-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFlingRunnable:Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

    .line 2200
    :goto_0
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFlingRunnable:Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

    invoke-virtual {v0, p1, p2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;->startScroll(II)V

    .line 2201
    return-void

    .line 2198
    :cond_0
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFlingRunnable:Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;

    invoke-static {v0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;->access$000(Lcom/huewu/pla/lib/internal/PLA_AbsListView$FlingRunnable;)V

    goto :goto_0
.end method

.method public smoothScrollToPosition(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 2167
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPositionScroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 2168
    new-instance v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;-><init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V

    iput-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPositionScroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;

    .line 2170
    :cond_0
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPositionScroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;

    invoke-virtual {v0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;->start(I)V

    .line 2171
    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 1
    .parameter "position"
    .parameter "boundPosition"

    .prologue
    .line 2183
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPositionScroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;

    if-nez v0, :cond_0

    .line 2184
    new-instance v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;

    invoke-direct {v0, p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;-><init>(Lcom/huewu/pla/lib/internal/PLA_AbsListView;)V

    iput-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPositionScroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;

    .line 2186
    :cond_0
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mPositionScroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;

    invoke-virtual {v0, p1, p2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;->start(II)V

    .line 2187
    return-void
.end method

.method touchModeDrawsInPressedState()Z
    .locals 1

    .prologue
    .line 1009
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mTouchMode:I

    packed-switch v0, :pswitch_data_0

    .line 1014
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1012
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1009
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method trackMotionScroll(II)Z
    .locals 24
    .parameter "deltaY"
    .parameter "incrementalDeltaY"

    .prologue
    .line 2242
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v5

    .line 2243
    .local v5, childCount:I
    if-nez v5, :cond_0

    .line 2244
    const/16 v22, 0x1

    .line 2361
    :goto_0
    return v22

    .line 2247
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getScrollChildTop()I

    move-result v10

    .line 2248
    .local v10, firstTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getScrollChildBottom()I

    move-result v15

    .line 2249
    .local v15, lastBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    .line 2252
    .local v16, listPadding:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getHeight()I

    move-result v22

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v8, v22, v23

    .line 2253
    .local v8, end:I
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getFillChildTop()I

    move-result v23

    sub-int v18, v22, v23

    .line 2254
    .local v18, spaceAbove:I
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getFillChildBottom()I

    move-result v22

    sub-int v19, v22, v8

    .line 2257
    .local v19, spaceBelow:I
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getHeight()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getPaddingBottom()I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getPaddingTop()I

    move-result v23

    sub-int v13, v22, v23

    .line 2258
    .local v13, height:I
    if-gez p1, :cond_1

    .line 2259
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2264
    :goto_1
    if-gez p2, :cond_2

    .line 2265
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    neg-int v0, v0

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2270
    :goto_2
    move-object/from16 v0, p0

    iget v9, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    .line 2272
    .local v9, firstPosition:I
    if-nez v9, :cond_3

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v10, v0, :cond_3

    if-ltz p1, :cond_3

    .line 2275
    const/16 v22, 0x1

    goto :goto_0

    .line 2261
    .end local v9           #firstPosition:I
    :cond_1
    add-int/lit8 v22, v13, -0x1

    move/from16 v0, v22

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1

    .line 2267
    :cond_2
    add-int/lit8 v22, v13, -0x1

    div-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_2

    .line 2278
    .restart local v9       #firstPosition:I
    :cond_3
    add-int v22, v9, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    if-gt v15, v8, :cond_4

    if-gtz p1, :cond_4

    .line 2281
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 2284
    :cond_4
    if-gez p2, :cond_a

    const/4 v7, 0x1

    .line 2286
    .local v7, down:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getHeaderViewsCount()I

    move-result v12

    .line 2287
    .local v12, headerViewsCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mItemCount:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getFooterViewsCount()I

    move-result v23

    sub-int v11, v22, v23

    .line 2289
    .local v11, footerViewsStart:I
    const/16 v20, 0x0

    .line 2290
    .local v20, start:I
    const/4 v6, 0x0

    .line 2292
    .local v6, count:I
    if-eqz v7, :cond_d

    .line 2293
    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v22, v0

    sub-int v21, v22, p2

    .line 2294
    .local v21, top:I
    const/4 v14, 0x0

    .local v14, i:I
    :goto_4
    if-ge v14, v5, :cond_5

    .line 2295
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2296
    .local v4, child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v22

    move/from16 v0, v22

    move/from16 v1, v21

    if-lt v0, v1, :cond_b

    .line 2335
    .end local v4           #child:Landroid/view/View;
    .end local v21           #top:I
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionViewOriginalTop:I

    move/from16 v22, v0

    add-int v22, v22, p1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mMotionViewNewTop:I

    .line 2337
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mBlockLayoutRequests:Z

    .line 2339
    if-lez v6, :cond_6

    .line 2340
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v6}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->detachViewsFromParent(II)V

    .line 2344
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->tryOffsetChildrenTopAndBottom(I)V

    .line 2346
    if-eqz v7, :cond_7

    .line 2347
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    move/from16 v22, v0

    add-int v22, v22, v6

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mFirstPosition:I

    .line 2350
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->invalidate()V

    .line 2352
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 2353
    .local v2, absIncrementalDeltaY:I
    move/from16 v0, v18

    if-lt v0, v2, :cond_8

    move/from16 v0, v19

    if-ge v0, v2, :cond_9

    .line 2354
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->fillGap(Z)V

    .line 2357
    :cond_9
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mBlockLayoutRequests:Z

    .line 2358
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->invokeOnItemScrollListener()V

    .line 2359
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->awakenScrollBars()Z

    .line 2361
    const/16 v22, 0x0

    goto/16 :goto_0

    .line 2284
    .end local v2           #absIncrementalDeltaY:I
    .end local v6           #count:I
    .end local v7           #down:Z
    .end local v11           #footerViewsStart:I
    .end local v12           #headerViewsCount:I
    .end local v14           #i:I
    .end local v20           #start:I
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 2299
    .restart local v4       #child:Landroid/view/View;
    .restart local v6       #count:I
    .restart local v7       #down:Z
    .restart local v11       #footerViewsStart:I
    .restart local v12       #headerViewsCount:I
    .restart local v14       #i:I
    .restart local v20       #start:I
    .restart local v21       #top:I
    :cond_b
    add-int/lit8 v6, v6, 0x1

    .line 2300
    add-int v17, v9, v14

    .line 2301
    .local v17, position:I
    move/from16 v0, v17

    if-lt v0, v12, :cond_c

    move/from16 v0, v17

    if-ge v0, v11, :cond_c

    .line 2302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2294
    :cond_c
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 2313
    .end local v4           #child:Landroid/view/View;
    .end local v14           #i:I
    .end local v17           #position:I
    .end local v21           #top:I
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getHeight()I

    move-result v22

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    sub-int v3, v22, p2

    .line 2314
    .local v3, bottom:I
    add-int/lit8 v14, v5, -0x1

    .restart local v14       #i:I
    :goto_5
    if-ltz v14, :cond_5

    .line 2315
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 2316
    .restart local v4       #child:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v22

    move/from16 v0, v22

    if-le v0, v3, :cond_5

    .line 2319
    move/from16 v20, v14

    .line 2320
    add-int/lit8 v6, v6, 0x1

    .line 2321
    add-int v17, v9, v14

    .line 2322
    .restart local v17       #position:I
    move/from16 v0, v17

    if-lt v0, v12, :cond_e

    move/from16 v0, v17

    if-ge v0, v11, :cond_e

    .line 2323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 2314
    :cond_e
    add-int/lit8 v14, v14, -0x1

    goto :goto_5
.end method

.method protected tryOffsetChildrenTopAndBottom(I)V
    .locals 3
    .parameter "offset"

    .prologue
    .line 2365
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildCount()I

    move-result v0

    .line 2367
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2368
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2369
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2367
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2371
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "dr"

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->mSelector:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    invoke-super {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
