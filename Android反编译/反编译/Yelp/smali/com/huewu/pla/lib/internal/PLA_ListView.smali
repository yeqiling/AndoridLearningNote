.class public Lcom/huewu/pla/lib/internal/PLA_ListView;
.super Lcom/huewu/pla/lib/internal/PLA_AbsListView;
.source "PLA_ListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    }
.end annotation


# static fields
.field private static final MAX_SCROLL_FACTOR:F = 0.33f

.field static final NO_POSITION:I = -0x1


# instance fields
.field private mAreAllItemsSelectable:Z

.field private mClipDivider:Z

.field private mContentPaint:Landroid/graphics/Paint;

.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field private mDividerIsOpaque:Z

.field private mDividerPaint:Landroid/graphics/Paint;

.field private mFooterDividersEnabled:Z

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderDividersEnabled:Z

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCacheColorOpaque:Z

.field private mItemsCanFocus:Z

.field mOverScrollFooter:Landroid/graphics/drawable/Drawable;

.field mOverScrollHeader:Landroid/graphics/drawable/Drawable;

.field private final mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 128
    sget v0, Lcom/huewu/pla/R$attr;->listViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 129
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 98
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 99
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 114
    iput-boolean v7, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAreAllItemsSelectable:Z

    .line 116
    iput-boolean v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemsCanFocus:Z

    .line 119
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mTempRect:Landroid/graphics/Rect;

    .line 121
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mContentPaint:Landroid/graphics/Paint;

    .line 134
    sget-object v5, Lcom/huewu/pla/R$styleable;->ListView:[I

    invoke-virtual {p1, p2, v5, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 143
    .local v0, a:Landroid/content/res/TypedArray;
    sget v5, Lcom/huewu/pla/R$styleable;->ListView_overScrollHeader:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 145
    .local v4, osHeader:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 146
    invoke-virtual {p0, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 149
    :cond_0
    sget v5, Lcom/huewu/pla/R$styleable;->ListView_overScrollFooter:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 151
    .local v3, osFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_1

    .line 152
    invoke-virtual {p0, v3}, Lcom/huewu/pla/lib/internal/PLA_ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_1
    sget v5, Lcom/huewu/pla/R$styleable;->ListView_dividerHeight:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 158
    .local v2, dividerHeight:I
    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {p0, v2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->setDividerHeight(I)V

    .line 162
    :cond_2
    sget v5, Lcom/huewu/pla/R$styleable;->ListView_headerDividersEnabled:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderDividersEnabled:Z

    .line 163
    sget v5, Lcom/huewu/pla/R$styleable;->ListView_footerDividersEnabled:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFooterDividersEnabled:Z

    .line 165
    sget v5, Lcom/huewu/pla/R$styleable;->ListView_plaContentBackground:I

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 166
    sget v5, Lcom/huewu/pla/R$styleable;->ListView_plaContentBackground:I

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 167
    .local v1, contentBackgroundColor:I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mContentPaint:Landroid/graphics/Paint;

    .line 168
    iget-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mContentPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 171
    .end local v1           #contentBackgroundColor:I
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 172
    return-void
.end method

.method private addViewAbove(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 1651
    add-int/lit8 v2, p2, -0x1

    .line 1652
    .local v2, abovePosition:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addViewAbove:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huewu/pla/lib/DebugUtil;->i(Ljava/lang/String;)V

    .line 1653
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1654
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iget v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    sub-int v3, v0, v5

    .line 1655
    .local v3, edgeOfNewChild:I
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v4

    move-object v0, p0

    move v6, v4

    invoke-direct/range {v0 .. v7}, Lcom/huewu/pla/lib/internal/PLA_ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 1657
    return-object v1
.end method

.method private addViewBelow(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter "theView"
    .parameter "position"

    .prologue
    const/4 v6, 0x0

    .line 1661
    add-int/lit8 v2, p2, 0x1

    .line 1662
    .local v2, belowPosition:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addViewBelow:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huewu/pla/lib/DebugUtil;->i(Ljava/lang/String;)V

    .line 1663
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1664
    .local v1, view:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    add-int v3, v0, v4

    .line 1665
    .local v3, edgeOfNewChild:I
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mIsScrap:[Z

    aget-boolean v7, v0, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/huewu/pla/lib/internal/PLA_ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    .line 1667
    return-object v1
.end method

.method private adjustViewsUpOrDown()V
    .locals 6

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v0

    .line 191
    .local v0, childCount:I
    if-lez v0, :cond_2

    .line 193
    iget-boolean v4, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mStackFromBottom:Z

    if-nez v4, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollChildTop()I

    move-result v2

    .line 199
    .local v2, firstTop:I
    iget-object v4, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v4

    .line 200
    .local v1, delta:I
    iget v4, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    if-eqz v4, :cond_0

    .line 203
    iget v4, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    sub-int/2addr v1, v4

    .line 205
    :cond_0
    if-gez v1, :cond_1

    .line 207
    const/4 v1, 0x0

    .line 227
    .end local v2           #firstTop:I
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 229
    neg-int v4, v1

    invoke-virtual {p0, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->tryOffsetChildrenTopAndBottom(I)V

    .line 232
    .end local v1           #delta:I
    :cond_2
    return-void

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollChildBottom()I

    move-result v3

    .line 214
    .local v3, lastBottom:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    sub-int v1, v3, v4

    .line 216
    .restart local v1       #delta:I
    iget v4, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/2addr v4, v0

    iget v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    if-ge v4, v5, :cond_4

    .line 219
    iget v4, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    add-int/2addr v1, v4

    .line 222
    :cond_4
    if-lez v1, :cond_1

    .line 223
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private clearRecycledState(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 500
    .local p1, infos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;>;"
    if-eqz p1, :cond_1

    .line 501
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 503
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 504
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;

    iget-object v0, v4, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 505
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    .line 506
    .local v3, p:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    if-eqz v3, :cond_0

    .line 507
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 503
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 511
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #p:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    :cond_1
    return-void
.end method

.method private correctTooHigh(I)V
    .locals 8
    .parameter "childCount"

    .prologue
    .line 978
    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/2addr v6, p1

    add-int/lit8 v4, v6, -0x1

    .line 979
    .local v4, lastPosition:I
    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_2

    if-lez p1, :cond_2

    .line 986
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollChildBottom()I

    move-result v3

    .line 990
    .local v3, lastBottom:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v6, v7

    .line 993
    .local v1, end:I
    sub-int v0, v1, v3

    .line 997
    .local v0, bottomOffset:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollChildTop()I

    move-result v2

    .line 1001
    .local v2, firstTop:I
    if-lez v0, :cond_2

    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    if-gtz v6, :cond_0

    iget-object v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-ge v2, v6, :cond_2

    .line 1002
    :cond_0
    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    if-nez v6, :cond_1

    .line 1004
    iget-object v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v2

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1008
    :cond_1
    invoke-virtual {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->tryOffsetChildrenTopAndBottom(I)V

    .line 1009
    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    if-lez v6, :cond_2

    .line 1012
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollChildTop()I

    move-result v5

    .line 1013
    .local v5, newFirstTop:I
    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getFillChildTop()I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillUp(II)Landroid/view/View;

    .line 1015
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->adjustViewsUpOrDown()V

    .line 1020
    .end local v0           #bottomOffset:I
    .end local v1           #end:I
    .end local v2           #firstTop:I
    .end local v3           #lastBottom:I
    .end local v5           #newFirstTop:I
    :cond_2
    return-void
.end method

.method private correctTooLow(I)V
    .locals 9
    .parameter "childCount"

    .prologue
    .line 1032
    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    if-nez v6, :cond_2

    if-lez p1, :cond_2

    .line 1035
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollChildTop()I

    move-result v1

    .line 1038
    .local v1, firstTop:I
    iget-object v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v6, Landroid/graphics/Rect;->top:I

    .line 1041
    .local v4, start:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v6, v7

    .line 1044
    .local v0, end:I
    sub-int v5, v1, v4

    .line 1045
    .local v5, topOffset:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollChildBottom()I

    move-result v2

    .line 1047
    .local v2, lastBottom:I
    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/2addr v6, p1

    add-int/lit8 v3, v6, -0x1

    .line 1051
    .local v3, lastPosition:I
    if-lez v5, :cond_2

    .line 1052
    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-lt v3, v6, :cond_0

    if-le v2, v0, :cond_3

    .line 1053
    :cond_0
    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_1

    .line 1055
    sub-int v6, v2, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1058
    :cond_1
    neg-int v6, v5

    invoke-virtual {p0, v6}, Lcom/huewu/pla/lib/internal/PLA_ListView;->tryOffsetChildrenTopAndBottom(I)V

    .line 1059
    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_2

    .line 1062
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getFillChildBottom()I

    move-result v7

    iget v8, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    add-int/2addr v7, v8

    invoke-direct {p0, v6, v7}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillDown(II)Landroid/view/View;

    .line 1064
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->adjustViewsUpOrDown()V

    .line 1071
    .end local v0           #end:I
    .end local v1           #firstTop:I
    .end local v2           #lastBottom:I
    .end local v3           #lastPosition:I
    .end local v4           #start:I
    .end local v5           #topOffset:I
    :cond_2
    :goto_0
    return-void

    .line 1066
    .restart local v0       #end:I
    .restart local v1       #firstTop:I
    .restart local v2       #lastBottom:I
    .restart local v3       #lastPosition:I
    .restart local v4       #start:I
    .restart local v5       #topOffset:I
    :cond_3
    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_2

    .line 1067
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->adjustViewsUpOrDown()V

    goto :goto_0
.end method

.method private drawContentBackground(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 1902
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getHeaderViewsCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 1903
    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mTempRect:Landroid/graphics/Rect;

    .line 1904
    .local v2, rect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 1905
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getRight()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 1906
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1908
    .local v0, firstVisibleView:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->isHeaderView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1909
    iget-object v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;

    iget-object v1, v3, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 1910
    .local v1, lastHeader:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 1913
    .end local v1           #lastHeader:Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getBottom()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 1914
    iget-object v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mContentPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1916
    .end local v0           #firstVisibleView:Landroid/view/View;
    .end local v2           #rect:Landroid/graphics/Rect;
    :cond_0
    return-void

    .line 1912
    .restart local v0       #firstVisibleView:Landroid/view/View;
    .restart local v2       #rect:Landroid/graphics/Rect;
    :cond_1
    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0
.end method

.method private fillDown(II)Landroid/view/View;
    .locals 4
    .parameter "pos"
    .parameter "nextTop"

    .prologue
    .line 675
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fill down: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huewu/pla/lib/DebugUtil;->i(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v1, v2

    .line 678
    .local v0, end:I
    :goto_0
    if-ge p2, v0, :cond_0

    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    if-ge p1, v1, :cond_0

    .line 680
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getItemTop(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/huewu/pla/lib/internal/PLA_ListView;->makeAndAddView(IIZZ)Landroid/view/View;

    .line 681
    add-int/lit8 p1, p1, 0x1

    .line 682
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getFillChildBottom()I

    move-result v1

    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    add-int p2, v1, v2

    goto :goto_0

    .line 684
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private fillFromTop(I)Landroid/view/View;
    .locals 2
    .parameter "nextTop"

    .prologue
    .line 723
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    .line 724
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    .line 725
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    if-gez v0, :cond_0

    .line 726
    const/4 v0, 0x0

    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    .line 728
    :cond_0
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    invoke-direct {p0, v0, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillDown(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private fillSpecific(II)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "top"

    .prologue
    .line 937
    iget-boolean v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDataChanged:Z

    if-eqz v3, :cond_0

    .line 938
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fill specific: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huewu/pla/lib/DebugUtil;->i(Ljava/lang/String;)V

    .line 940
    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->makeAndAddView(IIZZ)Landroid/view/View;

    move-result-object v2

    .line 942
    .local v2, temp:Landroid/view/View;
    iput p1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    .line 944
    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    .line 945
    .local v1, dividerHeight:I
    iget-boolean v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mStackFromBottom:Z

    if-nez v3, :cond_2

    .line 946
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getFillChildTop()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillUp(II)Landroid/view/View;

    .line 948
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->adjustViewsUpOrDown()V

    .line 949
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getFillChildBottom()I

    move-result v4

    iget v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    add-int/2addr v4, v5

    invoke-direct {p0, v3, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillDown(II)Landroid/view/View;

    .line 950
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v0

    .line 951
    .local v0, childCount:I
    if-lez v0, :cond_1

    .line 952
    invoke-direct {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->correctTooHigh(I)V

    .line 965
    :cond_1
    :goto_0
    const/4 v3, 0x0

    return-object v3

    .line 955
    .end local v0           #childCount:I
    :cond_2
    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {p0, v3, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillDown(II)Landroid/view/View;

    .line 957
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->adjustViewsUpOrDown()V

    .line 958
    add-int/lit8 v3, p1, -0x1

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getFillChildTop()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillUp(II)Landroid/view/View;

    .line 959
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v0

    .line 960
    .restart local v0       #childCount:I
    if-lez v0, :cond_1

    .line 961
    invoke-direct {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method private fillSynced(I[I)V
    .locals 5
    .parameter "position"
    .parameter "specificTops"

    .prologue
    .line 1231
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 1232
    add-int v1, p1, v0

    aget v2, p2, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->makeAndAddView(IIZZ)Landroid/view/View;

    .line 1233
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->adjustViewsUpOrDown()V

    .line 1231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1235
    :cond_0
    iput p1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    .line 1236
    return-void
.end method

.method private fillUp(II)Landroid/view/View;
    .locals 4
    .parameter "pos"
    .parameter "nextBottom"

    .prologue
    const/4 v3, 0x0

    .line 699
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fill up: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huewu/pla/lib/DebugUtil;->i(Ljava/lang/String;)V

    .line 701
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v1, Landroid/graphics/Rect;->top:I

    .line 702
    .local v0, end:I
    :goto_0
    if-le p2, v0, :cond_0

    if-ltz p1, :cond_0

    .line 704
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getItemBottom(I)I

    move-result v1

    invoke-direct {p0, p1, v1, v3, v3}, Lcom/huewu/pla/lib/internal/PLA_ListView;->makeAndAddView(IIZZ)Landroid/view/View;

    .line 706
    add-int/lit8 p1, p1, -0x1

    .line 707
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getItemBottom(I)I

    move-result p2

    goto :goto_0

    .line 710
    :cond_0
    add-int/lit8 v1, p1, 0x1

    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    .line 711
    const/4 v1, 0x0

    return-object v1
.end method

.method private isHeaderView(Landroid/view/View;)Z
    .locals 3
    .parameter "view"

    .prologue
    .line 1919
    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;

    .line 1920
    .local v1, info:Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    iget-object v2, v1, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v2, p1, :cond_0

    .line 1921
    const/4 v2, 0x1

    .line 1923
    .end local v1           #info:Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private makeAndAddView(IIZZ)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "childrenBottomOrTop"
    .parameter "flow"
    .parameter "selected"

    .prologue
    .line 1256
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-virtual {v0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->getActiveView(I)Landroid/view/View;

    move-result-object v1

    .line 1259
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1268
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getItemLeft(I)I

    move-result v5

    .line 1269
    .local v5, childrenLeft:I
    const/4 v7, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/huewu/pla/lib/internal/PLA_ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1286
    .end local v1           #child:Landroid/view/View;
    .local v8, child:Landroid/view/View;
    :goto_0
    return-object v8

    .line 1276
    .end local v5           #childrenLeft:I
    .end local v8           #child:Landroid/view/View;
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onItemAddedToList(IZ)V

    .line 1277
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getItemLeft(I)I

    move-result v5

    .line 1280
    .restart local v5       #childrenLeft:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeAndAddView:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huewu/pla/lib/DebugUtil;->i(Ljava/lang/String;)V

    .line 1281
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mIsScrap:[Z

    invoke-virtual {p0, p1, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v1

    .line 1284
    .restart local v1       #child:Landroid/view/View;
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mIsScrap:[Z

    const/4 v2, 0x0

    aget-boolean v7, v0, v2

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v0 .. v7}, Lcom/huewu/pla/lib/internal/PLA_ListView;->setupChild(Landroid/view/View;IIZIZZ)V

    move-object v8, v1

    .line 1286
    .end local v1           #child:Landroid/view/View;
    .restart local v8       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private measureScrapChild(Landroid/view/View;II)V
    .locals 7
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"

    .prologue
    const/4 v6, 0x0

    .line 780
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    .line 781
    .local v3, p:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    if-nez v3, :cond_0

    .line 782
    new-instance v3, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    .end local v3           #p:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5, v6}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;-><init>(III)V

    .line 784
    .restart local v3       #p:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    :cond_0
    iget-object v4, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v4, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    iput v4, v3, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->viewType:I

    .line 787
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->forceAdd:Z

    .line 789
    iget-object v4, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v3, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->width:I

    invoke-static {p3, v4, v5}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 791
    .local v1, childWidthSpec:I
    iget v2, v3, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->height:I

    .line 793
    .local v2, lpHeight:I
    if-lez v2, :cond_1

    .line 794
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 798
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 799
    return-void

    .line 796
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "v"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 336
    .local p2, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 337
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 338
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;

    .line 339
    .local v1, info:Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    iget-object v3, v1, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_1

    .line 340
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 344
    .end local v1           #info:Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    :cond_0
    return-void

    .line 337
    .restart local v1       #info:Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scrollListItemsBy(I)V
    .locals 12
    .parameter "amount"

    .prologue
    const/4 v11, 0x0

    .line 1565
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->tryOffsetChildrenTopAndBottom(I)V

    .line 1567
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v9, v10

    .line 1568
    .local v5, listBottom:I
    iget-object v9, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v9, Landroid/graphics/Rect;->top:I

    .line 1569
    .local v6, listTop:I
    iget-object v8, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    .line 1571
    .local v8, recycleBin:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
    if-gez p1, :cond_3

    .line 1575
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getLastChild()Landroid/view/View;

    move-result-object v1

    .line 1576
    .local v1, last:Landroid/view/View;
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v7

    .line 1579
    .local v7, numChildren:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_0

    .line 1580
    iget v9, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/2addr v9, v7

    add-int/lit8 v3, v9, -0x1

    .line 1581
    .local v3, lastVisiblePosition:I
    iget v9, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    add-int/lit8 v9, v9, -0x1

    if-ge v3, v9, :cond_0

    .line 1582
    invoke-direct {p0, v1, v3}, Lcom/huewu/pla/lib/internal/PLA_ListView;->addViewBelow(Landroid/view/View;I)Landroid/view/View;

    .line 1583
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getLastChild()Landroid/view/View;

    move-result-object v1

    .line 1584
    add-int/lit8 v7, v7, 0x1

    .line 1588
    goto :goto_0

    .line 1593
    .end local v3           #lastVisiblePosition:I
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v5, :cond_1

    .line 1595
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v9

    sub-int v9, v5, v9

    invoke-virtual {p0, v9}, Lcom/huewu/pla/lib/internal/PLA_ListView;->tryOffsetChildrenTopAndBottom(I)V

    .line 1599
    :cond_1
    invoke-virtual {p0, v11}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1600
    .local v0, first:Landroid/view/View;
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v9, v6, :cond_7

    .line 1601
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    .line 1602
    .local v4, layoutParams:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    iget v9, v4, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1603
    invoke-virtual {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 1604
    invoke-virtual {v8, v0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1608
    :goto_2
    invoke-virtual {p0, v11}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1609
    iget v9, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    goto :goto_1

    .line 1606
    :cond_2
    invoke-virtual {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_2

    .line 1613
    .end local v0           #first:Landroid/view/View;
    .end local v1           #last:Landroid/view/View;
    .end local v4           #layoutParams:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    .end local v7           #numChildren:I
    :cond_3
    invoke-virtual {p0, v11}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1616
    .restart local v0       #first:Landroid/view/View;
    :goto_3
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_4

    iget v9, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    if-lez v9, :cond_4

    .line 1617
    iget v9, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    invoke-direct {p0, v0, v9}, Lcom/huewu/pla/lib/internal/PLA_ListView;->addViewAbove(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 1618
    iget v9, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/lit8 v9, v9, -0x1

    iput v9, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    goto :goto_3

    .line 1623
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v6, :cond_5

    .line 1625
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int v9, v6, v9

    invoke-virtual {p0, v9}, Lcom/huewu/pla/lib/internal/PLA_ListView;->tryOffsetChildrenTopAndBottom(I)V

    .line 1628
    :cond_5
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .line 1629
    .local v2, lastIndex:I
    invoke-virtual {p0, v2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1632
    .restart local v1       #last:Landroid/view/View;
    :goto_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    if-le v9, v5, :cond_7

    .line 1633
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    .line 1634
    .restart local v4       #layoutParams:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    iget v9, v4, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v8, v9}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1635
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->detachViewFromParent(Landroid/view/View;)V

    .line 1636
    invoke-virtual {v8, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1640
    :goto_5
    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1641
    goto :goto_4

    .line 1638
    :cond_6
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_5

    .line 1643
    .end local v2           #lastIndex:I
    .end local v4           #layoutParams:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    :cond_7
    return-void
.end method

.method private setupChild(Landroid/view/View;IIZIZZ)V
    .locals 26
    .parameter "child"
    .parameter "position"
    .parameter "y"
    .parameter "flowDown"
    .parameter "childrenLeft"
    .parameter "selected"
    .parameter "recycled"

    .prologue
    .line 1313
    if-eqz p6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->shouldShowSelector()Z

    move-result v5

    if-eqz v5, :cond_7

    const/16 v16, 0x1

    .line 1314
    .local v16, isSelected:Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v5

    move/from16 v0, v16

    if-eq v0, v5, :cond_8

    const/16 v24, 0x1

    .line 1315
    .local v24, updateChildSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mTouchMode:I

    move/from16 v18, v0

    .line 1316
    .local v18, mode:I
    if-lez v18, :cond_9

    const/4 v5, 0x3

    move/from16 v0, v18

    if-ge v0, v5, :cond_9

    move-object/from16 v0, p0

    iget v5, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mMotionPosition:I

    move/from16 v0, p2

    if-ne v5, v0, :cond_9

    const/4 v15, 0x1

    .line 1318
    .local v15, isPressed:Z
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isPressed()Z

    move-result v5

    if-eq v15, v5, :cond_a

    const/16 v23, 0x1

    .line 1319
    .local v23, updateChildPressed:Z
    :goto_3
    if-eqz p7, :cond_0

    if-nez v24, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_b

    :cond_0
    const/16 v19, 0x1

    .line 1323
    .local v19, needToMeasure:Z
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    .line 1324
    .local v22, p:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    if-nez v22, :cond_1

    .line 1325
    new-instance v22, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    .end local v22           #p:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    const/4 v5, -0x1

    const/4 v6, -0x2

    const/4 v7, 0x0

    move-object/from16 v0, v22

    invoke-direct {v0, v5, v6, v7}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;-><init>(III)V

    .line 1328
    .restart local v22       #p:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    move/from16 v0, p2

    invoke-interface {v5, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    move-object/from16 v0, v22

    iput v5, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->viewType:I

    .line 1329
    move/from16 v0, p2

    move-object/from16 v1, v22

    iput v0, v1, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->scrappedFromPosition:I

    .line 1331
    if-eqz p7, :cond_2

    move-object/from16 v0, v22

    iget-boolean v5, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->forceAdd:Z

    if-eqz v5, :cond_3

    :cond_2
    move-object/from16 v0, v22

    iget-boolean v5, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->recycledHeaderFooter:Z

    if-eqz v5, :cond_d

    move-object/from16 v0, v22

    iget v5, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->viewType:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_d

    .line 1333
    :cond_3
    if-eqz p4, :cond_c

    const/4 v5, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v5, v2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1342
    :goto_6
    if-eqz v24, :cond_4

    .line 1343
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 1346
    :cond_4
    if-eqz v23, :cond_5

    .line 1347
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/View;->setPressed(Z)V

    .line 1350
    :cond_5
    if-eqz v19, :cond_11

    .line 1351
    move-object/from16 v0, p0

    iget v5, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mWidthMeasureSpec:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    move-object/from16 v0, v22

    iget v7, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->width:I

    invoke-static {v5, v6, v7}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v13

    .line 1353
    .local v13, childWidthSpec:I
    move-object/from16 v0, v22

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->height:I

    move/from16 v17, v0

    .line 1355
    .local v17, lpHeight:I
    if-lez v17, :cond_10

    .line 1356
    const/high16 v5, 0x4000

    move/from16 v0, v17

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 1361
    .local v12, childHeightSpec:I
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13, v12}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onMeasureChild(Landroid/view/View;III)V

    .line 1367
    .end local v12           #childHeightSpec:I
    .end local v13           #childWidthSpec:I
    .end local v17           #lpHeight:I
    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v25

    .line 1368
    .local v25, w:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    .line 1369
    .local v14, h:I
    if-eqz p4, :cond_12

    move/from16 v9, p3

    .line 1371
    .local v9, childTop:I
    :goto_9
    if-eqz v19, :cond_13

    .line 1372
    add-int v10, p5, v25

    .line 1373
    .local v10, childRight:I
    add-int v11, v9, v14

    .local v11, childBottom:I
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p5

    .line 1375
    invoke-virtual/range {v5 .. v11}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onLayoutChild(Landroid/view/View;IIIII)V

    .line 1382
    .end local v10           #childRight:I
    .end local v11           #childBottom:I
    :goto_a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mCachingStarted:Z

    if-eqz v5, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isDrawingCacheEnabled()Z

    move-result v5

    if-nez v5, :cond_6

    .line 1383
    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1385
    :cond_6
    return-void

    .line 1313
    .end local v9           #childTop:I
    .end local v14           #h:I
    .end local v15           #isPressed:Z
    .end local v16           #isSelected:Z
    .end local v18           #mode:I
    .end local v19           #needToMeasure:Z
    .end local v22           #p:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    .end local v23           #updateChildPressed:Z
    .end local v24           #updateChildSelected:Z
    .end local v25           #w:I
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1314
    .restart local v16       #isSelected:Z
    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_1

    .line 1316
    .restart local v18       #mode:I
    .restart local v24       #updateChildSelected:Z
    :cond_9
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 1318
    .restart local v15       #isPressed:Z
    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_3

    .line 1319
    .restart local v23       #updateChildPressed:Z
    :cond_b
    const/16 v19, 0x0

    goto/16 :goto_4

    .line 1333
    .restart local v19       #needToMeasure:Z
    .restart local v22       #p:Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_5

    .line 1335
    :cond_d
    const/4 v5, 0x0

    move-object/from16 v0, v22

    iput-boolean v5, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->forceAdd:Z

    .line 1336
    move-object/from16 v0, v22

    iget v5, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->viewType:I

    const/4 v6, -0x2

    if-ne v5, v6, :cond_e

    .line 1337
    const/4 v5, 0x1

    move-object/from16 v0, v22

    iput-boolean v5, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 1339
    :cond_e
    if-eqz p4, :cond_f

    const/4 v5, -0x1

    :goto_b
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v5, v2, v6}, Lcom/huewu/pla/lib/internal/PLA_ListView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    goto/16 :goto_6

    :cond_f
    const/4 v5, 0x0

    goto :goto_b

    .line 1358
    .restart local v13       #childWidthSpec:I
    .restart local v17       #lpHeight:I
    :cond_10
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .restart local v12       #childHeightSpec:I
    goto :goto_7

    .line 1364
    .end local v12           #childHeightSpec:I
    .end local v13           #childWidthSpec:I
    .end local v17           #lpHeight:I
    :cond_11
    invoke-virtual/range {p0 .. p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->cleanupLayoutState(Landroid/view/View;)V

    goto :goto_8

    .line 1369
    .restart local v14       #h:I
    .restart local v25       #w:I
    :cond_12
    sub-int v9, p3, v14

    goto :goto_9

    .line 1377
    .restart local v9       #childTop:I
    :cond_13
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v20, p5, v5

    .line 1378
    .local v20, offsetLeft:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v21, v9, v5

    .line 1379
    .local v21, offsetTop:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onOffsetChild(Landroid/view/View;III)V

    goto :goto_a
.end method

.method private showingBottomFadingEdge()Z
    .locals 6

    .prologue
    .line 526
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v1

    .line 527
    .local v1, childCount:I
    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p0, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 528
    .local v0, bottomOfBottomChild:I
    iget v4, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/2addr v4, v1

    add-int/lit8 v2, v4, -0x1

    .line 531
    .local v2, lastVisiblePosition:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v4, v5

    .line 533
    .local v3, listBottom:I
    iget v4, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    add-int/lit8 v4, v4, -0x1

    if-lt v2, v4, :cond_0

    if-ge v0, v3, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private showingTopFadingEdge()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 518
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollY()I

    move-result v2

    iget-object v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    add-int v0, v2, v3

    .line 519
    .local v0, listTop:I
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    if-le v2, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 384
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 385
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 2
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 360
    new-instance v0, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;-><init>(Lcom/huewu/pla/lib/internal/PLA_ListView;)V

    .line 361
    .local v0, info:Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    iput-object p1, v0, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 362
    iput-object p2, v0, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 363
    iput-boolean p3, v0, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;->isSelectable:Z

    .line 364
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDataSetObserver:Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDataSetObserver:Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 371
    :cond_0
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 273
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 274
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 3
    .parameter "v"
    .parameter "data"
    .parameter "isSelectable"

    .prologue
    .line 249
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add header view to list -- setAdapter has already been called."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    :cond_0
    new-instance v0, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;

    invoke-direct {v0, p0}, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;-><init>(Lcom/huewu/pla/lib/internal/PLA_ListView;)V

    .line 255
    .local v0, info:Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    iput-object p1, v0, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;->view:Landroid/view/View;

    .line 256
    iput-object p2, v0, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 257
    iput-boolean p3, v0, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;->isSelectable:Z

    .line 258
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 1420
    invoke-super {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearChoices()V
    .locals 0

    .prologue
    .line 2245
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 33
    .parameter "canvas"

    .prologue
    .line 1752
    move-object/from16 v0, p0

    iget v10, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    .line 1753
    .local v10, dividerHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    move-object/from16 v26, v0

    .line 1754
    .local v26, overscrollHeader:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    move-object/from16 v25, v0

    .line 1755
    .local v25, overscrollFooter:Landroid/graphics/drawable/Drawable;
    if-eqz v26, :cond_8

    const/4 v13, 0x1

    .line 1756
    .local v13, drawOverscrollHeader:Z
    :goto_0
    if-eqz v25, :cond_9

    const/4 v12, 0x1

    .line 1757
    .local v12, drawOverscrollFooter:Z
    :goto_1
    if-lez v10, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v31, v0

    if-eqz v31, :cond_a

    const/4 v11, 0x1

    .line 1759
    .local v11, drawDividers:Z
    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->drawContentBackground(Landroid/graphics/Canvas;)V

    .line 1761
    if-nez v11, :cond_0

    if-nez v13, :cond_0

    if-eqz v12, :cond_f

    .line 1763
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mTempRect:Landroid/graphics/Rect;

    .line 1766
    .local v7, bounds:Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getPaddingLeft()I

    move-result v31

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->left:I

    .line 1767
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getRight()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getLeft()I

    move-result v32

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getPaddingRight()I

    move-result v32

    sub-int v31, v31, v32

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->right:I

    .line 1769
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v9

    .line 1770
    .local v9, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 1771
    .local v18, headerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    move/from16 v21, v0

    .line 1772
    .local v21, itemCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    sub-int v31, v21, v31

    add-int/lit8 v17, v31, -0x1

    .line 1773
    .local v17, footerLimit:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderDividersEnabled:Z

    move/from16 v19, v0

    .line 1774
    .local v19, headerDividers:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFooterDividersEnabled:Z

    move/from16 v16, v0

    .line 1775
    .local v16, footerDividers:Z
    move-object/from16 v0, p0

    iget v15, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    .line 1776
    .local v15, first:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAreAllItemsSelectable:Z

    .line 1777
    .local v5, areAllItemsSelectable:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1782
    .local v4, adapter:Landroid/widget/ListAdapter;
    if-eqz v11, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->isOpaque()Z

    move-result v31

    if-eqz v31, :cond_b

    invoke-super/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->isOpaque()Z

    move-result v31

    if-nez v31, :cond_b

    const/4 v14, 0x1

    .line 1784
    .local v14, fillForMissingDividers:Z
    :goto_3
    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    if-nez v31, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mIsCacheColorOpaque:Z

    move/from16 v31, v0

    if-eqz v31, :cond_1

    .line 1785
    new-instance v31, Landroid/graphics/Paint;

    invoke-direct/range {v31 .. v31}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v31, v0

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getCacheColorHint()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Landroid/graphics/Paint;->setColor(I)V

    .line 1788
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerPaint:Landroid/graphics/Paint;

    move-object/from16 v27, v0

    .line 1791
    .local v27, paint:Landroid/graphics/Paint;
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getBottom()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getTop()I

    move-result v32

    sub-int v31, v31, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v32, v0

    sub-int v31, v31, v32

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollY()I

    move-result v32

    add-int v22, v31, v32

    .line 1792
    .local v22, listBottom:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mStackFromBottom:Z

    move/from16 v31, v0

    if-nez v31, :cond_10

    .line 1793
    const/4 v6, 0x0

    .line 1797
    .local v6, bottom:I
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollY()I

    move-result v28

    .line 1798
    .local v28, scrollY:I
    if-lez v9, :cond_2

    if-gez v28, :cond_2

    .line 1799
    if-eqz v13, :cond_c

    .line 1800
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1801
    move/from16 v0, v28

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1802
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Lcom/huewu/pla/lib/internal/PLA_ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1810
    :cond_2
    :goto_4
    const/16 v20, 0x0

    .local v20, i:I
    :goto_5
    move/from16 v0, v20

    if-ge v0, v9, :cond_e

    .line 1811
    if-nez v19, :cond_3

    add-int v31, v15, v20

    move/from16 v0, v31

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    :cond_3
    if-nez v16, :cond_4

    add-int v31, v15, v20

    move/from16 v0, v31

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    .line 1813
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1814
    .local v8, child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 1816
    if-eqz v11, :cond_7

    move/from16 v0, v22

    if-ge v6, v0, :cond_7

    if-eqz v12, :cond_5

    add-int/lit8 v31, v9, -0x1

    move/from16 v0, v20

    move/from16 v1, v31

    if-eq v0, v1, :cond_7

    .line 1818
    :cond_5
    if-nez v5, :cond_6

    add-int v31, v15, v20

    move/from16 v0, v31

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_d

    add-int/lit8 v31, v9, -0x1

    move/from16 v0, v20

    move/from16 v1, v31

    if-eq v0, v1, :cond_6

    add-int v31, v15, v20

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 1821
    :cond_6
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 1822
    add-int v31, v6, v10

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1823
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v0, v1, v7, v2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 1810
    .end local v8           #child:Landroid/view/View;
    :cond_7
    :goto_6
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    .line 1755
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v6           #bottom:I
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v9           #count:I
    .end local v11           #drawDividers:Z
    .end local v12           #drawOverscrollFooter:Z
    .end local v13           #drawOverscrollHeader:Z
    .end local v14           #fillForMissingDividers:Z
    .end local v15           #first:I
    .end local v16           #footerDividers:Z
    .end local v17           #footerLimit:I
    .end local v18           #headerCount:I
    .end local v19           #headerDividers:Z
    .end local v20           #i:I
    .end local v21           #itemCount:I
    .end local v22           #listBottom:I
    .end local v27           #paint:Landroid/graphics/Paint;
    .end local v28           #scrollY:I
    :cond_8
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 1756
    .restart local v13       #drawOverscrollHeader:Z
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 1757
    .restart local v12       #drawOverscrollFooter:Z
    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1782
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    .restart local v5       #areAllItemsSelectable:Z
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v9       #count:I
    .restart local v11       #drawDividers:Z
    .restart local v15       #first:I
    .restart local v16       #footerDividers:Z
    .restart local v17       #footerLimit:I
    .restart local v18       #headerCount:I
    .restart local v19       #headerDividers:Z
    .restart local v21       #itemCount:I
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_3

    .line 1803
    .restart local v6       #bottom:I
    .restart local v14       #fillForMissingDividers:Z
    .restart local v22       #listBottom:I
    .restart local v27       #paint:Landroid/graphics/Paint;
    .restart local v28       #scrollY:I
    :cond_c
    if-eqz v11, :cond_2

    .line 1804
    const/16 v31, 0x0

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1805
    neg-int v0, v10

    move/from16 v31, v0

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1806
    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-virtual {v0, v1, v7, v2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_4

    .line 1824
    .restart local v8       #child:Landroid/view/View;
    .restart local v20       #i:I
    :cond_d
    if-eqz v14, :cond_7

    .line 1825
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 1826
    add-int v31, v6, v10

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1827
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 1834
    .end local v8           #child:Landroid/view/View;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getBottom()I

    move-result v31

    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollY()I

    move-result v32

    add-int v24, v31, v32

    .line 1835
    .local v24, overFooterBottom:I
    if-eqz v12, :cond_f

    add-int v31, v15, v9

    move/from16 v0, v31

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    move/from16 v0, v24

    if-le v0, v6, :cond_f

    .line 1837
    iput v6, v7, Landroid/graphics/Rect;->top:I

    .line 1838
    move/from16 v0, v24

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1839
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v7}, Lcom/huewu/pla/lib/internal/PLA_ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1898
    .end local v4           #adapter:Landroid/widget/ListAdapter;
    .end local v5           #areAllItemsSelectable:Z
    .end local v6           #bottom:I
    .end local v7           #bounds:Landroid/graphics/Rect;
    .end local v9           #count:I
    .end local v14           #fillForMissingDividers:Z
    .end local v15           #first:I
    .end local v16           #footerDividers:Z
    .end local v17           #footerLimit:I
    .end local v18           #headerCount:I
    .end local v19           #headerDividers:Z
    .end local v20           #i:I
    .end local v21           #itemCount:I
    .end local v22           #listBottom:I
    .end local v24           #overFooterBottom:I
    .end local v27           #paint:Landroid/graphics/Paint;
    .end local v28           #scrollY:I
    :cond_f
    :goto_7
    invoke-super/range {p0 .. p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1899
    return-void

    .line 1843
    .restart local v4       #adapter:Landroid/widget/ListAdapter;
    .restart local v5       #areAllItemsSelectable:Z
    .restart local v7       #bounds:Landroid/graphics/Rect;
    .restart local v9       #count:I
    .restart local v14       #fillForMissingDividers:Z
    .restart local v15       #first:I
    .restart local v16       #footerDividers:Z
    .restart local v17       #footerLimit:I
    .restart local v18       #headerCount:I
    .restart local v19       #headerDividers:Z
    .restart local v21       #itemCount:I
    .restart local v22       #listBottom:I
    .restart local v27       #paint:Landroid/graphics/Paint;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    .line 1846
    .local v23, listTop:I
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollY()I

    move-result v28

    .line 1848
    .restart local v28       #scrollY:I
    if-lez v9, :cond_11

    if-eqz v13, :cond_11

    .line 1849
    move/from16 v0, v28

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1850
    const/16 v31, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/view/View;->getTop()I

    move-result v31

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1851
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v7}, Lcom/huewu/pla/lib/internal/PLA_ListView;->drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    .line 1854
    :cond_11
    if-eqz v13, :cond_16

    const/16 v29, 0x1

    .line 1855
    .local v29, start:I
    :goto_8
    move/from16 v20, v29

    .restart local v20       #i:I
    :goto_9
    move/from16 v0, v20

    if-ge v0, v9, :cond_18

    .line 1856
    if-nez v19, :cond_12

    add-int v31, v15, v20

    move/from16 v0, v31

    move/from16 v1, v18

    if-lt v0, v1, :cond_15

    :cond_12
    if-nez v16, :cond_13

    add-int v31, v15, v20

    move/from16 v0, v31

    move/from16 v1, v17

    if-ge v0, v1, :cond_15

    .line 1858
    :cond_13
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1859
    .restart local v8       #child:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v30

    .line 1861
    .local v30, top:I
    if-eqz v11, :cond_15

    move/from16 v0, v30

    move/from16 v1, v23

    if-le v0, v1, :cond_15

    .line 1862
    if-nez v5, :cond_14

    add-int v31, v15, v20

    move/from16 v0, v31

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_17

    add-int/lit8 v31, v9, -0x1

    move/from16 v0, v20

    move/from16 v1, v31

    if-eq v0, v1, :cond_14

    add-int v31, v15, v20

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    invoke-interface {v4, v0}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v31

    if-eqz v31, :cond_17

    .line 1865
    :cond_14
    sub-int v31, v30, v10

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1866
    move/from16 v0, v30

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1871
    add-int/lit8 v31, v20, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-virtual {v0, v1, v7, v2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    .line 1855
    .end local v8           #child:Landroid/view/View;
    .end local v30           #top:I
    :cond_15
    :goto_a
    add-int/lit8 v20, v20, 0x1

    goto :goto_9

    .line 1854
    .end local v20           #i:I
    .end local v29           #start:I
    :cond_16
    const/16 v29, 0x0

    goto :goto_8

    .line 1872
    .restart local v8       #child:Landroid/view/View;
    .restart local v20       #i:I
    .restart local v29       #start:I
    .restart local v30       #top:I
    :cond_17
    if-eqz v14, :cond_15

    .line 1873
    sub-int v31, v30, v10

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1874
    move/from16 v0, v30

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1875
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_a

    .line 1881
    .end local v8           #child:Landroid/view/View;
    .end local v30           #top:I
    :cond_18
    if-lez v9, :cond_f

    if-lez v28, :cond_f

    .line 1882
    if-eqz v12, :cond_19

    .line 1884
    invoke-virtual/range {p0 .. p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getBottom()I

    move-result v3

    .line 1885
    .local v3, absListBottom:I
    iput v3, v7, Landroid/graphics/Rect;->top:I

    .line 1886
    add-int v31, v3, v28

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1887
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2, v7}, Lcom/huewu/pla/lib/internal/PLA_ListView;->drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V

    goto/16 :goto_7

    .line 1888
    .end local v3           #absListBottom:I
    :cond_19
    if-eqz v11, :cond_f

    .line 1889
    move/from16 v0, v22

    iput v0, v7, Landroid/graphics/Rect;->top:I

    .line 1890
    add-int v31, v22, v10

    move/from16 v0, v31

    iput v0, v7, Landroid/graphics/Rect;->bottom:I

    .line 1891
    const/16 v31, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-virtual {v0, v1, v7, v2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V

    goto/16 :goto_7
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    .line 1492
    invoke-super {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    .line 1496
    .local v5, populated:Z
    if-nez v5, :cond_4

    .line 1497
    const/4 v4, 0x0

    .line 1498
    .local v4, itemCount:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getSelectedItemPosition()I

    move-result v2

    .line 1500
    .local v2, currentItemIndex:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1501
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 1502
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1503
    .local v1, count:I
    const/16 v6, 0xf

    if-ge v1, v6, :cond_2

    .line 1504
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1505
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1506
    add-int/lit8 v4, v4, 0x1

    .line 1504
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1507
    :cond_1
    if-gt v3, v2, :cond_0

    .line 1508
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1512
    .end local v3           #i:I
    :cond_2
    move v4, v1

    .line 1516
    .end local v1           #count:I
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 1517
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 1520
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v2           #currentItemIndex:I
    .end local v4           #itemCount:I
    :cond_4
    return v5
.end method

.method drawDivider(Landroid/graphics/Canvas;Landroid/graphics/Rect;I)V
    .locals 2
    .parameter "canvas"
    .parameter "bounds"
    .parameter "childIndex"

    .prologue
    .line 1937
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1938
    .local v1, divider:Landroid/graphics/drawable/Drawable;
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mClipDivider:Z

    .line 1940
    .local v0, clipDivider:Z
    if-nez v0, :cond_1

    .line 1941
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1947
    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1949
    if-eqz v0, :cond_0

    .line 1950
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1952
    :cond_0
    return-void

    .line 1943
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1944
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    goto :goto_0
.end method

.method drawOverscrollFooter(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 1733
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 1735
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1736
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1738
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 1739
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 1740
    iget v2, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->bottom:I

    .line 1743
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1744
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1746
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1747
    return-void
.end method

.method drawOverscrollHeader(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "canvas"
    .parameter "drawable"
    .parameter "bounds"

    .prologue
    .line 1716
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    .line 1718
    .local v0, height:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1719
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1721
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    iget v3, p3, Landroid/graphics/Rect;->top:I

    sub-int v1, v2, v3

    .line 1722
    .local v1, span:I
    if-ge v1, v0, :cond_0

    .line 1723
    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Rect;->top:I

    .line 1726
    :cond_0
    invoke-virtual {p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 1727
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1729
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1730
    return-void
.end method

.method protected fillGap(Z)V
    .locals 4
    .parameter "down"

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v0

    .line 655
    .local v0, count:I
    if-eqz p1, :cond_0

    .line 656
    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/2addr v1, v0

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getFillChildBottom()I

    move-result v2

    iget v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    add-int/2addr v2, v3

    invoke-direct {p0, v1, v2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillDown(II)Landroid/view/View;

    .line 660
    :goto_0
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onAdjustChildViews(Z)V

    .line 661
    return-void

    .line 658
    :cond_0
    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getFillChildTop()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillUp(II)Landroid/view/View;

    goto :goto_0
.end method

.method findMotionRow(I)I
    .locals 4
    .parameter "y"

    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v0

    .line 904
    .local v0, childCount:I
    if-lez v0, :cond_3

    .line 905
    iget-boolean v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mStackFromBottom:Z

    if-nez v3, :cond_1

    .line 906
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 907
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 908
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-gt p1, v3, :cond_0

    .line 909
    iget v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    .line 921
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :goto_1
    return v3

    .line 906
    .restart local v1       #i:I
    .restart local v2       #v:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 913
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v0, -0x1

    .restart local v1       #i:I
    :goto_2
    if-ltz v1, :cond_3

    .line 914
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 915
    .restart local v2       #v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 916
    iget v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/2addr v3, v1

    goto :goto_1

    .line 913
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 921
    .end local v1           #i:I
    .end local v2           #v:Landroid/view/View;
    :cond_3
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public fullScroll(I)Z
    .locals 4
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    .line 1532
    const/4 v0, 0x0

    .line 1533
    .local v0, moved:Z
    const/16 v2, 0x21

    if-ne p1, v2, :cond_2

    .line 1534
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/huewu/pla/lib/internal/PLA_ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 1535
    .local v1, position:I
    if-ltz v1, :cond_0

    .line 1536
    iput v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mLayoutMode:I

    .line 1537
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->invokeOnItemScrollListener()V

    .line 1538
    const/4 v0, 0x1

    .line 1549
    .end local v1           #position:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->awakenScrollBars()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1550
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->awakenScrollBars()Z

    .line 1551
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->invalidate()V

    .line 1554
    :cond_1
    return v0

    .line 1540
    :cond_2
    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    .line 1541
    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/huewu/pla/lib/internal/PLA_ListView;->lookForSelectablePosition(IZ)I

    move-result v1

    .line 1542
    .restart local v1       #position:I
    if-ltz v1, :cond_3

    .line 1543
    const/4 v2, 0x3

    iput v2, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mLayoutMode:I

    .line 1544
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->invokeOnItemScrollListener()V

    .line 1546
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCheckItemIds()[J
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2222
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2223
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getCheckedItemIds()[J

    move-result-object v0

    .line 2226
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [J

    goto :goto_0
.end method

.method public getCheckedItemIds()[J
    .locals 1

    .prologue
    .line 2238
    const/4 v0, 0x0

    new-array v0, v0, [J

    return-object v0
.end method

.method public getCheckedItemPosition()I
    .locals 1

    .prologue
    .line 2194
    const/4 v0, -0x1

    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 1

    .prologue
    .line 2207
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDivider()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1960
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDividerHeight()I
    .locals 1

    .prologue
    .line 1986
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 3

    .prologue
    .line 476
    const/4 v0, 0x0

    iget v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getFooterViewsCount()I
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method protected getItemBottom(I)I
    .locals 3
    .parameter "pos"

    .prologue
    .line 645
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v0

    .line 646
    .local v0, count:I
    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    sub-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getListPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method protected getItemLeft(I)I
    .locals 1
    .parameter "pos"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method protected getItemTop(I)I
    .locals 3
    .parameter "pos"

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v0

    .line 635
    .local v0, count:I
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    add-int/2addr v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getListPaddingTop()I

    move-result v1

    goto :goto_0
.end method

.method public getItemsCanFocus()Z
    .locals 1

    .prologue
    .line 1688
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemsCanFocus:Z

    return v0
.end method

.method protected getLastChild()Landroid/view/View;
    .locals 2

    .prologue
    .line 1646
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v0

    .line 1647
    .local v0, numChildren:I
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 481
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    .prologue
    .line 180
    const v0, 0x3ea8f5c3

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getOverscrollFooter()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getOverscrollHeader()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 2047
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isFixedView(Landroid/view/View;)Z
    .locals 6
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 290
    iget-object v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 291
    .local v3, where:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 292
    .local v2, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 293
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;

    .line 294
    .local v1, info:Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    iget-object v5, v1, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v5, p1, :cond_1

    .line 312
    .end local v1           #info:Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    :cond_0
    :goto_1
    return v4

    .line 292
    .restart local v1       #info:Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v1           #info:Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    :cond_2
    iget-object v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 303
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 304
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_3

    .line 305
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;

    .line 306
    .restart local v1       #info:Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    iget-object v5, v1, Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;->view:Landroid/view/View;

    if-eq v5, p1, :cond_0

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 312
    .end local v1           #info:Lcom/huewu/pla/lib/internal/PLA_ListView$FixedViewInfo;
    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isItemChecked(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 2181
    const/4 v0, 0x0

    return v0
.end method

.method public isOpaque()Z
    .locals 1

    .prologue
    .line 1699
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mCachingStarted:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mIsCacheColorOpaque:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerIsOpaque:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->isOpaque()Z

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

.method protected layoutChildren()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1076
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mBlockLayoutRequests:Z

    .line 1077
    .local v0, blockLayoutRequests:Z
    if-nez v0, :cond_0

    .line 1078
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mBlockLayoutRequests:Z

    .line 1084
    :try_start_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->invalidate()V

    .line 1085
    iget-object v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v11, :cond_1

    .line 1086
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->resetList()V

    .line 1087
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->invokeOnItemScrollListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    if-nez v0, :cond_0

    .line 1225
    iput-boolean v14, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mBlockLayoutRequests:Z

    .line 1228
    :cond_0
    :goto_0
    return-void

    .line 1091
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getFillChildBottom()I

    move-result v11

    iget v12, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    add-int v4, v11, v12

    .line 1092
    .local v4, childrenTop:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getFillChildTop()I

    move-result v3

    .line 1094
    .local v3, childrenBottom:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v2

    .line 1095
    .local v2, childCount:I
    const/4 v8, 0x0

    .line 1097
    .local v8, index:I
    const/4 v9, 0x0

    .line 1100
    .local v9, oldFirst:Landroid/view/View;
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mLayoutMode:I

    packed-switch v11, :pswitch_data_0

    .line 1108
    :pswitch_0
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1111
    :pswitch_1
    iget-boolean v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDataChanged:Z

    .line 1112
    .local v5, dataChanged:Z
    if-eqz v5, :cond_2

    .line 1113
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->handleDataChanged()V

    .line 1118
    :cond_2
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    if-nez v11, :cond_3

    .line 1119
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->resetList()V

    .line 1120
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->invokeOnItemScrollListener()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1224
    if-nez v0, :cond_0

    .line 1225
    iput-boolean v14, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mBlockLayoutRequests:Z

    goto :goto_0

    .line 1122
    :cond_3
    :try_start_2
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    iget-object v12, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v12}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    if-eq v11, v12, :cond_5

    .line 1123
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The content of the adapter has changed but ListView did not receive a notification. Make sure the content of your adapter is not modified from a background thread, but only from the UI thread. [in ListView("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getId()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") with Adapter("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1224
    .end local v2           #childCount:I
    .end local v3           #childrenBottom:I
    .end local v4           #childrenTop:I
    .end local v5           #dataChanged:Z
    .end local v8           #index:I
    .end local v9           #oldFirst:Landroid/view/View;
    :catchall_0
    move-exception v11

    if-nez v0, :cond_4

    .line 1225
    iput-boolean v14, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mBlockLayoutRequests:Z

    :cond_4
    throw v11

    .line 1132
    .restart local v2       #childCount:I
    .restart local v3       #childrenBottom:I
    .restart local v4       #childrenTop:I
    .restart local v5       #dataChanged:Z
    .restart local v8       #index:I
    .restart local v9       #oldFirst:Landroid/view/View;
    :cond_5
    :try_start_3
    iget v6, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    .line 1133
    .local v6, firstPosition:I
    iget-object v10, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    .line 1139
    .local v10, recycleBin:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
    if-eqz v5, :cond_6

    .line 1140
    add-int/lit8 v7, v2, -0x1

    .local v7, i:I
    :goto_1
    if-ltz v7, :cond_7

    .line 1141
    invoke-virtual {p0, v7}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 1140
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 1148
    .end local v7           #i:I
    :cond_6
    invoke-virtual {v10, v2, v6}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->fillActiveViews(II)V

    .line 1151
    :cond_7
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mLayoutMode:I

    packed-switch v11, :pswitch_data_1

    .line 1180
    :pswitch_2
    if-nez v2, :cond_c

    .line 1181
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->detachAllViewsFromParent()V

    .line 1182
    iget-boolean v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mStackFromBottom:Z

    if-nez v11, :cond_b

    .line 1183
    invoke-direct {p0, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillFromTop(I)Landroid/view/View;

    .line 1204
    .end local v4           #childrenTop:I
    :goto_2
    invoke-virtual {v10}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->scrapActiveViews()V

    .line 1206
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mTouchMode:I

    if-lez v11, :cond_f

    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mTouchMode:I

    const/4 v12, 0x3

    if-ge v11, v12, :cond_f

    .line 1207
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mMotionPosition:I

    iget v12, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    sub-int/2addr v11, v12

    invoke-virtual {p0, v11}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1208
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_8

    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->positionSelector(Landroid/view/View;)V

    .line 1214
    .end local v1           #child:Landroid/view/View;
    :cond_8
    :goto_3
    const/4 v11, 0x0

    iput v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mLayoutMode:I

    .line 1215
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDataChanged:Z

    .line 1216
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mNeedSync:Z

    .line 1218
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    if-lez v11, :cond_9

    .line 1219
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->checkSelectionChanged()V

    .line 1222
    :cond_9
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->invokeOnItemScrollListener()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1224
    if-nez v0, :cond_0

    .line 1225
    iput-boolean v14, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mBlockLayoutRequests:Z

    goto/16 :goto_0

    .line 1153
    .restart local v4       #childrenTop:I
    :pswitch_3
    :try_start_4
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSyncPosition:I

    invoke-virtual {p0, v11}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onLayoutSync(I)V

    .line 1155
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->detachAllViewsFromParent()V

    .line 1156
    iget-object v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSpecificTops:[I

    if-eqz v11, :cond_a

    .line 1157
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSyncPosition:I

    iget-object v12, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSpecificTops:[I

    invoke-direct {p0, v11, v12}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillSynced(I[I)V

    .line 1158
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSpecificTops:[I

    .line 1162
    :goto_4
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSyncPosition:I

    invoke-virtual {p0, v11}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onLayoutSyncFinished(I)V

    goto :goto_2

    .line 1160
    :cond_a
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSyncPosition:I

    iget v12, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSpecificTop:I

    invoke-direct {p0, v11, v12}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillSpecific(II)Landroid/view/View;

    goto :goto_4

    .line 1165
    :pswitch_4
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->detachAllViewsFromParent()V

    .line 1166
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v11, v3}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillUp(II)Landroid/view/View;

    .line 1167
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->adjustViewsUpOrDown()V

    goto :goto_2

    .line 1170
    :pswitch_5
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->detachAllViewsFromParent()V

    .line 1171
    const/4 v11, 0x0

    iput v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    .line 1172
    invoke-direct {p0, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillFromTop(I)Landroid/view/View;

    .line 1173
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->adjustViewsUpOrDown()V

    goto :goto_2

    .line 1176
    :pswitch_6
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->detachAllViewsFromParent()V

    .line 1177
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->reconcileSelectedPosition()I

    move-result v11

    iget v12, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSpecificTop:I

    invoke-direct {p0, v11, v12}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillSpecific(II)Landroid/view/View;

    goto :goto_2

    .line 1185
    :cond_b
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    add-int/lit8 v11, v11, -0x1

    invoke-direct {p0, v11, v3}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillUp(II)Landroid/view/View;

    goto/16 :goto_2

    .line 1188
    :cond_c
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    iget v12, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    if-ge v11, v12, :cond_e

    .line 1189
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    invoke-virtual {p0, v11}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onLayoutSync(I)V

    .line 1190
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->detachAllViewsFromParent()V

    .line 1191
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    if-nez v9, :cond_d

    .end local v4           #childrenTop:I
    :goto_5
    invoke-direct {p0, v11, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillSpecific(II)Landroid/view/View;

    .line 1192
    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    invoke-virtual {p0, v11}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onLayoutSyncFinished(I)V

    goto/16 :goto_2

    .line 1191
    .restart local v4       #childrenTop:I
    :cond_d
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v4

    goto :goto_5

    .line 1194
    :cond_e
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onLayoutSync(I)V

    .line 1195
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->detachAllViewsFromParent()V

    .line 1196
    const/4 v11, 0x0

    invoke-direct {p0, v11, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->fillSpecific(II)Landroid/view/View;

    .line 1197
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/huewu/pla/lib/internal/PLA_ListView;->onLayoutSyncFinished(I)V

    goto/16 :goto_2

    .line 1210
    .end local v4           #childrenTop:I
    :cond_f
    const/4 v11, 0x0

    iput v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSelectedTop:I

    .line 1211
    iget-object v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->setEmpty()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .line 1100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1151
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_2
        :pswitch_4
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method lookForSelectablePosition(IZ)I
    .locals 4
    .parameter "position"
    .parameter "lookDown"

    .prologue
    const/4 v2, -0x1

    .line 1459
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1460
    .local v0, adapter:Landroid/widget/ListAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1486
    :cond_0
    :goto_0
    return v2

    .line 1464
    :cond_1
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 1465
    .local v1, count:I
    iget-boolean v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAreAllItemsSelectable:Z

    if-nez v3, :cond_4

    .line 1466
    if-eqz p2, :cond_2

    .line 1467
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1468
    :goto_1
    if-ge p1, v1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1469
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1472
    :cond_2
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1473
    :goto_2
    if-ltz p1, :cond_3

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1474
    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    .line 1478
    :cond_3
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 1481
    goto :goto_0

    .line 1483
    :cond_4
    if-ltz p1, :cond_0

    if-ge p1, v1, :cond_0

    move v2, p1

    .line 1486
    goto :goto_0
.end method

.method final measureHeightOfChildren(IIIII)I
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "startPosition"
    .parameter "endPosition"
    .parameter "maxHeight"
    .parameter "disallowPartialChildPosition"

    .prologue
    .line 840
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 841
    .local v1, adapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_1

    .line 842
    iget-object v10, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v6, v10, v11

    .line 898
    :cond_0
    :goto_0
    return v6

    .line 846
    :cond_1
    iget-object v10, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int v9, v10, v11

    .line 847
    .local v9, returnedHeight:I
    iget v10, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    if-lez v10, :cond_6

    iget-object v10, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget v3, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    .line 850
    .local v3, dividerHeight:I
    :goto_1
    const/4 v6, 0x0

    .line 855
    .local v6, prevHeightWithoutPartialChild:I
    const/4 v10, -0x1

    if-ne p3, v10, :cond_2

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 p3, v10, -0x1

    .line 856
    :cond_2
    iget-object v7, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    .line 857
    .local v7, recycleBin:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->recycleOnMeasure()Z

    move-result v8

    .line 858
    .local v8, recyle:Z
    iget-object v5, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mIsScrap:[Z

    .line 860
    .local v5, isScrap:[Z
    move v4, p2

    .local v4, i:I
    :goto_2
    if-gt v4, p3, :cond_9

    .line 861
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "measureHeightOfChildren:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/huewu/pla/lib/DebugUtil;->i(Ljava/lang/String;)V

    .line 862
    invoke-virtual {p0, v4, v5}, Lcom/huewu/pla/lib/internal/PLA_ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v2

    .line 864
    .local v2, child:Landroid/view/View;
    invoke-direct {p0, v2, v4, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 866
    if-lez v4, :cond_3

    .line 868
    add-int/2addr v9, v3

    .line 872
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    iget v10, v10, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v7, v10}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 874
    const-string v10, "measureHeightOfChildren"

    invoke-static {v10}, Lcom/huewu/pla/lib/DebugUtil;->i(Ljava/lang/String;)V

    .line 875
    invoke-virtual {v7, v2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 878
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v9, v10

    .line 880
    move/from16 v0, p4

    if-lt v9, v0, :cond_7

    .line 883
    if-ltz p5, :cond_5

    move/from16 v0, p5

    if-le v4, v0, :cond_5

    if-lez v6, :cond_5

    move/from16 v0, p4

    if-ne v9, v0, :cond_0

    :cond_5
    move/from16 v6, p4

    goto :goto_0

    .line 847
    .end local v2           #child:Landroid/view/View;
    .end local v3           #dividerHeight:I
    .end local v4           #i:I
    .end local v5           #isScrap:[Z
    .end local v6           #prevHeightWithoutPartialChild:I
    .end local v7           #recycleBin:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
    .end local v8           #recyle:Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_1

    .line 891
    .restart local v2       #child:Landroid/view/View;
    .restart local v3       #dividerHeight:I
    .restart local v4       #i:I
    .restart local v5       #isScrap:[Z
    .restart local v6       #prevHeightWithoutPartialChild:I
    .restart local v7       #recycleBin:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;
    .restart local v8       #recyle:Z
    :cond_7
    if-ltz p5, :cond_8

    move/from16 v0, p5

    if-lt v4, v0, :cond_8

    .line 892
    move v6, v9

    .line 860
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v2           #child:Landroid/view/View;
    :cond_9
    move v6, v9

    .line 898
    goto/16 :goto_0
.end method

.method protected onAdjustChildViews(Z)V
    .locals 1
    .parameter "down"

    .prologue
    .line 1411
    if-eqz p1, :cond_0

    .line 1412
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->correctTooHigh(I)V

    .line 1415
    :goto_0
    return-void

    .line 1414
    :cond_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->correctTooLow(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 2127
    invoke-super {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->onFinishInflate()V

    .line 2129
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v0

    .line 2130
    .local v0, count:I
    if-lez v0, :cond_1

    .line 2131
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2132
    invoke-virtual {p0, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->addHeaderView(Landroid/view/View;)V

    .line 2131
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2134
    :cond_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->removeAllViews()V

    .line 2136
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 12
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2071
    invoke-super {p0, p1, p2, p3}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 2073
    const/4 v2, -0x1

    .line 2074
    .local v2, closetChildIndex:I
    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 2076
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollX()I

    move-result v9

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollY()I

    move-result v10

    invoke-virtual {p3, v9, v10}, Landroid/graphics/Rect;->offset(II)V

    .line 2078
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2081
    .local v0, adapter:Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v10

    iget v11, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/2addr v10, v11

    if-ge v9, v10, :cond_0

    .line 2082
    const/4 v9, 0x0

    iput v9, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mLayoutMode:I

    .line 2083
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->layoutChildren()V

    .line 2088
    :cond_0
    iget-object v8, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mTempRect:Landroid/graphics/Rect;

    .line 2089
    .local v8, otherRect:Landroid/graphics/Rect;
    const v6, 0x7fffffff

    .line 2090
    .local v6, minDistance:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v1

    .line 2091
    .local v1, childCount:I
    iget v4, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    .line 2093
    .local v4, firstPosition:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_3

    .line 2095
    add-int v9, v4, v5

    invoke-interface {v0, v9}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 2093
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 2099
    :cond_2
    invoke-virtual {p0, v5}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 2100
    .local v7, other:Landroid/view/View;
    invoke-virtual {v7, v8}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2101
    invoke-virtual {p0, v7, v8}, Lcom/huewu/pla/lib/internal/PLA_ListView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2102
    invoke-static {p3, v8, p2}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getDistance(Landroid/graphics/Rect;Landroid/graphics/Rect;I)I

    move-result v3

    .line 2104
    .local v3, distance:I
    if-ge v3, v6, :cond_1

    .line 2105
    move v6, v3

    .line 2106
    move v2, v5

    goto :goto_1

    .line 2111
    .end local v0           #adapter:Landroid/widget/ListAdapter;
    .end local v1           #childCount:I
    .end local v3           #distance:I
    .end local v4           #firstPosition:I
    .end local v5           #i:I
    .end local v6           #minDistance:I
    .end local v7           #other:Landroid/view/View;
    .end local v8           #otherRect:Landroid/graphics/Rect;
    :cond_3
    if-ltz v2, :cond_4

    .line 2112
    iget v9, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFirstPosition:I

    add-int/2addr v9, v2

    invoke-virtual {p0, v9}, Lcom/huewu/pla/lib/internal/PLA_ListView;->setSelection(I)V

    .line 2116
    :goto_2
    return-void

    .line 2114
    :cond_4
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->requestLayout()V

    goto :goto_2
.end method

.method protected onItemAddedToList(IZ)V
    .locals 0
    .parameter "position"
    .parameter "flow"

    .prologue
    .line 1294
    return-void
.end method

.method protected onLayoutChild(Landroid/view/View;IIIII)V
    .locals 0
    .parameter "child"
    .parameter "position"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 1393
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 1394
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 734
    invoke-super {p0, p1, p2}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->onMeasure(II)V

    .line 736
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 737
    .local v10, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 738
    .local v9, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 739
    .local v11, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 741
    .local v4, heightSize:I
    const/4 v8, 0x0

    .line 742
    .local v8, childWidth:I
    const/4 v7, 0x0

    .line 744
    .local v7, childHeight:I
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_5

    move v0, v2

    :goto_0
    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    .line 745
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    if-lez v0, :cond_1

    if-eqz v10, :cond_0

    if-nez v9, :cond_1

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mIsScrap:[Z

    invoke-virtual {p0, v2, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->obtainView(I[Z)Landroid/view/View;

    move-result-object v6

    .line 749
    .local v6, child:Landroid/view/View;
    invoke-direct {p0, v6, v2, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->measureScrapChild(Landroid/view/View;II)V

    .line 751
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 752
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 754
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->recycleOnMeasure()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;

    iget v0, v0, Lcom/huewu/pla/lib/internal/PLA_AbsListView$LayoutParams;->viewType:I

    invoke-virtual {v1, v0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->shouldRecycleViewType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 756
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-virtual {v0, v6}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->addScrapView(Landroid/view/View;)V

    .line 760
    .end local v6           #child:Landroid/view/View;
    :cond_1
    if-nez v10, :cond_2

    .line 761
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, v8

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getVerticalScrollbarWidth()I

    move-result v1

    add-int v11, v0, v1

    .line 765
    :cond_2
    if-nez v9, :cond_3

    .line 766
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    add-int/2addr v0, v7

    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getVerticalFadingEdgeLength()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 770
    :cond_3
    const/high16 v0, -0x8000

    if-ne v9, v0, :cond_4

    move-object v0, p0

    move v1, p1

    move v5, v3

    .line 772
    invoke-virtual/range {v0 .. v5}, Lcom/huewu/pla/lib/internal/PLA_ListView;->measureHeightOfChildren(IIIII)I

    move-result v4

    .line 775
    :cond_4
    invoke-virtual {p0, v11, v4}, Lcom/huewu/pla/lib/internal/PLA_ListView;->setMeasuredDimension(II)V

    .line 776
    iput p1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mWidthMeasureSpec:I

    .line 777
    return-void

    .line 744
    :cond_5
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method protected onMeasureChild(Landroid/view/View;III)V
    .locals 0
    .parameter "child"
    .parameter "position"
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1403
    invoke-virtual {p1, p3, p4}, Landroid/view/View;->measure(II)V

    .line 1404
    return-void
.end method

.method protected onOffsetChild(Landroid/view/View;III)V
    .locals 0
    .parameter "child"
    .parameter "position"
    .parameter "offsetLeft"
    .parameter "offsetTop"

    .prologue
    .line 1388
    invoke-virtual {p1, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1389
    invoke-virtual {p1, p4}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 1390
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 2140
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemsCanFocus:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2143
    const/4 v0, 0x0

    .line 2145
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 3
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 2151
    const/4 v0, 0x0

    .line 2153
    .local v0, handled:Z
    invoke-super {p0, p1, p2, p3, p4}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v1

    or-int/2addr v0, v1

    .line 2155
    return v0
.end method

.method protected recycleOnMeasure()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation

    .prologue
    .line 808
    const/4 v0, 0x1

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 400
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 401
    const/4 v0, 0x0

    .line 402
    .local v0, result:Z
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/huewu/pla/lib/internal/PLA_HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/huewu/pla/lib/internal/PLA_HeaderViewListAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDataSetObserver:Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 404
    const/4 v0, 0x1

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 409
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeHeaderView(Landroid/view/View;)Z
    .locals 2
    .parameter "v"

    .prologue
    .line 323
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, result:Z
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/huewu/pla/lib/internal/PLA_HeaderViewListAdapter;

    invoke-virtual {v1, p1}, Lcom/huewu/pla/lib/internal/PLA_HeaderViewListAdapter;->removeHeader(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDataSetObserver:Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;

    invoke-virtual {v1}, Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 327
    const/4 v0, 0x1

    .line 329
    :cond_0
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 332
    .end local v0           #result:Z
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 15
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 541
    move-object/from16 v0, p2

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 544
    .local v9, rectTopWithinChild:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 545
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v13

    neg-int v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v14

    neg-int v14, v14

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 547
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getHeight()I

    move-result v6

    .line 548
    .local v6, height:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollY()I

    move-result v8

    .line 549
    .local v8, listUnfadedTop:I
    add-int v7, v8, v6

    .line 550
    .local v7, listUnfadedBottom:I
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getVerticalFadingEdgeLength()I

    move-result v5

    .line 552
    .local v5, fadingEdge:I
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->showingTopFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 554
    if-le v9, v5, :cond_0

    .line 555
    add-int/2addr v8, v5

    .line 559
    :cond_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildCount()I

    move-result v2

    .line 560
    .local v2, childCount:I
    add-int/lit8 v13, v2, -0x1

    invoke-virtual {p0, v13}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 562
    .local v1, bottomOfBottomChild:I
    invoke-direct {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->showingBottomFadingEdge()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 564
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v14, v1, v5

    if-ge v13, v14, :cond_1

    .line 565
    sub-int/2addr v7, v5

    .line 569
    :cond_1
    const/4 v11, 0x0

    .line 571
    .local v11, scrollYDelta:I
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-le v13, v7, :cond_5

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-le v13, v8, :cond_5

    .line 576
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_4

    .line 578
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v13, v8

    add-int/2addr v11, v13

    .line 585
    :goto_0
    sub-int v4, v1, v7

    .line 586
    .local v4, distanceToBottom:I
    invoke-static {v11, v4}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 606
    .end local v4           #distanceToBottom:I
    :cond_2
    :goto_1
    if-eqz v11, :cond_7

    const/4 v10, 0x1

    .line 607
    .local v10, scroll:Z
    :goto_2
    if-eqz v10, :cond_3

    .line 608
    neg-int v13, v11

    invoke-direct {p0, v13}, Lcom/huewu/pla/lib/internal/PLA_ListView;->scrollListItemsBy(I)V

    .line 609
    invoke-virtual/range {p0 .. p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->positionSelector(Landroid/view/View;)V

    .line 610
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v13

    iput v13, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSelectedTop:I

    .line 611
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->invalidate()V

    .line 613
    :cond_3
    return v10

    .line 581
    .end local v10           #scroll:Z
    :cond_4
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v7

    add-int/2addr v11, v13

    goto :goto_0

    .line 587
    :cond_5
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    if-ge v13, v8, :cond_2

    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    if-ge v13, v7, :cond_2

    .line 592
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-le v13, v6, :cond_6

    .line 594
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v13, v7, v13

    sub-int/2addr v11, v13

    .line 601
    :goto_3
    const/4 v13, 0x0

    invoke-virtual {p0, v13}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v12

    .line 602
    .local v12, top:I
    sub-int v3, v12, v8

    .line 603
    .local v3, deltaToTop:I
    invoke-static {v11, v3}, Ljava/lang/Math;->max(II)I

    move-result v11

    goto :goto_1

    .line 597
    .end local v3           #deltaToTop:I
    .end local v12           #top:I
    :cond_6
    move-object/from16 v0, p2

    iget v13, v0, Landroid/graphics/Rect;->top:I

    sub-int v13, v8, v13

    sub-int/2addr v11, v13

    goto :goto_3

    .line 606
    :cond_7
    const/4 v10, 0x0

    goto :goto_2
.end method

.method resetList()V
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 492
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->clearRecycledState(Ljava/util/ArrayList;)V

    .line 494
    invoke-super {p0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->resetList()V

    .line 496
    const/4 v0, 0x0

    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mLayoutMode:I

    .line 497
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 441
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDataSetObserver:Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 445
    :cond_0
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->resetList()V

    .line 446
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    invoke-virtual {v0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->clear()V

    .line 448
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 449
    :cond_1
    new-instance v0, Lcom/huewu/pla/lib/internal/PLA_HeaderViewListAdapter;

    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/huewu/pla/lib/internal/PLA_HeaderViewListAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    .line 454
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mOldSelectedPosition:I

    .line 455
    const-wide/high16 v0, -0x8000

    iput-wide v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mOldSelectedRowId:J

    .line 456
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    .line 457
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAreAllItemsSelectable:Z

    .line 458
    iget v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mOldItemCount:I

    .line 459
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemCount:I

    .line 461
    new-instance v0, Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;-><init>(Lcom/huewu/pla/lib/internal/PLA_AdapterView;)V

    iput-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDataSetObserver:Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;

    .line 462
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDataSetObserver:Lcom/huewu/pla/lib/internal/PLA_AdapterView$AdapterDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 464
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mRecycler:Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;

    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$RecycleBin;->setViewTypeCount(I)V

    .line 471
    :goto_1
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->requestLayout()V

    .line 472
    return-void

    .line 451
    :cond_2
    iput-object p1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_0

    .line 467
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAreAllItemsSelectable:Z

    goto :goto_1
.end method

.method public setCacheColorHint(I)V
    .locals 3
    .parameter "color"

    .prologue
    .line 1704
    ushr-int/lit8 v1, p1, 0x18

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1705
    .local v0, opaque:Z
    :goto_0
    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mIsCacheColorOpaque:Z

    .line 1706
    if-eqz v0, :cond_1

    .line 1707
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 1708
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerPaint:Landroid/graphics/Paint;

    .line 1710
    :cond_0
    iget-object v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1712
    :cond_1
    invoke-super {p0, p1}, Lcom/huewu/pla/lib/internal/PLA_AbsListView;->setCacheColorHint(I)V

    .line 1713
    return-void

    .line 1704
    .end local v0           #opaque:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "divider"

    .prologue
    const/4 v0, 0x0

    .line 1970
    if-eqz p1, :cond_2

    .line 1971
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    .line 1972
    instance-of v1, p1, Landroid/graphics/drawable/ColorDrawable;

    iput-boolean v1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mClipDivider:Z

    .line 1977
    :goto_0
    iput-object p1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 1978
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerIsOpaque:Z

    .line 1979
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->requestLayoutIfNecessary()V

    .line 1980
    return-void

    .line 1974
    :cond_2
    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    .line 1975
    iput-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mClipDivider:Z

    goto :goto_0
.end method

.method public setDividerHeight(I)V
    .locals 0
    .parameter "height"

    .prologue
    .line 1996
    iput p1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mDividerHeight:I

    .line 1997
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->requestLayoutIfNecessary()V

    .line 1998
    return-void
.end method

.method public setFooterDividersEnabled(Z)V
    .locals 0
    .parameter "footerDividersEnabled"

    .prologue
    .line 2022
    iput-boolean p1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mFooterDividersEnabled:Z

    .line 2023
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->invalidate()V

    .line 2024
    return-void
.end method

.method public setHeaderDividersEnabled(Z)V
    .locals 0
    .parameter "headerDividersEnabled"

    .prologue
    .line 2009
    iput-boolean p1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mHeaderDividersEnabled:Z

    .line 2010
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->invalidate()V

    .line 2011
    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 0
    .parameter "position"
    .parameter "value"

    .prologue
    .line 2167
    return-void
.end method

.method public setItemsCanFocus(Z)V
    .locals 1
    .parameter "itemsCanFocus"

    .prologue
    .line 1677
    iput-boolean p1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mItemsCanFocus:Z

    .line 1678
    if-nez p1, :cond_0

    .line 1679
    const/high16 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->setDescendantFocusability(I)V

    .line 1681
    :cond_0
    return-void
.end method

.method public setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "footer"

    .prologue
    .line 2058
    iput-object p1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mOverScrollFooter:Landroid/graphics/drawable/Drawable;

    .line 2059
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->invalidate()V

    .line 2060
    return-void
.end method

.method public setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 2033
    iput-object p1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mOverScrollHeader:Landroid/graphics/drawable/Drawable;

    .line 2038
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->getScrollY()I

    move-result v0

    if-gez v0, :cond_0

    .line 2039
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->invalidate()V

    .line 2041
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1432
    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 2
    .parameter "position"
    .parameter "y"

    .prologue
    .line 1435
    const/4 v0, 0x4

    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mLayoutMode:I

    .line 1436
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mListPadding:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSpecificTop:I

    .line 1438
    iget-boolean v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mNeedSync:Z

    if-eqz v0, :cond_0

    .line 1439
    iput p1, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSyncPosition:I

    .line 1440
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mSyncRowId:J

    .line 1443
    :cond_0
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mPositionScroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;

    if-eqz v0, :cond_1

    .line 1444
    iget-object v0, p0, Lcom/huewu/pla/lib/internal/PLA_ListView;->mPositionScroller:Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;

    invoke-virtual {v0}, Lcom/huewu/pla/lib/internal/PLA_AbsListView$PositionScroller;->stop()V

    .line 1446
    :cond_1
    invoke-virtual {p0}, Lcom/huewu/pla/lib/internal/PLA_ListView;->requestLayout()V

    .line 1447
    return-void
.end method
