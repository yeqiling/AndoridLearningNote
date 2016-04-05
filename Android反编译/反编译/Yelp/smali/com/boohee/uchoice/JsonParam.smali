.class public Lcom/boohee/uchoice/JsonParam;
.super Ljava/lang/Object;
.source "JsonParam.java"


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/boohee/uchoice/JsonParam;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/uchoice/JsonParam;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatCarrige(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Lorg/json/JSONObject;
    .locals 5
    .parameter "province"
    .parameter "city"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 18
    .local p2, goodsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/CartGoods;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 19
    .local v2, userObj:Lorg/json/JSONObject;
    const-string v3, "address_province"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v3, "address_city"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    const-string v3, "shipment_type"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    const-string v3, "order_items"

    invoke-static {p2}, Lcom/boohee/uchoice/JsonParam;->creatGoodsParam(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    const-string v3, "type"

    const-string v4, "goods"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .local v1, obj:Lorg/json/JSONObject;
    const-string v3, "order"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v1           #obj:Lorg/json/JSONObject;
    .end local v2           #userObj:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 30
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static creatGoodsParam(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, goods:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/CartGoods;>;"
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 65
    .local v2, itemArray:Lorg/json/JSONArray;
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 78
    :cond_0
    return-object v2

    .line 67
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 68
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 70
    .local v3, object:Lorg/json/JSONObject;
    :try_start_0
    const-string v5, "goods_id"

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/CartGoods;

    iget v4, v4, Lcom/boohee/model/CartGoods;->goods_id:I

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 71
    const-string v5, "quantity"

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/CartGoods;

    iget v4, v4, Lcom/boohee/model/CartGoods;->quantity:I

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public static creatOrderParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)Lcom/boohee/one/http/JsonParams;
    .locals 6
    .parameter "realName"
    .parameter "cellPhone"
    .parameter "addressProvince"
    .parameter "addressCity"
    .parameter "addressDistrict"
    .parameter "addressStreet"
    .parameter "receiveTime"
    .parameter "shipment_type"
    .parameter "type"
    .parameter "postCode"
    .parameter
    .parameter "note"
    .parameter "coupon_id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/boohee/one/http/JsonParams;"
        }
    .end annotation

    .prologue
    .line 38
    .local p10, goodsList:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/CartGoods;>;"
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v3, userObj:Lorg/json/JSONObject;
    const-string v4, "real_name"

    invoke-virtual {v3, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v4, "cellphone"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v4, "address_province"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v4, "address_city"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v4, "address_district"

    invoke-virtual {v3, v4, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v4, "address_zipcode"

    invoke-virtual {v3, v4, p9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    const-string v4, "address_street"

    invoke-virtual {v3, v4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    const-string v4, "shipment_type"

    invoke-virtual {v3, v4, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    const-string v4, "receive_time"

    invoke-virtual {v3, v4, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    const-string v4, "note"

    move-object/from16 v0, p11

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v4, "type"

    invoke-virtual {v3, v4, p8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    const-string v4, "order_items"

    invoke-static/range {p10 .. p10}, Lcom/boohee/uchoice/JsonParam;->creatGoodsParam(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    if-lez p12, :cond_0

    .line 52
    const-string v4, "coupon_id"

    move/from16 v0, p12

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    :cond_0
    new-instance v2, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v2}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 55
    .local v2, obj:Lcom/boohee/one/http/JsonParams;
    const-string v4, "order"

    invoke-virtual {v2, v4, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v2           #obj:Lcom/boohee/one/http/JsonParams;
    .end local v3           #userObj:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static createOrderDetai2l(I)Lorg/json/JSONObject;
    .locals 3
    .parameter "orderId"

    .prologue
    .line 102
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 103
    .local v1, userObj:Lorg/json/JSONObject;
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    .end local v1           #userObj:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static createPriceParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/boohee/one/http/JsonParams;
    .locals 5
    .parameter "province"
    .parameter "city"
    .parameter "district"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;)",
            "Lcom/boohee/one/http/JsonParams;"
        }
    .end annotation

    .prologue
    .line 84
    .local p3, goodsList:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/CartGoods;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 85
    .local v2, userObj:Lorg/json/JSONObject;
    const-string v3, "address_province"

    invoke-virtual {v2, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    const-string v3, "address_city"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    const-string v3, "address_district"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v3, "shipment_type"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v3, "order_items"

    invoke-static {p3}, Lcom/boohee/uchoice/JsonParam;->creatGoodsParam(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    const-string v3, "type"

    const-string v4, "goods"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 92
    .local v1, obj:Lcom/boohee/one/http/JsonParams;
    const-string v3, "order"

    invoke-virtual {v1, v3, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v1           #obj:Lcom/boohee/one/http/JsonParams;
    .end local v2           #userObj:Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 97
    const/4 v1, 0x0

    goto :goto_0
.end method
