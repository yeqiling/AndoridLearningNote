.class public Lcom/boohee/uchoice/OrderEditListAdapter;
.super Landroid/widget/BaseAdapter;
.source "OrderEditListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/uchoice/OrderEditListAdapter$CheckValueListener;,
        Lcom/boohee/uchoice/OrderEditListAdapter$AddBtnClickListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field public addPriceValue:I

.field private ctx:Landroid/content/Context;

.field public goodsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;"
        }
    .end annotation
.end field

.field public isEdit:Ljava/lang/Boolean;

.field private listener:Lcom/boohee/uchoice/OrderEditListAdapter$CheckValueListener;

.field private loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/boohee/uchoice/OrderEditListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/uchoice/OrderEditListAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "ctx"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, goodsList:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/CartGoods;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->isEdit:Ljava/lang/Boolean;

    .line 39
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->ctx:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->goodsList:Ljava/util/List;

    .line 41
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 42
    const v0, 0x7f02032a

    invoke-static {v0}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/uchoice/OrderEditListAdapter;Ljava/util/List;)F
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/boohee/uchoice/OrderEditListAdapter;->calculate(Ljava/util/List;)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/boohee/uchoice/OrderEditListAdapter;)Lcom/boohee/uchoice/OrderEditListAdapter$CheckValueListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->listener:Lcom/boohee/uchoice/OrderEditListAdapter$CheckValueListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/uchoice/OrderEditListAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method private calculate(Ljava/util/List;)F
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;)F"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, goods:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/CartGoods;>;"
    const/4 v1, 0x0

    .line 155
    .local v1, priceAllValue:F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 156
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/CartGoods;

    iget v3, v2, Lcom/boohee/model/CartGoods;->base_price:F

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/CartGoods;

    iget v2, v2, Lcom/boohee/model/CartGoods;->quantity:I

    int-to-float v2, v2

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_0
    return v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->goodsList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->goodsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 64
    if-nez p2, :cond_0

    .line 65
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f0301f7

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 67
    :cond_0
    const v1, 0x7f0e05f1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 68
    .local v3, decreseBtn:Landroid/widget/Button;
    const v1, 0x7f0e05f0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 69
    .local v10, increaseBtn:Landroid/widget/Button;
    const v1, 0x7f0e041e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 70
    .local v2, quantity:Landroid/widget/TextView;
    const v1, 0x7f0e008a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 71
    .local v7, Title:Landroid/widget/TextView;
    const v1, 0x7f0e041c

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 72
    .local v12, price:Landroid/widget/TextView;
    const v1, 0x7f0e05ef

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    .line 74
    .local v11, intoGoodsDetails:Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->goodsList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/boohee/model/CartGoods;

    .line 75
    .local v9, goods:Lcom/boohee/model/CartGoods;
    iget v1, v9, Lcom/boohee/model/CartGoods;->quantity:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget v5, v9, Lcom/boohee/model/CartGoods;->base_price:F

    .line 77
    .local v5, priceVaule:F
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->ctx:Landroid/content/Context;

    const v6, 0x7f070647

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/boohee/utils/TextUtil;->m2(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    const v1, 0x7f0e05c8

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 79
    .local v8, defaultPhoto:Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v4, v9, Lcom/boohee/model/CartGoods;->thumb_photo_url:Ljava/lang/String;

    iget-object v6, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v1, v4, v8, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 81
    new-instance v0, Lcom/boohee/uchoice/OrderEditListAdapter$AddBtnClickListener;

    iget v6, v9, Lcom/boohee/model/CartGoods;->goods_id:I

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/boohee/uchoice/OrderEditListAdapter$AddBtnClickListener;-><init>(Lcom/boohee/uchoice/OrderEditListAdapter;Landroid/widget/TextView;Landroid/widget/Button;IFI)V

    .line 83
    .local v0, buttonListener:Lcom/boohee/uchoice/OrderEditListAdapter$AddBtnClickListener;
    invoke-virtual {v11, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 86
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 87
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 89
    :cond_1
    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    sget-object v1, Lcom/boohee/model/Goods$goods_type;->SpecGoods:Lcom/boohee/model/Goods$goods_type;

    invoke-virtual {v1}, Lcom/boohee/model/Goods$goods_type;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v9, Lcom/boohee/model/CartGoods;->type:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, v9, Lcom/boohee/model/CartGoods;->title:Ljava/lang/String;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :goto_0
    return-object p2

    .line 93
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v9, Lcom/boohee/model/CartGoods;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v9, Lcom/boohee/model/CartGoods;->chosen_specs:Ljava/util/List;

    invoke-static {v4}, Lcom/boohee/utils/ShopUtils;->getFormatInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCheckValueListener(Lcom/boohee/uchoice/OrderEditListAdapter$CheckValueListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditListAdapter;->listener:Lcom/boohee/uchoice/OrderEditListAdapter$CheckValueListener;

    .line 167
    return-void
.end method
