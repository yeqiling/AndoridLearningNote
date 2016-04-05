.class public Lcom/boohee/status/NotificationActivity;
.super Lcom/boohee/main/GestureActivity;
.source "NotificationActivity.java"


# static fields
.field public static final EXTRA_TITLE:Ljava/lang/String; = "EXTRA_TITLE"

.field static final TAG:Ljava/lang/String;


# instance fields
.field isRead:Z

.field private mAdapter:Lcom/boohee/status/NotificationAdapter;

.field private mEmptyView:Landroid/widget/TextView;

.field private mListView:Landroid/widget/ListView;

.field private mNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mType:Ljava/lang/String;

.field mUserId:I

.field page:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/boohee/status/NotificationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/NotificationActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 47
    iput v0, p0, Lcom/boohee/status/NotificationActivity;->page:I

    .line 48
    iput-boolean v0, p0, Lcom/boohee/status/NotificationActivity;->isRead:Z

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/status/NotificationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/boohee/status/NotificationActivity;->getNotifications()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/status/NotificationActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/boohee/status/NotificationActivity;->getPreviousNotifications()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/status/NotificationActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity;->mNotifications:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/status/NotificationActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/boohee/status/NotificationActivity;->mNotifications:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/status/NotificationActivity;)Lcom/boohee/status/NotificationAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity;->mAdapter:Lcom/boohee/status/NotificationAdapter;

    return-object v0
.end method

.method static synthetic access$302(Lcom/boohee/status/NotificationActivity;Lcom/boohee/status/NotificationAdapter;)Lcom/boohee/status/NotificationAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/boohee/status/NotificationActivity;->mAdapter:Lcom/boohee/status/NotificationAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/boohee/status/NotificationActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/status/NotificationActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/status/NotificationActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method private getNotifications()V
    .locals 4

    .prologue
    .line 107
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/status/NotificationActivity;->page:I

    .line 108
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/boohee/status/NotificationActivity;->getParams(Z)Lcom/boohee/one/http/JsonParams;

    move-result-object v1

    new-instance v2, Lcom/boohee/status/NotificationActivity$3;

    iget-object v3, p0, Lcom/boohee/status/NotificationActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/NotificationActivity$3;-><init>(Lcom/boohee/status/NotificationActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->getNotifications(Landroid/content/Context;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V

    .line 125
    return-void
.end method

.method private getParams(Z)Lcom/boohee/one/http/JsonParams;
    .locals 4
    .parameter "isNext"

    .prologue
    .line 93
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 94
    .local v0, params:Lcom/boohee/one/http/JsonParams;
    const-string v1, "status_api_version"

    const-string v2, "1.2"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/boohee/status/NotificationActivity;->mType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const-string v1, "type"

    iget-object v2, p0, Lcom/boohee/status/NotificationActivity;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_0
    iget-boolean v1, p0, Lcom/boohee/status/NotificationActivity;->isRead:Z

    if-nez v1, :cond_1

    .line 99
    const-string v1, "read"

    const-string v2, "false"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_1
    if-eqz p1, :cond_2

    .line 101
    const-string v1, "page"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/boohee/status/NotificationActivity;->page:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :cond_2
    return-object v0
.end method

.method private getPreviousNotifications()V
    .locals 4

    .prologue
    .line 128
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/boohee/status/NotificationActivity;->getParams(Z)Lcom/boohee/one/http/JsonParams;

    move-result-object v1

    new-instance v2, Lcom/boohee/status/NotificationActivity$4;

    iget-object v3, p0, Lcom/boohee/status/NotificationActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/NotificationActivity$4;-><init>(Lcom/boohee/status/NotificationActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->getNotificationsPrevious(Landroid/content/Context;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V

    .line 137
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x42f0

    const/4 v3, 0x0

    .line 66
    const v1, 0x7f0e00f8

    invoke-virtual {p0, v1}, Lcom/boohee/status/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/boohee/status/NotificationActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 67
    iget-object v1, p0, Lcom/boohee/status/NotificationActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/boohee/status/NotificationActivity;->mListView:Landroid/widget/ListView;

    .line 68
    const v1, 0x7f0e04d7

    invoke-virtual {p0, v1}, Lcom/boohee/status/NotificationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/status/NotificationActivity;->mEmptyView:Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lcom/boohee/status/NotificationActivity;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/boohee/status/NotificationActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 71
    iget-object v1, p0, Lcom/boohee/status/NotificationActivity;->mType:Ljava/lang/String;

    const-string v2, "friendship"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/boohee/status/NotificationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02028f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 73
    .local v0, topDrawable:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/boohee/status/NotificationActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v1, v4}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iget-object v2, p0, Lcom/boohee/status/NotificationActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v2, v4}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    iget-object v1, p0, Lcom/boohee/status/NotificationActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v0, v3, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 77
    .end local v0           #topDrawable:Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v1, p0, Lcom/boohee/status/NotificationActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/status/NotificationActivity$1;

    invoke-direct {v2, p0}, Lcom/boohee/status/NotificationActivity$1;-><init>(Lcom/boohee/status/NotificationActivity;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 84
    iget-object v1, p0, Lcom/boohee/status/NotificationActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/status/NotificationActivity$2;

    invoke-direct {v2, p0}, Lcom/boohee/status/NotificationActivity$2;-><init>(Lcom/boohee/status/NotificationActivity;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 90
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const v0, 0x7f03018d

    invoke-virtual {p0, v0}, Lcom/boohee/status/NotificationActivity;->setContentView(I)V

    .line 55
    const-string v0, "status_viewMessageList"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    const-string v0, "EXTRA_TITLE"

    invoke-virtual {p0, v0}, Lcom/boohee/status/NotificationActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/boohee/status/NotificationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 58
    invoke-virtual {p0}, Lcom/boohee/status/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/status/NotificationActivity;->mUserId:I

    .line 59
    invoke-virtual {p0}, Lcom/boohee/status/NotificationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isRead"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/status/NotificationActivity;->isRead:Z

    .line 60
    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/boohee/status/NotificationActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/NotificationActivity;->mType:Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lcom/boohee/status/NotificationActivity;->init()V

    .line 62
    invoke-static {p0}, Lcom/boohee/one/ui/PullToRefreshHelper;->loadFirst(Landroid/app/Activity;)V

    .line 63
    return-void
.end method
