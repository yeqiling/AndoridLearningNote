.class public Lcom/boohee/status/TopicActivity;
.super Lcom/boohee/main/GestureActivity;
.source "TopicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;
.implements Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;


# static fields
.field private static final DEFAULT_DAMPING:F = 1.5f

.field private static final DEFAULT_DURATION:J = 0x12cL

.field public static final DEFAULT_HEIGHT:I = 0x140

.field public static final DEFAULT_WIDTH:I = 0x280

.field public static final EXTRA_TOPIC:Ljava/lang/String; = "extra_topic"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private cummonFragment:Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;

.field private currentIndex:I

.field fabButton:Landroid/support/design/widget/FloatingActionButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00e2
    .end annotation
.end field

.field frameContent:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01a8
    .end annotation
.end field

.field headerLayout:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0241
    .end annotation
.end field

.field ivTop:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0179
    .end annotation
.end field

.field layout:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00db
    .end annotation
.end field

.field mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderHeight:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMenu:Landroid/view/Menu;

.field private mTabHeight:I

.field private mTitle:Ljava/lang/String;

.field private mTopic:Lcom/boohee/model/status/Topic;

.field private mTouchSlop:I

.field private mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

.field viewTabs:Landroid/support/design/widget/TabLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01aa
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/boohee/status/TopicActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/status/TopicActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/status/TopicActivity;->currentIndex:I

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/status/TopicActivity;->mFragments:Ljava/util/List;

    .line 86
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/boohee/status/TopicActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method static synthetic access$002(Lcom/boohee/status/TopicActivity;Lcom/boohee/model/status/Topic;)Lcom/boohee/model/status/Topic;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/boohee/status/TopicActivity;->mTopic:Lcom/boohee/model/status/Topic;

    return-object p1
.end method

.method static synthetic access$100(Lcom/boohee/status/TopicActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/boohee/status/TopicActivity;->initUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/status/TopicActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/boohee/status/TopicActivity;->startImageLinkActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/status/TopicActivity;Lcom/boohee/one/ui/fragment/BaseFragment;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/boohee/status/TopicActivity;->switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V

    return-void
.end method

.method private getCurrentTopic()V
    .locals 4

    .prologue
    .line 137
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->mTitle:Ljava/lang/String;

    new-instance v2, Lcom/boohee/status/TopicActivity$1;

    iget-object v3, p0, Lcom/boohee/status/TopicActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/TopicActivity$1;-><init>(Lcom/boohee/status/TopicActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/StatusApi;->getTopicPosts(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 152
    return-void
.end method

.method private headerExpand(J)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->headerLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 383
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->frameContent:Landroid/widget/FrameLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/boohee/status/TopicActivity;->mHeaderHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 388
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->setHeaderExpand(Z)V

    .line 389
    return-void
.end method

.method private headerFold(J)V
    .locals 3
    .parameter "duration"

    .prologue
    .line 364
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->headerLayout:Landroid/widget/LinearLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/boohee/status/TopicActivity;->mHeaderHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 370
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->frameContent:Landroid/widget/FrameLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 373
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->setHeaderExpand(Z)V

    .line 374
    return-void
.end method

.method private headerMoveDuration(ZFZF)J
    .locals 7
    .parameter "isExpand"
    .parameter "currentHeaderY"
    .parameter "isFling"
    .parameter "velocityY"

    .prologue
    const-wide/16 v4, 0x12c

    .line 346
    const-wide/16 v0, 0x12c

    .line 348
    .local v0, defaultDuration:J
    if-eqz p3, :cond_0

    .line 350
    if-eqz p1, :cond_1

    iget v3, p0, Lcom/boohee/status/TopicActivity;->mHeaderHeight:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    int-to-float v3, v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    sub-float v2, v3, v6

    .line 352
    .local v2, distance:F
    :goto_0
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v6, 0x447a

    div-float p4, v3, v6

    .line 354
    div-float v3, v2, p4

    const/high16 v6, 0x3fc0

    mul-float/2addr v3, v6

    float-to-long v0, v3

    .line 356
    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    move-wide v0, v4

    .line 360
    .end local v2           #distance:F
    :cond_0
    return-wide v0

    .line 350
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    goto :goto_0
.end method

.method private initFragments()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 200
    invoke-virtual {p0}, Lcom/boohee/status/TopicActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 201
    .local v1, transaction:Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->mTitle:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/boohee/status/TopicFragment;->newInstance(Ljava/lang/String;Z)Lcom/boohee/status/TopicFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/status/TopicActivity;->cummonFragment:Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;

    .line 202
    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->mFragments:Ljava/util/List;

    iget-object v3, p0, Lcom/boohee/status/TopicActivity;->cummonFragment:Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->mTopic:Lcom/boohee/model/status/Topic;

    iget-boolean v2, v2, Lcom/boohee/model/status/Topic;->choice:Z

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->mFragments:Ljava/util/List;

    iget-object v3, p0, Lcom/boohee/status/TopicActivity;->mTitle:Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/boohee/status/TopicFragment;->newInstance(Ljava/lang/String;Z)Lcom/boohee/status/TopicFragment;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Lcom/boohee/status/TopicActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    const-string v4, "\u6700\u65b0"

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 206
    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    iget-object v3, p0, Lcom/boohee/status/TopicActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    const-string v4, "\u7cbe\u9009"

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 207
    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v6}, Landroid/support/design/widget/TabLayout;->setTabMode(I)V

    .line 208
    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v2, v5}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    .line 209
    invoke-virtual {p0}, Lcom/boohee/status/TopicActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080108

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/boohee/status/TopicActivity;->mTabHeight:I

    .line 215
    :goto_0
    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->frameContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 216
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget v2, p0, Lcom/boohee/status/TopicActivity;->mTabHeight:I

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 217
    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->frameContent:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    const v2, 0x7f0e01a8

    iget-object v3, p0, Lcom/boohee/status/TopicActivity;->cummonFragment:Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 220
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 222
    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    new-instance v3, Lcom/boohee/status/TopicActivity$3;

    invoke-direct {v3, p0}, Lcom/boohee/status/TopicActivity$3;-><init>(Lcom/boohee/status/TopicActivity;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 258
    return-void

    .line 211
    .end local v0           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    iput v5, p0, Lcom/boohee/status/TopicActivity;->mTabHeight:I

    .line 212
    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->viewTabs:Landroid/support/design/widget/TabLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initUI()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    .line 172
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mTopic:Lcom/boohee/model/status/Topic;

    if-eqz v0, :cond_2

    .line 173
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mTopic:Lcom/boohee/model/status/Topic;

    iget-object v0, v0, Lcom/boohee/model/status/Topic;->head_image_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->ivTop:Landroid/widget/ImageView;

    const/16 v1, 0x280

    const/16 v2, 0x140

    invoke-static {p0, v0, v1, v2}, Lcom/boohee/utils/ViewUtils;->setViewScaleHeight(Landroid/content/Context;Landroid/view/View;II)V

    .line 175
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->mTopic:Lcom/boohee/model/status/Topic;

    iget-object v1, v1, Lcom/boohee/model/status/Topic;->head_image_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->ivTop:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    const v4, 0x33aa66cc

    invoke-direct {v3, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->global(Landroid/graphics/drawable/Drawable;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 177
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->ctx:Landroid/content/Context;

    invoke-static {v0, v5, v7}, Lcom/boohee/utils/ResolutionUtils;->getHeight(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/boohee/status/TopicActivity;->mHeaderHeight:I

    .line 178
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->frameContent:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/boohee/status/TopicActivity;->mHeaderHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 179
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mTopic:Lcom/boohee/model/status/Topic;

    iget-object v0, v0, Lcom/boohee/model/status/Topic;->page_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mMenu:Landroid/view/Menu;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v0}, Landroid/view/Menu;->clear()V

    .line 182
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mMenu:Landroid/view/Menu;

    const-string v1, "\u8be6\u60c5"

    invoke-interface {v0, v6, v5, v7, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->ivTop:Landroid/widget/ImageView;

    new-instance v1, Lcom/boohee/status/TopicActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/status/TopicActivity$2;-><init>(Lcom/boohee/status/TopicActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/boohee/status/TopicActivity;->initFragments()V

    .line 197
    :cond_2
    return-void

    .line 193
    :cond_3
    iput v6, p0, Lcom/boohee/status/TopicActivity;->mHeaderHeight:I

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 103
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/boohee/status/TopicActivity;->mTouchSlop:I

    .line 104
    new-instance v1, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-direct {v1, p0, p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;-><init>(Landroid/content/Context;Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper$OnViewPagerTouchListener;)V

    iput-object v1, p0, Lcom/boohee/status/TopicActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    .line 105
    const v1, 0x7f0e00db

    invoke-virtual {p0, v1}, Lcom/boohee/status/TopicActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;

    .line 106
    .local v0, touchCallbackLayout:Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;
    invoke-virtual {v0, p0}, Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout;->setTouchEventListener(Lcom/boohee/myview/ViewPagerHeaderScroll/widget/TouchCallbackLayout$TouchEventListener;)V

    .line 107
    return-void
.end method

.method private startImageLinkActivity()V
    .locals 3

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 156
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "title"

    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->mTopic:Lcom/boohee/model/status/Topic;

    iget-object v2, v2, Lcom/boohee/model/status/Topic;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-string v1, "url"

    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->mTopic:Lcom/boohee/model/status/Topic;

    iget-object v2, v2, Lcom/boohee/model/status/Topic;->page_url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v0}, Lcom/boohee/status/TopicActivity;->startActivity(Landroid/content/Intent;)V

    .line 159
    return-void
.end method

.method private switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V
    .locals 4
    .parameter "fragment"

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/boohee/status/TopicActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 262
    .local v2, transaction:Landroid/support/v4/app/FragmentTransaction;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/boohee/status/TopicActivity;->mFragments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 263
    iget-object v3, p0, Lcom/boohee/status/TopicActivity;->mFragments:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/ui/fragment/BaseFragment;

    .line 264
    .local v1, item:Lcom/boohee/one/ui/fragment/BaseFragment;
    iput v0, p0, Lcom/boohee/status/TopicActivity;->currentIndex:I

    .line 265
    if-ne v1, p1, :cond_2

    .line 266
    invoke-virtual {p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 267
    const v3, 0x7f0e01a8

    invoke-virtual {v2, v3, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 269
    invoke-virtual {p1}, Lcom/boohee/one/ui/fragment/BaseFragment;->loadFirst()V

    .line 271
    :cond_0
    invoke-virtual {v2, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 262
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_2
    invoke-virtual {v1}, Lcom/boohee/one/ui/fragment/BaseFragment;->isAdded()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 274
    invoke-virtual {v2, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1

    .line 278
    .end local v1           #item:Lcom/boohee/one/ui/fragment/BaseFragment;
    :cond_3
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 279
    return-void
.end method


# virtual methods
.method public isViewBeingDragged(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mFragments:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 395
    :cond_0
    const/4 v0, 0x1

    .line 396
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mFragments:Ljava/util/List;

    iget v1, p0, Lcom/boohee/status/TopicActivity;->currentIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;

    invoke-virtual {v0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/fragment/BaseViewPagerFragment;->isViewBeingDragged(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00e2
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 169
    :goto_0
    return-void

    .line 165
    :pswitch_0
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_text"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/status/TopicActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 163
    :pswitch_data_0
    .packed-switch 0x7f0e00e2
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f030087

    invoke-virtual {p0, v0}, Lcom/boohee/status/TopicActivity;->setContentView(I)V

    .line 93
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 94
    const-string v0, "extra_topic"

    invoke-virtual {p0, v0}, Lcom/boohee/status/TopicActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/TopicActivity;->mTitle:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/utils/URLDecoderUtils;->replaceAndDecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/status/TopicActivity;->mTitle:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/boohee/status/TopicActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 97
    invoke-direct {p0}, Lcom/boohee/status/TopicActivity;->initView()V

    .line 98
    invoke-direct {p0}, Lcom/boohee/status/TopicActivity;->getCurrentTopic()V

    .line 99
    invoke-virtual {p0}, Lcom/boohee/status/TopicActivity;->showLoading()V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 111
    iput-object p1, p0, Lcom/boohee/status/TopicActivity;->mMenu:Landroid/view/Menu;

    .line 112
    const-string v0, "\u627e\u4f19\u4f34"

    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    const-string v1, "\u627e\u670b\u53cb"

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 116
    :cond_0
    return v2
.end method

.method public onLayoutInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    iget v1, p0, Lcom/boohee/status/TopicActivity;->mTabHeight:I

    iget v2, p0, Lcom/boohee/status/TopicActivity;->mHeaderHeight:I

    add-int/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->onLayoutInterceptTouchEvent(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method public onLayoutTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 291
    iget-object v0, p0, Lcom/boohee/status/TopicActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v0, p1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->onLayoutTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onMove(FF)V
    .locals 6
    .parameter "y"
    .parameter "yDx"

    .prologue
    const-wide/16 v4, 0x0

    .line 302
    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->headerLayout:Landroid/widget/LinearLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v1

    add-float v0, v1, p2

    .line 303
    .local v0, headerTranslationY:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 304
    invoke-direct {p0, v4, v5}, Lcom/boohee/status/TopicActivity;->headerExpand(J)V

    .line 317
    :goto_0
    return-void

    .line 305
    :cond_0
    iget v1, p0, Lcom/boohee/status/TopicActivity;->mHeaderHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 306
    invoke-direct {p0, v4, v5}, Lcom/boohee/status/TopicActivity;->headerFold(J)V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->headerLayout:Landroid/widget/LinearLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 312
    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->frameContent:Landroid/widget/FrameLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget v2, p0, Lcom/boohee/status/TopicActivity;->mHeaderHeight:I

    int-to-float v2, v2

    add-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto :goto_0
.end method

.method public onMoveEnded(ZF)V
    .locals 5
    .parameter "isFling"
    .parameter "flingVelocityY"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 322
    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->headerLayout:Landroid/widget/LinearLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    .line 323
    .local v0, headerY:F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/boohee/status/TopicActivity;->mHeaderHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->getInitialMotionY()F

    move-result v1

    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v2}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->getLastMotionY()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/boohee/status/TopicActivity;->mTouchSlop:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 329
    invoke-direct {p0, v4, v0, p1, p2}, Lcom/boohee/status/TopicActivity;->headerMoveDuration(ZFZF)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/boohee/status/TopicActivity;->headerExpand(J)V

    goto :goto_0

    .line 330
    :cond_2
    iget-object v1, p0, Lcom/boohee/status/TopicActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v1}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->getInitialMotionY()F

    move-result v1

    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->mViewPagerHeaderHelper:Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;

    invoke-virtual {v2}, Lcom/boohee/myview/ViewPagerHeaderScroll/tools/ViewPagerHeaderHelper;->getLastMotionY()F

    move-result v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/boohee/status/TopicActivity;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 333
    invoke-direct {p0, v3, v0, p1, p2}, Lcom/boohee/status/TopicActivity;->headerMoveDuration(ZFZF)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/boohee/status/TopicActivity;->headerFold(J)V

    goto :goto_0

    .line 335
    :cond_3
    iget v1, p0, Lcom/boohee/status/TopicActivity;->mHeaderHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 336
    invoke-direct {p0, v4, v0, p1, p2}, Lcom/boohee/status/TopicActivity;->headerMoveDuration(ZFZF)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/boohee/status/TopicActivity;->headerExpand(J)V

    goto :goto_0

    .line 338
    :cond_4
    invoke-direct {p0, v3, v0, p1, p2}, Lcom/boohee/status/TopicActivity;->headerMoveDuration(ZFZF)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/boohee/status/TopicActivity;->headerFold(J)V

    goto :goto_0
.end method

.method public onMoveStarted(F)V
    .locals 0
    .parameter "y"

    .prologue
    .line 298
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 121
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 129
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 123
    :pswitch_0
    new-instance v1, Lcom/boohee/utility/BuilderIntent;

    iget-object v2, p0, Lcom/boohee/status/TopicActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/status/SearchFriendsActivity;

    invoke-direct {v1, v2, v3}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0

    .line 126
    :pswitch_1
    invoke-direct {p0}, Lcom/boohee/status/TopicActivity;->startImageLinkActivity()V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
