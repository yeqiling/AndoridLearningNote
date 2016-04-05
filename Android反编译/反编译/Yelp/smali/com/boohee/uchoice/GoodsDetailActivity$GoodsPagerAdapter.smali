.class Lcom/boohee/uchoice/GoodsDetailActivity$GoodsPagerAdapter;
.super Landroid/support/v4/app/FragmentPagerAdapter;
.source "GoodsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/uchoice/GoodsDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GoodsPagerAdapter"
.end annotation


# instance fields
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

.field private mTitles:[Ljava/lang/String;

.field final synthetic this$0:Lcom/boohee/uchoice/GoodsDetailActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/uchoice/GoodsDetailActivity;Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter "fm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/FragmentManager;",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 245
    .local p3, fragments:Ljava/util/List;,"Ljava/util/List<Landroid/support/v4/app/Fragment;>;"
    iput-object p1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsPagerAdapter;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    .line 246
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 241
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->GOODS:Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    invoke-virtual {v2}, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->POST:Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;

    invoke-virtual {v2}, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsTab;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsPagerAdapter;->mTitles:[Ljava/lang/String;

    .line 247
    iput-object p3, p0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsPagerAdapter;->mFragments:Ljava/util/List;

    .line 248
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    return-object v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "position"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$GoodsPagerAdapter;->mTitles:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method
