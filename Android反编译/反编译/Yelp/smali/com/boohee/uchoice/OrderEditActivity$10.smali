.class Lcom/boohee/uchoice/OrderEditActivity$10;
.super Lcom/boohee/one/http/JsonCallback;
.source "OrderEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/OrderEditActivity;->getDefaultAddress()V
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
    .line 505
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity$10;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 508
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 509
    sget-object v2, Lcom/boohee/uchoice/OrderEditActivity;->TAG:Ljava/lang/String;

    instance-of v1, p1, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v2, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-static {p1}, Lcom/boohee/model/Address;->parseAddress(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 511
    .local v0, addresses:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/Address;>;"
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$10;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    iget-object v2, p0, Lcom/boohee/uchoice/OrderEditActivity$10;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #calls: Lcom/boohee/uchoice/OrderEditActivity;->getDefaultAddress(Ljava/util/List;)Lcom/boohee/model/Address;
    invoke-static {v2, v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$3400(Lcom/boohee/uchoice/OrderEditActivity;Ljava/util/List;)Lcom/boohee/model/Address;

    move-result-object v2

    #setter for: Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;
    invoke-static {v1, v2}, Lcom/boohee/uchoice/OrderEditActivity;->access$302(Lcom/boohee/uchoice/OrderEditActivity;Lcom/boohee/model/Address;)Lcom/boohee/model/Address;

    .line 512
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$10;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    iget-object v2, p0, Lcom/boohee/uchoice/OrderEditActivity$10;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;
    invoke-static {v2}, Lcom/boohee/uchoice/OrderEditActivity;->access$300(Lcom/boohee/uchoice/OrderEditActivity;)Lcom/boohee/model/Address;

    move-result-object v2

    #calls: Lcom/boohee/uchoice/OrderEditActivity;->refreshAddress(Lcom/boohee/model/Address;)V
    invoke-static {v1, v2}, Lcom/boohee/uchoice/OrderEditActivity;->access$3500(Lcom/boohee/uchoice/OrderEditActivity;Lcom/boohee/model/Address;)V

    .line 513
    return-void

    .end local v0           #addresses:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/Address;>;"
    :cond_0
    move-object v1, p1

    .line 509
    check-cast v1, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 517
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 518
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$10;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-virtual {v0}, Lcom/boohee/uchoice/OrderEditActivity;->dismissLoading()V

    .line 519
    return-void
.end method
