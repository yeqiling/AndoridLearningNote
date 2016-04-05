.class public Lcom/boohee/uchoice/OrderListActivity;
.super Lcom/boohee/main/GestureActivity;
.source "OrderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;,
        Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;
    }
.end annotation


# static fields
.field public static final EXTRA_INDEX:Ljava/lang/String; = "extra_index"

.field static TAG:Ljava/lang/String;


# instance fields
.field private initialBadge:Lcom/boohee/myview/NewBadgeView;

.field private isInitPageLoad:Z

.field private isPayedPageLoad:Z

.field private isSentPageLoad:Z

.field private mAdapter:Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;

.field private mContext:Landroid/content/Context;

.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/ui/fragment/OrderListFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private payedBadge:Lcom/boohee/myview/NewBadgeView;

.field private sentBadge:Lcom/boohee/myview/NewBadgeView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/boohee/uchoice/OrderListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/uchoice/OrderListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mFragments:Ljava/util/List;

    .line 177
    return-void
.end method

.method static synthetic access$100(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/widgets/PagerSlidingTabStrip;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->initialBadge:Lcom/boohee/myview/NewBadgeView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/uchoice/OrderListActivity;Lcom/boohee/myview/NewBadgeView;)Lcom/boohee/myview/NewBadgeView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/boohee/uchoice/OrderListActivity;->initialBadge:Lcom/boohee/myview/NewBadgeView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/uchoice/OrderListActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->payedBadge:Lcom/boohee/myview/NewBadgeView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/uchoice/OrderListActivity;Lcom/boohee/myview/NewBadgeView;)Lcom/boohee/myview/NewBadgeView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/boohee/uchoice/OrderListActivity;->payedBadge:Lcom/boohee/myview/NewBadgeView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->sentBadge:Lcom/boohee/myview/NewBadgeView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/boohee/uchoice/OrderListActivity;Lcom/boohee/myview/NewBadgeView;)Lcom/boohee/myview/NewBadgeView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/boohee/uchoice/OrderListActivity;->sentBadge:Lcom/boohee/myview/NewBadgeView;

    return-object p1
.end method

.method static synthetic access$600(Lcom/boohee/uchoice/OrderListActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mFragments:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/uchoice/OrderListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/boohee/uchoice/OrderListActivity;->isInitPageLoad:Z

    return v0
.end method

.method static synthetic access$702(Lcom/boohee/uchoice/OrderListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/boohee/uchoice/OrderListActivity;->isInitPageLoad:Z

    return p1
.end method

.method static synthetic access$800(Lcom/boohee/uchoice/OrderListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/boohee/uchoice/OrderListActivity;->isPayedPageLoad:Z

    return v0
.end method

.method static synthetic access$802(Lcom/boohee/uchoice/OrderListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/boohee/uchoice/OrderListActivity;->isPayedPageLoad:Z

    return p1
.end method

.method static synthetic access$900(Lcom/boohee/uchoice/OrderListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/boohee/uchoice/OrderListActivity;->isSentPageLoad:Z

    return v0
.end method

.method static synthetic access$902(Lcom/boohee/uchoice/OrderListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/boohee/uchoice/OrderListActivity;->isSentPageLoad:Z

    return p1
.end method

.method private initFragments()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mFragments:Ljava/util/List;

    sget-object v1, Lcom/boohee/one/ui/fragment/OrderListFragment$StateType;->initial:Lcom/boohee/one/ui/fragment/OrderListFragment$StateType;

    invoke-static {v1}, Lcom/boohee/one/ui/fragment/OrderListFragment;->newInstance(Lcom/boohee/one/ui/fragment/OrderListFragment$StateType;)Lcom/boohee/one/ui/fragment/OrderListFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mFragments:Ljava/util/List;

    sget-object v1, Lcom/boohee/one/ui/fragment/OrderListFragment$StateType;->payed:Lcom/boohee/one/ui/fragment/OrderListFragment$StateType;

    invoke-static {v1}, Lcom/boohee/one/ui/fragment/OrderListFragment;->newInstance(Lcom/boohee/one/ui/fragment/OrderListFragment$StateType;)Lcom/boohee/one/ui/fragment/OrderListFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mFragments:Ljava/util/List;

    sget-object v1, Lcom/boohee/one/ui/fragment/OrderListFragment$StateType;->sent:Lcom/boohee/one/ui/fragment/OrderListFragment$StateType;

    invoke-static {v1}, Lcom/boohee/one/ui/fragment/OrderListFragment;->newInstance(Lcom/boohee/one/ui/fragment/OrderListFragment$StateType;)Lcom/boohee/one/ui/fragment/OrderListFragment;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 64
    const v0, 0x7f0e01eb

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/widgets/PagerSlidingTabStrip;

    iput-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;

    .line 65
    const v0, 0x7f0e01ec

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 66
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderListActivity;->initFragments()V

    .line 67
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderListActivity;->initViewPager()V

    .line 68
    return-void
.end method

.method private initViewPager()V
    .locals 3

    .prologue
    .line 77
    new-instance v0, Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderListActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;-><init>(Lcom/boohee/uchoice/OrderListActivity;Landroid/support/v4/app/FragmentManager;)V

    iput-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mAdapter:Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;

    .line 78
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/boohee/uchoice/OrderListActivity;->mAdapter:Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 79
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 80
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;

    iget-object v1, p0, Lcom/boohee/uchoice/OrderListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 81
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;

    new-instance v1, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;-><init>(Lcom/boohee/uchoice/OrderListActivity;Lcom/boohee/uchoice/OrderListActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_index"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/boohee/uchoice/OrderListActivity;->setCurrentIndex(I)V

    .line 83
    return-void
.end method

.method private loadCountData()V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderListActivity;->showLoading()V

    .line 101
    new-instance v0, Lcom/boohee/uchoice/OrderListActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/boohee/uchoice/OrderListActivity$1;-><init>(Lcom/boohee/uchoice/OrderListActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/ShopApi;->getOrdersStats(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 151
    return-void
.end method

.method private setCurrentIndex(I)V
    .locals 1
    .parameter "currentIndex"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mAdapter:Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;

    invoke-virtual {v0}, Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;->getCount()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mAdapter:Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;

    invoke-virtual {v0}, Lcom/boohee/uchoice/OrderListActivity$MPagerAdapter;->getCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 93
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/boohee/uchoice/OrderListActivity;->isInitPageLoad:Z

    if-nez v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/OrderListFragment;

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->initLoadData()V

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/uchoice/OrderListActivity;->isInitPageLoad:Z

    .line 97
    :cond_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f0703ab

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderListActivity;->setTitle(I)V

    .line 52
    const v0, 0x7f030069

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderListActivity;->setContentView(I)V

    .line 53
    iput-object p0, p0, Lcom/boohee/uchoice/OrderListActivity;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderListActivity;->initView()V

    .line 55
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 86
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 87
    const-string v0, "extra_index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/boohee/uchoice/OrderListActivity;->setCurrentIndex(I)V

    .line 88
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 59
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 60
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderListActivity;->loadCountData()V

    .line 61
    return-void
.end method
