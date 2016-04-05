.class public Lcom/boohee/status/TopicFragment;
.super Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;
.source "TopicFragment.java"


# static fields
.field private static final ARG_PARAM1:Ljava/lang/String; = "param1"

.field private static final ARG_PARAM2:Ljava/lang/String; = "param2"


# instance fields
.field private isChoice:Z

.field private isLastVisible:Z

.field private mAbsListViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

.field private mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

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

.field mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mTopic:Lcom/boohee/model/status/Topic;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/status/TopicFragment;->isLastVisible:Z

    .line 57
    new-instance v0, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    invoke-direct {v0}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;-><init>()V

    iput-object v0, p0, Lcom/boohee/status/TopicFragment;->mAbsListViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/status/TopicFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/boohee/status/TopicFragment;->getCurrentTopic()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/status/TopicFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/boohee/status/TopicFragment;->isLastVisible:Z

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/status/TopicFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/boohee/status/TopicFragment;->isLastVisible:Z

    return p1
.end method

.method static synthetic access$200(Lcom/boohee/status/TopicFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/boohee/status/TopicFragment;->getNextTopic()V

    return-void
.end method

.method static synthetic access$302(Lcom/boohee/status/TopicFragment;Lcom/boohee/model/status/Topic;)Lcom/boohee/model/status/Topic;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/boohee/status/TopicFragment;->mTopic:Lcom/boohee/model/status/Topic;

    return-object p1
.end method

.method static synthetic access$400(Lcom/boohee/status/TopicFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/status/TopicFragment;->mPosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/status/TopicFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/boohee/status/TopicFragment;->mPosts:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/boohee/status/TopicFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/boohee/status/TopicFragment;->initUI()V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/status/TopicFragment;)Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/status/TopicFragment;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    return-object v0
.end method

.method private getCurrentTopic()V
    .locals 4

    .prologue
    .line 124
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 125
    .local v0, jsonParams:Lcom/boohee/one/http/JsonParams;
    const-string v2, "title"

    iget-object v3, p0, Lcom/boohee/status/TopicFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    const-string v1, ""

    .line 127
    .local v1, url:Ljava/lang/String;
    iget-boolean v2, p0, Lcom/boohee/status/TopicFragment;->isChoice:Z

    if-nez v2, :cond_0

    .line 128
    const-string v1, "/api/v1/topics/posts"

    .line 132
    :goto_0
    new-instance v2, Lcom/boohee/status/TopicFragment$3;

    invoke-virtual {p0}, Lcom/boohee/status/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/TopicFragment$3;-><init>(Lcom/boohee/status/TopicFragment;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/boohee/status/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v0, v2, v3}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 148
    return-void

    .line 130
    :cond_0
    const-string v1, "/api/v1/topics/choices"

    goto :goto_0
.end method

.method private getNextTopic()V
    .locals 5

    .prologue
    .line 154
    iget-object v3, p0, Lcom/boohee/status/TopicFragment;->mPosts:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/boohee/status/TopicFragment;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/boohee/status/TopicFragment;->isLastVisible:Z

    .line 157
    iget-object v3, p0, Lcom/boohee/status/TopicFragment;->mPosts:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/boohee/status/TopicFragment;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/status/Post;

    iget v1, v3, Lcom/boohee/model/status/Post;->id:I

    .line 158
    .local v1, previous_id:I
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 159
    .local v0, jsonParams:Lcom/boohee/one/http/JsonParams;
    const-string v3, "title"

    iget-object v4, p0, Lcom/boohee/status/TopicFragment;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "previous_id"

    invoke-virtual {v0, v3, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 161
    const-string v2, ""

    .line 162
    .local v2, url:Ljava/lang/String;
    iget-boolean v3, p0, Lcom/boohee/status/TopicFragment;->isChoice:Z

    if-nez v3, :cond_2

    .line 163
    const-string v2, "/api/v1/topics/posts"

    .line 167
    :goto_1
    new-instance v3, Lcom/boohee/status/TopicFragment$4;

    invoke-virtual {p0}, Lcom/boohee/status/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/boohee/status/TopicFragment$4;-><init>(Lcom/boohee/status/TopicFragment;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/boohee/status/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v0, v3, v4}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0

    .line 165
    :cond_2
    const-string v2, "/api/v1/topics/choices"

    goto :goto_1
.end method

.method private initUI()V
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/boohee/status/TopicFragment;->mPosts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    invoke-virtual {p0}, Lcom/boohee/status/TopicFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/status/TopicFragment;->mPosts:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/boohee/status/TopicFragment;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    .line 189
    iget-object v0, p0, Lcom/boohee/status/TopicFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iget-object v1, p0, Lcom/boohee/status/TopicFragment;->mAdapter:Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 191
    :cond_0
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/boohee/status/TopicFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/TopicFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/status/TopicFragment$1;-><init>(Lcom/boohee/status/TopicFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 111
    iget-object v0, p0, Lcom/boohee/status/TopicFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/TopicFragment$2;

    invoke-direct {v1, p0}, Lcom/boohee/status/TopicFragment$2;-><init>(Lcom/boohee/status/TopicFragment;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 118
    return-void
.end method

.method public static newInstance(Ljava/lang/String;Z)Lcom/boohee/status/TopicFragment;
    .locals 3
    .parameter "title"
    .parameter "isChoice"

    .prologue
    .line 66
    new-instance v1, Lcom/boohee/status/TopicFragment;

    invoke-direct {v1}, Lcom/boohee/status/TopicFragment;-><init>()V

    .line 67
    .local v1, fragment:Lcom/boohee/status/TopicFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 68
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "param1"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "param2"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 70
    invoke-virtual {v1, v0}, Lcom/boohee/status/TopicFragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    return-object v1
.end method


# virtual methods
.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 201
    iget-object v0, p0, Lcom/boohee/status/TopicFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    if-nez v0, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 204
    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/boohee/status/TopicFragment;->mAbsListViewDelegate:Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;

    iget-object v0, p0, Lcom/boohee/status/TopicFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v1, p1, v0}, Lcom/boohee/myview/ViewPagerHeaderScroll/delegate/AbsListViewDelegate;->isViewBeingDragged(Landroid/view/MotionEvent;Landroid/widget/AbsListView;)Z

    move-result v0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 99
    invoke-direct {p0}, Lcom/boohee/status/TopicFragment;->initView()V

    .line 100
    invoke-direct {p0}, Lcom/boohee/status/TopicFragment;->getCurrentTopic()V

    .line 101
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/boohee/status/TopicFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/boohee/status/TopicFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param1"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/TopicFragment;->mTitle:Ljava/lang/String;

    .line 83
    invoke-virtual {p0}, Lcom/boohee/status/TopicFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "param2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/status/TopicFragment;->isChoice:Z

    .line 85
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 91
    const v1, 0x7f0301dc

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 92
    .local v0, view:Landroid/view/View;
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 93
    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 195
    invoke-super {p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->onDestroyView()V

    .line 196
    invoke-static {p0}, Lbutterknife/ButterKnife;->reset(Ljava/lang/Object;)V

    .line 197
    return-void
.end method
