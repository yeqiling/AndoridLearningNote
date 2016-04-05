.class public Lcom/boohee/status/ContactsActivity;
.super Lcom/boohee/main/GestureActivity;
.source "ContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/status/ContactsActivity$ViewHolder;,
        Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private isLastVisible:Z

.field private mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;

.field private mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private mUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/StatusUser;",
            ">;"
        }
    .end annotation
.end field

.field private page:I

.field private searchBarView:Lcom/boohee/widgets/SearchBarView;

.field private temps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/StatusUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/boohee/status/ContactsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/ContactsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/status/ContactsActivity;->page:I

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/status/ContactsActivity;->isLastVisible:Z

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/status/ContactsActivity;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/status/ContactsActivity;Lcom/boohee/status/ContactsActivity$ContactsAdapter;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/status/ContactsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/boohee/status/ContactsActivity;->getFollowings()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/status/ContactsActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/boohee/status/ContactsActivity;->isLastVisible:Z

    return v0
.end method

.method static synthetic access$202(Lcom/boohee/status/ContactsActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/boohee/status/ContactsActivity;->isLastVisible:Z

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/status/ContactsActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/boohee/status/ContactsActivity;->searchFollowings(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/status/ContactsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->temps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$502(Lcom/boohee/status/ContactsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/boohee/status/ContactsActivity;->temps:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$600(Lcom/boohee/status/ContactsActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$708(Lcom/boohee/status/ContactsActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Lcom/boohee/status/ContactsActivity;->page:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/status/ContactsActivity;->page:I

    return v0
.end method

.method static synthetic access$800(Lcom/boohee/status/ContactsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private getFollowings()V
    .locals 4

    .prologue
    .line 149
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/status/ContactsActivity;->page:I

    .line 150
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v1, p0, Lcom/boohee/status/ContactsActivity;->page:I

    new-instance v2, Lcom/boohee/status/ContactsActivity$7;

    iget-object v3, p0, Lcom/boohee/status/ContactsActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/ContactsActivity$7;-><init>(Lcom/boohee/status/ContactsActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->getFollowings(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 172
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 88
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/boohee/status/ContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v0, p0, Lcom/boohee/status/ContactsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 89
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/ContactsActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/status/ContactsActivity$1;-><init>(Lcom/boohee/status/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/ContactsActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/status/ContactsActivity$2;-><init>(Lcom/boohee/status/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 104
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v1, Lcom/boohee/status/ContactsActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/status/ContactsActivity$3;-><init>(Lcom/boohee/status/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnLastItemVisibleListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;)V

    .line 112
    const v0, 0x7f0e00a1

    invoke-virtual {p0, v0}, Lcom/boohee/status/ContactsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/widgets/SearchBarView;

    iput-object v0, p0, Lcom/boohee/status/ContactsActivity;->searchBarView:Lcom/boohee/widgets/SearchBarView;

    .line 113
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->searchBarView:Lcom/boohee/widgets/SearchBarView;

    invoke-virtual {p0}, Lcom/boohee/status/ContactsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070242

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/SearchBarView;->setHint(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->searchBarView:Lcom/boohee/widgets/SearchBarView;

    new-instance v1, Lcom/boohee/status/ContactsActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/status/ContactsActivity$4;-><init>(Lcom/boohee/status/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/SearchBarView;->setSearchListener(Lcom/boohee/widgets/SearchBarView$OnSearchListener;)V

    .line 121
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->searchBarView:Lcom/boohee/widgets/SearchBarView;

    new-instance v1, Lcom/boohee/status/ContactsActivity$5;

    invoke-direct {v1, p0}, Lcom/boohee/status/ContactsActivity$5;-><init>(Lcom/boohee/status/ContactsActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/SearchBarView;->setFinishSearchListener(Lcom/boohee/widgets/SearchBarView$OnFinishSearchListener;)V

    .line 133
    invoke-virtual {p0}, Lcom/boohee/status/ContactsActivity;->firstLoad()V

    .line 134
    return-void
.end method

.method private searchFollowings(Ljava/lang/String;)V
    .locals 3
    .parameter "q"

    .prologue
    .line 194
    invoke-virtual {p0}, Lcom/boohee/status/ContactsActivity;->showLoading()V

    .line 195
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/status/ContactsActivity$9;

    iget-object v2, p0, Lcom/boohee/status/ContactsActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/status/ContactsActivity$9;-><init>(Lcom/boohee/status/ContactsActivity;Landroid/content/Context;)V

    invoke-static {v0, p1, v1}, Lcom/boohee/api/OneApi;->getFollowingsSearch(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 214
    return-void
.end method


# virtual methods
.method public firstLoad()V
    .locals 4

    .prologue
    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/boohee/status/ContactsActivity$6;

    invoke-direct {v1, p0}, Lcom/boohee/status/ContactsActivity$6;-><init>(Lcom/boohee/status/ContactsActivity;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 146
    return-void
.end method

.method public getNextFriends()V
    .locals 4

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/status/ContactsActivity;->isLastVisible:Z

    .line 176
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v1, p0, Lcom/boohee/status/ContactsActivity;->page:I

    new-instance v2, Lcom/boohee/status/ContactsActivity$8;

    iget-object v3, p0, Lcom/boohee/status/ContactsActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/ContactsActivity$8;-><init>(Lcom/boohee/status/ContactsActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->getFollowings(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    .line 191
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/boohee/status/ContactsActivity;->setContentView(I)V

    .line 63
    const v0, 0x7f070193

    invoke-virtual {p0, v0}, Lcom/boohee/status/ContactsActivity;->setTitle(I)V

    .line 64
    invoke-direct {p0}, Lcom/boohee/status/ContactsActivity;->init()V

    .line 65
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 69
    const/4 v0, 0x0

    const v1, 0x7f070082

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 70
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 75
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 83
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 77
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 78
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "contact"

    iget-object v1, p0, Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/boohee/status/ContactsActivity;->setResult(ILandroid/content/Intent;)V

    .line 80
    invoke-virtual {p0}, Lcom/boohee/status/ContactsActivity;->finish()V

    .line 81
    const/4 v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    invoke-virtual {v1}, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->getSelectedNickname()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 75
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
