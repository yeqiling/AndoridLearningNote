.class public Lcom/boohee/utils/ListViewUtils;
.super Ljava/lang/Object;
.source "ListViewUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static setListViewHeightBasedOnChildren(Landroid/widget/ListView;)V
    .locals 7
    .parameter "listView"

    .prologue
    const/4 v6, 0x0

    .line 55
    invoke-virtual {p0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    .line 56
    .local v1, listAdapter:Landroid/widget/ListAdapter;
    if-nez v1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 61
    :cond_0
    const/4 v4, 0x0

    .line 62
    .local v4, totalHeight:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 63
    const/4 v5, 0x0

    invoke-interface {v1, v0, v5, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 64
    .local v2, listItem:Landroid/view/View;
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    .line 62
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    .end local v2           #listItem:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 69
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70
    invoke-virtual {p0, v3}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static smoothScrollListView(Landroid/widget/ListView;I)V
    .locals 3
    .parameter "listView"
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 45
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 46
    invoke-virtual {p0, v2, v2}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(II)V

    .line 52
    :goto_0
    return-void

    .line 47
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    .line 48
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method

.method public static smoothScrollListViewToTop(Landroid/widget/ListView;)V
    .locals 4
    .parameter "listView"

    .prologue
    .line 26
    if-nez p0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 29
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/boohee/utils/ListViewUtils;->smoothScrollListView(Landroid/widget/ListView;I)V

    .line 30
    new-instance v0, Lcom/boohee/utils/ListViewUtils$1;

    invoke-direct {v0, p0}, Lcom/boohee/utils/ListViewUtils$1;-><init>(Landroid/widget/ListView;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {p0, v0, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
