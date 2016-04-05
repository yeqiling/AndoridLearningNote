.class public Lcom/boohee/uchoice/OrderEditActivity;
.super Lcom/boohee/main/GestureActivity;
.source "OrderEditActivity.java"

# interfaces
.implements Lcom/boohee/one/pay/PayService$OnFinishPayListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final KEY_GOODS_ID:Ljava/lang/String; = "key_goods_id"

.field private static final KEY_GOODS_LIST:Ljava/lang/String; = "key_goods_list"

.field private static final KEY_IS_FROM_CART:Ljava/lang/String; = "key_is_from_cart"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private final REQUEST_CODE_ADDRESS:I

.field private address:Lcom/boohee/model/Address;

.field private btn_pay:Landroid/widget/Button;

.field private carriageValue:F

.field private carrigeOK:Ljava/lang/Boolean;

.field private cartList:Landroid/widget/ListView;

.field private et_message:Landroid/widget/EditText;

.field private goods:Lcom/boohee/model/CartGoods;

.field private goodsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;"
        }
    .end annotation
.end field

.field private goods_id:I

.field private hasGetOrderId:Ljava/lang/Boolean;

.field private isCart:Ljava/lang/Boolean;

.field private isUseCoupon:Z

.field private iv_pay_more:Landroid/widget/ImageView;

.field private iv_use_coupon:Landroid/widget/ImageView;

.field private ll_coupon:Landroid/widget/LinearLayout;

.field private ll_coupon_child:Landroid/widget/LinearLayout;

.field private ll_order_address_info:Landroid/widget/LinearLayout;

.field private ll_pay_more:Landroid/widget/LinearLayout;

.field private mCoupon:Lcom/boohee/model/Coupon;

.field private mCoupons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Coupon;",
            ">;"
        }
    .end annotation
.end field

.field private mNum:I

.field private mPayNum:I

.field private orderEditListAdapter:Lcom/boohee/uchoice/OrderEditListAdapter;

.field private payType:I

.field private priceAllValue:F

.field private rl_alipay:Landroid/widget/RelativeLayout;

.field private rl_order_postage:Landroid/widget/RelativeLayout;

.field private rl_wechat:Landroid/widget/RelativeLayout;

.field private tb_ali:Landroid/widget/ToggleButton;

.field private tb_use_coupon:Landroid/widget/ToggleButton;

.field private tb_wechat:Landroid/widget/ToggleButton;

.field private tv_address_details:Landroid/widget/TextView;

.field private tv_good_count:Landroid/widget/TextView;

.field private tv_order_postage:Landroid/widget/TextView;

.field private tv_order_postage_close:Landroid/widget/TextView;

.field private tv_phone:Landroid/widget/TextView;

.field private tv_postage:Landroid/widget/TextView;

.field private tv_price_all_value:Landroid/widget/TextView;

.field private tv_real_name:Landroid/widget/TextView;

.field private tv_total:Landroid/widget/TextView;

.field private tv_use_coupon_type:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/boohee/uchoice/OrderEditActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/uchoice/OrderEditActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 58
    const/16 v0, 0x64

    iput v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->REQUEST_CODE_ADDRESS:I

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->goods_id:I

    .line 76
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->isCart:Ljava/lang/Boolean;

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->carrigeOK:Ljava/lang/Boolean;

    .line 78
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->hasGetOrderId:Ljava/lang/Boolean;

    .line 79
    iput v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->mNum:I

    .line 80
    iput v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->mPayNum:I

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->payType:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/uchoice/OrderEditActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->priceAllValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/uchoice/OrderEditActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/boohee/uchoice/OrderEditActivity;->priceAllValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->carrigeOK:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->iv_use_coupon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/uchoice/OrderEditActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity;->carrigeOK:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_coupon_child:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1204(Lcom/boohee/uchoice/OrderEditActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->mPayNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->mPayNum:I

    return v0
.end method

.method static synthetic access$1300(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->iv_pay_more:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->rl_wechat:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/boohee/uchoice/OrderEditActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/boohee/uchoice/OrderEditActivity;->isUseCoupon:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/boohee/uchoice/OrderEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderEditActivity;->refreshPayTotal()V

    return-void
.end method

.method static synthetic access$1700(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tb_use_coupon:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/boohee/uchoice/OrderEditActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/boohee/uchoice/OrderEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderEditActivity;->initCoupon()V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_price_all_value:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/boohee/uchoice/OrderEditActivity;Lcom/boohee/model/CartGoods;)Lcom/boohee/model/CartGoods;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity;->goods:Lcom/boohee/model/CartGoods;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/boohee/uchoice/OrderEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderEditActivity;->initAdapter()V

    return-void
.end method

.method static synthetic access$2200(Lcom/boohee/uchoice/OrderEditActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderEditActivity;->getDefaultAddress()V

    return-void
.end method

.method static synthetic access$2300(Lcom/boohee/uchoice/OrderEditActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->carriageValue:F

    return v0
.end method

.method static synthetic access$2302(Lcom/boohee/uchoice/OrderEditActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/boohee/uchoice/OrderEditActivity;->carriageValue:F

    return p1
.end method

.method static synthetic access$2400(Lcom/boohee/uchoice/OrderEditActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/boohee/uchoice/OrderEditActivity;->setTranslateAnim(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_order_postage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_total:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_good_count:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_coupon:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->rl_order_postage:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/uchoice/OrderEditActivity;)Lcom/boohee/model/Address;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->hasGetOrderId:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/boohee/uchoice/OrderEditActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity;->hasGetOrderId:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$302(Lcom/boohee/uchoice/OrderEditActivity;Lcom/boohee/model/Address;)Lcom/boohee/model/Address;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/boohee/uchoice/OrderEditActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/boohee/uchoice/OrderEditActivity;->doPay(I)V

    return-void
.end method

.method static synthetic access$3200(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->isCart:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->btn_pay:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/boohee/uchoice/OrderEditActivity;Ljava/util/List;)Lcom/boohee/model/Address;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/boohee/uchoice/OrderEditActivity;->getDefaultAddress(Ljava/util/List;)Lcom/boohee/model/Address;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/boohee/uchoice/OrderEditActivity;Lcom/boohee/model/Address;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/boohee/uchoice/OrderEditActivity;->refreshAddress(Lcom/boohee/model/Address;)V

    return-void
.end method

.method static synthetic access$402(Lcom/boohee/uchoice/OrderEditActivity;Lcom/boohee/model/Coupon;)Lcom/boohee/model/Coupon;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupon:Lcom/boohee/model/Coupon;

    return-object p1
.end method

.method static synthetic access$500(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_use_coupon_type:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/uchoice/OrderEditActivity;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/boohee/uchoice/OrderEditActivity;->getOrderPreview(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_postage:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$908(Lcom/boohee/uchoice/OrderEditActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->mNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->mNum:I

    return v0
.end method

.method private calculate(Ljava/util/ArrayList;)F
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, goods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/CartGoods;>;"
    const/4 v1, 0x0

    .line 134
    .local v1, priceAllValue:F
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v2, v1

    .line 139
    .end local v1           #priceAllValue:F
    .local v2, priceAllValue:F
    :goto_0
    return v2

    .line 136
    .end local v2           #priceAllValue:F
    .restart local v1       #priceAllValue:F
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 137
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/CartGoods;

    iget v4, v3, Lcom/boohee/model/CartGoods;->base_price:F

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/CartGoods;

    iget v3, v3, Lcom/boohee/model/CartGoods;->quantity:I

    int-to-float v3, v3

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    .line 139
    .end local v1           #priceAllValue:F
    .restart local v2       #priceAllValue:F
    goto :goto_0
.end method

.method private doPay(I)V
    .locals 3
    .parameter "orderId"

    .prologue
    .line 490
    if-lez p1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ctx:Landroid/content/Context;

    const-string v2, "shop_clickPayment"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 492
    new-instance v0, Lcom/boohee/one/pay/PayService;

    invoke-direct {v0, p0}, Lcom/boohee/one/pay/PayService;-><init>(Landroid/app/Activity;)V

    .line 493
    .local v0, service:Lcom/boohee/one/pay/PayService;
    invoke-virtual {v0, p0}, Lcom/boohee/one/pay/PayService;->setOnFinishPayLinstener(Lcom/boohee/one/pay/PayService$OnFinishPayListener;)V

    .line 494
    iget v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->payType:I

    invoke-virtual {v0, p1, v1}, Lcom/boohee/one/pay/PayService;->startPay(II)V

    .line 498
    .end local v0           #service:Lcom/boohee/one/pay/PayService;
    :goto_0
    return-void

    .line 496
    :cond_0
    const-string v1, "\u8ba2\u5355\u751f\u6210\u5931\u8d25"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 329
    const v0, 0x7f0e05e1

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->cartList:Landroid/widget/ListView;

    .line 330
    const v0, 0x7f0e05ba

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_price_all_value:Landroid/widget/TextView;

    .line 331
    const v0, 0x7f0e05d1

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->btn_pay:Landroid/widget/Button;

    .line 332
    const v0, 0x7f0e05e2

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->rl_order_postage:Landroid/widget/RelativeLayout;

    .line 333
    const v0, 0x7f0e05e3

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_order_postage:Landroid/widget/TextView;

    .line 334
    const v0, 0x7f0e05e4

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderEditActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_order_postage_close:Landroid/widget/TextView;

    .line 335
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 336
    return-void
.end method

.method private getDefaultAddress(Ljava/util/List;)Lcom/boohee/model/Address;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Address;",
            ">;)",
            "Lcom/boohee/model/Address;"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, addresses:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/Address;>;"
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 557
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 558
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/Address;

    iget-boolean v1, v1, Lcom/boohee/model/Address;->isDefault:Z

    if-eqz v1, :cond_0

    .line 559
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/Address;

    .line 563
    .end local v0           #i:I
    :goto_1
    return-object v1

    .line 557
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    .end local v0           #i:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getDefaultAddress()V
    .locals 1

    .prologue
    .line 504
    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderEditActivity;->showLoading()V

    .line 505
    new-instance v0, Lcom/boohee/uchoice/OrderEditActivity$10;

    invoke-direct {v0, p0, p0}, Lcom/boohee/uchoice/OrderEditActivity$10;-><init>(Lcom/boohee/uchoice/OrderEditActivity;Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/boohee/api/ShopApi;->getShipmentAddress(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 521
    return-void
.end method

.method private getFooterView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 197
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301f5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 198
    .local v0, convertView:Landroid/view/View;
    const v1, 0x7f0e05e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_postage:Landroid/widget/TextView;

    .line 199
    const v1, 0x7f0e0145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_total:Landroid/widget/TextView;

    .line 200
    const v1, 0x7f0e05e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_good_count:Landroid/widget/TextView;

    .line 201
    const v1, 0x7f0e05ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->et_message:Landroid/widget/EditText;

    .line 202
    const v1, 0x7f0e05d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_coupon:Landroid/widget/LinearLayout;

    .line 203
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_coupon:Landroid/widget/LinearLayout;

    const v2, 0x7f0e05ec

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_coupon_child:Landroid/widget/LinearLayout;

    .line 204
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_coupon:Landroid/widget/LinearLayout;

    const v2, 0x7f0e05e8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tb_use_coupon:Landroid/widget/ToggleButton;

    .line 205
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_coupon:Landroid/widget/LinearLayout;

    const v2, 0x7f0e05ea

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_use_coupon_type:Landroid/widget/TextView;

    .line 206
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_coupon:Landroid/widget/LinearLayout;

    const v2, 0x7f0e05eb

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->iv_use_coupon:Landroid/widget/ImageView;

    .line 207
    const v1, 0x7f0e0748

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->iv_pay_more:Landroid/widget/ImageView;

    .line 208
    const v1, 0x7f0e0747

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_pay_more:Landroid/widget/LinearLayout;

    .line 209
    const v1, 0x7f0e0749

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->rl_alipay:Landroid/widget/RelativeLayout;

    .line 210
    const v1, 0x7f0e074c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->rl_wechat:Landroid/widget/RelativeLayout;

    .line 211
    const v1, 0x7f0e074b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tb_ali:Landroid/widget/ToggleButton;

    .line 212
    const v1, 0x7f0e074e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tb_wechat:Landroid/widget/ToggleButton;

    .line 213
    iget v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->payType:I

    if-ne v1, v4, :cond_2

    .line 214
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tb_ali:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 215
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tb_wechat:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 220
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->rl_alipay:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->rl_wechat:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->iv_use_coupon:Landroid/widget/ImageView;

    new-instance v2, Lcom/boohee/uchoice/OrderEditActivity$2;

    invoke-direct {v2, p0}, Lcom/boohee/uchoice/OrderEditActivity$2;-><init>(Lcom/boohee/uchoice/OrderEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_pay_more:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/boohee/uchoice/OrderEditActivity$3;

    invoke-direct {v2, p0}, Lcom/boohee/uchoice/OrderEditActivity$3;-><init>(Lcom/boohee/uchoice/OrderEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tb_use_coupon:Landroid/widget/ToggleButton;

    new-instance v2, Lcom/boohee/uchoice/OrderEditActivity$4;

    invoke-direct {v2, p0}, Lcom/boohee/uchoice/OrderEditActivity$4;-><init>(Lcom/boohee/uchoice/OrderEditActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 261
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tb_use_coupon:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->isUseCoupon:Z

    .line 262
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->isCart:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 263
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_good_count:Landroid/widget/TextView;

    const v2, 0x7f070275

    invoke-virtual {p0, v2}, Lcom/boohee/uchoice/OrderEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :cond_1
    return-object v0

    .line 216
    :cond_2
    iget v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->payType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 217
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tb_wechat:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 218
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tb_ali:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0
.end method

.method private getHeaderView()Landroid/view/View;
    .locals 4

    .prologue
    .line 186
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301f6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 187
    .local v0, convertView:Landroid/view/View;
    const v1, 0x7f0e05e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_address_details:Landroid/widget/TextView;

    .line 188
    const v1, 0x7f0e05de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_real_name:Landroid/widget/TextView;

    .line 189
    const v1, 0x7f0e05df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_phone:Landroid/widget/TextView;

    .line 190
    const v1, 0x7f0e05ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_order_address_info:Landroid/widget/LinearLayout;

    .line 191
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_order_postage_close:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_order_address_info:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    return-object v0
.end method

.method private getOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    .locals 3
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
            "I)V"
        }
    .end annotation

    .prologue
    .line 450
    .local p11, goodsList:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/CartGoods;>;"
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->btn_pay:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 451
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->btn_pay:Landroid/widget/Button;

    const v2, 0x7f0200ab

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 453
    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderEditActivity;->showLoading()V

    .line 454
    invoke-static/range {p1 .. p13}, Lcom/boohee/uchoice/JsonParam;->creatOrderParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    .line 457
    .local v0, params:Lcom/boohee/one/http/JsonParams;
    new-instance v1, Lcom/boohee/uchoice/OrderEditActivity$9;

    invoke-direct {v1, p0, p0}, Lcom/boohee/uchoice/OrderEditActivity$9;-><init>(Lcom/boohee/uchoice/OrderEditActivity;Landroid/content/Context;)V

    invoke-static {v0, p0, v1}, Lcom/boohee/api/ShopApi;->createOrders(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 482
    return-void
.end method

.method private getOrderPreview(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "province"
    .parameter "city"
    .parameter "district"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 359
    .local p1, goodsList:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/CartGoods;>;"
    invoke-static {p2, p3, p4, p1}, Lcom/boohee/uchoice/JsonParam;->createPriceParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    .line 360
    .local v0, params:Lcom/boohee/one/http/JsonParams;
    new-instance v1, Lcom/boohee/uchoice/OrderEditActivity$7;

    invoke-direct {v1, p0, p0, p1}, Lcom/boohee/uchoice/OrderEditActivity$7;-><init>(Lcom/boohee/uchoice/OrderEditActivity;Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, p0, v1}, Lcom/boohee/api/ShopApi;->getOrdersPreview(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 395
    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_is_from_cart"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->isCart:Ljava/lang/Boolean;

    .line 114
    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "goods_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->goods_id:I

    .line 115
    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderEditActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_goods_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;

    .line 116
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 119
    new-instance v0, Lcom/boohee/model/Address;

    invoke-direct {v0}, Lcom/boohee/model/Address;-><init>()V

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    .line 120
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->isCart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->goods_id:I

    invoke-direct {p0, v0}, Lcom/boohee/uchoice/OrderEditActivity;->requestGoodsById(I)V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/boohee/uchoice/OrderEditActivity;->calculate(Ljava/util/ArrayList;)F

    move-result v0

    iput v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->priceAllValue:F

    .line 124
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderEditActivity;->initAdapter()V

    .line 125
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderEditActivity;->getDefaultAddress()V

    goto :goto_0
.end method

.method private initAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 151
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->isCart:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;

    .line 153
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->goods:Lcom/boohee/model/CartGoods;

    iput v2, v0, Lcom/boohee/model/CartGoods;->quantity:I

    .line 154
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->goods:Lcom/boohee/model/CartGoods;

    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->goods:Lcom/boohee/model/CartGoods;

    iget v1, v1, Lcom/boohee/model/CartGoods;->id:I

    iput v1, v0, Lcom/boohee/model/CartGoods;->goods_id:I

    .line 155
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->goods:Lcom/boohee/model/CartGoods;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->goods:Lcom/boohee/model/CartGoods;

    iget v0, v0, Lcom/boohee/model/CartGoods;->base_price:F

    iput v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->priceAllValue:F

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->btn_pay:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 159
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->btn_pay:Landroid/widget/Button;

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 160
    new-instance v0, Lcom/boohee/uchoice/OrderEditListAdapter;

    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/boohee/uchoice/OrderEditListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->orderEditListAdapter:Lcom/boohee/uchoice/OrderEditListAdapter;

    .line 161
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->orderEditListAdapter:Lcom/boohee/uchoice/OrderEditListAdapter;

    new-instance v1, Lcom/boohee/uchoice/OrderEditActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/uchoice/OrderEditActivity$1;-><init>(Lcom/boohee/uchoice/OrderEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/uchoice/OrderEditListAdapter;->setCheckValueListener(Lcom/boohee/uchoice/OrderEditListAdapter$CheckValueListener;)V

    .line 180
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->cartList:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/boohee/uchoice/OrderEditActivity;->getHeaderView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->cartList:Landroid/widget/ListView;

    invoke-direct {p0}, Lcom/boohee/uchoice/OrderEditActivity;->getFooterView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 182
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->cartList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->orderEditListAdapter:Lcom/boohee/uchoice/OrderEditListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 183
    return-void
.end method

.method private initCoupon()V
    .locals 12

    .prologue
    const v11, 0x7f0701a0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 273
    iget-object v5, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_coupon_child:Landroid/widget/LinearLayout;

    if-nez v5, :cond_1

    .line 312
    :cond_0
    return-void

    .line 275
    :cond_1
    iget-object v5, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_coupon_child:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 276
    iget-object v5, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 277
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 278
    move v1, v0

    .line 279
    .local v1, index:I
    iget-object v5, p0, Lcom/boohee/uchoice/OrderEditActivity;->ctx:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f03022d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 281
    .local v4, view_coupon_child:Landroid/view/View;
    iget-object v5, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/boohee/model/Coupon;

    iget-object v5, v5, Lcom/boohee/model/Coupon;->isChecked:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 282
    iget-object v5, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/boohee/model/Coupon;

    iput-object v5, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupon:Lcom/boohee/model/Coupon;

    .line 283
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderEditActivity;->refreshPayTotal()V

    .line 284
    iget-object v6, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_use_coupon_type:Landroid/widget/TextView;

    invoke-virtual {p0, v11}, Lcom/boohee/uchoice/OrderEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/boohee/model/Coupon;

    iget-object v5, v5, Lcom/boohee/model/Coupon;->amount:Ljava/lang/String;

    aput-object v5, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    :cond_2
    const v5, 0x7f0e06cb

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    .line 289
    .local v2, tb_coupon:Landroid/widget/ToggleButton;
    const v5, 0x7f0e06cc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 291
    .local v3, tv_coupon_type:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/boohee/model/Coupon;

    iget-object v5, v5, Lcom/boohee/model/Coupon;->isChecked:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 292
    invoke-virtual {v2, v9}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 293
    invoke-virtual {p0, v11}, Lcom/boohee/uchoice/OrderEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v10, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/boohee/model/Coupon;

    iget-object v5, v5, Lcom/boohee/model/Coupon;->amount:Ljava/lang/String;

    aput-object v5, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 295
    new-instance v5, Lcom/boohee/uchoice/OrderEditActivity$5;

    invoke-direct {v5, p0, v1}, Lcom/boohee/uchoice/OrderEditActivity$5;-><init>(Lcom/boohee/uchoice/OrderEditActivity;I)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v5, p0, Lcom/boohee/uchoice/OrderEditActivity;->ll_coupon_child:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private refreshAddress(Lcom/boohee/model/Address;)V
    .locals 6
    .parameter "address"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 530
    if-eqz p1, :cond_1

    .line 531
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_real_name:Landroid/widget/TextView;

    const-string v1, "\u6536\u4ef6\u4eba\uff1a%s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_real_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 533
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_phone:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 534
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_address_details:Landroid/widget/TextView;

    const-string v1, "\u6536\u8d27\u5730\u5740\uff1a%1$s %2$s %3$s %4$s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/boohee/model/Address;->district:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p1, Lcom/boohee/model/Address;->street:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p1, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    iget-object v2, p1, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    iget-object v3, p1, Lcom/boohee/model/Address;->district:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/uchoice/OrderEditActivity;->getOrderPreview(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_real_name:Landroid/widget/TextView;

    const-string v1, "\u8bf7\u586b\u5199\u6536\u8d27\u5730\u5740"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_real_name:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderEditActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 542
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_phone:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 543
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_address_details:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 544
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_postage:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_total:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_price_all_value:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 547
    invoke-direct {p0, v4}, Lcom/boohee/uchoice/OrderEditActivity;->setTranslateAnim(Z)V

    goto :goto_0
.end method

.method private refreshPayTotal()V
    .locals 4

    .prologue
    const v2, 0x7f070647

    .line 318
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupon:Lcom/boohee/model/Coupon;

    if-nez v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_price_all_value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/boohee/uchoice/OrderEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/boohee/uchoice/OrderEditActivity;->priceAllValue:F

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->m2(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-boolean v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->isUseCoupon:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->tv_price_all_value:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/boohee/uchoice/OrderEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/boohee/uchoice/OrderEditActivity;->priceAllValue:F

    iget-object v3, p0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupon:Lcom/boohee/model/Coupon;

    iget-object v3, v3, Lcom/boohee/model/Coupon;->amount:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->m2(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private requestGoodsById(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 339
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 356
    :goto_0
    return-void

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderEditActivity;->showLoading()V

    .line 341
    new-instance v0, Lcom/boohee/uchoice/OrderEditActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/boohee/uchoice/OrderEditActivity$6;-><init>(Lcom/boohee/uchoice/OrderEditActivity;Landroid/content/Context;)V

    invoke-static {p1, p0, v0}, Lcom/boohee/api/ShopApi;->getGoodsDetail(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private setTranslateAnim(Z)V
    .locals 9
    .parameter "isOpen"

    .prologue
    .line 401
    iget-object v4, p0, Lcom/boohee/uchoice/OrderEditActivity;->ctx:Landroid/content/Context;

    const/high16 v5, 0x4220

    invoke-static {v4, v5}, Lcom/boohee/utils/ViewUtils;->dip2px(Landroid/content/Context;F)I

    move-result v1

    .line 403
    .local v1, height:I
    const/4 v2, 0x0

    .line 404
    .local v2, start:I
    const/4 v0, 0x0

    .line 405
    .local v0, end:I
    if-eqz p1, :cond_0

    .line 406
    neg-int v2, v1

    .line 407
    const/4 v0, 0x0

    .line 412
    :goto_0
    iget-object v4, p0, Lcom/boohee/uchoice/OrderEditActivity;->rl_order_postage:Landroid/widget/RelativeLayout;

    const-string v5, "translationY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    int-to-float v8, v2

    aput v8, v6, v7

    const/4 v7, 0x1

    int-to-float v8, v0

    aput v8, v6, v7

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 414
    .local v3, transY:Landroid/animation/ObjectAnimator;
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 415
    const-wide/16 v4, 0x320

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 416
    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    .line 417
    new-instance v4, Lcom/boohee/uchoice/OrderEditActivity$8;

    invoke-direct {v4, p0, p1}, Lcom/boohee/uchoice/OrderEditActivity$8;-><init>(Lcom/boohee/uchoice/OrderEditActivity;Z)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 444
    return-void

    .line 409
    .end local v3           #transY:Landroid/animation/ObjectAnimator;
    :cond_0
    const/4 v2, 0x0

    .line 410
    neg-int v0, v1

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;IZ)V
    .locals 2
    .parameter "context"
    .parameter "good_id"
    .parameter "isFromCart"

    .prologue
    .line 96
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/uchoice/OrderEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 97
    .local v0, starter:Landroid/content/Intent;
    const-string v1, "key_goods_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 98
    const-string v1, "key_is_from_cart"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 100
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 2
    .parameter "context"
    .parameter
    .parameter "isFromCart"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, goods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/CartGoods;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/uchoice/OrderEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, starter:Landroid/content/Intent;
    const-string v1, "key_goods_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 90
    const-string v1, "key_is_from_cart"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 144
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/main/GestureActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 145
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderEditActivity;->getDefaultAddress()V

    .line 148
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 18
    .parameter "v"

    .prologue
    .line 581
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 583
    :sswitch_0
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->payType:I

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->tb_wechat:Landroid/widget/ToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->tb_ali:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 588
    :sswitch_1
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->payType:I

    .line 589
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->tb_ali:Landroid/widget/ToggleButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 590
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->tb_wechat:Landroid/widget/ToggleButton;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 593
    :sswitch_2
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->ctx:Landroid/content/Context;

    const-class v3, Lcom/boohee/uchoice/AddressListActivity;

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 594
    .local v17, intent:Landroid/content/Intent;
    const/16 v2, 0x64

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/boohee/uchoice/OrderEditActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 598
    .end local v17           #intent:Landroid/content/Intent;
    :sswitch_3
    invoke-static {}, Lcom/boohee/utils/ViewUtils;->isFastDoubleClick()Z

    move-result v2

    if-nez v2, :cond_0

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v4, v4, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v4, v4, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v4, v4, Lcom/boohee/model/Address;->street:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 602
    :cond_1
    const v2, 0x7f070420

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 604
    :cond_2
    const/4 v15, -0x1

    .line 605
    .local v15, coupon_id:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->isUseCoupon:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupon:Lcom/boohee/model/Coupon;

    if-eqz v2, :cond_3

    .line 606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->mCoupon:Lcom/boohee/model/Coupon;

    iget v15, v2, Lcom/boohee/model/Coupon;->id:I

    .line 608
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->ctx:Landroid/content/Context;

    const-string v3, "shop_clickSubmitOrder"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 612
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v3, v2, Lcom/boohee/model/Address;->real_name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v4, v2, Lcom/boohee/model/Address;->cellphone:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v5, v2, Lcom/boohee/model/Address;->province:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v6, v2, Lcom/boohee/model/Address;->city:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v7, v2, Lcom/boohee/model/Address;->district:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v8, v2, Lcom/boohee/model/Address;->street:Ljava/lang/String;

    const-string v9, ""

    const-string v10, ""

    const-string v11, "GoodsOrder"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->address:Lcom/boohee/model/Address;

    iget-object v12, v2, Lcom/boohee/model/Address;->zipcode:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boohee/uchoice/OrderEditActivity;->goodsList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/uchoice/OrderEditActivity;->et_message:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v15}, Lcom/boohee/uchoice/OrderEditActivity;->getOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 615
    :catch_0
    move-exception v16

    .line 616
    .local v16, e:Ljava/lang/Exception;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 621
    .end local v15           #coupon_id:I
    .end local v16           #e:Ljava/lang/Exception;
    :sswitch_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/boohee/uchoice/OrderEditActivity;->setTranslateAnim(Z)V

    goto/16 :goto_0

    .line 581
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e05d1 -> :sswitch_3
        0x7f0e05e4 -> :sswitch_4
        0x7f0e05ee -> :sswitch_2
        0x7f0e0749 -> :sswitch_1
        0x7f0e074c -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const v0, 0x7f0301f4

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderEditActivity;->setContentView(I)V

    .line 106
    const v0, 0x7f0701ff

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderEditActivity;->setTitle(I)V

    .line 107
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderEditActivity;->handleIntent()V

    .line 108
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderEditActivity;->findView()V

    .line 109
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderEditActivity;->init()V

    .line 110
    return-void
.end method

.method public onPayFinished()V
    .locals 2

    .prologue
    .line 575
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->btn_pay:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 576
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity;->btn_pay:Landroid/widget/Button;

    const v1, 0x7f0200b1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 577
    return-void
.end method

.method public onPaySuccess()V
    .locals 3

    .prologue
    .line 568
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/uchoice/PaySuccessActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 569
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderEditActivity;->startActivity(Landroid/content/Intent;)V

    .line 570
    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderEditActivity;->finish()V

    .line 571
    return-void
.end method
