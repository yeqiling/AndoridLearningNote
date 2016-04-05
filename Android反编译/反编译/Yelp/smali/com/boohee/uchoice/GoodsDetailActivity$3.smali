.class Lcom/boohee/uchoice/GoodsDetailActivity$3;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "GoodsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/GoodsDetailActivity;->initActionbar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/GoodsDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/GoodsDetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$3;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 207
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 208
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$3;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #getter for: Lcom/boohee/uchoice/GoodsDetailActivity;->isSecondLoad:Z
    invoke-static {v0}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$400(Lcom/boohee/uchoice/GoodsDetailActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$3;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #getter for: Lcom/boohee/uchoice/GoodsDetailActivity;->goodsPostsFragment:Lcom/boohee/one/ui/fragment/GoodsPostsFragment;
    invoke-static {v0}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$500(Lcom/boohee/uchoice/GoodsDetailActivity;)Lcom/boohee/one/ui/fragment/GoodsPostsFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/GoodsPostsFragment;->loadFirst()V

    .line 210
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$3;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #setter for: Lcom/boohee/uchoice/GoodsDetailActivity;->isSecondLoad:Z
    invoke-static {v0, v1}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$402(Lcom/boohee/uchoice/GoodsDetailActivity;Z)Z

    .line 212
    :cond_0
    return-void
.end method
