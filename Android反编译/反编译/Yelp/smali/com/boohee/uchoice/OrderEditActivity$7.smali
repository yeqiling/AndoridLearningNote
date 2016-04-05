.class Lcom/boohee/uchoice/OrderEditActivity$7;
.super Lcom/boohee/one/http/JsonCallback;
.source "OrderEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/OrderEditActivity;->getOrderPreview(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/OrderEditActivity;

.field final synthetic val$goodsList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/OrderEditActivity;Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 360
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    iput-object p3, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->val$goodsList:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "object"

    .prologue
    const v7, 0x7f070647

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 363
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 364
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    const-string v2, "carriage"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    #setter for: Lcom/boohee/uchoice/OrderEditActivity;->carriageValue:F
    invoke-static {v1, v2}, Lcom/boohee/uchoice/OrderEditActivity;->access$2302(Lcom/boohee/uchoice/OrderEditActivity;F)F

    .line 365
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    const-string v2, "price"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    #setter for: Lcom/boohee/uchoice/OrderEditActivity;->priceAllValue:F
    invoke-static {v1, v2}, Lcom/boohee/uchoice/OrderEditActivity;->access$002(Lcom/boohee/uchoice/OrderEditActivity;F)F

    .line 366
    const-string v1, "consume_more"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 367
    .local v0, consume_more:F
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->carriageValue:F
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$2300(Lcom/boohee/uchoice/OrderEditActivity;)F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    .line 368
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #calls: Lcom/boohee/uchoice/OrderEditActivity;->setTranslateAnim(Z)V
    invoke-static {v1, v5}, Lcom/boohee/uchoice/OrderEditActivity;->access$2400(Lcom/boohee/uchoice/OrderEditActivity;Z)V

    .line 377
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->tv_postage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$800(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->tv_postage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$800(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-virtual {v3, v7}, Lcom/boohee/uchoice/OrderEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->carriageValue:F
    invoke-static {v3}, Lcom/boohee/uchoice/OrderEditActivity;->access$2300(Lcom/boohee/uchoice/OrderEditActivity;)F

    move-result v3

    invoke-static {v3}, Lcom/boohee/utils/TextUtil;->m2(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->tv_total:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$2600(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-virtual {v3, v7}, Lcom/boohee/uchoice/OrderEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->priceAllValue:F
    invoke-static {v3}, Lcom/boohee/uchoice/OrderEditActivity;->access$000(Lcom/boohee/uchoice/OrderEditActivity;)F

    move-result v3

    invoke-static {v3}, Lcom/boohee/utils/TextUtil;->m2(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #calls: Lcom/boohee/uchoice/OrderEditActivity;->refreshPayTotal()V
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$1600(Lcom/boohee/uchoice/OrderEditActivity;)V

    .line 381
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->val$goodsList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->val$goodsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->tv_good_count:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$2700(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    const v3, 0x7f070275

    invoke-virtual {v2, v3}, Lcom/boohee/uchoice/OrderEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->val$goodsList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 385
    :cond_1
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/boohee/uchoice/OrderEditActivity;->carrigeOK:Ljava/lang/Boolean;
    invoke-static {v1, v2}, Lcom/boohee/uchoice/OrderEditActivity;->access$102(Lcom/boohee/uchoice/OrderEditActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 386
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-static {p1}, Lcom/boohee/model/Coupon;->parse(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/boohee/uchoice/OrderEditActivity;->access$1802(Lcom/boohee/uchoice/OrderEditActivity;Ljava/util/List;)Ljava/util/List;

    .line 387
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$1800(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$1800(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 388
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->ll_coupon:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$2800(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #calls: Lcom/boohee/uchoice/OrderEditActivity;->initCoupon()V
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$1900(Lcom/boohee/uchoice/OrderEditActivity;)V

    .line 393
    :goto_1
    return-void

    .line 370
    :cond_2
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    .line 371
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #calls: Lcom/boohee/uchoice/OrderEditActivity;->setTranslateAnim(Z)V
    invoke-static {v1, v6}, Lcom/boohee/uchoice/OrderEditActivity;->access$2400(Lcom/boohee/uchoice/OrderEditActivity;Z)V

    .line 372
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->tv_order_postage:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$2500(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    const v3, 0x7f0703f2

    invoke-virtual {v2, v3}, Lcom/boohee/uchoice/OrderEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    float-to-int v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 391
    :cond_3
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$7;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->ll_coupon:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$2800(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method
