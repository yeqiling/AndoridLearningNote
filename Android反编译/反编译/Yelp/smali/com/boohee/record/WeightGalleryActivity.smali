.class public Lcom/boohee/record/WeightGalleryActivity;
.super Lcom/boohee/one/ui/BaseNoToolbarActivity;
.source "WeightGalleryActivity.java"


# static fields
.field public static final KEY_DATE:Ljava/lang/String; = "key_date"

.field public static final KEY_WEIGHT_RECORD:Ljava/lang/String; = "key_weight_record"

.field public static final PHOTOS:Ljava/lang/String; = "/api/v2/photos?date_position=%s&size=%s&token=%s"


# instance fields
.field private mDate:Ljava/lang/String;

.field private mDatePosition:Ljava/lang/String;

.field private mHeight:F

.field private mPreviewPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/WeightPreviewPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private mWeightImagePagerAdapter:Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;

.field private mWeightRecord:Lcom/boohee/model/mine/WeightRecord;

.field rl_gallery:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0273
    .end annotation
.end field

.field tv_index:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01b1
    .end annotation
.end field

.field viewpager:Landroid/support/v4/view/ViewPager;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00cb
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseNoToolbarActivity;-><init>()V

    .line 51
    const/high16 v0, 0x4320

    iput v0, p0, Lcom/boohee/record/WeightGalleryActivity;->mHeight:F

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/record/WeightGalleryActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/record/WeightGalleryActivity;->mPreviewPhotos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/record/WeightGalleryActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/boohee/record/WeightGalleryActivity;->mPreviewPhotos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/record/WeightGalleryActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/boohee/record/WeightGalleryActivity;->init()V

    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/boohee/record/WeightGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_weight_record"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/mine/WeightRecord;

    iput-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->mWeightRecord:Lcom/boohee/model/mine/WeightRecord;

    .line 66
    invoke-virtual {p0}, Lcom/boohee/record/WeightGalleryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "key_date"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->mDate:Ljava/lang/String;

    .line 67
    new-instance v1, Lcom/boohee/modeldao/UserDao;

    invoke-direct {v1, p0}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/UserDao;->queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v0

    .line 68
    .local v0, user:Lcom/boohee/model/User;
    invoke-virtual {v0}, Lcom/boohee/model/User;->height()F

    move-result v1

    iput v1, p0, Lcom/boohee/record/WeightGalleryActivity;->mHeight:F

    .line 69
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    .line 94
    iget-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->mPreviewPhotos:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->mPreviewPhotos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->mPreviewPhotos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 96
    .local v0, size:I
    new-instance v1, Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/record/WeightGalleryActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/WeightGalleryActivity;->mPreviewPhotos:Ljava/util/List;

    iget v4, p0, Lcom/boohee/record/WeightGalleryActivity;->mHeight:F

    invoke-direct {v1, v2, v3, v4}, Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;F)V

    iput-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->mWeightImagePagerAdapter:Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;

    .line 97
    iget-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/boohee/record/WeightGalleryActivity;->mWeightImagePagerAdapter:Lcom/boohee/one/ui/adapter/WeightImagePagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 98
    iget-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    new-instance v2, Lcom/boohee/record/WeightGalleryActivity$2;

    invoke-direct {v2, p0}, Lcom/boohee/record/WeightGalleryActivity$2;-><init>(Lcom/boohee/record/WeightGalleryActivity;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 105
    invoke-direct {p0, v0}, Lcom/boohee/record/WeightGalleryActivity;->setCurrentItem(I)V

    goto :goto_0
.end method

.method private setCurrentItem(I)V
    .locals 7
    .parameter "size"

    .prologue
    .line 115
    const/4 v1, 0x0

    .line 116
    .local v1, index:I
    iget-object v2, p0, Lcom/boohee/record/WeightGalleryActivity;->mDate:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 118
    iget-object v3, p0, Lcom/boohee/record/WeightGalleryActivity;->mDate:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/record/WeightGalleryActivity;->mPreviewPhotos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/mine/WeightPreviewPhoto;

    iget-object v2, v2, Lcom/boohee/model/mine/WeightPreviewPhoto;->record_on:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 119
    move v1, v0

    .line 124
    .end local v0           #i:I
    :cond_0
    iget-object v2, p0, Lcom/boohee/record/WeightGalleryActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 125
    iget-object v2, p0, Lcom/boohee/record/WeightGalleryActivity;->tv_index:Landroid/widget/TextView;

    const v3, 0x7f070632

    invoke-virtual {p0, v3}, Lcom/boohee/record/WeightGalleryActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v1, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    invoke-direct {p0}, Lcom/boohee/record/WeightGalleryActivity;->startAnim()V

    .line 127
    return-void

    .line 117
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private startAnim()V
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->rl_gallery:Landroid/widget/RelativeLayout;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 110
    .local v0, alpha:Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 111
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 112
    return-void

    .line 109
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseNoToolbarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    const v0, 0x7f030092

    invoke-virtual {p0, v0}, Lcom/boohee/record/WeightGalleryActivity;->setContentView(I)V

    .line 58
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 59
    invoke-direct {p0}, Lcom/boohee/record/WeightGalleryActivity;->handleIntent()V

    .line 60
    invoke-virtual {p0}, Lcom/boohee/record/WeightGalleryActivity;->requestPhotos()V

    .line 61
    invoke-direct {p0}, Lcom/boohee/record/WeightGalleryActivity;->init()V

    .line 62
    return-void
.end method

.method public requestPhotos()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 75
    iget-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->mWeightRecord:Lcom/boohee/model/mine/WeightRecord;

    if-nez v1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iget-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->mWeightRecord:Lcom/boohee/model/mine/WeightRecord;

    iget-object v0, v1, Lcom/boohee/model/mine/WeightRecord;->photos:Ljava/util/List;

    .line 77
    .local v0, photos:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/WeightPhoto;>;"
    iget-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->mWeightRecord:Lcom/boohee/model/mine/WeightRecord;

    iget-object v1, v1, Lcom/boohee/model/mine/WeightRecord;->record_on:Ljava/lang/String;

    iput-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->mDate:Ljava/lang/String;

    .line 78
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 79
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/mine/WeightPhoto;

    iget-object v1, v1, Lcom/boohee/model/mine/WeightPhoto;->date_position:Ljava/lang/String;

    iput-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->mDatePosition:Ljava/lang/String;

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/boohee/record/WeightGalleryActivity;->mDatePosition:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 82
    const-string v1, "/api/v2/photos?date_position=%s&size=%s&token=%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/boohee/record/WeightGalleryActivity;->mDatePosition:Ljava/lang/String;

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "xxl"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/boohee/record/WeightGalleryActivity$1;

    invoke-direct {v2, p0, p0}, Lcom/boohee/record/WeightGalleryActivity$1;-><init>(Lcom/boohee/record/WeightGalleryActivity;Landroid/content/Context;)V

    invoke-static {v1, v2, p0}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method
