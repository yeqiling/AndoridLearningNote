.class Lcom/boohee/uchoice/OrderEditActivity$6;
.super Lcom/boohee/one/http/JsonCallback;
.source "OrderEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/OrderEditActivity;->requestGoodsById(I)V
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
    .line 341
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity$6;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 344
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 345
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$6;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-static {p1}, Lcom/boohee/model/CartGoods;->parseGoodsFromJson(Lorg/json/JSONObject;)Lcom/boohee/model/CartGoods;

    move-result-object v1

    #setter for: Lcom/boohee/uchoice/OrderEditActivity;->goods:Lcom/boohee/model/CartGoods;
    invoke-static {v0, v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$2002(Lcom/boohee/uchoice/OrderEditActivity;Lcom/boohee/model/CartGoods;)Lcom/boohee/model/CartGoods;

    .line 346
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$6;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #calls: Lcom/boohee/uchoice/OrderEditActivity;->initAdapter()V
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$2100(Lcom/boohee/uchoice/OrderEditActivity;)V

    .line 347
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$6;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #calls: Lcom/boohee/uchoice/OrderEditActivity;->getDefaultAddress()V
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$2200(Lcom/boohee/uchoice/OrderEditActivity;)V

    .line 348
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 352
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 353
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$6;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-virtual {v0}, Lcom/boohee/uchoice/OrderEditActivity;->dismissLoading()V

    .line 354
    return-void
.end method
