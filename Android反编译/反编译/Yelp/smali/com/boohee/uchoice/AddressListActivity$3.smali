.class Lcom/boohee/uchoice/AddressListActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "AddressListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/AddressListActivity;->addressUpdate(Lcom/boohee/model/Address;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/AddressListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/AddressListActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 154
    iput-object p1, p0, Lcom/boohee/uchoice/AddressListActivity$3;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 157
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 158
    invoke-static {p1}, Lcom/boohee/model/Address;->parseAddress(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 159
    .local v0, addresses:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/Address;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/boohee/uchoice/AddressListActivity$3;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    #getter for: Lcom/boohee/uchoice/AddressListActivity;->mAddressList:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/uchoice/AddressListActivity;->access$100(Lcom/boohee/uchoice/AddressListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 161
    iget-object v1, p0, Lcom/boohee/uchoice/AddressListActivity$3;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    #getter for: Lcom/boohee/uchoice/AddressListActivity;->mAddressList:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/uchoice/AddressListActivity;->access$100(Lcom/boohee/uchoice/AddressListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 162
    iget-object v1, p0, Lcom/boohee/uchoice/AddressListActivity$3;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    #getter for: Lcom/boohee/uchoice/AddressListActivity;->addressListAdapter:Lcom/boohee/uchoice/AddressListAdapter;
    invoke-static {v1}, Lcom/boohee/uchoice/AddressListActivity;->access$200(Lcom/boohee/uchoice/AddressListActivity;)Lcom/boohee/uchoice/AddressListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/uchoice/AddressListAdapter;->notifyDataSetChanged()V

    .line 164
    :cond_0
    return-void
.end method
