.class Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "OrderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/uchoice/OrderListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MPagerChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/OrderListActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/uchoice/OrderListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/uchoice/OrderListActivity;Lcom/boohee/uchoice/OrderListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 177
    invoke-direct {p0, p1}, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;-><init>(Lcom/boohee/uchoice/OrderListActivity;)V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 181
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->mTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderListActivity;->access$100(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/widgets/PagerSlidingTabStrip;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/widgets/PagerSlidingTabStrip;->getTabsContainer()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 182
    packed-switch p1, :pswitch_data_0

    .line 202
    :cond_0
    :goto_0
    return-void

    .line 184
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->isInitPageLoad:Z
    invoke-static {v0}, Lcom/boohee/uchoice/OrderListActivity;->access$700(Lcom/boohee/uchoice/OrderListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->mFragments:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderListActivity;->access$600(Lcom/boohee/uchoice/OrderListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/OrderListFragment;

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->initLoadData()V

    .line 186
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #setter for: Lcom/boohee/uchoice/OrderListActivity;->isInitPageLoad:Z
    invoke-static {v0, v1}, Lcom/boohee/uchoice/OrderListActivity;->access$702(Lcom/boohee/uchoice/OrderListActivity;Z)Z

    goto :goto_0

    .line 190
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->isPayedPageLoad:Z
    invoke-static {v0}, Lcom/boohee/uchoice/OrderListActivity;->access$800(Lcom/boohee/uchoice/OrderListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->mFragments:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderListActivity;->access$600(Lcom/boohee/uchoice/OrderListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/OrderListFragment;

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->initLoadData()V

    .line 192
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #setter for: Lcom/boohee/uchoice/OrderListActivity;->isPayedPageLoad:Z
    invoke-static {v0, v1}, Lcom/boohee/uchoice/OrderListActivity;->access$802(Lcom/boohee/uchoice/OrderListActivity;Z)Z

    goto :goto_0

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->isSentPageLoad:Z
    invoke-static {v0}, Lcom/boohee/uchoice/OrderListActivity;->access$900(Lcom/boohee/uchoice/OrderListActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->mFragments:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderListActivity;->access$600(Lcom/boohee/uchoice/OrderListActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/OrderListFragment;

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/OrderListFragment;->initLoadData()V

    .line 198
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$MPagerChangeListener;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #setter for: Lcom/boohee/uchoice/OrderListActivity;->isSentPageLoad:Z
    invoke-static {v0, v1}, Lcom/boohee/uchoice/OrderListActivity;->access$902(Lcom/boohee/uchoice/OrderListActivity;Z)Z

    goto :goto_0

    .line 182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
