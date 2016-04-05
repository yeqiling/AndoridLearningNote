.class public Lcom/boohee/status/UserTimelineActivity;
.super Lcom/boohee/main/GestureActivity;
.source "UserTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/status/UserTimelineActivity$AvatarListener;,
        Lcom/boohee/status/UserTimelineActivity$FollowListener;
    }
.end annotation


# static fields
.field public static final NICK_NAME:Ljava/lang/String; = "nickname"

.field static final TAG:Ljava/lang/String; = null

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# instance fields
.field private isLastVisible:Z

.field private iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

.field private mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mNickname:Ljava/lang/String;

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

.field private mUserId:Ljava/lang/String;

.field private tb_follow:Landroid/widget/ToggleButton;

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
    .line 53
    const-class v0, Lcom/boohee/status/UserTimelineActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/UserTimelineActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/status/UserTimelineActivity;->isLastVisible:Z

    .line 307
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/status/UserTimelineActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/boohee/status/UserTimelineActivity;->getCurrentStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/status/UserTimelineActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/boohee/status/UserTimelineActivity;->isLastVisible:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/boohee/status/UserTimelineActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->tb_follow:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/boohee/status/UserTimelineActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->tv_fans_count:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/status/UserTimelineActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/boohee/status/UserTimelineActivity;->getPreviousStatus()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/status/UserTimelineActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/boohee/status/UserTimelineActivity;->refreshCurrentData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/status/UserTimelineActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/status/UserTimelineActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/boohee/status/UserTimelineActivity;->refreshPreviousData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/model/status/StatusUser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method public static comeOnBaby(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "nickName"

    .prologue
    .line 340
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 341
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/status/UserTimelineActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 342
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "nickname"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 345
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private findViews()V
    .locals 2

    .prologue
    .line 80
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/boohee/status/UserTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 81
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mListView:Landroid/widget/ListView;

    .line 82
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mListView:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/boohee/status/UserTimelineActivity;->getHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 83
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mListView:Landroid/widget/ListView;

    const v1, 0x7f0d0102

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    .line 84
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/UserTimelineActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/status/UserTimelineActivity$1;-><init>(Lcom/boohee/status/UserTimelineActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 91
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/UserTimelineActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/status/UserTimelineActivity$2;-><init>(Lcom/boohee/status/UserTimelineActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 99
    return-void
.end method

.method private getCurrentStatus()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mNickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->mNickname:Ljava/lang/String;

    new-instance v2, Lcom/boohee/status/UserTimelineActivity$3;

    iget-object v3, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/UserTimelineActivity$3;-><init>(Lcom/boohee/status/UserTimelineActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->getUserTimelineByNickName(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 153
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->mUserId:Ljava/lang/String;

    new-instance v2, Lcom/boohee/status/UserTimelineActivity$4;

    iget-object v3, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/UserTimelineActivity$4;-><init>(Lcom/boohee/status/UserTimelineActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->getUserTimelineById(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private getHeaderView()Landroid/view/View;
    .locals 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->ctx:Landroid/content/Context;

    const v2, 0x7f030111

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, headerView:Landroid/view/View;
    const v1, 0x7f0e0398

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->tv_username:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f0e0399

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->tv_description:Landroid/widget/TextView;

    .line 105
    const v1, 0x7f0e01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    .line 107
    const v1, 0x7f0e039a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->tv_post_count:Landroid/widget/TextView;

    .line 109
    const v1, 0x7f0e039b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->tv_diamond_count:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0e039c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->tv_friends_count:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0e039d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->tv_fans_count:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0e0397

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->tb_follow:Landroid/widget/ToggleButton;

    .line 115
    return-object v0
.end method

.method private getPreviousStatus()V
    .locals 5

    .prologue
    .line 174
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mPosts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/status/UserTimelineActivity;->isLastVisible:Z

    .line 177
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mNickname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 178
    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity;->mNickname:Ljava/lang/String;

    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mPosts:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/status/UserTimelineActivity;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Post;

    iget v0, v0, Lcom/boohee/model/status/Post;->id:I

    new-instance v3, Lcom/boohee/status/UserTimelineActivity$5;

    iget-object v4, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4}, Lcom/boohee/status/UserTimelineActivity$5;-><init>(Lcom/boohee/status/UserTimelineActivity;Landroid/content/Context;)V

    invoke-static {v1, v2, v0, v3}, Lcom/boohee/api/OneApi;->getUserPreviousTimelineByNickName(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity;->mUserId:Ljava/lang/String;

    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mPosts:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/status/UserTimelineActivity;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Post;

    iget v0, v0, Lcom/boohee/model/status/Post;->id:I

    new-instance v3, Lcom/boohee/status/UserTimelineActivity$6;

    iget-object v4, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4}, Lcom/boohee/status/UserTimelineActivity$6;-><init>(Lcom/boohee/status/UserTimelineActivity;Landroid/content/Context;)V

    invoke-static {v1, v2, v0, v3}, Lcom/boohee/api/OneApi;->getUserPreviousTimelineById(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private handleIntent()V
    .locals 1

    .prologue
    .line 119
    const-string v0, "nickname"

    invoke-virtual {p0, v0}, Lcom/boohee/status/UserTimelineActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mNickname:Ljava/lang/String;

    .line 120
    const-string v0, "user_id"

    invoke-virtual {p0, v0}, Lcom/boohee/status/UserTimelineActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mUserId:Ljava/lang/String;

    .line 121
    return-void
.end method

.method private initHeader(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    .line 216
    const-string v0, "user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/model/status/StatusUser;->parseUser(Lorg/json/JSONObject;)Lcom/boohee/model/status/StatusUser;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    .line 217
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    if-nez v0, :cond_0

    .line 231
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v0, v0, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v1, v1, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity;->iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    const v3, 0x7f02011a

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->tv_username:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v1, v1, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->tv_description:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v0, v0, Lcom/boohee/model/status/StatusUser;->description:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "\u6682\u65e0\u63cf\u8ff0"

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->tv_post_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget v2, v2, Lcom/boohee/model/status/StatusUser;->post_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/status/StatusUser;->displayCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->tv_diamond_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget v2, v2, Lcom/boohee/model/status/StatusUser;->envious_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/status/StatusUser;->displayCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->tv_friends_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget v2, v2, Lcom/boohee/model/status/StatusUser;->following_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/status/StatusUser;->displayCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->tv_fans_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget v2, v2, Lcom/boohee/model/status/StatusUser;->follower_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/status/StatusUser;->displayCount(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->tb_follow:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-boolean v1, v1, Lcom/boohee/model/status/StatusUser;->following:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 229
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->tb_follow:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/boohee/status/UserTimelineActivity$FollowListener;

    invoke-direct {v1, p0, v4}, Lcom/boohee/status/UserTimelineActivity$FollowListener;-><init>(Lcom/boohee/status/UserTimelineActivity;Lcom/boohee/status/UserTimelineActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->iv_avatar:Lde/hdodenhof/circleimageview/CircleImageView;

    new-instance v1, Lcom/boohee/status/UserTimelineActivity$AvatarListener;

    invoke-direct {v1, p0, v4}, Lcom/boohee/status/UserTimelineActivity$AvatarListener;-><init>(Lcom/boohee/status/UserTimelineActivity;Lcom/boohee/status/UserTimelineActivity$1;)V

    invoke-virtual {v0, v1}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget-object v0, v0, Lcom/boohee/model/status/StatusUser;->description:Ljava/lang/String;

    goto :goto_1
.end method

.method private refreshCurrentData(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "object"

    .prologue
    .line 162
    :try_start_0
    invoke-direct {p0, p1}, Lcom/boohee/status/UserTimelineActivity;->initHeader(Lorg/json/JSONObject;)V

    .line 163
    const-string v2, "posts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 164
    .local v1, postsArray:Lorg/json/JSONArray;
    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1           #postsArray:Lorg/json/JSONArray;
    :goto_0
    invoke-static {v2}, Lcom/boohee/model/status/Post;->parsePosts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/model/status/Post;->removeDisablePost(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/status/UserTimelineActivity;->mPosts:Ljava/util/ArrayList;

    .line 165
    new-instance v2, Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    iget-object v3, p0, Lcom/boohee/status/UserTimelineActivity;->mPosts:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    invoke-direct {v2, p0, v3, v4}, Lcom/boohee/one/ui/adapter/UserTimelineAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/boohee/model/status/StatusUser;)V

    iput-object v2, p0, Lcom/boohee/status/UserTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    .line 166
    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/boohee/status/UserTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    :goto_1
    return-void

    .line 164
    .restart local v1       #postsArray:Lorg/json/JSONArray;
    :cond_0
    check-cast v1, Lorg/json/JSONArray;

    .end local v1           #postsArray:Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private refreshPreviousData(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 203
    :try_start_0
    const-string v3, "posts"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 204
    .local v2, postsArray:Lorg/json/JSONArray;
    instance-of v3, v2, Lorg/json/JSONArray;

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v2           #postsArray:Lorg/json/JSONArray;
    :goto_0
    invoke-static {v3}, Lcom/boohee/model/status/Post;->parsePosts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/model/status/Post;->removeDisablePost(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    .line 205
    .local v1, morePosts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/status/Post;>;"
    if-eqz v1, :cond_0

    .line 206
    iget-object v3, p0, Lcom/boohee/status/UserTimelineActivity;->mPosts:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 207
    iget-object v3, p0, Lcom/boohee/status/UserTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    invoke-virtual {v3}, Lcom/boohee/one/ui/adapter/UserTimelineAdapter;->notifyDataSetChanged()V

    .line 208
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/boohee/status/UserTimelineActivity;->isLastVisible:Z

    .line 213
    .end local v1           #morePosts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/status/Post;>;"
    :cond_0
    :goto_1
    return-void

    .line 204
    .restart local v2       #postsArray:Lorg/json/JSONArray;
    :cond_1
    check-cast v2, Lorg/json/JSONArray;

    .end local v2           #postsArray:Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private showBlock()V
    .locals 3

    .prologue
    .line 290
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v1, "\u786e\u5b9a\u628aTA\u62c9\u9ed1\uff1f"

    const-string v2, "TA\u5c06\u5728\u4f60\u7684\u4e16\u754c\u91cc\u6c38\u8fdc\u6d88\u5931..."

    invoke-static {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const-string v1, "\u4e0d\u4e86"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    const-string v1, "\u4e00\u5b9a\u4ee5\u53ca\u80af\u5b9a"

    new-instance v2, Lcom/boohee/status/UserTimelineActivity$7;

    invoke-direct {v2, p0}, Lcom/boohee/status/UserTimelineActivity$7;-><init>(Lcom/boohee/status/UserTimelineActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 305
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 326
    sget-object v1, Lcom/boohee/status/UserTimelineActivity;->TAG:Ljava/lang/String;

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

    .line 327
    packed-switch p1, :pswitch_data_0

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 329
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 330
    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 331
    .local v0, position:I
    sget-object v1, Lcom/boohee/status/UserTimelineActivity;->TAG:Ljava/lang/String;

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

    .line 332
    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/adapter/UserTimelineAdapter;->getItem(I)Lcom/boohee/model/status/Post;

    move-result-object v1

    iget v2, v1, Lcom/boohee/model/status/Post;->comment_count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/boohee/model/status/Post;->comment_count:I

    .line 333
    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    invoke-virtual {v1}, Lcom/boohee/one/ui/adapter/UserTimelineAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v0, 0x7f03008c

    invoke-virtual {p0, v0}, Lcom/boohee/status/UserTimelineActivity;->setContentView(I)V

    .line 72
    const-string v0, "status_viewUserPage"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    const v0, 0x7f070606

    invoke-virtual {p0, v0}, Lcom/boohee/status/UserTimelineActivity;->setTitle(I)V

    .line 74
    invoke-direct {p0}, Lcom/boohee/status/UserTimelineActivity;->handleIntent()V

    .line 75
    invoke-direct {p0}, Lcom/boohee/status/UserTimelineActivity;->findViews()V

    .line 76
    invoke-static {p0}, Lcom/boohee/one/ui/PullToRefreshHelper;->loadFirst(Landroid/app/Activity;)V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/boohee/status/UserTimelineActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f001e

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 264
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 269
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 282
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    .line 271
    :pswitch_0
    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    if-eqz v2, :cond_0

    .line 272
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/boohee/status/ReportActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "extra_id"

    iget-object v3, p0, Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;

    iget v3, v3, Lcom/boohee/model/status/StatusUser;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    const-string v2, "extra_type"

    sget-object v3, Lcom/boohee/status/ReportActivity$ReportType;->User:Lcom/boohee/status/ReportActivity$ReportType;

    invoke-virtual {v3}, Lcom/boohee/status/ReportActivity$ReportType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    invoke-virtual {p0, v0}, Lcom/boohee/status/UserTimelineActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 279
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-direct {p0}, Lcom/boohee/status/UserTimelineActivity;->showBlock()V

    goto :goto_0

    .line 269
    :pswitch_data_0
    .packed-switch 0x7f0e07e4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
