.class public Lcom/boohee/status/SearchFriendsActivity;
.super Lcom/boohee/main/GestureActivity;
.source "SearchFriendsActivity.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private closeBtn:Landroid/widget/ImageView;

.field public indicator:Lcom/viewpagerindicator/TabPageIndicator;

.field private isLastVisible:Z

.field private isSearchListVisible:Z

.field private mListView:Landroid/widget/ListView;

.field private mPage:I

.field private mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mQueryString:Ljava/lang/String;

.field private mSearchAdapter:Lcom/boohee/status/FriendsAdapter;

.field private mSearchUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/StatusUser;",
            ">;"
        }
    .end annotation
.end field

.field private mainLayout:Landroid/widget/LinearLayout;

.field private searchText:Landroid/widget/EditText;

.field private txt_search:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/boohee/status/SearchFriendsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/SearchFriendsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 66
    iput-boolean v1, p0, Lcom/boohee/status/SearchFriendsActivity;->isLastVisible:Z

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mSearchUsers:Ljava/util/List;

    .line 71
    iput-boolean v1, p0, Lcom/boohee/status/SearchFriendsActivity;->isSearchListVisible:Z

    .line 72
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mPage:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->searchText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/status/SearchFriendsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/status/SearchFriendsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/status/SearchFriendsActivity;->searchNext()V

    return-void
.end method

.method static synthetic access$1100(Lcom/boohee/status/SearchFriendsActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mSearchUsers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/boohee/status/SearchFriendsActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/boohee/status/SearchFriendsActivity;->mSearchUsers:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/boohee/status/SearchFriendsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/boohee/status/SearchFriendsActivity;)Lcom/boohee/status/FriendsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mSearchAdapter:Lcom/boohee/status/FriendsAdapter;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/boohee/status/SearchFriendsActivity;Lcom/boohee/status/FriendsAdapter;)Lcom/boohee/status/FriendsAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/boohee/status/SearchFriendsActivity;->mSearchAdapter:Lcom/boohee/status/FriendsAdapter;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/boohee/status/SearchFriendsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/boohee/status/SearchFriendsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/boohee/status/SearchFriendsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/status/SearchFriendsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/status/SearchFriendsActivity;->searchRemote()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->closeBtn:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/status/SearchFriendsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/boohee/status/SearchFriendsActivity;->isSearchListVisible:Z

    return v0
.end method

.method static synthetic access$402(Lcom/boohee/status/SearchFriendsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/boohee/status/SearchFriendsActivity;->isSearchListVisible:Z

    return p1
.end method

.method static synthetic access$500(Lcom/boohee/status/SearchFriendsActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mainLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->txt_search:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/status/SearchFriendsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/status/SearchFriendsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/boohee/status/SearchFriendsActivity;->isLastVisible:Z

    return v0
.end method

.method static synthetic access$902(Lcom/boohee/status/SearchFriendsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/boohee/status/SearchFriendsActivity;->isLastVisible:Z

    return p1
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 268
    if-eqz p0, :cond_0

    .line 269
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/status/SearchFriendsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 270
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 272
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private getFrags()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 113
    .local v0, frags:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/support/v4/app/Fragment;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/boohee/status/SearchFriendsFragment;->newInstance(I)Lcom/boohee/status/SearchFriendsFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/boohee/status/SearchFriendsFragment;->newInstance(I)Lcom/boohee/status/SearchFriendsFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/boohee/status/SearchFriendsFragment;->newInstance(I)Lcom/boohee/status/SearchFriendsFragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    return-object v0
.end method

.method private getTitles()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 124
    const v0, 0x7f0e00a8

    invoke-virtual {p0, v0}, Lcom/boohee/status/SearchFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->closeBtn:Landroid/widget/ImageView;

    .line 125
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->closeBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/boohee/status/SearchFriendsActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/status/SearchFriendsActivity$1;-><init>(Lcom/boohee/status/SearchFriendsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v0, 0x7f0e061e

    invoke-virtual {p0, v0}, Lcom/boohee/status/SearchFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->searchText:Landroid/widget/EditText;

    .line 132
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->searchText:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/status/SearchFriendsActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/status/SearchFriendsActivity$2;-><init>(Lcom/boohee/status/SearchFriendsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 141
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->searchText:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/status/SearchFriendsActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/status/SearchFriendsActivity$3;-><init>(Lcom/boohee/status/SearchFriendsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 162
    const v0, 0x7f0e0764

    invoke-virtual {p0, v0}, Lcom/boohee/status/SearchFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->txt_search:Landroid/widget/TextView;

    .line 163
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->txt_search:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/status/SearchFriendsActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/status/SearchFriendsActivity$4;-><init>(Lcom/boohee/status/SearchFriendsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v0, 0x7f0e0208

    invoke-virtual {p0, v0}, Lcom/boohee/status/SearchFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mainLayout:Landroid/widget/LinearLayout;

    .line 179
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/boohee/status/SearchFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 180
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mListView:Landroid/widget/ListView;

    .line 181
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/SearchFriendsActivity$5;

    invoke-direct {v1, p0}, Lcom/boohee/status/SearchFriendsActivity$5;-><init>(Lcom/boohee/status/SearchFriendsActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 187
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/SearchFriendsActivity$6;

    invoke-direct {v1, p0}, Lcom/boohee/status/SearchFriendsActivity$6;-><init>(Lcom/boohee/status/SearchFriendsActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 194
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/boohee/status/SearchFriendsActivity$7;

    invoke-direct {v1, p0}, Lcom/boohee/status/SearchFriendsActivity$7;-><init>(Lcom/boohee/status/SearchFriendsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 201
    return-void
.end method

.method private searchNext()V
    .locals 3

    .prologue
    .line 244
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/status/SearchFriendsActivity;->isLastVisible:Z

    .line 245
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mQueryString:Ljava/lang/String;

    iget v1, p0, Lcom/boohee/status/SearchFriendsActivity;->mPage:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/boohee/status/SearchFriendsActivity;->mPage:I

    new-instance v2, Lcom/boohee/status/SearchFriendsActivity$9;

    invoke-direct {v2, p0, p0}, Lcom/boohee/status/SearchFriendsActivity$9;-><init>(Lcom/boohee/status/SearchFriendsActivity;Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2}, Lcom/boohee/api/OneApi;->getUserSearch(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V

    .line 265
    return-void
.end method

.method private searchRemote()V
    .locals 3

    .prologue
    .line 204
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mPage:I

    .line 205
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->searchText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mQueryString:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mQueryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 208
    const v0, 0x7f070138

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 241
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsActivity;->showLoading()V

    .line 212
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity;->mQueryString:Ljava/lang/String;

    iget v1, p0, Lcom/boohee/status/SearchFriendsActivity;->mPage:I

    new-instance v2, Lcom/boohee/status/SearchFriendsActivity$8;

    invoke-direct {v2, p0, p0}, Lcom/boohee/status/SearchFriendsActivity$8;-><init>(Lcom/boohee/status/SearchFriendsActivity;Landroid/content/Context;)V

    invoke-static {p0, v0, v1, v2}, Lcom/boohee/api/OneApi;->getUserSearch(Landroid/content/Context;Ljava/lang/String;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v3, 0x7f030073

    invoke-virtual {p0, v3}, Lcom/boohee/status/SearchFriendsActivity;->setContentView(I)V

    .line 79
    const v3, 0x7f07023f

    invoke-virtual {p0, v3}, Lcom/boohee/status/SearchFriendsActivity;->setTitle(I)V

    .line 80
    iget-object v3, p0, Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;

    const-string v4, "status_viewFindFriendPage"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 81
    invoke-direct {p0}, Lcom/boohee/status/SearchFriendsActivity;->init()V

    .line 82
    new-instance v0, Lcom/boohee/main/FragmentAdapter;

    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-direct {p0}, Lcom/boohee/status/SearchFriendsActivity;->getFrags()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0}, Lcom/boohee/status/SearchFriendsActivity;->getTitles()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lcom/boohee/main/FragmentAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 83
    .local v0, adapter:Lcom/boohee/main/FragmentAdapter;
    const v3, 0x7f0e0173

    invoke-virtual {p0, v3}, Lcom/boohee/status/SearchFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    .line 84
    .local v2, pager:Landroid/support/v4/view/ViewPager;
    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 85
    const v3, 0x7f0e0174

    invoke-virtual {p0, v3}, Lcom/boohee/status/SearchFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/viewpagerindicator/TabPageIndicator;

    .line 86
    .local v1, indicator:Lcom/viewpagerindicator/TabPageIndicator;
    invoke-virtual {v1, v2}, Lcom/viewpagerindicator/TabPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 87
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 91
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 92
    const/4 v1, 0x0

    const v2, 0x7f070467

    invoke-interface {p1, v1, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 93
    .local v0, add:Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 94
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 107
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 101
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    invoke-virtual {p0, v0}, Lcom/boohee/status/SearchFriendsActivity;->startActivity(Landroid/content/Intent;)V

    .line 104
    const/4 v1, 0x1

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
