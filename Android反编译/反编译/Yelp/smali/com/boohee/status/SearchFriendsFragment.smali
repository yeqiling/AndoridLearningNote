.class public Lcom/boohee/status/SearchFriendsFragment;
.super Lcom/boohee/one/ui/fragment/BaseFragment;
.source "SearchFriendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/status/SearchFriendsFragment$MyLocationListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private clearGpsBar:Landroid/widget/LinearLayout;

.field private id:I

.field private mFriendsAdapter:Lcom/boohee/status/FriendsAdapter;

.field private mFriendsUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/StatusUser;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;

.field private mLocationClient:Lcom/baidu/location/LocationClient;

.field private mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

.field private myListener:Lcom/baidu/location/BDLocationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/boohee/status/SearchFriendsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/SearchFriendsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 249
    return-void
.end method

.method private SerchNearByFriends(Lcom/baidu/location/BDLocation;)V
    .locals 10
    .parameter "bdLocation"

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "\u4e2d\u56fd"

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getProvince()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getDistrict()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/location/BDLocation;->getLatitude()D

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/boohee/status/SearchFriendsFragment$4;

    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, p0, v8}, Lcom/boohee/status/SearchFriendsFragment$4;-><init>(Lcom/boohee/status/SearchFriendsFragment;Landroid/content/Context;)V

    invoke-static/range {v0 .. v7}, Lcom/boohee/api/OneApi;->getUserNearNby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 157
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/status/SearchFriendsFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/boohee/status/SearchFriendsFragment;->clearGps()V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/status/SearchFriendsFragment;)Lcom/boohee/status/FriendsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->mFriendsAdapter:Lcom/boohee/status/FriendsAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/status/SearchFriendsFragment;Lcom/boohee/status/FriendsAdapter;)Lcom/boohee/status/FriendsAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/boohee/status/SearchFriendsFragment;->mFriendsAdapter:Lcom/boohee/status/FriendsAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/status/SearchFriendsFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->mFriendsUsers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/status/SearchFriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/boohee/status/SearchFriendsFragment;->mFriendsUsers:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/status/SearchFriendsFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/status/SearchFriendsFragment;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/status/SearchFriendsFragment;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->clearGpsBar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/status/SearchFriendsFragment;Lcom/baidu/location/BDLocation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/boohee/status/SearchFriendsFragment;->SerchNearByFriends(Lcom/baidu/location/BDLocation;)V

    return-void
.end method

.method private clearGps()V
    .locals 6

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    new-instance v4, Lcom/boohee/status/SearchFriendsFragment$5;

    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/boohee/status/SearchFriendsFragment$5;-><init>(Lcom/boohee/status/SearchFriendsFragment;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/api/OneApi;->getClearNearNby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 173
    return-void
.end method

.method private findViews()V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0340

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/boohee/status/SearchFriendsFragment;->clearGpsBar:Landroid/widget/LinearLayout;

    .line 85
    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e0341

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 86
    .local v0, clearGps:Landroid/widget/Button;
    new-instance v1, Lcom/boohee/status/SearchFriendsFragment$1;

    invoke-direct {v1, p0}, Lcom/boohee/status/SearchFriendsFragment$1;-><init>(Lcom/boohee/status/SearchFriendsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0e00f8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    iput-object v1, p0, Lcom/boohee/status/SearchFriendsFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    .line 103
    iget-object v1, p0, Lcom/boohee/status/SearchFriendsFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/boohee/status/SearchFriendsFragment;->mListView:Landroid/widget/ListView;

    .line 104
    iget-object v1, p0, Lcom/boohee/status/SearchFriendsFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/status/SearchFriendsFragment$2;

    invoke-direct {v2, p0}, Lcom/boohee/status/SearchFriendsFragment$2;-><init>(Lcom/boohee/status/SearchFriendsFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 114
    iget-object v1, p0, Lcom/boohee/status/SearchFriendsFragment;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    new-instance v2, Lcom/boohee/status/SearchFriendsFragment$3;

    invoke-direct {v2, p0}, Lcom/boohee/status/SearchFriendsFragment$3;-><init>(Lcom/boohee/status/SearchFriendsFragment;)V

    invoke-virtual {v1, v2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setOnRefreshListener(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;)V

    .line 120
    return-void
.end method

.method private getAlikeFriends()V
    .locals 3

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/status/SearchFriendsFragment$7;

    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/status/SearchFriendsFragment$7;-><init>(Lcom/boohee/status/SearchFriendsFragment;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getUserAlike(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 223
    return-void
.end method

.method private getRecommendFriends()V
    .locals 3

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/boohee/status/SearchFriendsFragment$6;

    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/boohee/status/SearchFriendsFragment$6;-><init>(Lcom/boohee/status/SearchFriendsFragment;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/OneApi;->getUserRecommended(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 198
    return-void
.end method

.method public static newInstance(I)Lcom/boohee/status/SearchFriendsFragment;
    .locals 1
    .parameter "id"

    .prologue
    .line 58
    new-instance v0, Lcom/boohee/status/SearchFriendsFragment;

    invoke-direct {v0}, Lcom/boohee/status/SearchFriendsFragment;-><init>()V

    .line 59
    .local v0, fragment:Lcom/boohee/status/SearchFriendsFragment;
    iput p0, v0, Lcom/boohee/status/SearchFriendsFragment;->id:I

    .line 60
    return-object v0
.end method


# virtual methods
.method protected initLocationClient()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 226
    new-instance v1, Lcom/boohee/status/SearchFriendsFragment$MyLocationListener;

    invoke-direct {v1, p0}, Lcom/boohee/status/SearchFriendsFragment$MyLocationListener;-><init>(Lcom/boohee/status/SearchFriendsFragment;)V

    iput-object v1, p0, Lcom/boohee/status/SearchFriendsFragment;->myListener:Lcom/baidu/location/BDLocationListener;

    .line 227
    new-instance v1, Lcom/baidu/location/LocationClient;

    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/baidu/location/LocationClient;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/boohee/status/SearchFriendsFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    .line 228
    new-instance v0, Lcom/baidu/location/LocationClientOption;

    invoke-direct {v0}, Lcom/baidu/location/LocationClientOption;-><init>()V

    .line 229
    .local v0, option:Lcom/baidu/location/LocationClientOption;
    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->setOpenGps(Z)V

    .line 230
    const-string v1, "bd09ll"

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setCoorType(Ljava/lang/String;)V

    .line 231
    const v1, 0xdbba0

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setScanSpan(I)V

    .line 232
    sget-object v1, Lcom/baidu/location/LocationClientOption$LocationMode;->Hight_Accuracy:Lcom/baidu/location/LocationClientOption$LocationMode;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClientOption;->setLocationMode(Lcom/baidu/location/LocationClientOption$LocationMode;)V

    .line 233
    invoke-virtual {v0, v3}, Lcom/baidu/location/LocationClientOption;->setIsNeedAddress(Z)V

    .line 234
    iget-object v1, p0, Lcom/boohee/status/SearchFriendsFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v1, v0}, Lcom/baidu/location/LocationClient;->setLocOption(Lcom/baidu/location/LocationClientOption;)V

    .line 235
    iget-object v1, p0, Lcom/boohee/status/SearchFriendsFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v2, p0, Lcom/boohee/status/SearchFriendsFragment;->myListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v1, v2}, Lcom/baidu/location/LocationClient;->registerLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 236
    return-void
.end method

.method protected initUI()V
    .locals 2

    .prologue
    .line 123
    iget v0, p0, Lcom/boohee/status/SearchFriendsFragment;->id:I

    if-nez v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/boohee/status/SearchFriendsFragment;->getRecommendFriends()V

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget v0, p0, Lcom/boohee/status/SearchFriendsFragment;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->requestLocation()V

    .line 127
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->clearGpsBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 128
    :cond_2
    iget v0, p0, Lcom/boohee/status/SearchFriendsFragment;->id:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/boohee/status/SearchFriendsFragment;->getAlikeFriends()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 65
    invoke-super {p0, p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    iget v0, p0, Lcom/boohee/status/SearchFriendsFragment;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->initLocationClient()V

    .line 69
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 73
    const v0, 0x7f0300df

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 274
    invoke-super {p0}, Lcom/boohee/one/ui/fragment/BaseFragment;->onDestroy()V

    .line 275
    iget v0, p0, Lcom/boohee/status/SearchFriendsFragment;->id:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    iget-object v1, p0, Lcom/boohee/status/SearchFriendsFragment;->myListener:Lcom/baidu/location/BDLocationListener;

    invoke-virtual {v0, v1}, Lcom/baidu/location/LocationClient;->unRegisterLocationListener(Lcom/baidu/location/BDLocationListener;)V

    .line 277
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->stop()V

    .line 278
    sget-object v0, Lcom/boohee/status/SearchFriendsFragment;->TAG:Ljava/lang/String;

    const-string v1, "Exit BhLocationService"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 78
    invoke-super {p0, p1, p2}, Lcom/boohee/one/ui/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 79
    invoke-direct {p0}, Lcom/boohee/status/SearchFriendsFragment;->findViews()V

    .line 80
    invoke-virtual {p0}, Lcom/boohee/status/SearchFriendsFragment;->initUI()V

    .line 81
    return-void
.end method

.method protected declared-synchronized requestLocation()V
    .locals 2

    .prologue
    .line 239
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    sget-object v0, Lcom/boohee/status/SearchFriendsFragment;->TAG:Ljava/lang/String;

    const-string v1, "requestLocation"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->requestLocation()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 247
    :goto_0
    monitor-exit p0

    return-void

    .line 242
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsFragment;->mLocationClient:Lcom/baidu/location/LocationClient;

    invoke-virtual {v0}, Lcom/baidu/location/LocationClient;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 239
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 245
    :cond_1
    :try_start_2
    sget-object v0, Lcom/boohee/status/SearchFriendsFragment;->TAG:Ljava/lang/String;

    const-string v1, "mLocationClient is not started!"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
