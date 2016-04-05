.class public Lcom/boohee/uchoice/GoodsDetailActivity;
.super Lcom/boohee/main/GestureActivity;
.source "GoodsDetailActivity.java"

# interfaces
.implements Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnGoodsPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/uchoice/GoodsDetailActivity$GoodsPagerAdapter;,
        Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;
    }
.end annotation


# static fields
.field private static final GOODS_ID:Ljava/lang/String; = "goods_id"


# instance fields
.field btn_cart_add:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e05b4
    .end annotation
.end field

.field private goods:Lcom/boohee/model/Goods;

.field private goodsHomeFragment:Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

.field private goodsPostsFragment:Lcom/boohee/one/ui/fragment/GoodsPostsFragment;

.field private isSecondLoad:Z

.field iv_shopping_cart:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0149
    .end annotation
.end field

.field private mAnimator:Landroid/animation/ObjectAnimator;

.field private mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mGoodsId:I

.field private mHandler:Landroid/os/Handler;

.field private mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;

.field mTvFormat:Landroid/widget/TextView;

.field tvCartBadge:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e05b3
    .end annotation
.end field

.field viewBuy:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0147
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
    .line 58
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mFragments:Ljava/util/List;

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->isSecondLoad:Z

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mHandler:Landroid/os/Handler;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/uchoice/GoodsDetailActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/boohee/uchoice/GoodsDetailActivity;->addGoodToCart(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/uchoice/GoodsDetailActivity;)Lcom/boohee/model/Goods;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/uchoice/GoodsDetailActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/uchoice/GoodsDetailActivity;Lcom/boohee/model/Goods;)Lcom/boohee/model/Goods;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/boohee/uchoice/GoodsDetailActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/uchoice/GoodsDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->initGoodsView()V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/uchoice/GoodsDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->initFragments()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/uchoice/GoodsDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->isSecondLoad:Z

    return v0
.end method

.method static synthetic access$402(Lcom/boohee/uchoice/GoodsDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->isSecondLoad:Z

    return p1
.end method

.method static synthetic access$500(Lcom/boohee/uchoice/GoodsDetailActivity;)Lcom/boohee/one/ui/fragment/GoodsPostsFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goodsPostsFragment:Lcom/boohee/one/ui/fragment/GoodsPostsFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/uchoice/GoodsDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->openFormatPop()V

    return-void
.end method

.method static synthetic access$700(Lcom/boohee/uchoice/GoodsDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->requestGoodsCount()V

    return-void
.end method

.method static synthetic access$800(Lcom/boohee/uchoice/GoodsDetailActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/boohee/uchoice/GoodsDetailActivity;->setTranslateAnim(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/boohee/uchoice/GoodsDetailActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method private addGoodToCart(II)V
    .locals 1
    .parameter "goodsId"
    .parameter "quantity"

    .prologue
    .line 362
    new-instance v0, Lcom/boohee/uchoice/GoodsDetailActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/boohee/uchoice/GoodsDetailActivity$7;-><init>(Lcom/boohee/uchoice/GoodsDetailActivity;Landroid/content/Context;)V

    invoke-static {p1, p2, p0, v0}, Lcom/boohee/api/ShopApi;->addCarts(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 378
    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "goodsID"

    .prologue
    .line 497
    if-eqz p0, :cond_0

    if-gtz p1, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 500
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/uchoice/GoodsDetailActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 501
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "goods_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private getY(FFFF)F
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"
    .parameter "x"

    .prologue
    .line 485
    mul-float v0, p1, p4

    mul-float/2addr v0, p4

    mul-float v1, p2, p4

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method

.method private gotoCart()V
    .locals 3

    .prologue
    .line 316
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/uchoice/CartActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 317
    .local v0, cartIntent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 318
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 319
    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 320
    return-void
.end method

.method private gotoEdit()V
    .locals 3

    .prologue
    .line 326
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/uchoice/OrderEditActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 327
    .local v0, orderIntent:Landroid/content/Intent;
    const-string v1, "goods_id"

    iget v2, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mGoodsId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    const-string v1, "isCart"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 329
    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->ctx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 330
    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 146
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 147
    const-string v1, "goods_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mGoodsId:I

    .line 148
    iget v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mGoodsId:I

    if-lez v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 152
    :cond_0
    const-string v1, "\u7f3a\u5c11\u53c2\u6570"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->finish()V

    goto :goto_0
.end method

.method private initActionbar()V
    .locals 5

    .prologue
    .line 196
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030106

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 197
    .local v1, view_tab:Landroid/view/View;
    const v2, 0x7f0e00ca

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/boohee/widgets/PagerSlidingTabStrip;

    iput-object v2, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;

    .line 198
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 199
    .local v0, layoutParams:Landroid/support/v7/app/ActionBar$LayoutParams;
    const v2, 0x800005

    iput v2, v0, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 200
    invoke-virtual {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 201
    invoke-virtual {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 202
    iget-object v2, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;

    iget-object v3, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 203
    iget-object v2, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mSlidingTab:Lcom/boohee/widgets/PagerSlidingTabStrip;

    new-instance v3, Lcom/boohee/uchoice/GoodsDetailActivity$3;

    invoke-direct {v3, p0}, Lcom/boohee/uchoice/GoodsDetailActivity$3;-><init>(Lcom/boohee/uchoice/GoodsDetailActivity;)V

    invoke-virtual {v2, v3}, Lcom/boohee/widgets/PagerSlidingTabStrip;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 214
    return-void
.end method

.method private initFragments()V
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;

    iget-object v0, v0, Lcom/boohee/model/Goods;->slug:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;

    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->btn_cart_add:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->newInstance(Lcom/boohee/model/Goods;Landroid/widget/Button;)Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goodsHomeFragment:Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    .line 219
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goodsHomeFragment:Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    invoke-virtual {v0, p0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->setOnGoodsPageChangeListener(Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnGoodsPageChangeListener;)V

    .line 220
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goodsHomeFragment:Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    new-instance v1, Lcom/boohee/uchoice/GoodsDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/uchoice/GoodsDetailActivity$4;-><init>(Lcom/boohee/uchoice/GoodsDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->setOnOpenGoodsFormatListener(Lcom/boohee/one/ui/fragment/GoodsHomeFragment$OnOpenGoodsFormatListener;)V

    .line 227
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goodsHomeFragment:Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;

    iget-object v0, v0, Lcom/boohee/model/Goods;->slug:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/GoodsPostsFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goodsPostsFragment:Lcom/boohee/one/ui/fragment/GoodsPostsFragment;

    .line 229
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mFragments:Ljava/util/List;

    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goodsPostsFragment:Lcom/boohee/one/ui/fragment/GoodsPostsFragment;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 231
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsPagerAdapter;

    invoke-virtual {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mFragments:Ljava/util/List;

    invoke-direct {v1, p0, v2, v3}, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsPagerAdapter;-><init>(Lcom/boohee/uchoice/GoodsDetailActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 232
    invoke-direct {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->initActionbar()V

    goto :goto_0
.end method

.method private initGoodsView()V
    .locals 2

    .prologue
    .line 489
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;

    iget-object v0, v0, Lcom/boohee/model/Goods;->state:Ljava/lang/String;

    sget-object v1, Lcom/boohee/model/Goods$goods_state;->not_sale:Lcom/boohee/model/Goods$goods_state;

    invoke-virtual {v1}, Lcom/boohee/model/Goods$goods_state;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->btn_cart_add:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 491
    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->btn_cart_add:Landroid/widget/Button;

    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;

    iget-object v0, v0, Lcom/boohee/model/Goods;->state_text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->btn_cart_add:Landroid/widget/Button;

    const v1, 0x7f0200ab

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 494
    :cond_0
    return-void

    .line 491
    :cond_1
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;

    iget-object v0, v0, Lcom/boohee/model/Goods;->state_text:Ljava/lang/String;

    goto :goto_0
.end method

.method private openFormatPop()V
    .locals 3

    .prologue
    .line 160
    invoke-static {}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->getInstance()Lcom/boohee/widgets/GoodsFormatPopupWindow;

    move-result-object v0

    .line 161
    .local v0, goodsFormatPop:Lcom/boohee/widgets/GoodsFormatPopupWindow;
    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v2, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->show(Landroid/content/Context;Lcom/boohee/model/Goods;)V

    .line 162
    new-instance v1, Lcom/boohee/uchoice/GoodsDetailActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/boohee/uchoice/GoodsDetailActivity$1;-><init>(Lcom/boohee/uchoice/GoodsDetailActivity;Lcom/boohee/widgets/GoodsFormatPopupWindow;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->setOnSelectListener(Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;)V

    .line 174
    return-void
.end method

.method private requestGood()V
    .locals 2

    .prologue
    .line 180
    iget v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mGoodsId:I

    new-instance v1, Lcom/boohee/uchoice/GoodsDetailActivity$2;

    invoke-direct {v1, p0, p0}, Lcom/boohee/uchoice/GoodsDetailActivity$2;-><init>(Lcom/boohee/uchoice/GoodsDetailActivity;Landroid/content/Context;)V

    invoke-static {v0, p0, v1}, Lcom/boohee/api/ShopApi;->getGoodsDetail(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 192
    return-void
.end method

.method private requestGoodsCount()V
    .locals 1

    .prologue
    .line 336
    new-instance v0, Lcom/boohee/uchoice/GoodsDetailActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/boohee/uchoice/GoodsDetailActivity$6;-><init>(Lcom/boohee/uchoice/GoodsDetailActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/ShopApi;->getCarts(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 355
    return-void
.end method

.method private setTranslateAnim(I)V
    .locals 28
    .parameter "total"

    .prologue
    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->mAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    .line 389
    invoke-virtual/range {p0 .. p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v24

    move-object/from16 v0, v24

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v24, v0

    div-int/lit8 v24, v24, 0x2

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v16, v0

    .line 390
    .local v16, width:F
    const/high16 v8, 0x4248

    .local v8, height:F
    invoke-virtual/range {p0 .. p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f080113

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 392
    .local v13, padding:F
    const/16 v17, 0x0

    .local v17, x1:F
    const/16 v21, 0x0

    .line 393
    .local v21, y1:F
    sub-float v18, v13, v16

    .local v18, x2:F
    const/16 v22, 0x0

    .line 394
    .local v22, y2:F
    sub-float v24, v13, v16

    const/high16 v25, 0x4000

    div-float v19, v24, v25

    .local v19, x3:F
    const/high16 v23, 0x4248

    .line 396
    .local v23, y3:F
    const/16 v24, 0x0

    sub-float v25, v18, v19

    mul-float v24, v24, v25

    const/16 v25, 0x0

    const/16 v26, 0x0

    sub-float v26, v19, v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    const/high16 v25, 0x4248

    const/16 v26, 0x0

    sub-float v26, v26, v18

    mul-float v25, v25, v26

    add-float v24, v24, v25

    const/16 v25, 0x0

    sub-float v26, v18, v19

    mul-float v25, v25, v26

    mul-float v26, v18, v18

    const/16 v27, 0x0

    sub-float v27, v19, v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    mul-float v26, v19, v19

    const/16 v27, 0x0

    sub-float v27, v27, v18

    mul-float v26, v26, v27

    add-float v25, v25, v26

    div-float v4, v24, v25

    .line 397
    .local v4, a:F
    const/16 v24, 0x0

    const/16 v25, 0x0

    sub-float v25, v25, v18

    div-float v24, v24, v25

    const/16 v25, 0x0

    add-float v25, v25, v18

    mul-float v25, v25, v4

    sub-float v5, v24, v25

    .line 398
    .local v5, b:F
    const/16 v24, 0x0

    const/16 v25, 0x0

    mul-float v25, v25, v4

    sub-float v24, v24, v25

    const/16 v25, 0x0

    mul-float v25, v25, v5

    sub-float v6, v24, v25

    .line 400
    .local v6, c:F
    sub-float v24, v16, v13

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(F)F

    move-result v24

    move/from16 v0, v24

    float-to-int v7, v0

    .line 402
    .local v7, count:I
    new-array v12, v7, [Landroid/animation/Keyframe;

    .line 403
    .local v12, keyframes:[Landroid/animation/Keyframe;
    const/high16 v24, 0x3f80

    int-to-float v0, v7

    move/from16 v25, v0

    div-float v11, v24, v25

    .line 404
    .local v11, keyStep:F
    move v10, v11

    .line 405
    .local v10, key:F
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    if-ge v9, v7, :cond_0

    .line 406
    neg-int v0, v9

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-static {v10, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v24

    aput-object v24, v12, v9

    .line 407
    add-float/2addr v10, v11

    .line 405
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 410
    :cond_0
    const-string v24, "translationX"

    move-object/from16 v0, v24

    invoke-static {v0, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v14

    .line 411
    .local v14, pvhX:Landroid/animation/PropertyValuesHolder;
    move v10, v11

    .line 412
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_1

    .line 413
    neg-int v0, v9

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v4, v5, v6, v1}, Lcom/boohee/uchoice/GoodsDetailActivity;->getY(FFFF)F

    move-result v24

    move/from16 v0, v24

    neg-float v0, v0

    move/from16 v20, v0

    .line 414
    .local v20, y:F
    move/from16 v0, v20

    invoke-static {v10, v0}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v24

    aput-object v24, v12, v9

    .line 415
    add-float/2addr v10, v11

    .line 412
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 418
    .end local v20           #y:F
    :cond_1
    const-string v24, "translationY"

    move-object/from16 v0, v24

    invoke-static {v0, v12}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 419
    .local v15, pvhY:Landroid/animation/PropertyValuesHolder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->iv_shopping_cart:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v15, v25, v26

    const/16 v26, 0x1

    aput-object v14, v25, v26

    invoke-static/range {v24 .. v25}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v24

    const-wide/16 v26, 0x190

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/boohee/uchoice/GoodsDetailActivity;->mAnimator:Landroid/animation/ObjectAnimator;

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->mAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v24, v0

    new-instance v25, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct/range {v25 .. v25}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual/range {v24 .. v25}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->mAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v24, v0

    new-instance v25, Lcom/boohee/uchoice/GoodsDetailActivity$8;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/boohee/uchoice/GoodsDetailActivity$8;-><init>(Lcom/boohee/uchoice/GoodsDetailActivity;I)V

    invoke-virtual/range {v24 .. v25}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 477
    .end local v4           #a:F
    .end local v5           #b:F
    .end local v6           #c:F
    .end local v7           #count:I
    .end local v8           #height:F
    .end local v9           #i:I
    .end local v10           #key:F
    .end local v11           #keyStep:F
    .end local v12           #keyframes:[Landroid/animation/Keyframe;
    .end local v13           #padding:F
    .end local v14           #pvhX:Landroid/animation/PropertyValuesHolder;
    .end local v15           #pvhY:Landroid/animation/PropertyValuesHolder;
    .end local v16           #width:F
    .end local v17           #x1:F
    .end local v18           #x2:F
    .end local v19           #x3:F
    .end local v21           #y1:F
    .end local v22           #y2:F
    .end local v23           #y3:F
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->mAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v24

    if-nez v24, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->viewBuy:Landroid/widget/LinearLayout;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v24

    if-nez v24, :cond_4

    .line 482
    :cond_3
    :goto_2
    return-void

    .line 480
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->iv_shopping_cart:Landroid/widget/ImageView;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->mAnimator:Landroid/animation/ObjectAnimator;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 288
    invoke-virtual {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->finish()V

    .line 289
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e05b2,
            0x7f0e0148,
            0x7f0e05b4,
            0x7f0e05b5
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 97
    :sswitch_0
    invoke-direct {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->gotoCart()V

    goto :goto_0

    .line 100
    :sswitch_1
    invoke-direct {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->gotoCart()V

    goto :goto_0

    .line 103
    :sswitch_2
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->ctx:Landroid/content/Context;

    const-string v1, "shop_clickCart"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/boohee/model/Goods$goods_type;->SpecGoods:Lcom/boohee/model/Goods$goods_type;

    invoke-virtual {v0}, Lcom/boohee/model/Goods$goods_type;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;

    iget-object v1, v1, Lcom/boohee/model/Goods;->type:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->openFormatPop()V

    goto :goto_0

    .line 107
    :cond_0
    iget v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mGoodsId:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/boohee/uchoice/GoodsDetailActivity;->addGoodToCart(II)V

    goto :goto_0

    .line 111
    :sswitch_3
    invoke-static {}, Lcom/boohee/main/FeedBackSwitcher;->isFeedbackTime()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-static {p0}, Lcom/boohee/utils/MeiQiaHelper;->startChat(Landroid/content/Context;)V

    goto :goto_0

    .line 114
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/more/FeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/GoodsDetailActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 95
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0148 -> :sswitch_1
        0x7f0e05b2 -> :sswitch_0
        0x7f0e05b4 -> :sswitch_2
        0x7f0e05b5 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->ctx:Landroid/content/Context;

    const-string v1, "shop_viewProductDetialPage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/GoodsDetailActivity;->setContentView(I)V

    .line 137
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 139
    invoke-direct {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->handleIntent()V

    .line 140
    invoke-direct {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->requestGood()V

    .line 141
    invoke-direct {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->requestGoodsCount()V

    .line 142
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 293
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 294
    invoke-virtual {p0}, Lcom/boohee/uchoice/GoodsDetailActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0005

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 295
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 281
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 283
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 284
    return-void
.end method

.method public onGoodsPageChange(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->viewpager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 238
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 300
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 308
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 302
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goodsHomeFragment:Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    if-eqz v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->goodsHomeFragment:Lcom/boohee/one/ui/fragment/GoodsHomeFragment;

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/GoodsHomeFragment;->shareGoods()V

    .line 305
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 300
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e07c7
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 271
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/boohee/uchoice/GoodsDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/boohee/uchoice/GoodsDetailActivity$5;-><init>(Lcom/boohee/uchoice/GoodsDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method
