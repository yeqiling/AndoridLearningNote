.class public Lcom/boohee/uchoice/CartActivity;
.super Lcom/boohee/main/GestureActivity;
.source "CartActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/boohee/uchoice/CartListAdapter$onEditGoodQuantityListener;


# static fields
.field static final TAG:Ljava/lang/String;

.field public static isEdit:Ljava/lang/Boolean;


# instance fields
.field private allPriceValue:F

.field private btn_account:Landroid/widget/Button;

.field private btn_cart_go:Landroid/widget/Button;

.field private btn_delete:Landroid/widget/Button;

.field private cartListAdapter:Lcom/boohee/uchoice/CartListAdapter;

.field private count:I

.field public goodsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;"
        }
    .end annotation
.end field

.field public isCanCommit:Ljava/lang/Boolean;

.field private ll_bottom_bar:Landroid/widget/LinearLayout;

.field private ll_delete:Landroid/widget/LinearLayout;

.field private lv_cart:Landroid/widget/ListView;

.field private mMenu:Landroid/view/Menu;

.field private rl_cart_hint:Landroid/widget/RelativeLayout;

.field private tv_price_all_value:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/boohee/uchoice/CartActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/uchoice/CartActivity;->TAG:Ljava/lang/String;

    .line 55
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/boohee/uchoice/CartActivity;->isEdit:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/uchoice/CartActivity;->isCanCommit:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/uchoice/CartActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/boohee/uchoice/CartActivity;->count:I

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/uchoice/CartActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/boohee/uchoice/CartActivity;->count:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/uchoice/CartActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity;->rl_cart_hint:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/uchoice/CartActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity;->lv_cart:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/uchoice/CartActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity;->ll_bottom_bar:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/uchoice/CartActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity;->ll_delete:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/uchoice/CartActivity;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/boohee/uchoice/CartActivity;->initGoods(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/uchoice/CartActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/boohee/uchoice/CartActivity;->refreshMenuItem()V

    return-void
.end method

.method static synthetic access$702(Lcom/boohee/uchoice/CartActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput p1, p0, Lcom/boohee/uchoice/CartActivity;->allPriceValue:F

    return p1
.end method

.method static synthetic access$800(Lcom/boohee/uchoice/CartActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity;->tv_price_all_value:Landroid/widget/TextView;

    return-object v0
.end method

.method private deleteGoodsFromCart(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/boohee/uchoice/CartActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/boohee/uchoice/CartActivity$3;-><init>(Lcom/boohee/uchoice/CartActivity;Landroid/content/Context;)V

    invoke-static {p1, p0, v0}, Lcom/boohee/api/ShopApi;->deleteCart(Ljava/util/ArrayList;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 237
    return-void
.end method

.method private findViews()V
    .locals 3

    .prologue
    .line 103
    const v0, 0x7f0e05b7

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/CartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/uchoice/CartActivity;->lv_cart:Landroid/widget/ListView;

    .line 104
    const v0, 0x7f0e05b8

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/CartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/uchoice/CartActivity;->ll_bottom_bar:Landroid/widget/LinearLayout;

    .line 105
    const v0, 0x7f0e05bc

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/CartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/boohee/uchoice/CartActivity;->ll_delete:Landroid/widget/LinearLayout;

    .line 106
    const v0, 0x7f0e05bd

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/CartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/uchoice/CartActivity;->btn_delete:Landroid/widget/Button;

    .line 107
    const v0, 0x7f0e05bb

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/CartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/uchoice/CartActivity;->btn_account:Landroid/widget/Button;

    .line 108
    const v0, 0x7f0e05ba

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/CartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/uchoice/CartActivity;->tv_price_all_value:Landroid/widget/TextView;

    .line 109
    const v0, 0x7f0e0355

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/CartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/boohee/uchoice/CartActivity;->rl_cart_hint:Landroid/widget/RelativeLayout;

    .line 110
    const v0, 0x7f0e0357

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/CartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/uchoice/CartActivity;->btn_cart_go:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity;->lv_cart:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 112
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity;->btn_account:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity;->btn_delete:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity;->btn_cart_go:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 116
    new-instance v0, Lcom/boohee/uchoice/CartListAdapter;

    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/boohee/uchoice/CartListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/uchoice/CartActivity;->cartListAdapter:Lcom/boohee/uchoice/CartListAdapter;

    .line 117
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity;->lv_cart:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->cartListAdapter:Lcom/boohee/uchoice/CartListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 118
    iget-object v0, p0, Lcom/boohee/uchoice/CartActivity;->cartListAdapter:Lcom/boohee/uchoice/CartListAdapter;

    invoke-virtual {v0, p0}, Lcom/boohee/uchoice/CartListAdapter;->setEditGoodQuantityListener(Lcom/boohee/uchoice/CartListAdapter$onEditGoodQuantityListener;)V

    .line 119
    return-void
.end method

.method private getGoodsList()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/boohee/uchoice/CartActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/boohee/uchoice/CartActivity$2;-><init>(Lcom/boohee/uchoice/CartActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/ShopApi;->getCarts(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 211
    return-void
.end method

.method private initGoods(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "object"

    .prologue
    const/4 v7, 0x0

    .line 243
    const/4 v2, 0x0

    iput v2, p0, Lcom/boohee/uchoice/CartActivity;->allPriceValue:F

    .line 244
    iget-object v2, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 245
    invoke-static {p1}, Lcom/boohee/model/CartGoods;->parseCart(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    .line 246
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/CartGoods;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 248
    iget-object v2, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 250
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 251
    iget-object v2, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/CartGoods;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/boohee/model/CartGoods;->isChecked:Ljava/lang/Boolean;

    .line 250
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 253
    :cond_2
    iget-object v2, p0, Lcom/boohee/uchoice/CartActivity;->cartListAdapter:Lcom/boohee/uchoice/CartListAdapter;

    invoke-virtual {v2}, Lcom/boohee/uchoice/CartListAdapter;->notifyDataSetChanged()V

    .line 255
    if-eqz p1, :cond_3

    const-string v2, "total_price"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 256
    const-string v2, "total_price"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    iput v2, p0, Lcom/boohee/uchoice/CartActivity;->allPriceValue:F

    .line 257
    iget-object v2, p0, Lcom/boohee/uchoice/CartActivity;->tv_price_all_value:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f070647

    invoke-virtual {p0, v4}, Lcom/boohee/uchoice/CartActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%.2f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/boohee/uchoice/CartActivity;->allPriceValue:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :cond_3
    if-eqz p1, :cond_0

    const-string v2, "can_commit"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 260
    const-string v2, "can_commit"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/uchoice/CartActivity;->isCanCommit:Ljava/lang/Boolean;

    goto/16 :goto_0
.end method

.method private refreshMenuItem()V
    .locals 3

    .prologue
    .line 291
    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->mMenu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->mMenu:Landroid/view/Menu;

    invoke-interface {v1}, Landroid/view/Menu;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->mMenu:Landroid/view/Menu;

    const v2, 0x7f0e07ca

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 295
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 298
    iget v1, p0, Lcom/boohee/uchoice/CartActivity;->count:I

    if-lez v1, :cond_2

    .line 299
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 304
    :goto_1
    sget-object v1, Lcom/boohee/uchoice/CartActivity;->isEdit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    const v1, 0x7f07001c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 301
    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 307
    :cond_3
    const v1, 0x7f0701f9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private requestGoodQuantity(II)V
    .locals 1
    .parameter "goodId"
    .parameter "quantity"

    .prologue
    .line 268
    new-instance v0, Lcom/boohee/uchoice/CartActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/boohee/uchoice/CartActivity$4;-><init>(Lcom/boohee/uchoice/CartActivity;Landroid/content/Context;)V

    invoke-static {p2, p1, p0, v0}, Lcom/boohee/api/ShopApi;->updateCarts(IILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 288
    return-void
.end method


# virtual methods
.method public editGoodQuantity(II)V
    .locals 0
    .parameter "goodId"
    .parameter "quantity"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/boohee/uchoice/CartActivity;->requestGoodQuantity(II)V

    .line 169
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x1

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 125
    :sswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v0, deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 129
    iget-object v3, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/CartGoods;

    iget-object v3, v3, Lcom/boohee/model/CartGoods;->isChecked:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/CartGoods;

    iget v3, v3, Lcom/boohee/model/CartGoods;->goods_id:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 133
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 134
    invoke-direct {p0, v0}, Lcom/boohee/uchoice/CartActivity;->deleteGoodsFromCart(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 136
    :cond_3
    const v3, 0x7f070141

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 140
    .end local v0           #deleteList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    :sswitch_1
    iget-object v3, p0, Lcom/boohee/uchoice/CartActivity;->isCanCommit:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    .line 141
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/boohee/uchoice/CartActivity;->ctx:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070140

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070444

    new-instance v5, Lcom/boohee/uchoice/CartActivity$1;

    invoke-direct {v5, p0}, Lcom/boohee/uchoice/CartActivity$1;-><init>(Lcom/boohee/uchoice/CartActivity;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 148
    :cond_4
    iget-object v3, p0, Lcom/boohee/uchoice/CartActivity;->ctx:Landroid/content/Context;

    const-string v4, "shop_clickCalculateBill"

    invoke-static {v3, v4}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    iget-object v3, p0, Lcom/boohee/uchoice/CartActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v4, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-static {v3, v4, v5}, Lcom/boohee/uchoice/OrderEditActivity;->start(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    goto/16 :goto_0

    .line 153
    :sswitch_2
    invoke-virtual {p0}, Lcom/boohee/uchoice/CartActivity;->finish()V

    .line 154
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/boohee/uchoice/CartActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v4, Lcom/boohee/one/ui/MainActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    .local v2, intent:Landroid/content/Intent;
    const/high16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 156
    const-string v3, "onnewintent"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    iget-object v3, p0, Lcom/boohee/uchoice/CartActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v3, v2}, Lcom/boohee/one/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 158
    iget-object v3, p0, Lcom/boohee/uchoice/CartActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v3}, Lcom/boohee/one/ui/BaseActivity;->finish()V

    goto/16 :goto_0

    .line 123
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0357 -> :sswitch_2
        0x7f0e05bb -> :sswitch_1
        0x7f0e05bd -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const v0, 0x7f0301eb

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/CartActivity;->setContentView(I)V

    .line 64
    const v0, 0x7f07013f

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/CartActivity;->setTitle(I)V

    .line 65
    invoke-direct {p0}, Lcom/boohee/uchoice/CartActivity;->findViews()V

    .line 66
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/boohee/uchoice/CartActivity;->mMenu:Landroid/view/Menu;

    .line 77
    invoke-virtual {p0}, Lcom/boohee/uchoice/CartActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 312
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 313
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/boohee/uchoice/CartActivity;->isEdit:Ljava/lang/Boolean;

    .line 314
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    sget-object v1, Lcom/boohee/uchoice/CartActivity;->isEdit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/CartGoods;

    iget-object v2, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/CartGoods;

    iget-object v2, v2, Lcom/boohee/model/CartGoods;->isChecked:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/boohee/model/CartGoods;->isChecked:Ljava/lang/Boolean;

    .line 177
    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->cartListAdapter:Lcom/boohee/uchoice/CartListAdapter;

    invoke-virtual {v1}, Lcom/boohee/uchoice/CartListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 176
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 179
    :cond_3
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/uchoice/GoodsDetailActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 180
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "goods_id"

    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/CartGoods;

    iget v1, v1, Lcom/boohee/model/CartGoods;->goods_id:I

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/CartActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/16 v3, 0x8

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 83
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 98
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 85
    :pswitch_0
    sget-object v1, Lcom/boohee/uchoice/CartActivity;->isEdit:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/boohee/uchoice/CartActivity;->isEdit:Ljava/lang/Boolean;

    .line 87
    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->ll_bottom_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->ll_delete:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 94
    :goto_1
    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->cartListAdapter:Lcom/boohee/uchoice/CartListAdapter;

    invoke-virtual {v1}, Lcom/boohee/uchoice/CartListAdapter;->notifyDataSetChanged()V

    .line 95
    invoke-direct {p0}, Lcom/boohee/uchoice/CartActivity;->refreshMenuItem()V

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/boohee/uchoice/CartActivity;->isEdit:Ljava/lang/Boolean;

    .line 91
    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->ll_bottom_bar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v1, p0, Lcom/boohee/uchoice/CartActivity;->ll_delete:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 83
    :pswitch_data_0
    .packed-switch 0x7f0e07ca
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 70
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 71
    invoke-direct {p0}, Lcom/boohee/uchoice/CartActivity;->getGoodsList()V

    .line 72
    return-void
.end method
