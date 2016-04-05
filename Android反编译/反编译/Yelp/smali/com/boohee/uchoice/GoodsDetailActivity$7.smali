.class Lcom/boohee/uchoice/GoodsDetailActivity$7;
.super Lcom/boohee/one/http/JsonCallback;
.source "GoodsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/GoodsDetailActivity;->addGoodToCart(II)V
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
    .line 362
    iput-object p1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$7;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "object"

    .prologue
    .line 365
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 366
    const/4 v3, 0x0

    .line 367
    .local v3, total:I
    const-string v4, "item"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/boohee/model/Goods;

    invoke-static {v4, v5}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 368
    .local v1, goodsList:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/Goods;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 369
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Goods;

    .line 370
    .local v0, goods:Lcom/boohee/model/Goods;
    iget v4, v0, Lcom/boohee/model/Goods;->quantity:I

    add-int/2addr v3, v4

    .line 371
    goto :goto_0

    .line 373
    .end local v0           #goods:Lcom/boohee/model/Goods;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    if-lez v3, :cond_1

    .line 374
    iget-object v4, p0, Lcom/boohee/uchoice/GoodsDetailActivity$7;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #calls: Lcom/boohee/uchoice/GoodsDetailActivity;->setTranslateAnim(I)V
    invoke-static {v4, v3}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$800(Lcom/boohee/uchoice/GoodsDetailActivity;I)V

    .line 376
    :cond_1
    return-void
.end method
