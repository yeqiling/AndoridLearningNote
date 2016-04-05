.class public Lcom/boohee/status/PunchCommentListActivity;
.super Lcom/boohee/main/GestureActivity;
.source "PunchCommentListActivity.java"

# interfaces
.implements Lcom/boohee/one/ui/adapter/PunchCommentListAdapter$OnCommentListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/status/PunchCommentListActivity$LineChartOnImageTouchListener;
    }
.end annotation


# static fields
.field public static final KEY_COMMENT_PREFIX:Ljava/lang/String; = "KEY_COMMENT_PREFIX"

.field public static final KEY_PUNCH_POST:Ljava/lang/String; = "KEY_PUNCH_POST"

.field static final TAG:Ljava/lang/String;


# instance fields
.field btn_comment:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00fa
    .end annotation
.end field

.field private chartPunchHelper:Lcom/boohee/utils/ChartPunchHelper;

.field et_comment:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f9
    .end annotation
.end field

.field private hasMore:Z

.field private headerView:Landroid/view/View;

.field private iv_avatar:Lcom/boohee/widgets/RoundedCornersImage;

.field private linechart:Llecho/lib/hellocharts/view/LineChartView;

.field private ll_top:Landroid/widget/LinearLayout;

.field private mComments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Comment;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPage:I

.field mListView:Landroid/widget/ListView;

.field private mPage:I

.field mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00f8
    .end annotation
.end field

.field private postId:I

.field private punchCommentListAdapter:Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;

.field private tv_comment_count:Landroid/widget/TextView;

.field private tv_nickname:Landroid/widget/TextView;

.field private tv_post_time:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/boohee/status/PunchCommentListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/PunchCommentListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 69
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->mComments:Ljava/util/List;

    .line 93
    iput v1, p0, Lcom/boohee/status/PunchCommentListActivity;->mPage:I

    .line 94
    iput v1, p0, Lcom/boohee/status/PunchCommentListActivity;->mCurrentPage:I

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/status/PunchCommentListActivity;->postId:I

    .line 96
    iput-boolean v1, p0, Lcom/boohee/status/PunchCommentListActivity;->hasMore:Z

    .line 211
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/status/PunchCommentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/status/PunchCommentListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/boohee/status/PunchCommentListActivity;->mPage:I

    return v0
.end method

.method static synthetic access$102(Lcom/boohee/status/PunchCommentListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/boohee/status/PunchCommentListActivity;->mPage:I

    return p1
.end method

.method static synthetic access$200(Lcom/boohee/status/PunchCommentListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/boohee/status/PunchCommentListActivity;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$202(Lcom/boohee/status/PunchCommentListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput p1, p0, Lcom/boohee/status/PunchCommentListActivity;->mCurrentPage:I

    return p1
.end method

.method static synthetic access$302(Lcom/boohee/status/PunchCommentListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/boohee/status/PunchCommentListActivity;->hasMore:Z

    return p1
.end method

.method static synthetic access$400(Lcom/boohee/status/PunchCommentListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/boohee/status/PunchCommentListActivity;->requestComments()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/status/PunchCommentListActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/boohee/status/PunchCommentListActivity;->sendComment(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/status/PunchCommentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/status/PunchCommentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/status/PunchCommentListActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/boohee/status/PunchCommentListActivity;->refreshData(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$900(Lcom/boohee/status/PunchCommentListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private addListener()V
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->mListView:Landroid/widget/ListView;

    .line 124
    new-instance v0, Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;

    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/status/PunchCommentListActivity;->mComments:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->punchCommentListAdapter:Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;

    .line 125
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity;->punchCommentListAdapter:Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->punchCommentListAdapter:Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;

    invoke-virtual {v0, p0}, Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;->setOnCommentListener(Lcom/boohee/one/ui/adapter/PunchCommentListAdapter$OnCommentListener;)V

    .line 128
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->et_comment:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/boohee/status/PunchCommentListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "KEY_COMMENT_PREFIX"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-direct {p0}, Lcom/boohee/status/PunchCommentListActivity;->setSelection()V

    .line 131
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/status/PunchCommentListActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/status/PunchCommentListActivity$1;-><init>(Lcom/boohee/status/PunchCommentListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 139
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/PunchCommentListActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/status/PunchCommentListActivity$2;-><init>(Lcom/boohee/status/PunchCommentListActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 149
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/PunchCommentListActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/status/PunchCommentListActivity$3;-><init>(Lcom/boohee/status/PunchCommentListActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 159
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->btn_comment:Landroid/widget/Button;

    new-instance v1, Lcom/boohee/status/PunchCommentListActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/status/PunchCommentListActivity$4;-><init>(Lcom/boohee/status/PunchCommentListActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    return-void
.end method

.method private initHeaderView()V
    .locals 2

    .prologue
    .line 181
    const v0, 0x7f03010d

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->headerView:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity;->headerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e01d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->ll_top:Landroid/widget/LinearLayout;

    .line 184
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/widgets/RoundedCornersImage;

    iput-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->iv_avatar:Lcom/boohee/widgets/RoundedCornersImage;

    .line 185
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e02b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->tv_nickname:Landroid/widget/TextView;

    .line 186
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e02b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->tv_post_time:Landroid/widget/TextView;

    .line 187
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e0391

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->tv_comment_count:Landroid/widget/TextView;

    .line 188
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->headerView:Landroid/view/View;

    const v1, 0x7f0e01ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/view/LineChartView;

    iput-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->linechart:Llecho/lib/hellocharts/view/LineChartView;

    .line 189
    return-void
.end method

.method private refreshData(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "object"

    .prologue
    .line 313
    const-class v3, Lcom/boohee/model/chanllenge/ClockOutCommentData;

    invoke-static {p1, v3}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/chanllenge/ClockOutCommentData;

    .line 314
    .local v1, commentData:Lcom/boohee/model/chanllenge/ClockOutCommentData;
    if-nez v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, v1, Lcom/boohee/model/chanllenge/ClockOutCommentData;->clock_out_summary:Lcom/boohee/model/chanllenge/ClockOutPost;

    .line 316
    .local v0, clockOutPost:Lcom/boohee/model/chanllenge/ClockOutPost;
    if-eqz v0, :cond_1

    .line 317
    invoke-direct {p0, v0}, Lcom/boohee/status/PunchCommentListActivity;->refreshHeaderView(Lcom/boohee/model/chanllenge/ClockOutPost;)V

    .line 319
    :cond_1
    iget-object v2, v1, Lcom/boohee/model/chanllenge/ClockOutCommentData;->comments:Ljava/util/List;

    .line 320
    .local v2, commentList:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/status/Comment;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 321
    iget v3, p0, Lcom/boohee/status/PunchCommentListActivity;->mPage:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 322
    iget-object v3, p0, Lcom/boohee/status/PunchCommentListActivity;->mComments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 324
    :cond_2
    iget-object v3, p0, Lcom/boohee/status/PunchCommentListActivity;->mComments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 325
    iget-object v3, p0, Lcom/boohee/status/PunchCommentListActivity;->punchCommentListAdapter:Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;

    invoke-virtual {v3}, Lcom/boohee/one/ui/adapter/PunchCommentListAdapter;->notifyDataSetChanged()V

    .line 326
    iget v3, p0, Lcom/boohee/status/PunchCommentListActivity;->mPage:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/boohee/status/PunchCommentListActivity;->mPage:I

    .line 330
    :goto_1
    if-eqz v1, :cond_3

    iget v3, v1, Lcom/boohee/model/chanllenge/ClockOutCommentData;->comments_count:I

    if-nez v3, :cond_5

    .line 331
    :cond_3
    iget-object v3, p0, Lcom/boohee/status/PunchCommentListActivity;->tv_comment_count:Landroid/widget/TextView;

    const v4, 0x7f0703c8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 328
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/boohee/status/PunchCommentListActivity;->hasMore:Z

    goto :goto_1

    .line 333
    :cond_5
    iget-object v3, p0, Lcom/boohee/status/PunchCommentListActivity;->tv_comment_count:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5171\u6709 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/boohee/model/chanllenge/ClockOutCommentData;->comments_count:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u6761\u8bc4\u8bba"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshHeaderView(Lcom/boohee/model/chanllenge/ClockOutPost;)V
    .locals 5
    .parameter "post"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, p1, Lcom/boohee/model/chanllenge/ClockOutPost;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v2, v2, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/status/PunchCommentListActivity;->iv_avatar:Lcom/boohee/widgets/RoundedCornersImage;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 196
    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity;->tv_nickname:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/boohee/model/chanllenge/ClockOutPost;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v2, v2, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object v1, p1, Lcom/boohee/model/chanllenge/ClockOutPost;->created_at:Ljava/lang/String;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateHelper;->parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 198
    .local v0, createdAt:Ljava/util/Date;
    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity;->tv_post_time:Landroid/widget/TextView;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2, v0}, Lcom/boohee/utils/DateKnife;->display(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity;->ll_top:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/boohee/status/PunchCommentListActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/boohee/status/PunchCommentListActivity$5;-><init>(Lcom/boohee/status/PunchCommentListActivity;Lcom/boohee/model/chanllenge/ClockOutPost;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity;->linechart:Llecho/lib/hellocharts/view/LineChartView;

    new-instance v2, Lcom/boohee/status/PunchCommentListActivity$LineChartOnImageTouchListener;

    iget-object v3, p1, Lcom/boohee/model/chanllenge/ClockOutPost;->clock_outs:Ljava/util/List;

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/PunchCommentListActivity$LineChartOnImageTouchListener;-><init>(Lcom/boohee/status/PunchCommentListActivity;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/view/LineChartView;->setOnValueTouchListener(Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;)V

    .line 207
    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity;->chartPunchHelper:Lcom/boohee/utils/ChartPunchHelper;

    iget-object v2, p0, Lcom/boohee/status/PunchCommentListActivity;->linechart:Llecho/lib/hellocharts/view/LineChartView;

    iget-object v3, p1, Lcom/boohee/model/chanllenge/ClockOutPost;->clock_outs:Ljava/util/List;

    invoke-virtual {v1, p0, v2, v3}, Lcom/boohee/utils/ChartPunchHelper;->initLine(Landroid/content/Context;Llecho/lib/hellocharts/view/LineChartView;Ljava/util/List;)V

    .line 208
    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity;->chartPunchHelper:Lcom/boohee/utils/ChartPunchHelper;

    iget-object v2, p0, Lcom/boohee/status/PunchCommentListActivity;->linechart:Llecho/lib/hellocharts/view/LineChartView;

    iget-object v3, p1, Lcom/boohee/model/chanllenge/ClockOutPost;->clock_outs:Ljava/util/List;

    invoke-virtual {v1, p0, v2, v3}, Lcom/boohee/utils/ChartPunchHelper;->initLine(Landroid/content/Context;Llecho/lib/hellocharts/view/LineChartView;Ljava/util/List;)V

    .line 209
    return-void
.end method

.method private requestComments()V
    .locals 4

    .prologue
    .line 251
    iget v0, p0, Lcom/boohee/status/PunchCommentListActivity;->postId:I

    if-ltz v0, :cond_0

    iget-boolean v0, p0, Lcom/boohee/status/PunchCommentListActivity;->hasMore:Z

    if-nez v0, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/status/PunchCommentListActivity;->showLoading()V

    .line 253
    iget v0, p0, Lcom/boohee/status/PunchCommentListActivity;->postId:I

    iget v1, p0, Lcom/boohee/status/PunchCommentListActivity;->mPage:I

    const/16 v2, 0x14

    new-instance v3, Lcom/boohee/status/PunchCommentListActivity$6;

    invoke-direct {v3, p0, p0}, Lcom/boohee/status/PunchCommentListActivity$6;-><init>(Lcom/boohee/status/PunchCommentListActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, p0, v3}, Lcom/boohee/api/ChallengeApi;->getClockOutComments(IIILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private sendComment(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 275
    iget v0, p0, Lcom/boohee/status/PunchCommentListActivity;->postId:I

    if-gez v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->ctx:Landroid/content/Context;

    const-string v1, "challenge_clickCheckComment"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/boohee/status/PunchCommentListActivity;->showLoading()V

    .line 278
    iget v0, p0, Lcom/boohee/status/PunchCommentListActivity;->postId:I

    new-instance v1, Lcom/boohee/status/PunchCommentListActivity$7;

    invoke-direct {v1, p0, p0, p1}, Lcom/boohee/status/PunchCommentListActivity$7;-><init>(Lcom/boohee/status/PunchCommentListActivity;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0, p1, p0, v1}, Lcom/boohee/api/ChallengeApi;->createClockOutComment(ILjava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private setSelection()V
    .locals 3

    .prologue
    .line 174
    iget-object v2, p0, Lcom/boohee/status/PunchCommentListActivity;->et_comment:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 175
    .local v1, position:I
    iget-object v2, p0, Lcom/boohee/status/PunchCommentListActivity;->et_comment:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 176
    .local v0, etext:Landroid/text/Editable;
    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 177
    return-void
.end method

.method public static startMe(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "clockOutPost"

    .prologue
    .line 99
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcom/boohee/status/PunchCommentListActivity;->startMe(Landroid/content/Context;ILjava/lang/String;)V

    .line 100
    return-void
.end method

.method public static startMe(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "clockOutPost"
    .parameter "comment_prefix"

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/status/PunchCommentListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "KEY_PUNCH_POST"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_COMMENT_PREFIX"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    return-void
.end method


# virtual methods
.method public comment(Ljava/lang/String;)V
    .locals 3
    .parameter "nickname"

    .prologue
    .line 339
    const-string v0, ""

    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity;->et_comment:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->et_comment:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u56de\u590d@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :goto_0
    invoke-direct {p0}, Lcom/boohee/status/PunchCommentListActivity;->setSelection()V

    .line 346
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity;->et_comment:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/boohee/utils/Keyboard;->open(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 347
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->et_comment:Landroid/widget/EditText;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/status/PunchCommentListActivity;->et_comment:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 108
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    const v0, 0x7f030032

    invoke-virtual {p0, v0}, Lcom/boohee/status/PunchCommentListActivity;->setContentView(I)V

    .line 110
    const v0, 0x7f070178

    invoke-virtual {p0, v0}, Lcom/boohee/status/PunchCommentListActivity;->setTitle(I)V

    .line 111
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 112
    new-instance v0, Lcom/boohee/utils/ChartPunchHelper;

    invoke-direct {v0}, Lcom/boohee/utils/ChartPunchHelper;-><init>()V

    iput-object v0, p0, Lcom/boohee/status/PunchCommentListActivity;->chartPunchHelper:Lcom/boohee/utils/ChartPunchHelper;

    .line 113
    invoke-virtual {p0}, Lcom/boohee/status/PunchCommentListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_PUNCH_POST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/boohee/status/PunchCommentListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "KEY_PUNCH_POST"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/status/PunchCommentListActivity;->postId:I

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/boohee/status/PunchCommentListActivity;->addListener()V

    .line 117
    invoke-direct {p0}, Lcom/boohee/status/PunchCommentListActivity;->initHeaderView()V

    .line 118
    invoke-direct {p0}, Lcom/boohee/status/PunchCommentListActivity;->requestComments()V

    .line 119
    return-void
.end method
