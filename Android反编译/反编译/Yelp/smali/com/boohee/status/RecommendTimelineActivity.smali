.class public Lcom/boohee/status/RecommendTimelineActivity;
.super Lcom/boohee/main/GestureActivity;
.source "RecommendTimelineActivity.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private isLastVisible:Z

.field private mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mPosts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;"
        }
    .end annotation
.end field

.field private mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/boohee/status/TopicActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/RecommendTimelineActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->isLastVisible:Z

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/status/RecommendTimelineActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/status/RecommendTimelineActivity;->getCurrentTopic()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/status/RecommendTimelineActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->isLastVisible:Z

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/status/RecommendTimelineActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/boohee/status/RecommendTimelineActivity;->isLastVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/boohee/status/RecommendTimelineActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/status/RecommendTimelineActivity;->getNextTopic()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/status/RecommendTimelineActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/status/RecommendTimelineActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPosts:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/boohee/status/RecommendTimelineActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/boohee/status/RecommendTimelineActivity;->initUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/status/RecommendTimelineActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/status/RecommendTimelineActivity;)Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    return-object v0
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 47
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/boohee/status/RecommendTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 48
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->mListView:Landroid/widget/ListView;

    .line 49
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/RecommendTimelineActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/status/RecommendTimelineActivity$1;-><init>(Lcom/boohee/status/RecommendTimelineActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 56
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/RecommendTimelineActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/status/RecommendTimelineActivity$2;-><init>(Lcom/boohee/status/RecommendTimelineActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 63
    return-void
.end method

.method private getCurrentTopic()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/status/RecommendTimelineActivity$3;

    iget-object v2, p0, Lcom/boohee/status/RecommendTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/status/RecommendTimelineActivity$3;-><init>(Lcom/boohee/status/RecommendTimelineActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/StatusApi;->getRecommended(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 84
    return-void
.end method

.method private getNextTopic()V
    .locals 4

    .prologue
    .line 90
    iget-object v1, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPosts:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/boohee/status/RecommendTimelineActivity;->isLastVisible:Z

    .line 93
    iget-object v1, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPosts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/Post;

    iget v0, v1, Lcom/boohee/model/status/Post;->id:I

    .line 94
    .local v0, previous_id:I
    iget-object v1, p0, Lcom/boohee/status/RecommendTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/status/RecommendTimelineActivity$4;

    iget-object v3, p0, Lcom/boohee/status/RecommendTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/RecommendTimelineActivity$4;-><init>(Lcom/boohee/status/RecommendTimelineActivity;Landroid/content/Context;)V

    invoke-static {v1, v0, v2}, Lcom/boohee/api/StatusApi;->getPreviousRecommended(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPosts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    iget-object v1, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPosts:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    .line 117
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/status/RecommendTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f03006e

    invoke-virtual {p0, v0}, Lcom/boohee/status/RecommendTimelineActivity;->setContentView(I)V

    .line 40
    const-string v0, "\u70ed\u95e8\u52a8\u6001"

    invoke-virtual {p0, v0}, Lcom/boohee/status/RecommendTimelineActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 41
    invoke-direct {p0}, Lcom/boohee/status/RecommendTimelineActivity;->findViews()V

    .line 42
    invoke-static {p0}, Lcom/boohee/one/ui/PullToRefreshHelper;->loadFirst(Landroid/app/Activity;)V

    .line 43
    return-void
.end method
