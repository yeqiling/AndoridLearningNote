.class Lcom/boohee/uchoice/AddressListActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "AddressListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/AddressListActivity;->getAddressList()V
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
    .line 126
    iput-object p1, p0, Lcom/boohee/uchoice/AddressListActivity$2;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "object"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 129
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 130
    invoke-static {p1}, Lcom/boohee/model/Address;->parseAddress(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 131
    .local v0, addresses:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/Address;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/boohee/uchoice/AddressListActivity$2;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    #getter for: Lcom/boohee/uchoice/AddressListActivity;->mAddressList:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/uchoice/AddressListActivity;->access$100(Lcom/boohee/uchoice/AddressListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 133
    iget-object v1, p0, Lcom/boohee/uchoice/AddressListActivity$2;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    #getter for: Lcom/boohee/uchoice/AddressListActivity;->mAddressList:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/uchoice/AddressListActivity;->access$100(Lcom/boohee/uchoice/AddressListActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 134
    iget-object v1, p0, Lcom/boohee/uchoice/AddressListActivity$2;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    #getter for: Lcom/boohee/uchoice/AddressListActivity;->addressListAdapter:Lcom/boohee/uchoice/AddressListAdapter;
    invoke-static {v1}, Lcom/boohee/uchoice/AddressListActivity;->access$200(Lcom/boohee/uchoice/AddressListActivity;)Lcom/boohee/uchoice/AddressListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/uchoice/AddressListAdapter;->notifyDataSetChanged()V

    .line 135
    iget-object v1, p0, Lcom/boohee/uchoice/AddressListActivity$2;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    #getter for: Lcom/boohee/uchoice/AddressListActivity;->txt_address_hint:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/uchoice/AddressListActivity;->access$300(Lcom/boohee/uchoice/AddressListActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/boohee/uchoice/AddressListActivity$2;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    #getter for: Lcom/boohee/uchoice/AddressListActivity;->recycler_view:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/boohee/uchoice/AddressListActivity;->access$400(Lcom/boohee/uchoice/AddressListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 141
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/boohee/uchoice/AddressListActivity$2;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    #getter for: Lcom/boohee/uchoice/AddressListActivity;->txt_address_hint:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/uchoice/AddressListActivity;->access$300(Lcom/boohee/uchoice/AddressListActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/boohee/uchoice/AddressListActivity$2;->this$0:Lcom/boohee/uchoice/AddressListActivity;

    #getter for: Lcom/boohee/uchoice/AddressListActivity;->recycler_view:Landroid/support/v7/widget/RecyclerView;
    invoke-static {v1}, Lcom/boohee/uchoice/AddressListActivity;->access$400(Lcom/boohee/uchoice/AddressListActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method
