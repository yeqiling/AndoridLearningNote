.class public Lcom/boohee/widgets/BooheeListView;
.super Landroid/widget/ListView;
.source "BooheeListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/widgets/BooheeListView$OnLoadMoreListener;
    }
.end annotation


# instance fields
.field private isLastStatus:Z

.field private mListener:Lcom/boohee/widgets/BooheeListView$OnLoadMoreListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-virtual {p0, p0}, Lcom/boohee/widgets/BooheeListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 29
    return-void
.end method

.method private loadMore()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/widgets/BooheeListView;->mListener:Lcom/boohee/widgets/BooheeListView$OnLoadMoreListener;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/boohee/widgets/BooheeListView;->isLastStatus:Z

    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/boohee/widgets/BooheeListView;->mListener:Lcom/boohee/widgets/BooheeListView$OnLoadMoreListener;

    invoke-interface {v0}, Lcom/boohee/widgets/BooheeListView$OnLoadMoreListener;->onLoadMore()V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 42
    add-int v0, p2, p3

    if-ne v0, p4, :cond_0

    if-lez p4, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/boohee/widgets/BooheeListView;->loadMore()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/widgets/BooheeListView;->isLastStatus:Z

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/widgets/BooheeListView;->isLastStatus:Z

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 38
    return-void
.end method

.method public setOnLoadMoreListener(Lcom/boohee/widgets/BooheeListView$OnLoadMoreListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/boohee/widgets/BooheeListView;->mListener:Lcom/boohee/widgets/BooheeListView$OnLoadMoreListener;

    .line 33
    return-void
.end method
