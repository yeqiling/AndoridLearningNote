.class public abstract Lcom/huewu/pla/lib/internal/PLA_AdapterView;
.super Landroid/view/ViewGroup;
.source "PLA_AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huewu/pla/lib/internal/PLA_AdapterView$1;,
        Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;,
        Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;,
        Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterContextMenuInfo;,
        Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;,
        Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;,
        Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final INVALID_ROW_ID:J = -0x8000000000000000L

.field public static final ITEM_VIEW_TYPE_HEADER_OR_FOOTER:I = -0x2

.field public static final ITEM_VIEW_TYPE_IGNORE:I = -0x1

.field static final SYNC_FIRST_POSITION:I = 0x1

.field static final SYNC_MAX_DURATION_MILLIS:I = 0x64

.field static final SYNC_SELECTED_POSITION:I


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mEmptyView:Landroid/view/View;

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mOldItemCount:I

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemClickListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;

.field mOnItemLongClickListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;

.field mOnItemSelectedListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huewu/pla/lib/internal/PLA_AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSpecificTop:I

.field mSpecificTops:[I

.field mSyncHeight:J

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 61
    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mFirstPosition:I

    .line 79
    iput-wide v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSyncRowId:J

    .line 89
    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mNeedSync:Z

    .line 121
    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mInLayout:Z

    .line 146
    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectedPosition:I

    .line 152
    iput-wide v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectedRowId:J

    .line 184
    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOldSelectedPosition:I

    .line 189
    iput-wide v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOldSelectedRowId:J

    .line 197
    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mBlockLayoutRequests:Z

    .line 201
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mFirstPosition:I

    .line 79
    iput-wide v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSyncRowId:J

    .line 89
    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mNeedSync:Z

    .line 121
    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mInLayout:Z

    .line 146
    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectedPosition:I

    .line 152
    iput-wide v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectedRowId:J

    .line 184
    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOldSelectedPosition:I

    .line 189
    iput-wide v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOldSelectedRowId:J

    .line 197
    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mBlockLayoutRequests:Z

    .line 205
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    const/4 v1, -0x1

    const-wide/high16 v2, -0x8000

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mFirstPosition:I

    .line 79
    iput-wide v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSyncRowId:J

    .line 89
    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mNeedSync:Z

    .line 121
    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mInLayout:Z

    .line 146
    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectedPosition:I

    .line 152
    iput-wide v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectedRowId:J

    .line 184
    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOldSelectedPosition:I

    .line 189
    iput-wide v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOldSelectedRowId:J

    .line 197
    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mBlockLayoutRequests:Z

    .line 209
    return-void
.end method

.method static synthetic access$000(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->fireOnSelected()V

    return-void
.end method

.method static synthetic access$300(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 806
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOnItemSelectedListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 817
    :goto_0
    return-void

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 810
    .local v3, selection:I
    if-ltz v3, :cond_1

    .line 811
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 812
    .local v2, v:Landroid/view/View;
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOnItemSelectedListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;->onItemSelected(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 815
    .end local v2           #v:Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOnItemSelectedListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)V

    goto :goto_0
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 2

    .prologue
    .line 823
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 824
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 826
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->sendAccessibilityEvent(I)V

    .line 828
    :cond_0
    return-void
.end method

.method private updateEmptyStatus(Z)V
    .locals 6
    .parameter "empty"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 648
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->isInFilterMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    const/4 p1, 0x0

    .line 652
    :cond_0
    if-eqz p1, :cond_3

    .line 653
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 654
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 655
    invoke-virtual {p0, v2}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->setVisibility(I)V

    .line 664
    :goto_0
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mDataChanged:Z

    if-eqz v0, :cond_1

    .line 665
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->onLayout(ZIIII)V

    .line 671
    :cond_1
    :goto_1
    return-void

    .line 658
    :cond_2
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->setVisibility(I)V

    goto :goto_0

    .line 668
    :cond_3
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 669
    :cond_4
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->setVisibility(I)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 415
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter "child"
    .parameter "index"

    .prologue
    .line 428
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 456
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "child"
    .parameter "params"

    .prologue
    .line 441
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 862
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 877
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 878
    :cond_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->selectionChanged()V

    .line 879
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOldSelectedPosition:I

    .line 880
    iget-wide v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOldSelectedRowId:J

    .line 882
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 833
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    const/4 v0, 0x0

    .line 838
    .local v0, populated:Z
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 839
    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 844
    :cond_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    .line 845
    .local v1, selectedView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 846
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 849
    :cond_1
    if-nez v0, :cond_3

    .line 850
    if-eqz v1, :cond_2

    .line 851
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 853
    :cond_2
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getCount()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 854
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 857
    :cond_3
    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 708
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 709
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 701
    return-void
.end method

.method findSyncPosition()I
    .locals 20

    .prologue
    .line 893
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mItemCount:I

    .line 895
    .local v3, count:I
    if-nez v3, :cond_1

    .line 896
    const/4 v13, -0x1

    .line 968
    :cond_0
    :goto_0
    return v13

    .line 899
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSyncRowId:J

    .line 900
    .local v10, idToMatch:J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSyncPosition:I

    .line 903
    .local v13, seed:I
    const-wide/high16 v16, -0x8000

    cmp-long v16, v10, v16

    if-nez v16, :cond_2

    .line 904
    const/4 v13, -0x1

    goto :goto_0

    .line 908
    :cond_2
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 909
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 911
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 916
    .local v4, endTime:J
    move v6, v13

    .line 919
    .local v6, first:I
    move v9, v13

    .line 922
    .local v9, last:I
    const/4 v12, 0x0

    .line 932
    .local v12, next:Z
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 933
    .local v2, adapter:Landroid/widget/Adapter;,"TT;"
    if-nez v2, :cond_5

    .line 934
    const/4 v13, -0x1

    goto :goto_0

    .line 952
    .local v7, hitFirst:Z
    .local v8, hitLast:Z
    .local v14, rowId:J
    :cond_3
    if-nez v7, :cond_4

    if-eqz v12, :cond_9

    if-nez v8, :cond_9

    .line 954
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 955
    move v13, v9

    .line 957
    const/4 v12, 0x0

    .line 937
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v14           #rowId:J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_6

    .line 938
    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    .line 939
    .restart local v14       #rowId:J
    cmp-long v16, v14, v10

    if-eqz v16, :cond_0

    .line 944
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_7

    const/4 v8, 0x1

    .line 945
    .restart local v8       #hitLast:Z
    :goto_2
    if-nez v6, :cond_8

    const/4 v7, 0x1

    .line 947
    .restart local v7       #hitFirst:Z
    :goto_3
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 968
    .end local v7           #hitFirst:Z
    .end local v8           #hitLast:Z
    .end local v14           #rowId:J
    :cond_6
    const/4 v13, -0x1

    goto :goto_0

    .line 944
    .restart local v14       #rowId:J
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 945
    .restart local v8       #hitLast:Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 958
    .restart local v7       #hitFirst:Z
    :cond_9
    if-nez v8, :cond_a

    if-nez v12, :cond_5

    if-nez v7, :cond_5

    .line 960
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 961
    move v13, v6

    .line 963
    const/4 v12, 0x1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 545
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mItemCount:I

    return v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .prologue
    .line 628
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 588
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 680
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 681
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public getItemIdAtPosition(I)J
    .locals 4
    .parameter "position"

    .prologue
    .line 685
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 686
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v2, -0x8000

    :goto_0
    return-wide v2

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 598
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final getOnItemClickListener()Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 249
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOnItemClickListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public final getOnItemLongClickListener()Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;
    .locals 1

    .prologue
    .line 312
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOnItemLongClickListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;

    return-object v0
.end method

.method public final getOnItemSelectedListener()Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 356
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOnItemSelectedListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getPositionForView(Landroid/view/View;)I
    .locals 7
    .parameter "view"

    .prologue
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    const/4 v5, -0x1

    .line 558
    move-object v3, p1

    .line 561
    .local v3, listItem:Landroid/view/View;
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_1

    .line 562
    move-object v3, v4

    goto :goto_0

    .line 564
    .end local v4           #v:Landroid/view/View;
    :catch_0
    move-exception v1

    .line 578
    :cond_0
    :goto_1
    return v5

    .line 570
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getChildCount()I

    move-result v0

    .line 571
    .local v0, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_0

    .line 572
    invoke-virtual {p0, v2}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 573
    iget v5, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mFirstPosition:I

    add-int/2addr v5, v2

    goto :goto_1

    .line 571
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 529
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 530
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 531
    .local v1, selection:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    if-ltz v1, :cond_0

    .line 532
    invoke-interface {v0, v1}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 534
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 515
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    const-wide/high16 v0, -0x8000

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 506
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    const/4 v0, -0x1

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 2

    .prologue
    .line 866
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mItemCount:I

    .line 868
    .local v0, count:I
    if-lez v0, :cond_0

    .line 870
    iget-boolean v1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mNeedSync:Z

    if-eqz v1, :cond_0

    .line 871
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mNeedSync:Z

    .line 874
    :cond_0
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 638
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .parameter "position"
    .parameter "lookDown"

    .prologue
    .line 980
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 766
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 767
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectionNotifier:Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 768
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 496
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mLayoutHeight:I

    .line 497
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    const/4 v0, 0x0

    .line 262
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOnItemClickListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->playSoundEffect(I)V

    .line 264
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOnItemClickListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;->onItemClick(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Landroid/view/View;IJ)V

    .line 265
    const/4 v0, 0x1

    .line 268
    :cond_0
    return v0
.end method

.method rememberSyncState()V
    .locals 5

    .prologue
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    const/4 v4, 0x1

    .line 989
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 990
    iput-boolean v4, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mNeedSync:Z

    .line 991
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mLayoutHeight:I

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSyncHeight:J

    .line 993
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 994
    .local v1, v:Landroid/view/View;
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 995
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mFirstPosition:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mFirstPosition:I

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 996
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mFirstPosition:I

    invoke-interface {v0, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSyncRowId:J

    .line 1000
    :goto_0
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mFirstPosition:I

    iput v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSyncPosition:I

    .line 1001
    if-eqz v1, :cond_0

    .line 1002
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    iput v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSpecificTop:I

    .line 1004
    :cond_0
    iput v4, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSyncMode:I

    .line 1006
    .end local v0           #adapter:Landroid/widget/Adapter;,"TT;"
    .end local v1           #v:Landroid/view/View;
    :cond_1
    return-void

    .line 998
    .restart local v0       #adapter:Landroid/widget/Adapter;,"TT;"
    .restart local v1       #v:Landroid/view/View;
    :cond_2
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSyncRowId:J

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 491
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 469
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 481
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 788
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOnItemSelectedListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 789
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_3

    .line 794
    :cond_0
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectionNotifier:Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 795
    new-instance v0, Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;-><init>(Lcom/huewu/pla/lib/internal/PLA_AdapterView;Lcom/huewu/pla/lib/internal/PLA_AdapterView$1;)V

    iput-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectionNotifier:Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mSelectionNotifier:Lcom/huewu/pla/lib/internal/PLA_AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 803
    :cond_2
    :goto_0
    return-void

    .line 799
    :cond_3
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->fireOnSelected()V

    .line 800
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->performAccessibilityActionsOnSelected()V

    goto :goto_0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 3
    .parameter "emptyView"

    .prologue
    .line 613
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iput-object p1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mEmptyView:Landroid/view/View;

    .line 615
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 616
    .local v0, adapter:Landroid/widget/Adapter;,"TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 617
    .local v1, empty:Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->updateEmptyStatus(Z)V

    .line 618
    return-void

    .line 616
    .end local v1           #empty:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 691
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 241
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iput-object p1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOnItemClickListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemClickListener;

    .line 242
    return-void
.end method

.method public setOnItemLongClickListener(Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 301
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->setLongClickable(Z)V

    .line 304
    :cond_0
    iput-object p1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOnItemLongClickListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemLongClickListener;

    .line 305
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 352
    .local p0, this:Lcom/huewu/pla/lib/internal/PLA_AdapterView;,"Lcom/huewu/pla/lib/internal/PLA_AdapterView<TT;>;"
    iput-object p1, p0, Lcom/huewu/pla/lib/internal/PLA_AdapterView;->mOnItemSelectedListener:Lcom/huewu/pla/lib/internal/PLA_AdapterView$OnItemSelectedListener;

    .line 353
    return-void
.end method

.method public abstract setSelection(I)V
.end method
