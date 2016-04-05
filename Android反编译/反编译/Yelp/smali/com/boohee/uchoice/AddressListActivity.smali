.class public Lcom/boohee/uchoice/AddressListActivity;
.super Lcom/boohee/main/GestureActivity;
.source "AddressListActivity.java"

# interfaces
.implements Lcom/boohee/uchoice/AddressListAdapter$onAddressUpdateListener;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private addressListAdapter:Lcom/boohee/uchoice/AddressListAdapter;

.field private mAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Address;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private recycler_view:Landroid/support/v7/widget/RecyclerView;

.field private timestampString:Ljava/lang/String;

.field private txt_address_hint:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/boohee/uchoice/AddressListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/uchoice/AddressListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->mAddressList:Ljava/util/List;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->timestampString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/uchoice/AddressListActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->timestampString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/uchoice/AddressListActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->mAddressList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/uchoice/AddressListActivity;)Lcom/boohee/uchoice/AddressListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->addressListAdapter:Lcom/boohee/uchoice/AddressListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/uchoice/AddressListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->txt_address_hint:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/uchoice/AddressListActivity;)Landroid/support/v7/widget/RecyclerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method private findView()V
    .locals 3

    .prologue
    .line 56
    const v0, 0x7f0e017e

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/AddressListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    .line 57
    const v0, 0x7f0e05a8

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/AddressListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->txt_address_hint:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 60
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 62
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressListActivity;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 64
    new-instance v0, Lcom/boohee/uchoice/AddressListAdapter;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressListActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/uchoice/AddressListActivity;->mAddressList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/boohee/uchoice/AddressListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->addressListAdapter:Lcom/boohee/uchoice/AddressListAdapter;

    .line 65
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->addressListAdapter:Lcom/boohee/uchoice/AddressListAdapter;

    invoke-virtual {v0, p0}, Lcom/boohee/uchoice/AddressListAdapter;->setAddressUpdateListener(Lcom/boohee/uchoice/AddressListAdapter$onAddressUpdateListener;)V

    .line 66
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/boohee/uchoice/AddressListActivity;->addressListAdapter:Lcom/boohee/uchoice/AddressListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 67
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->recycler_view:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {v1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 68
    return-void
.end method

.method private getAddressList()V
    .locals 1

    .prologue
    .line 126
    new-instance v0, Lcom/boohee/uchoice/AddressListActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/boohee/uchoice/AddressListActivity$2;-><init>(Lcom/boohee/uchoice/AddressListActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/ShopApi;->getShipmentAddress(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 143
    return-void
.end method

.method private getRegions()V
    .locals 6

    .prologue
    .line 95
    sget-object v3, Lcom/boohee/utility/App;->FILE_PATH:Ljava/lang/String;

    const-string v4, "regions.json"

    invoke-static {v3, v4}, Lcom/boohee/utils/FileUtil;->readStrFromAPP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, data:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/CharSequence;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v3}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 98
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 99
    .local v2, jsonObject:Lorg/json/JSONObject;
    const-string v3, "timestamp"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/uchoice/AddressListActivity;->timestampString:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    sget-object v3, Lcom/boohee/uchoice/AddressListActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u672c\u5730\u65f6\u95f4\u6233:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/uchoice/AddressListActivity;->timestampString:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v3, p0, Lcom/boohee/uchoice/AddressListActivity;->timestampString:Ljava/lang/String;

    new-instance v4, Lcom/boohee/uchoice/AddressListActivity$1;

    invoke-direct {v4, p0, p0}, Lcom/boohee/uchoice/AddressListActivity$1;-><init>(Lcom/boohee/uchoice/AddressListActivity;Landroid/content/Context;)V

    invoke-static {v3, p0, v4}, Lcom/boohee/api/ShopApi;->getRegions(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 120
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addressUpdate(Lcom/boohee/model/Address;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 154
    new-instance v0, Lcom/boohee/uchoice/AddressListActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/boohee/uchoice/AddressListActivity$3;-><init>(Lcom/boohee/uchoice/AddressListActivity;Landroid/content/Context;)V

    invoke-static {p1, p0, v0}, Lcom/boohee/api/ShopApi;->updateShipmentAddress(Lcom/boohee/model/Address;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 166
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 170
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/AddressListActivity;->setResult(I)V

    .line 171
    invoke-virtual {p0}, Lcom/boohee/uchoice/AddressListActivity;->finish()V

    .line 172
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    const v0, 0x7f0301e7

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/AddressListActivity;->setContentView(I)V

    .line 44
    const v0, 0x7f0700d2

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/AddressListActivity;->setTitle(I)V

    .line 45
    invoke-direct {p0}, Lcom/boohee/uchoice/AddressListActivity;->findView()V

    .line 46
    invoke-direct {p0}, Lcom/boohee/uchoice/AddressListActivity;->getRegions()V

    .line 47
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 72
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 73
    const/4 v1, 0x0

    const v2, 0x7f0700c1

    invoke-interface {p1, v1, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 74
    .local v0, add:Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 75
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 80
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 87
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 82
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/uchoice/AddressListActivity;->ctx:Landroid/content/Context;

    const-class v3, Lcom/boohee/uchoice/AddressEditActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 83
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "address_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/AddressListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onPause()V

    .line 148
    iget-object v0, p0, Lcom/boohee/uchoice/AddressListActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/utils/Keyboard;->closeAll(Landroid/content/Context;)V

    .line 149
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 52
    invoke-direct {p0}, Lcom/boohee/uchoice/AddressListActivity;->getAddressList()V

    .line 53
    return-void
.end method
