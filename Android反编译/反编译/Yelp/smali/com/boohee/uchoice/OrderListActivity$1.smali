.class Lcom/boohee/uchoice/OrderListActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "OrderListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/OrderListActivity;->loadCountData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/OrderListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/OrderListActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 14
    .parameter "object"

    .prologue
    const v13, 0x800035

    const/16 v10, 0x8

    const/4 v9, 0x0

    .line 104
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 105
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->mTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$100(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/widgets/PagerSlidingTabStrip;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    invoke-virtual {v8}, Lcom/boohee/uchoice/OrderListActivity;->isFinishing()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    invoke-virtual {v8}, Lcom/boohee/uchoice/OrderListActivity;->getWindow()Landroid/view/Window;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-class v8, Lcom/boohee/model/OrderState;

    invoke-static {p1, v8}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/boohee/model/OrderState;

    .line 107
    .local v6, state:Lcom/boohee/model/OrderState;
    if-eqz v6, :cond_0

    .line 108
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->mTabs:Lcom/boohee/widgets/PagerSlidingTabStrip;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$100(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/widgets/PagerSlidingTabStrip;

    move-result-object v8

    invoke-virtual {v8}, Lcom/boohee/widgets/PagerSlidingTabStrip;->getTabsContainer()Landroid/widget/LinearLayout;

    move-result-object v7

    .line 109
    .local v7, tbContainer:Landroid/widget/LinearLayout;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v8

    const/4 v11, 0x3

    if-ne v8, v11, :cond_0

    .line 112
    iget v0, v6, Lcom/boohee/model/OrderState;->initial:I

    .line 113
    .local v0, initialNum:I
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->initialBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$200(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v8

    if-nez v8, :cond_2

    .line 114
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 115
    .local v1, initialTab:Landroid/view/View;
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    new-instance v11, Lcom/boohee/myview/NewBadgeView;

    iget-object v12, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/boohee/uchoice/OrderListActivity;->access$300(Lcom/boohee/uchoice/OrderListActivity;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/boohee/myview/NewBadgeView;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/boohee/uchoice/OrderListActivity;->initialBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8, v11}, Lcom/boohee/uchoice/OrderListActivity;->access$202(Lcom/boohee/uchoice/OrderListActivity;Lcom/boohee/myview/NewBadgeView;)Lcom/boohee/myview/NewBadgeView;

    .line 116
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->initialBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$200(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/boohee/myview/NewBadgeView;->setTargetView(Landroid/view/View;)V

    .line 117
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->initialBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$200(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/boohee/myview/NewBadgeView;->setBadgeGravity(I)V

    .line 119
    .end local v1           #initialTab:Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->initialBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$200(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/boohee/myview/NewBadgeView;->setBadgeCount(I)V

    .line 120
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->initialBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$200(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v11

    if-lez v0, :cond_5

    move v8, v9

    :goto_1
    invoke-virtual {v11, v8}, Lcom/boohee/myview/NewBadgeView;->setVisibility(I)V

    .line 123
    iget v2, v6, Lcom/boohee/model/OrderState;->payed:I

    .line 124
    .local v2, payedNum:I
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->payedBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$400(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v8

    if-nez v8, :cond_3

    .line 125
    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 126
    .local v3, payedTab:Landroid/view/View;
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    new-instance v11, Lcom/boohee/myview/NewBadgeView;

    iget-object v12, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/boohee/uchoice/OrderListActivity;->access$300(Lcom/boohee/uchoice/OrderListActivity;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/boohee/myview/NewBadgeView;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/boohee/uchoice/OrderListActivity;->payedBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8, v11}, Lcom/boohee/uchoice/OrderListActivity;->access$402(Lcom/boohee/uchoice/OrderListActivity;Lcom/boohee/myview/NewBadgeView;)Lcom/boohee/myview/NewBadgeView;

    .line 127
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->payedBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$400(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v8

    invoke-virtual {v8, v3}, Lcom/boohee/myview/NewBadgeView;->setTargetView(Landroid/view/View;)V

    .line 128
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->payedBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$400(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/boohee/myview/NewBadgeView;->setBadgeGravity(I)V

    .line 130
    .end local v3           #payedTab:Landroid/view/View;
    :cond_3
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->payedBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$400(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/boohee/myview/NewBadgeView;->setBadgeCount(I)V

    .line 131
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->payedBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$400(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v11

    if-lez v2, :cond_6

    move v8, v9

    :goto_2
    invoke-virtual {v11, v8}, Lcom/boohee/myview/NewBadgeView;->setVisibility(I)V

    .line 134
    iget v8, v6, Lcom/boohee/model/OrderState;->sent:I

    iget v11, v6, Lcom/boohee/model/OrderState;->part_sent:I

    add-int v4, v8, v11

    .line 135
    .local v4, sentNum:I
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->sentBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$500(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v8

    if-nez v8, :cond_4

    .line 136
    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 137
    .local v5, sentTab:Landroid/view/View;
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    new-instance v11, Lcom/boohee/myview/NewBadgeView;

    iget-object v12, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/boohee/uchoice/OrderListActivity;->access$300(Lcom/boohee/uchoice/OrderListActivity;)Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/boohee/myview/NewBadgeView;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/boohee/uchoice/OrderListActivity;->sentBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8, v11}, Lcom/boohee/uchoice/OrderListActivity;->access$502(Lcom/boohee/uchoice/OrderListActivity;Lcom/boohee/myview/NewBadgeView;)Lcom/boohee/myview/NewBadgeView;

    .line 138
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->sentBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$500(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/boohee/myview/NewBadgeView;->setTargetView(Landroid/view/View;)V

    .line 139
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->sentBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$500(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v8

    invoke-virtual {v8, v13}, Lcom/boohee/myview/NewBadgeView;->setBadgeGravity(I)V

    .line 141
    .end local v5           #sentTab:Landroid/view/View;
    :cond_4
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->sentBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$500(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/boohee/myview/NewBadgeView;->setBadgeCount(I)V

    .line 142
    iget-object v8, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    #getter for: Lcom/boohee/uchoice/OrderListActivity;->sentBadge:Lcom/boohee/myview/NewBadgeView;
    invoke-static {v8}, Lcom/boohee/uchoice/OrderListActivity;->access$500(Lcom/boohee/uchoice/OrderListActivity;)Lcom/boohee/myview/NewBadgeView;

    move-result-object v8

    if-lez v4, :cond_7

    :goto_3
    invoke-virtual {v8, v9}, Lcom/boohee/myview/NewBadgeView;->setVisibility(I)V

    goto/16 :goto_0

    .end local v2           #payedNum:I
    .end local v4           #sentNum:I
    :cond_5
    move v8, v10

    .line 120
    goto/16 :goto_1

    .restart local v2       #payedNum:I
    :cond_6
    move v8, v10

    .line 131
    goto :goto_2

    .restart local v4       #sentNum:I
    :cond_7
    move v9, v10

    .line 142
    goto :goto_3
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 148
    iget-object v0, p0, Lcom/boohee/uchoice/OrderListActivity$1;->this$0:Lcom/boohee/uchoice/OrderListActivity;

    invoke-virtual {v0}, Lcom/boohee/uchoice/OrderListActivity;->dismissLoading()V

    .line 149
    return-void
.end method
