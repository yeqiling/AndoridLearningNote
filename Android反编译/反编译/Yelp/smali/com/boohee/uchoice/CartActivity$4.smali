.class Lcom/boohee/uchoice/CartActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "CartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/CartActivity;->requestGoodQuantity(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/CartActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/CartActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/boohee/uchoice/CartActivity$4;->this$0:Lcom/boohee/uchoice/CartActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    const/16 v2, 0x8

    .line 271
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 272
    const-string v0, "total"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity$4;->this$0:Lcom/boohee/uchoice/CartActivity;

    const-string v1, "total"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    #setter for: Lcom/boohee/uchoice/CartActivity;->count:I
    invoke-static {v0, v1}, Lcom/boohee/uchoice/CartActivity;->access$002(Lcom/boohee/uchoice/CartActivity;I)I

    .line 274
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity$4;->this$0:Lcom/boohee/uchoice/CartActivity;

    #getter for: Lcom/boohee/uchoice/CartActivity;->count:I
    invoke-static {v0}, Lcom/boohee/uchoice/CartActivity;->access$000(Lcom/boohee/uchoice/CartActivity;)I

    move-result v0

    if-nez v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity$4;->this$0:Lcom/boohee/uchoice/CartActivity;

    const/4 v1, 0x0

    #setter for: Lcom/boohee/uchoice/CartActivity;->allPriceValue:F
    invoke-static {v0, v1}, Lcom/boohee/uchoice/CartActivity;->access$702(Lcom/boohee/uchoice/CartActivity;F)F

    .line 276
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity$4;->this$0:Lcom/boohee/uchoice/CartActivity;

    #getter for: Lcom/boohee/uchoice/CartActivity;->tv_price_all_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/uchoice/CartActivity;->access$800(Lcom/boohee/uchoice/CartActivity;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity$4;->this$0:Lcom/boohee/uchoice/CartActivity;

    #getter for: Lcom/boohee/uchoice/CartActivity;->rl_cart_hint:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/boohee/uchoice/CartActivity;->access$100(Lcom/boohee/uchoice/CartActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 278
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity$4;->this$0:Lcom/boohee/uchoice/CartActivity;

    #getter for: Lcom/boohee/uchoice/CartActivity;->lv_cart:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/boohee/uchoice/CartActivity;->access$200(Lcom/boohee/uchoice/CartActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity$4;->this$0:Lcom/boohee/uchoice/CartActivity;

    #getter for: Lcom/boohee/uchoice/CartActivity;->ll_bottom_bar:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/boohee/uchoice/CartActivity;->access$300(Lcom/boohee/uchoice/CartActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity$4;->this$0:Lcom/boohee/uchoice/CartActivity;

    #getter for: Lcom/boohee/uchoice/CartActivity;->ll_delete:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/boohee/uchoice/CartActivity;->access$400(Lcom/boohee/uchoice/CartActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity$4;->this$0:Lcom/boohee/uchoice/CartActivity;

    #calls: Lcom/boohee/uchoice/CartActivity;->refreshMenuItem()V
    invoke-static {v0}, Lcom/boohee/uchoice/CartActivity;->access$600(Lcom/boohee/uchoice/CartActivity;)V

    .line 286
    :cond_0
    return-void

    .line 282
    :cond_1
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity$4;->this$0:Lcom/boohee/uchoice/CartActivity;

    #calls: Lcom/boohee/uchoice/CartActivity;->initGoods(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/uchoice/CartActivity;->access$500(Lcom/boohee/uchoice/CartActivity;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
