.class Lcom/boohee/uchoice/GoodsDetailActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "GoodsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/GoodsDetailActivity;->requestGood()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/GoodsDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/GoodsDetailActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$2;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 184
    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$2;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    const-string v0, "goods"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-class v2, Lcom/boohee/model/Goods;

    invoke-static {v0, v2}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Goods;

    #setter for: Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;
    invoke-static {v1, v0}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$102(Lcom/boohee/uchoice/GoodsDetailActivity;Lcom/boohee/model/Goods;)Lcom/boohee/model/Goods;

    .line 185
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$2;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #getter for: Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;
    invoke-static {v0}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$100(Lcom/boohee/uchoice/GoodsDetailActivity;)Lcom/boohee/model/Goods;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$2;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$2;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #getter for: Lcom/boohee/uchoice/GoodsDetailActivity;->goods:Lcom/boohee/model/Goods;
    invoke-static {v1}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$100(Lcom/boohee/uchoice/GoodsDetailActivity;)Lcom/boohee/model/Goods;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/Goods;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/boohee/uchoice/GoodsDetailActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 188
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$2;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #calls: Lcom/boohee/uchoice/GoodsDetailActivity;->initGoodsView()V
    invoke-static {v0}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$200(Lcom/boohee/uchoice/GoodsDetailActivity;)V

    .line 189
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$2;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #calls: Lcom/boohee/uchoice/GoodsDetailActivity;->initFragments()V
    invoke-static {v0}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$300(Lcom/boohee/uchoice/GoodsDetailActivity;)V

    goto :goto_0
.end method
