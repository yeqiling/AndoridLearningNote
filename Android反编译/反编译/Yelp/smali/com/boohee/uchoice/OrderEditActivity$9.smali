.class Lcom/boohee/uchoice/OrderEditActivity$9;
.super Lcom/boohee/one/http/JsonCallback;
.source "OrderEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/OrderEditActivity;->getOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/OrderEditActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/OrderEditActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 457
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity$9;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 460
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 462
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$9;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    const/4 v2, 0x0

    #setter for: Lcom/boohee/uchoice/OrderEditActivity;->mCoupon:Lcom/boohee/model/Coupon;
    invoke-static {v1, v2}, Lcom/boohee/uchoice/OrderEditActivity;->access$402(Lcom/boohee/uchoice/OrderEditActivity;Lcom/boohee/model/Coupon;)Lcom/boohee/model/Coupon;

    .line 463
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$9;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->tv_use_coupon_type:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$500(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$9;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/boohee/uchoice/OrderEditActivity;->hasGetOrderId:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/boohee/uchoice/OrderEditActivity;->access$3002(Lcom/boohee/uchoice/OrderEditActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 465
    invoke-static {p1}, Lcom/boohee/model/UchoiceOrder;->parseOrderId(Lorg/json/JSONObject;)I

    move-result v0

    .line 466
    .local v0, orderId:I
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$9;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #calls: Lcom/boohee/uchoice/OrderEditActivity;->doPay(I)V
    invoke-static {v1, v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$3100(Lcom/boohee/uchoice/OrderEditActivity;I)V

    .line 467
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$9;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->isCart:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$3200(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$9;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    new-instance v2, Lcom/boohee/one/http/JsonCallback;

    iget-object v3, p0, Lcom/boohee/uchoice/OrderEditActivity$9;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-direct {v2, v3}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/boohee/api/ShopApi;->clearCarts(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 470
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 474
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 475
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$9;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->hasGetOrderId:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$3000(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$9;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->btn_pay:Landroid/widget/Button;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$3300(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 477
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$9;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->btn_pay:Landroid/widget/Button;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$3300(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 479
    :cond_0
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$9;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-virtual {v0}, Lcom/boohee/uchoice/OrderEditActivity;->dismissLoading()V

    .line 480
    return-void
.end method
