.class public Lcom/huewu/pla/lib/MultiColumnListView;
.super Lcom/huewu/pla/lib/internal/PLA_ListView;
.source "MultiColumnListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huewu/pla/lib/MultiColumnListView$OnLoadMoreListener;,
        Lcom/huewu/pla/lib/MultiColumnListView$FixedColumn;,
        Lcom/huewu/pla/lib/MultiColumnListView$Column;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLUMN_NUMBER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultiColumnListView"


# instance fields
.field loadMoreListener:Lcom/huewu/pla/lib/MultiColumnListView$OnLoadMoreListener;

.field private loadingMoreComplete:Z

.field private mColumnNumber:I

.field private mColumnPaddingLeft:I

.field private mColumnPaddingRight:I

.field private mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

.field private mFixedColumn:Lcom/huewu/pla/lib/MultiColumnListView$Column;

.field private mFrameRect:Landroid/graphics/Rect;

.field private mItems:Lcom/huewu/pla/lib/ParcelableSparseIntArray;

.field public scroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnNumber:I

    .line 43
    iput-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .line 44
    iput-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFixedColumn:Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .line 45
    new-instance v0, Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    invoke-direct {v0}, Lcom/huewu/pla/lib/ParcelableSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mItems:Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    .line 47
    iput v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnPaddingLeft:I

    .line 48
    iput v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnPaddingRight:I

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFrameRect:Landroid/graphics/Rect;

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->loadingMoreComplete:Z

    .line 456
    new-instance v0, Lcom/huewu/pla/lib/MultiColumnListView$1;

    invoke-direct {v0, p0}, Lcom/huewu/pla/lib/MultiColumnListView$1;-><init>(Lcom/huewu/pla/lib/MultiColumnListView;)V

    iput-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->scroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;

    .line 52
    invoke-direct {p0, v1}, Lcom/huewu/pla/lib/MultiColumnListView;->init(Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/huewu/pla/lib/internal/PLA_ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnNumber:I

    .line 43
    iput-object v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .line 44
    iput-object v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFixedColumn:Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .line 45
    new-instance v0, Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    invoke-direct {v0}, Lcom/huewu/pla/lib/ParcelableSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mItems:Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    .line 47
    iput v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnPaddingLeft:I

    .line 48
    iput v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnPaddingRight:I

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFrameRect:Landroid/graphics/Rect;

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->loadingMoreComplete:Z

    .line 456
    new-instance v0, Lcom/huewu/pla/lib/MultiColumnListView$1;

    invoke-direct {v0, p0}, Lcom/huewu/pla/lib/MultiColumnListView$1;-><init>(Lcom/huewu/pla/lib/MultiColumnListView;)V

    iput-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->scroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;

    .line 57
    invoke-direct {p0, p2}, Lcom/huewu/pla/lib/MultiColumnListView;->init(Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/huewu/pla/lib/internal/PLA_ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnNumber:I

    .line 43
    iput-object v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .line 44
    iput-object v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFixedColumn:Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .line 45
    new-instance v0, Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    invoke-direct {v0}, Lcom/huewu/pla/lib/ParcelableSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mItems:Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    .line 47
    iput v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnPaddingLeft:I

    .line 48
    iput v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnPaddingRight:I

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFrameRect:Landroid/graphics/Rect;

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->loadingMoreComplete:Z

    .line 456
    new-instance v0, Lcom/huewu/pla/lib/MultiColumnListView$1;

    invoke-direct {v0, p0}, Lcom/huewu/pla/lib/MultiColumnListView$1;-><init>(Lcom/huewu/pla/lib/MultiColumnListView;)V

    iput-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->scroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;

    .line 62
    invoke-direct {p0, p2}, Lcom/huewu/pla/lib/MultiColumnListView;->init(Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method

.method static synthetic access$200(Lcom/huewu/pla/lib/MultiColumnListView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->loadingMoreComplete:Z

    return v0
.end method

.method static synthetic access$202(Lcom/huewu/pla/lib/MultiColumnListView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->loadingMoreComplete:Z

    return p1
.end method

.method private getColumnLeft(I)I
    .locals 3
    .parameter "pos"

    .prologue
    const/4 v2, -0x1

    .line 315
    iget-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mItems:Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    invoke-virtual {v1, p1, v2}, Lcom/huewu/pla/lib/ParcelableSparseIntArray;->get(II)I

    move-result v0

    .line 317
    .local v0, colIndex:I
    if-ne v0, v2, :cond_0

    .line 318
    const/4 v1, 0x0

    .line 320
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getColumnLeft()I

    move-result v1

    goto :goto_0
.end method

.method private getColumnWidth(I)I
    .locals 3
    .parameter "pos"

    .prologue
    const/4 v2, -0x1

    .line 324
    iget-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mItems:Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    invoke-virtual {v1, p1, v2}, Lcom/huewu/pla/lib/ParcelableSparseIntArray;->get(II)I

    move-result v0

    .line 326
    .local v0, colIndex:I
    if-ne v0, v2, :cond_0

    .line 327
    const/4 v1, 0x0

    .line 329
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getColumnWidth()I

    move-result v1

    goto :goto_0
.end method

.method private getNextColumn(ZI)Lcom/huewu/pla/lib/MultiColumnListView$Column;
    .locals 5
    .parameter "flow"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 271
    iget-object v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mItems:Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    invoke-virtual {v2, p2, v3}, Lcom/huewu/pla/lib/ParcelableSparseIntArray;->get(II)I

    move-result v0

    .line 272
    .local v0, colIndex:I
    if-eq v0, v3, :cond_0

    .line 273
    iget-object v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    aget-object v2, v2, v0

    .line 288
    :goto_0
    return-object v2

    .line 277
    :cond_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/MultiColumnListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 279
    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 280
    .local v1, lastVisiblePos:I
    iget v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnNumber:I

    if-ge v1, v2, :cond_1

    .line 281
    iget-object v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    aget-object v2, v2, v1

    goto :goto_0

    .line 283
    :cond_1
    if-eqz p1, :cond_2

    .line 285
    invoke-direct {p0}, Lcom/huewu/pla/lib/MultiColumnListView;->gettBottomColumn()Lcom/huewu/pla/lib/MultiColumnListView$Column;

    move-result-object v2

    goto :goto_0

    .line 288
    :cond_2
    invoke-direct {p0}, Lcom/huewu/pla/lib/MultiColumnListView;->getTopColumn()Lcom/huewu/pla/lib/MultiColumnListView$Column;

    move-result-object v2

    goto :goto_0
.end method

.method private getTopColumn()Lcom/huewu/pla/lib/MultiColumnListView$Column;
    .locals 7

    .prologue
    .line 298
    iget-object v5, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 299
    .local v4, result:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    iget-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .local v0, arr$:[Lcom/huewu/pla/lib/MultiColumnListView$Column;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 300
    .local v1, c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    invoke-virtual {v4}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getTop()I

    move-result v5

    invoke-virtual {v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getTop()I

    move-result v6

    if-le v5, v6, :cond_0

    move-object v4, v1

    .line 299
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v1           #c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    :cond_1
    return-object v4
.end method

.method private gettBottomColumn()Lcom/huewu/pla/lib/MultiColumnListView$Column;
    .locals 7

    .prologue
    .line 306
    iget-object v5, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 307
    .local v4, result:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    iget-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .local v0, arr$:[Lcom/huewu/pla/lib/MultiColumnListView$Column;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 308
    .local v1, c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    invoke-virtual {v4}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getBottom()I

    move-result v5

    invoke-virtual {v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getBottom()I

    move-result v6

    if-le v5, v6, :cond_0

    move-object v4, v1

    .line 307
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 311
    .end local v1           #c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    :cond_1
    return-object v4
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 9
    .parameter "attrs"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 68
    iget-object v4, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFrameRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/huewu/pla/lib/MultiColumnListView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 70
    if-nez p1, :cond_0

    .line 71
    iput v8, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnNumber:I

    .line 91
    :goto_0
    iget v4, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnNumber:I

    new-array v4, v4, [Lcom/huewu/pla/lib/MultiColumnListView$Column;

    iput-object v4, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .line 92
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget v4, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnNumber:I

    if-ge v2, v4, :cond_3

    .line 93
    iget-object v4, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    new-instance v5, Lcom/huewu/pla/lib/MultiColumnListView$Column;

    invoke-direct {v5, p0, v2}, Lcom/huewu/pla/lib/MultiColumnListView$Column;-><init>(Lcom/huewu/pla/lib/MultiColumnListView;I)V

    aput-object v5, v4, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 73
    .end local v2           #i:I
    :cond_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/MultiColumnListView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/huewu/pla/R$styleable;->MultiColumnListView:[I

    invoke-virtual {v4, p1, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, a:Landroid/content/res/TypedArray;
    sget v4, Lcom/huewu/pla/R$styleable;->MultiColumnListView_plaLandscapeColumnNumber:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    .line 76
    .local v3, landColNumber:I
    sget v4, Lcom/huewu/pla/R$styleable;->MultiColumnListView_plaColumnNumber:I

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    .line 78
    .local v1, defColNumber:I
    iget-object v4, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v5, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFrameRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_1

    if-eq v3, v6, :cond_1

    .line 79
    iput v3, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnNumber:I

    .line 86
    :goto_2
    sget v4, Lcom/huewu/pla/R$styleable;->MultiColumnListView_plaColumnPaddingLeft:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnPaddingLeft:I

    .line 87
    sget v4, Lcom/huewu/pla/R$styleable;->MultiColumnListView_plaColumnPaddingRight:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnPaddingRight:I

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .line 80
    :cond_1
    if-eq v1, v6, :cond_2

    .line 81
    iput v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnNumber:I

    goto :goto_2

    .line 83
    :cond_2
    iput v8, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnNumber:I

    goto :goto_2

    .line 95
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #defColNumber:I
    .end local v3           #landColNumber:I
    .restart local v2       #i:I
    :cond_3
    new-instance v4, Lcom/huewu/pla/lib/MultiColumnListView$FixedColumn;

    invoke-direct {v4, p0}, Lcom/huewu/pla/lib/MultiColumnListView$FixedColumn;-><init>(Lcom/huewu/pla/lib/MultiColumnListView;)V

    iput-object v4, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFixedColumn:Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .line 96
    return-void
.end method

.method private isHeaderOrFooterPosition(I)Z
    .locals 2
    .parameter "pos"

    .prologue
    .line 293
    iget-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    .line 294
    .local v0, type:I
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getFillChildBottom()I
    .locals 6

    .prologue
    .line 186
    const v5, 0x7fffffff

    .line 187
    .local v5, result:I
    iget-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .local v0, arr$:[Lcom/huewu/pla/lib/MultiColumnListView$Column;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 188
    .local v2, c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    invoke-virtual {v2}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getBottom()I

    move-result v1

    .line 189
    .local v1, bottom:I
    if-le v5, v1, :cond_0

    move v5, v1

    .line 187
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 191
    .end local v1           #bottom:I
    .end local v2           #c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    :cond_1
    return v5
.end method

.method protected getFillChildTop()I
    .locals 6

    .prologue
    .line 197
    const/high16 v4, -0x8000

    .line 198
    .local v4, result:I
    iget-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .local v0, arr$:[Lcom/huewu/pla/lib/MultiColumnListView$Column;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 199
    .local v1, c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    invoke-virtual {v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getTop()I

    move-result v5

    .line 200
    .local v5, top:I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .end local v1           #c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    .end local v5           #top:I
    :cond_0
    return v4
.end method

.method protected getItemBottom(I)I
    .locals 3
    .parameter "pos"

    .prologue
    const/4 v2, -0x1

    .line 253
    invoke-direct {p0, p1}, Lcom/huewu/pla/lib/MultiColumnListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFixedColumn:Lcom/huewu/pla/lib/MultiColumnListView$Column;

    invoke-virtual {v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getTop()I

    move-result v1

    .line 260
    :goto_0
    return v1

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mItems:Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    invoke-virtual {v1, p1, v2}, Lcom/huewu/pla/lib/ParcelableSparseIntArray;->get(II)I

    move-result v0

    .line 257
    .local v0, colIndex:I
    if-ne v0, v2, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/huewu/pla/lib/MultiColumnListView;->getFillChildTop()I

    move-result v1

    goto :goto_0

    .line 260
    :cond_1
    iget-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getTop()I

    move-result v1

    goto :goto_0
.end method

.method protected getItemLeft(I)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/huewu/pla/lib/MultiColumnListView;->isHeaderOrFooterPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFixedColumn:Lcom/huewu/pla/lib/MultiColumnListView$Column;

    invoke-virtual {v0}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getColumnLeft()I

    move-result v0

    .line 234
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/huewu/pla/lib/MultiColumnListView;->getColumnLeft(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getItemTop(I)I
    .locals 3
    .parameter "pos"

    .prologue
    const/4 v2, -0x1

    .line 240
    invoke-direct {p0, p1}, Lcom/huewu/pla/lib/MultiColumnListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFixedColumn:Lcom/huewu/pla/lib/MultiColumnListView$Column;

    invoke-virtual {v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getBottom()I

    move-result v1

    .line 247
    :goto_0
    return v1

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mItems:Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    invoke-virtual {v1, p1, v2}, Lcom/huewu/pla/lib/ParcelableSparseIntArray;->get(II)I

    move-result v0

    .line 244
    .local v0, colIndex:I
    if-ne v0, v2, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/huewu/pla/lib/MultiColumnListView;->getFillChildBottom()I

    move-result v1

    goto :goto_0

    .line 247
    :cond_1
    iget-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getBottom()I

    move-result v1

    goto :goto_0
.end method

.method protected getScrollChildBottom()I
    .locals 6

    .prologue
    .line 209
    const/high16 v5, -0x8000

    .line 210
    .local v5, result:I
    iget-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .local v0, arr$:[Lcom/huewu/pla/lib/MultiColumnListView$Column;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 211
    .local v2, c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    invoke-virtual {v2}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getBottom()I

    move-result v1

    .line 212
    .local v1, bottom:I
    if-ge v5, v1, :cond_0

    move v5, v1

    .line 210
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    .end local v1           #bottom:I
    .end local v2           #c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    :cond_1
    return v5
.end method

.method protected getScrollChildTop()I
    .locals 6

    .prologue
    .line 220
    const v4, 0x7fffffff

    .line 221
    .local v4, result:I
    iget-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .local v0, arr$:[Lcom/huewu/pla/lib/MultiColumnListView$Column;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 222
    .local v1, c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    invoke-virtual {v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getTop()I

    move-result v5

    .line 223
    .local v5, top:I
    if-le v4, v5, :cond_0

    move v4, v5

    .line 221
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 225
    .end local v1           #c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    .end local v5           #top:I
    :cond_1
    return v4
.end method

.method protected modifyFlingInitialVelocity(I)I
    .locals 0
    .parameter "initialVelocity"

    .prologue
    .line 140
    return p1
.end method

.method protected onAdjustChildViews(Z)V
    .locals 9
    .parameter "down"

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/huewu/pla/lib/MultiColumnListView;->getFirstVisiblePosition()I

    move-result v3

    .line 171
    .local v3, firstItem:I
    if-nez p1, :cond_0

    if-nez v3, :cond_0

    .line 172
    iget-object v7, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getTop()I

    move-result v2

    .line 173
    .local v2, firstColumnTop:I
    iget-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .local v0, arr$:[Lcom/huewu/pla/lib/MultiColumnListView$Column;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v1, v0, v4

    .line 174
    .local v1, c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    invoke-virtual {v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getTop()I

    move-result v6

    .line 176
    .local v6, top:I
    sub-int v7, v2, v6

    invoke-virtual {v1, v7}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->offsetTopAndBottom(I)V

    .line 173
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 179
    .end local v0           #arr$:[Lcom/huewu/pla/lib/MultiColumnListView$Column;
    .end local v1           #c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    .end local v2           #firstColumnTop:I
    .end local v4           #i$:I
    .end local v5           #len$:I
    .end local v6           #top:I
    :cond_0
    invoke-super {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onAdjustChildViews(Z)V

    .line 180
    return-void
.end method

.method protected onItemAddedToList(IZ)V
    .locals 3
    .parameter "position"
    .parameter "flow"

    .prologue
    .line 145
    invoke-super {p0, p1, p2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onItemAddedToList(IZ)V

    .line 147
    invoke-direct {p0, p1}, Lcom/huewu/pla/lib/MultiColumnListView;->isHeaderOrFooterPosition(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 148
    invoke-direct {p0, p2, p1}, Lcom/huewu/pla/lib/MultiColumnListView;->getNextColumn(ZI)Lcom/huewu/pla/lib/MultiColumnListView$Column;

    move-result-object v0

    .line 149
    .local v0, col:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    iget-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mItems:Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    invoke-virtual {v0}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->getIndex()I

    move-result v2

    invoke-virtual {v1, p1, v2}, Lcom/huewu/pla/lib/ParcelableSparseIntArray;->append(II)V

    .line 151
    .end local v0           #col:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 112
    invoke-super/range {p0 .. p5}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onLayout(ZIIII)V

    .line 114
    return-void
.end method

.method protected onLayoutSync(I)V
    .locals 4
    .parameter "syncPos"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .local v0, arr$:[Lcom/huewu/pla/lib/MultiColumnListView$Column;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 156
    .local v1, c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    invoke-virtual {v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->save()V

    .line 155
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 158
    .end local v1           #c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    :cond_0
    return-void
.end method

.method protected onLayoutSyncFinished(I)V
    .locals 4
    .parameter "syncPos"

    .prologue
    .line 162
    iget-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    .local v0, arr$:[Lcom/huewu/pla/lib/MultiColumnListView$Column;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 163
    .local v1, c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    invoke-virtual {v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->clear()V

    .line 162
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 165
    .end local v1           #c:Lcom/huewu/pla/lib/MultiColumnListView$Column;
    :cond_0
    return-void
.end method

.method public onLoadMoreComplete()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->loadingMoreComplete:Z

    .line 447
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onMeasure(II)V

    .line 119
    invoke-virtual {p0}, Lcom/huewu/pla/lib/MultiColumnListView;->getMeasuredWidth()I

    move-result v2

    iget-object v3, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnPaddingLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnPaddingRight:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnNumber:I

    div-int v1, v2, v3

    .line 121
    .local v1, width:I
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnNumber:I

    if-ge v0, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    aget-object v2, v2, v0

    invoke-static {v2, v1}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->access$002(Lcom/huewu/pla/lib/MultiColumnListView$Column;I)I

    .line 123
    iget-object v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumns:[Lcom/huewu/pla/lib/MultiColumnListView$Column;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnPaddingLeft:I

    add-int/2addr v3, v4

    mul-int v4, v1, v0

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->access$102(Lcom/huewu/pla/lib/MultiColumnListView$Column;I)I

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFixedColumn:Lcom/huewu/pla/lib/MultiColumnListView$Column;

    iget-object v3, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-static {v2, v3}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->access$102(Lcom/huewu/pla/lib/MultiColumnListView$Column;I)I

    .line 127
    iget-object v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mFixedColumn:Lcom/huewu/pla/lib/MultiColumnListView$Column;

    invoke-virtual {p0}, Lcom/huewu/pla/lib/MultiColumnListView;->getMeasuredWidth()I

    move-result v3

    invoke-static {v2, v3}, Lcom/huewu/pla/lib/MultiColumnListView$Column;->access$002(Lcom/huewu/pla/lib/MultiColumnListView$Column;I)I

    .line 128
    return-void
.end method

.method protected onMeasureChild(Landroid/view/View;III)V
    .locals 2
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/MultiColumnListView;->isFixedView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p1, p3, p4}, Landroid/view/View;->measure(II)V

    .line 136
    :goto_0
    return-void

    .line 135
    :cond_0
    const/high16 v0, 0x4000

    invoke-direct {p0, p2}, Lcom/huewu/pla/lib/MultiColumnListView;->getColumnWidth(I)I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p1, v0, p4}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 499
    instance-of v1, p1, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 500
    check-cast v0, Landroid/os/Bundle;

    .line 501
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "items"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    iput-object v1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mItems:Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    .line 502
    const-string v1, "instanceState"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 504
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-super {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 505
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 491
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 492
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "instanceState"

    invoke-super {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 493
    const-string v1, "items"

    iget-object v2, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mItems:Lcom/huewu/pla/lib/ParcelableSparseIntArray;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 494
    return-object v0
.end method

.method public setColumnPaddingLeft(I)V
    .locals 0
    .parameter "columnPaddingLeft"

    .prologue
    .line 99
    iput p1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnPaddingLeft:I

    .line 100
    return-void
.end method

.method public setColumnPaddingRight(I)V
    .locals 0
    .parameter "columnPaddingRight"

    .prologue
    .line 103
    iput p1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->mColumnPaddingRight:I

    .line 104
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/huewu/pla/lib/MultiColumnListView$OnLoadMoreListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 482
    if-eqz p1, :cond_0

    .line 483
    iput-object p1, p0, Lcom/huewu/pla/lib/MultiColumnListView;->loadMoreListener:Lcom/huewu/pla/lib/MultiColumnListView$OnLoadMoreListener;

    .line 484
    iget-object v0, p0, Lcom/huewu/pla/lib/MultiColumnListView;->scroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/huewu/pla/lib/MultiColumnListView;->setOnScrollListener(Lcom/huewu/pla/lib/internal/PLA_AbsListView$OnScrollListener;)V

    .line 486
    :cond_0
    return-void
.end method
