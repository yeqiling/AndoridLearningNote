.class public Lcom/boohee/status/MyTimelineActivity;
.super Lcom/boohee/main/GestureActivity;
.source "MyTimelineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

.field private mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

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

.field private mUser:Lcom/boohee/model/status/StatusUser;

.field private tv_description:Landroid/widget/TextView;

.field private tv_diamond_count:Landroid/widget/TextView;

.field private tv_fans_count:Landroid/widget/TextView;

.field private tv_friends_count:Landroid/widget/TextView;

.field private tv_post_count:Landroid/widget/TextView;

.field private tv_username:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/boohee/status/MyTimelineActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/MyTimelineActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/status/MyTimelineActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/boohee/status/MyTimelineActivity;->getCurrentStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/status/MyTimelineActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mPosts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/status/MyTimelineActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/boohee/status/MyTimelineActivity;->mPosts:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/status/MyTimelineActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/boohee/status/MyTimelineActivity;->getPreviousStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/status/MyTimelineActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/boohee/status/MyTimelineActivity;->initHeader(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/one/ui/adapter/UserTimelineAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/status/MyTimelineActivity;Lcom/boohee/one/ui/adapter/UserTimelineAdapter;)Lcom/boohee/one/ui/adapter/UserTimelineAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/boohee/status/MyTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/model/status/StatusUser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/status/MyTimelineActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/status/MyTimelineActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 246
    if-eqz p0, :cond_0

    .line 247
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/status/MyTimelineActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 248
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 250
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 73
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/boohee/status/MyTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 74
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mListView:Landroid/widget/ListView;

    .line 75
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/boohee/status/MyTimelineActivity;->getHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mListView:Landroid/widget/ListView;

    const v1, 0x7f0d0102

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 77
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/MyTimelineActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/status/MyTimelineActivity$1;-><init>(Lcom/boohee/status/MyTimelineActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 84
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/MyTimelineActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/status/MyTimelineActivity$2;-><init>(Lcom/boohee/status/MyTimelineActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 92
    return-void
.end method

.method private getCurrentStatus()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    if-nez v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/status/MyTimelineActivity$3;

    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/status/MyTimelineActivity$3;-><init>(Lcom/boohee/status/MyTimelineActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getMyTimeline(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private getHeaderView()Landroid/view/View;
    .locals 4

    .prologue
    .line 95
    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f030259

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, headerView:Landroid/view/View;
    const v1, 0x7f0e0398

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->tv_username:Landroid/widget/TextView;

    .line 97
    const v1, 0x7f0e0399

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->tv_description:Landroid/widget/TextView;

    .line 98
    const v1, 0x7f0e01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 100
    const v1, 0x7f0e039a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->tv_post_count:Landroid/widget/TextView;

    .line 102
    const v1, 0x7f0e039b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->tv_diamond_count:Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->tv_diamond_count:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v1, 0x7f0e039f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v1, 0x7f0e039c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->tv_friends_count:Landroid/widget/TextView;

    .line 107
    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->tv_friends_count:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v1, 0x7f0e03a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f0e039d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->tv_fans_count:Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->tv_fans_count:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v1, 0x7f0e03a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-object v0
.end method

.method private getPreviousStatus()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    if-nez v0, :cond_0

    .line 186
    :goto_0
    return-void

    .line 175
    :cond_0
    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mPosts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Post;

    iget v0, v0, Lcom/boohee/model/status/Post;->id:I

    new-instance v2, Lcom/boohee/status/MyTimelineActivity$5;

    iget-object v3, p0, Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/MyTimelineActivity$5;-><init>(Lcom/boohee/status/MyTimelineActivity;Landroid/content/Context;)V

    invoke-static {v1, v0, v2}, Lcom/boohee/api/OneApi;->getMyPreviousTimeline(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private initHeader(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 142
    const-string v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/model/status/StatusUser;->parseUser(Lorg/json/JSONObject;)Lcom/boohee/model/status/StatusUser;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    .line 143
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    if-nez v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v0, v0, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 146
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v1, v1, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity;->iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    const v3, 0x7f02011a

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v1, Lcom/boohee/status/MyTimelineActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/status/MyTimelineActivity$4;-><init>(Lcom/boohee/status/MyTimelineActivity;)V

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->tv_username:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v1, v1, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->tv_description:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v0, v0, Lcom/boohee/model/status/StatusUser;->description:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "\u6682\u65e0\u63cf\u8ff0"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->tv_post_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget v2, v2, Lcom/boohee/model/status/StatusUser;->post_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/status/StatusUser;->displayCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->tv_diamond_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget v2, v2, Lcom/boohee/model/status/StatusUser;->envious_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/status/StatusUser;->displayCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->tv_friends_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget v2, v2, Lcom/boohee/model/status/StatusUser;->following_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/status/StatusUser;->displayCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->tv_fans_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget v2, v2, Lcom/boohee/model/status/StatusUser;->follower_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/status/StatusUser;->displayCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v0, v0, Lcom/boohee/model/status/StatusUser;->description:Ljava/lang/String;

    goto :goto_1
.end method

.method private startDiamond()V
    .locals 6

    .prologue
    .line 222
    const-string v2, "/api/v1/checkin/diamond_bank.html?token=%1$s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v5}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/one/http/client/StatusClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    :goto_0
    return-void

    .line 224
    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 225
    .local v0, browserIntent:Landroid/content/Intent;
    const-string v2, "url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    const-string v2, "title"

    invoke-virtual {p0}, Lcom/boohee/status/MyTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v0}, Lcom/boohee/status/MyTimelineActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 232
    sget-object v1, Lcom/boohee/status/MyTimelineActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    packed-switch p1, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 235
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 236
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 237
    .local v0, position:I
    sget-object v1, Lcom/boohee/status/MyTimelineActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/adapter/UserTimelineAdapter;->getItem(I)Lcom/boohee/model/status/Post;

    move-result-object v1

    iget v2, v1, Lcom/boohee/model/status/Post;->comment_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/boohee/model/status/Post;->comment_count:I

    .line 239
    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    invoke-virtual {v1}, Lcom/boohee/one/ui/adapter/UserTimelineAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 216
    :goto_0
    return-void

    .line 193
    :sswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/status/FriendShipActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 195
    invoke-virtual {p0, v0}, Lcom/boohee/status/MyTimelineActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 199
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/status/FriendShipActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "position"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0, v0}, Lcom/boohee/status/MyTimelineActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 205
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    invoke-direct {p0}, Lcom/boohee/status/MyTimelineActivity;->startDiamond()V

    goto :goto_0

    .line 209
    :sswitch_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/status/FriendShipActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "position"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/boohee/status/MyTimelineActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 213
    :sswitch_4
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/status/FriendShipActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "position"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/boohee/status/MyTimelineActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 191
    :sswitch_data_0
    .sparse-switch
        0x7f0e0362 -> :sswitch_0
        0x7f0e039b -> :sswitch_2
        0x7f0e039c -> :sswitch_3
        0x7f0e039d -> :sswitch_4
        0x7f0e039f -> :sswitch_2
        0x7f0e03a0 -> :sswitch_3
        0x7f0e03a1 -> :sswitch_4
        0x7f0e04ff -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    const v0, 0x7f03005e

    invoke-virtual {p0, v0}, Lcom/boohee/status/MyTimelineActivity;->setContentView(I)V

    .line 65
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity;->ctx:Landroid/content/Context;

    const-string v1, "status_viewUserPage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 66
    const v0, 0x7f0703aa

    invoke-virtual {p0, v0}, Lcom/boohee/status/MyTimelineActivity;->setTitle(I)V

    .line 67
    invoke-direct {p0}, Lcom/boohee/status/MyTimelineActivity;->findViews()V

    .line 68
    invoke-static {p0}, Lcom/boohee/one/ui/PullToRefreshHelper;->loadFirst(Landroid/app/Activity;)V

    .line 69
    return-void
.end method
