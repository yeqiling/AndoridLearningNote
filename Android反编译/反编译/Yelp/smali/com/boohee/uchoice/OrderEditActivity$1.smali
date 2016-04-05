.class Lcom/boohee/uchoice/OrderEditActivity$1;
.super Ljava/lang/Object;
.source "OrderEditActivity.java"

# interfaces
.implements Lcom/boohee/uchoice/OrderEditListAdapter$CheckValueListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/OrderEditActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/OrderEditActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/OrderEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckValue(F)V
    .locals 5
    .parameter "totaPrice"

    .prologue
    const v3, 0x7f070647

    .line 165
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #setter for: Lcom/boohee/uchoice/OrderEditActivity;->priceAllValue:F
    invoke-static {v0, p1}, Lcom/boohee/uchoice/OrderEditActivity;->access$002(Lcom/boohee/uchoice/OrderEditActivity;F)F

    .line 166
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->carrigeOK:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$100(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->tv_price_all_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$200(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-virtual {v2, v3}, Lcom/boohee/uchoice/OrderEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/boohee/utils/TextUtil;->m2(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    :goto_0
    return-void

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$300(Lcom/boohee/uchoice/OrderEditActivity;)Lcom/boohee/model/Address;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    const/4 v1, 0x0

    #setter for: Lcom/boohee/uchoice/OrderEditActivity;->mCoupon:Lcom/boohee/model/Coupon;
    invoke-static {v0, v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$402(Lcom/boohee/uchoice/OrderEditActivity;Lcom/boohee/model/Coupon;)Lcom/boohee/model/Coupon;

    .line 171
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->tv_use_coupon_type:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$500(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$600(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;
    invoke-static {v2}, Lcom/boohee/uchoice/OrderEditActivity;->access$300(Lcom/boohee/uchoice/OrderEditActivity;)Lcom/boohee/model/Address;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;
    invoke-static {v3}, Lcom/boohee/uchoice/OrderEditActivity;->access$300(Lcom/boohee/uchoice/OrderEditActivity;)Lcom/boohee/model/Address;

    move-result-object v3

    iget-object v3, v3, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    iget-object v4, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;
    invoke-static {v4}, Lcom/boohee/uchoice/OrderEditActivity;->access$300(Lcom/boohee/uchoice/OrderEditActivity;)Lcom/boohee/model/Address;

    move-result-object v4

    iget-object v4, v4, Lcom/boohee/model/Address;->district:Ljava/lang/String;

    #calls: Lcom/boohee/uchoice/OrderEditActivity;->getOrderPreview(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/boohee/uchoice/OrderEditActivity;->access$700(Lcom/boohee/uchoice/OrderEditActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->tv_price_all_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$200(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-virtual {v2, v3}, Lcom/boohee/uchoice/OrderEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/boohee/utils/TextUtil;->m2(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$1;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->tv_postage:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$800(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
