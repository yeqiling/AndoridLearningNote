.class public Lcom/boohee/status/FriendShipActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "FriendShipActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/status/FriendShipActivity$MainPagerAdapter;
    }
.end annotation


# static fields
.field public static final FRIENDSHIP_POSITION:Ljava/lang/String; = "position"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mContentFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomView:Landroid/view/View;

.field private mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/boohee/status/FriendShipActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/FriendShipActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 70
    return-void
.end method

.method private initFragments()V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/status/FriendShipActivity;->mContentFragments:Ljava/util/List;

    .line 66
    iget-object v0, p0, Lcom/boohee/status/FriendShipActivity;->mContentFragments:Ljava/util/List;

    new-instance v1, Lcom/boohee/one/ui/fragment/FriendFragment;

    invoke-direct {v1}, Lcom/boohee/one/ui/fragment/FriendFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/boohee/status/FriendShipActivity;->mContentFragments:Ljava/util/List;

    new-instance v1, Lcom/boohee/one/ui/fragment/FansFragment;

    invoke-direct {v1}, Lcom/boohee/one/ui/fragment/FansFragment;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 51
    const v1, 0x7f0e00cb

    invoke-virtual {p0, v1}, Lcom/boohee/status/FriendShipActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/boohee/status/FriendShipActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 52
    iget-object v1, p0, Lcom/boohee/status/FriendShipActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/boohee/status/FriendShipActivity$MainPagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/status/FriendShipActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/status/FriendShipActivity;->mContentFragments:Ljava/util/List;

    invoke-direct {v2, p0, v3, v4}, Lcom/boohee/status/FriendShipActivity$MainPagerAdapter;-><init>(Lcom/boohee/status/FriendShipActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 53
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301b3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/status/FriendShipActivity;->mCustomView:Landroid/view/View;

    .line 54
    iget-object v1, p0, Lcom/boohee/status/FriendShipActivity;->mCustomView:Landroid/view/View;

    const v2, 0x7f0e00ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/boohee/widgets/PagerSlidingTabStrip;

    iput-object v1, p0, Lcom/boohee/status/FriendShipActivity;->mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;

    .line 55
    iget-object v1, p0, Lcom/boohee/status/FriendShipActivity;->mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;

    iget-object v2, p0, Lcom/boohee/status/FriendShipActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 56
    iget-object v1, p0, Lcom/boohee/status/FriendShipActivity;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget v2, p0, Lcom/boohee/status/FriendShipActivity;->position:I

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 58
    invoke-virtual {p0}, Lcom/boohee/status/FriendShipActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 59
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 60
    .local v0, layoutParams:Landroid/support/v7/app/ActionBar$LayoutParams;
    const v1, 0x800005

    iput v1, v0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 61
    invoke-virtual {p0}, Lcom/boohee/status/FriendShipActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/status/FriendShipActivity;->mCustomView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "ousState"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    const v0, 0x7f030102

    invoke-virtual {p0, v0}, Lcom/boohee/status/FriendShipActivity;->setContentView(I)V

    .line 43
    const-string v0, "\u597d\u53cb&\u7c89\u4e1d"

    invoke-virtual {p0, v0}, Lcom/boohee/status/FriendShipActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 44
    const-string v0, "status_viewFriendPage"

    invoke-static {p0, v0}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/boohee/status/FriendShipActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "position"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/status/FriendShipActivity;->position:I

    .line 46
    invoke-direct {p0}, Lcom/boohee/status/FriendShipActivity;->initFragments()V

    .line 47
    invoke-direct {p0}, Lcom/boohee/status/FriendShipActivity;->initView()V

    .line 48
    return-void
.end method
