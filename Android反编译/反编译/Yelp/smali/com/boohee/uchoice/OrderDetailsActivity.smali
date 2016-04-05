.class public Lcom/boohee/uchoice/OrderDetailsActivity;
.super Lcom/boohee/main/GestureActivity;
.source "OrderDetailsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/boohee/one/pay/PayService$OnFinishPayListener;


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private carriage:Landroid/widget/TextView;

.field private countAll:Landroid/widget/TextView;

.field private createdAt:Landroid/widget/TextView;

.field private index:I

.field private iv_pay_more:Landroid/widget/ImageView;

.field private ll_coupon:Landroid/widget/LinearLayout;

.field private ll_pay_more:Landroid/widget/LinearLayout;

.field private ll_pay_type:Landroid/widget/LinearLayout;

.field private mMenuItem:Landroid/view/MenuItem;

.field private mPayNum:I

.field private orderDetailAdapter:Lcom/boohee/uchoice/OrderDetailAdapter;

.field private orderDetailList:Landroid/widget/ListView;

.field private orderId:I

.field private orderNum:Landroid/widget/TextView;

.field private orderState:Landroid/widget/TextView;

.field private orderUchoice:Lcom/boohee/model/UchoiceOrder;

.field private pay:Landroid/widget/Button;

.field private payType:I

.field private priceAll:Landroid/widget/TextView;

.field private rl_alipay:Landroid/widget/RelativeLayout;

.field private rl_wechat:Landroid/widget/RelativeLayout;

.field private supplement:Landroid/widget/TextView;

.field private tb_ali:Landroid/widget/ToggleButton;

.field private tb_wechat:Landroid/widget/ToggleButton;

.field private tv_address_details:Landroid/widget/TextView;

.field private tv_coupon:Landroid/widget/TextView;

.field private tv_phone:Landroid/widget/TextView;

.field private tv_real_name:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/boohee/uchoice/OrderDetailsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/uchoice/OrderDetailsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->index:I

    .line 53
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->payType:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->mPayNum:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/uchoice/OrderDetailsActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderDetailsActivity;->cancelOrder()V

    return-void
.end method

.method static synthetic access$1000(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->countAll:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$104(Lcom/boohee/uchoice/OrderDetailsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->mPayNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->mPayNum:I

    return v0
.end method

.method static synthetic access$1100(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->ll_pay_type:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->pay:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->mMenuItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/boohee/uchoice/OrderDetailsActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/uchoice/OrderDetailsActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->index:I

    return v0
.end method

.method static synthetic access$200(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->iv_pay_more:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->rl_wechat:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/uchoice/OrderDetailsActivity;)Lcom/boohee/model/UchoiceOrder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    return-object v0
.end method

.method static synthetic access$402(Lcom/boohee/uchoice/OrderDetailsActivity;Lcom/boohee/model/UchoiceOrder;)Lcom/boohee/model/UchoiceOrder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    return-object p1
.end method

.method static synthetic access$500(Lcom/boohee/uchoice/OrderDetailsActivity;)Lcom/boohee/uchoice/OrderDetailAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderDetailAdapter:Lcom/boohee/uchoice/OrderDetailAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/boohee/uchoice/OrderDetailsActivity;Lcom/boohee/uchoice/OrderDetailAdapter;)Lcom/boohee/uchoice/OrderDetailAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderDetailAdapter:Lcom/boohee/uchoice/OrderDetailAdapter;

    return-object p1
.end method

.method static synthetic access$600(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderDetailsActivity;->getHeaderView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderDetailList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderDetailsActivity;->getFooterView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private cancelOrder()V
    .locals 2

    .prologue
    .line 211
    iget v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderId:I

    new-instance v1, Lcom/boohee/uchoice/OrderDetailsActivity$4;

    invoke-direct {v1, p0, p0}, Lcom/boohee/uchoice/OrderDetailsActivity$4;-><init>(Lcom/boohee/uchoice/OrderDetailsActivity;Landroid/content/Context;)V

    invoke-static {v0, p0, v1}, Lcom/boohee/api/ShopApi;->cancelOrder(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 222
    return-void
.end method

.method private doPay(I)V
    .locals 3
    .parameter "orderId"

    .prologue
    .line 253
    if-lez p1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->ctx:Landroid/content/Context;

    const-string v2, "shop_clickPayment"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 255
    new-instance v0, Lcom/boohee/one/pay/PayService;

    invoke-direct {v0, p0}, Lcom/boohee/one/pay/PayService;-><init>(Landroid/app/Activity;)V

    .line 256
    .local v0, service:Lcom/boohee/one/pay/PayService;
    invoke-virtual {v0, p0}, Lcom/boohee/one/pay/PayService;->setOnFinishPayLinstener(Lcom/boohee/one/pay/PayService$OnFinishPayListener;)V

    .line 257
    iget v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->payType:I

    invoke-virtual {v0, p1, v1}, Lcom/boohee/one/pay/PayService;->startPay(II)V

    .line 261
    .end local v0           #service:Lcom/boohee/one/pay/PayService;
    :goto_0
    return-void

    .line 259
    :cond_0
    const-string v1, "\u8ba2\u5355\u751f\u6210\u5931\u8d25"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private findview()V
    .locals 1

    .prologue
    .line 100
    const v0, 0x7f0e05d0

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderDetailList:Landroid/widget/ListView;

    .line 101
    const v0, 0x7f0e05d1

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->pay:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->pay:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0e05ba

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->countAll:Landroid/widget/TextView;

    .line 104
    return-void
.end method

.method private getFooterView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 129
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301f2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, convertView:Landroid/view/View;
    const v1, 0x7f0e05d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->carriage:Landroid/widget/TextView;

    .line 131
    const v1, 0x7f0e05d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->supplement:Landroid/widget/TextView;

    .line 132
    const v1, 0x7f0e05d5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->ll_coupon:Landroid/widget/LinearLayout;

    .line 133
    const v1, 0x7f0e05d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tv_coupon:Landroid/widget/TextView;

    .line 134
    const v1, 0x7f0e074b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tb_ali:Landroid/widget/ToggleButton;

    .line 135
    const v1, 0x7f0e074e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tb_wechat:Landroid/widget/ToggleButton;

    .line 136
    const v1, 0x7f0e0746

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->ll_pay_type:Landroid/widget/LinearLayout;

    .line 137
    const v1, 0x7f0e0749

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->rl_alipay:Landroid/widget/RelativeLayout;

    .line 138
    const v1, 0x7f0e074c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->rl_wechat:Landroid/widget/RelativeLayout;

    .line 139
    const v1, 0x7f0e0748

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->iv_pay_more:Landroid/widget/ImageView;

    .line 140
    const v1, 0x7f0e0747

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->ll_pay_more:Landroid/widget/LinearLayout;

    .line 141
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->ll_pay_more:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/boohee/uchoice/OrderDetailsActivity$2;

    invoke-direct {v2, p0}, Lcom/boohee/uchoice/OrderDetailsActivity$2;-><init>(Lcom/boohee/uchoice/OrderDetailsActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->rl_alipay:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->rl_wechat:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->payType:I

    if-ne v1, v4, :cond_1

    .line 156
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tb_ali:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 160
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v1, v1, Lcom/boohee/model/UchoiceOrder;->note:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 161
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->supplement:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v2, v2, Lcom/boohee/model/UchoiceOrder;->note:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    :goto_1
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v1, v1, Lcom/boohee/model/UchoiceOrder;->coupon:Lcom/boohee/model/Coupon;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v1, v1, Lcom/boohee/model/UchoiceOrder;->coupon:Lcom/boohee/model/Coupon;

    iget-object v1, v1, Lcom/boohee/model/Coupon;->amount:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 165
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->ll_coupon:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tv_coupon:Landroid/widget/TextView;

    const v2, 0x7f0701a0

    invoke-virtual {p0, v2}, Lcom/boohee/uchoice/OrderDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v4, v4, Lcom/boohee/model/UchoiceOrder;->coupon:Lcom/boohee/model/Coupon;

    iget-object v4, v4, Lcom/boohee/model/Coupon;->amount:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 171
    :goto_2
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->carriage:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070647

    invoke-virtual {p0, v3}, Lcom/boohee/uchoice/OrderDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget v3, v3, Lcom/boohee/model/UchoiceOrder;->carriage:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-object v0

    .line 157
    :cond_1
    iget v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->payType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 158
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tb_wechat:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->supplement:Landroid/widget/TextView;

    const v2, 0x7f07063f

    invoke-virtual {p0, v2}, Lcom/boohee/uchoice/OrderDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 169
    :cond_3
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->ll_coupon:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method private getHeaderView()Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 107
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0301f3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 108
    .local v0, convertView:Landroid/view/View;
    const v1, 0x7f0e05da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderNum:Landroid/widget/TextView;

    .line 109
    const v1, 0x7f0e05db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->createdAt:Landroid/widget/TextView;

    .line 110
    const v1, 0x7f0e05dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderState:Landroid/widget/TextView;

    .line 111
    const v1, 0x7f0e05dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->priceAll:Landroid/widget/TextView;

    .line 112
    const v1, 0x7f0e05de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tv_real_name:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0e05e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tv_address_details:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0e05df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tv_phone:Landroid/widget/TextView;

    .line 116
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderNum:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v2, v2, Lcom/boohee/model/UchoiceOrder;->order_no:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->createdAt:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v2, v2, Lcom/boohee/model/UchoiceOrder;->created_at:Ljava/lang/String;

    const-string v3, "yyyy-MM-dd HH:mm"

    invoke-static {v2, v3}, Lcom/boohee/utils/DateHelper;->timezoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderState:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v2, v2, Lcom/boohee/model/UchoiceOrder;->state_text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->priceAll:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070647

    invoke-virtual {p0, v3}, Lcom/boohee/uchoice/OrderDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget v3, v3, Lcom/boohee/model/UchoiceOrder;->price:F

    invoke-static {v3}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tv_real_name:Landroid/widget/TextView;

    const-string v2, "\u6536\u4ef6\u4eba\uff1a%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v4, v4, Lcom/boohee/model/UchoiceOrder;->real_name:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tv_phone:Landroid/widget/TextView;

    const-string v2, "\u7535\u8bdd\uff1a%s"

    new-array v3, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v4, v4, Lcom/boohee/model/UchoiceOrder;->cellphone:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tv_address_details:Landroid/widget/TextView;

    const-string v2, "\u6536\u8d27\u5730\u5740\uff1a%1$s %2$s %3$s %4$s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v4, v4, Lcom/boohee/model/UchoiceOrder;->address_province:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v4, v4, Lcom/boohee/model/UchoiceOrder;->address_city:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v5, v5, Lcom/boohee/model/UchoiceOrder;->address_district:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;

    iget-object v5, v5, Lcom/boohee/model/UchoiceOrder;->address_street:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    return-object v0
.end method

.method private getOrderDetails()V
    .locals 2

    .prologue
    .line 176
    iget v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderId:I

    new-instance v1, Lcom/boohee/uchoice/OrderDetailsActivity$3;

    invoke-direct {v1, p0, p0}, Lcom/boohee/uchoice/OrderDetailsActivity$3;-><init>(Lcom/boohee/uchoice/OrderDetailsActivity;Landroid/content/Context;)V

    invoke-static {v0, p0, v1}, Lcom/boohee/api/ShopApi;->getOrderDetail(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 204
    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "order_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderId:I

    .line 69
    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->index:I

    .line 70
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 226
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 228
    :sswitch_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->payType:I

    .line 229
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tb_wechat:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 230
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tb_ali:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 233
    :sswitch_1
    iput v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->payType:I

    .line 234
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tb_ali:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 235
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->tb_wechat:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 238
    :sswitch_2
    iget v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->orderId:I

    invoke-direct {p0, v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->doPay(I)V

    goto :goto_0

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e05d1 -> :sswitch_2
        0x7f0e0749 -> :sswitch_1
        0x7f0e074c -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f0301f1

    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->setContentView(I)V

    .line 61
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderDetailsActivity;->handleIntent()V

    .line 62
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderDetailsActivity;->findview()V

    .line 63
    invoke-direct {p0}, Lcom/boohee/uchoice/OrderDetailsActivity;->getOrderDetails()V

    .line 64
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderDetailsActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 75
    const v0, 0x7f0e07d9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->mMenuItem:Landroid/view/MenuItem;

    .line 76
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->mMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->mMenuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 79
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    .line 85
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 95
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 87
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a\u8981\u53d6\u6d88\u8ba2\u5355\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/boohee/uchoice/OrderDetailsActivity$1;

    invoke-direct {v2, p0}, Lcom/boohee/uchoice/OrderDetailsActivity$1;-><init>(Lcom/boohee/uchoice/OrderDetailsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 93
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x7f0e07d9
        :pswitch_0
    .end packed-switch
.end method

.method public onPayFinished()V
    .locals 0

    .prologue
    .line 274
    return-void
.end method

.method public onPaySuccess()V
    .locals 3

    .prologue
    .line 266
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity;->ctx:Landroid/content/Context;

    const-class v2, Lcom/boohee/uchoice/PaySuccessActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 267
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 268
    invoke-virtual {p0}, Lcom/boohee/uchoice/OrderDetailsActivity;->finish()V

    .line 269
    return-void
.end method
