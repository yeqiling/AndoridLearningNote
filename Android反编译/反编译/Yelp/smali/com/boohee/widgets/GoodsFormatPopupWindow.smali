.class public Lcom/boohee/widgets/GoodsFormatPopupWindow;
.super Ljava/lang/Object;
.source "GoodsFormatPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;

.field private static sGoodsFormatPop:Lcom/boohee/widgets/GoodsFormatPopupWindow;


# instance fields
.field private btn_cart_add:Landroid/widget/Button;

.field private btn_decrease:Landroid/widget/Button;

.field private btn_increase:Landroid/widget/Button;

.field private inAnim:Landroid/view/animation/Animation;

.field private iv_avatar:Landroid/widget/ImageView;

.field private ll_content:Landroid/widget/LinearLayout;

.field private ll_format:Landroid/widget/LinearLayout;

.field private mCheckedRow:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedTemp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCompareTemp:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGoods:Lcom/boohee/model/Goods;

.field private mGoodsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/boohee/model/CartGoods;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSelectListener:Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;

.field private mQuantity:I

.field private mSelectGoodsId:I

.field private map_tip:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/boohee/model/FormatModel;",
            ">;"
        }
    .end annotation
.end field

.field private outAnim:Landroid/view/animation/Animation;

.field private popWindow:Landroid/widget/PopupWindow;

.field private tips:Ljava/lang/String;

.field private tv_goods_num:Landroid/widget/TextView;

.field private txt_price:Landroid/widget/TextView;

.field private txt_tips:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/boohee/widgets/GoodsFormatPopupWindow;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedTemp:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCompareTemp:Ljava/util/Set;

    .line 72
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedRow:Ljava/util/Set;

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mSelectGoodsId:I

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mQuantity:I

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->map_tip:Ljava/util/Map;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoodsMap:Ljava/util/Map;

    .line 413
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/widgets/GoodsFormatPopupWindow;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/widgets/GoodsFormatPopupWindow;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->initCheckedList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/widgets/GoodsFormatPopupWindow;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->initIsCanClick(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/widgets/GoodsFormatPopupWindow;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->initFormat(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/widgets/GoodsFormatPopupWindow;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->getGoodsId(Ljava/util/List;)V

    return-void
.end method

.method private createContentView(Ljava/util/List;)Landroid/view/View;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/GoodsFormat;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, goodsFormats:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsFormat;>;"
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 99
    iget-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mContext:Landroid/content/Context;

    const v3, 0x7f030242

    invoke-static {v1, v3, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 100
    .local v0, contentView:Landroid/view/View;
    const v1, 0x7f0e0469

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v1, 0x7f0e0127

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->ll_content:Landroid/widget/LinearLayout;

    .line 102
    iget-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->ll_content:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v1, 0x7f0e06f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->ll_format:Landroid/widget/LinearLayout;

    .line 104
    const v1, 0x7f0e01d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lde/hdodenhof/circleimageview/CircleImageView;

    iput-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->iv_avatar:Landroid/widget/ImageView;

    .line 105
    const v1, 0x7f0e05b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->btn_cart_add:Landroid/widget/Button;

    .line 106
    const v1, 0x7f0e05c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->btn_decrease:Landroid/widget/Button;

    .line 107
    const v1, 0x7f0e05c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->btn_increase:Landroid/widget/Button;

    .line 108
    const v1, 0x7f0e06f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    iget-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->btn_cart_add:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->btn_decrease:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->btn_increase:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v1, 0x7f0e06f1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->txt_tips:Landroid/widget/TextView;

    .line 113
    const v1, 0x7f0e06f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->txt_price:Landroid/widget/TextView;

    .line 114
    const v1, 0x7f0e05c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tv_goods_num:Landroid/widget/TextView;

    .line 115
    iget-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoods:Lcom/boohee/model/Goods;

    iget v1, v1, Lcom/boohee/model/Goods;->quantity:I

    iput v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mQuantity:I

    .line 116
    iget-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tv_goods_num:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mQuantity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->btn_decrease:Landroid/widget/Button;

    iget v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mQuantity:I

    if-le v1, v2, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 118
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoods:Lcom/boohee/model/Goods;

    iget-object v2, v2, Lcom/boohee/model/Goods;->big_photo_url:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->iv_avatar:Landroid/widget/ImageView;

    const v4, 0x7f02032a

    invoke-static {v4}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 120
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->initCheckedList(Ljava/util/List;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->initIsCanClick(Ljava/util/List;)V

    .line 123
    invoke-direct {p0, p1}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->initFormat(Ljava/util/List;)V

    .line 124
    invoke-direct {p0, p1}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->getGoodsId(Ljava/util/List;)V

    .line 126
    :cond_0
    return-object v0

    .line 117
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createPopWindow(Landroid/content/Context;Lcom/boohee/model/Goods;)V
    .locals 5
    .parameter "context"
    .parameter "goods"

    .prologue
    const/4 v4, 0x1

    .line 83
    iput-object p1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mContext:Landroid/content/Context;

    .line 84
    iput-object p2, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoods:Lcom/boohee/model/Goods;

    .line 85
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoods:Lcom/boohee/model/Goods;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoods:Lcom/boohee/model/Goods;

    invoke-direct {p0, v0}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->initOptionGoods(Lcom/boohee/model/Goods;)V

    .line 87
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoods:Lcom/boohee/model/Goods;

    iget-object v1, v1, Lcom/boohee/model/Goods;->specs:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->createContentView(Ljava/util/List;)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->popWindow:Landroid/widget/PopupWindow;

    .line 89
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->popWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 91
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 92
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 93
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f040012

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->inAnim:Landroid/view/animation/Animation;

    .line 94
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f040013

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->outAnim:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private getCheckedIndex(Ljava/util/List;)I
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/GoodsArgument;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 374
    .local p1, goodsArguments:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsArgument;>;"
    const/4 v1, -0x1

    .line 375
    .local v1, index:I
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 380
    .end local v1           #index:I
    :cond_0
    :goto_0
    return v1

    .line 376
    .restart local v1       #index:I
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 377
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/GoodsArgument;

    iget-boolean v2, v2, Lcom/boohee/model/GoodsArgument;->isChecked:Z

    if-eqz v2, :cond_2

    move v1, v0

    .line 378
    goto :goto_0

    .line 376
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getGoodsId(Ljava/util/List;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/GoodsFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, goodsFormats:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsFormat;>;"
    const/4 v5, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 310
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedRow:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 311
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->btn_cart_add:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 312
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedTemp:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 313
    .local v2, in:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mSelectGoodsId:I

    .line 316
    .end local v2           #in:Ljava/lang/Integer;
    :cond_0
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->map_tip:Ljava/util/Map;

    invoke-direct {p0, v3, v5}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->getTips(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tips:Ljava/lang/String;

    .line 317
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tips:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 318
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->txt_tips:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tips:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mOnSelectListener:Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;

    if-eqz v3, :cond_1

    .line 320
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mOnSelectListener:Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;

    iget v4, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mSelectGoodsId:I

    iget v5, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mQuantity:I

    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tips:Ljava/lang/String;

    invoke-interface {v3, v7, v4, v5, v6}, Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;->onSelect(ZIILjava/lang/String;)V

    .line 323
    :cond_1
    iget v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mSelectGoodsId:I

    if-eq v3, v8, :cond_2

    .line 324
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoodsMap:Ljava/util/Map;

    iget v4, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mSelectGoodsId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/CartGoods;

    .line 325
    .local v0, g:Lcom/boohee/model/CartGoods;
    if-eqz v0, :cond_2

    .line 326
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->txt_price:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\uffe5"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Lcom/boohee/model/CartGoods;->base_price:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoods:Lcom/boohee/model/Goods;

    iget v3, v3, Lcom/boohee/model/Goods;->quantity:I

    iput v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mQuantity:I

    .line 328
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    iget-object v4, v0, Lcom/boohee/model/CartGoods;->big_photo_url:Ljava/lang/String;

    iget-object v5, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->iv_avatar:Landroid/widget/ImageView;

    const v6, 0x7f02032a

    invoke-static {v6}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 342
    .end local v0           #g:Lcom/boohee/model/CartGoods;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    return-void

    .line 332
    :cond_3
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->btn_cart_add:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 333
    iput v8, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mSelectGoodsId:I

    .line 334
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->map_tip:Ljava/util/Map;

    invoke-direct {p0, v3, v7}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->getTips(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tips:Ljava/lang/String;

    .line 335
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tips:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 336
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->txt_tips:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tips:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mOnSelectListener:Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;

    if-eqz v3, :cond_2

    .line 338
    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mOnSelectListener:Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;

    iget v4, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mSelectGoodsId:I

    iget v5, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mQuantity:I

    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tips:Ljava/lang/String;

    invoke-interface {v3, v7, v4, v5, v6}, Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;->onSelect(ZIILjava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance()Lcom/boohee/widgets/GoodsFormatPopupWindow;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->sGoodsFormatPop:Lcom/boohee/widgets/GoodsFormatPopupWindow;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lcom/boohee/widgets/GoodsFormatPopupWindow;

    invoke-direct {v0}, Lcom/boohee/widgets/GoodsFormatPopupWindow;-><init>()V

    sput-object v0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->sGoodsFormatPop:Lcom/boohee/widgets/GoodsFormatPopupWindow;

    .line 60
    :cond_0
    sget-object v0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->sGoodsFormatPop:Lcom/boohee/widgets/GoodsFormatPopupWindow;

    return-object v0
.end method

.method private getOthersList(ILjava/util/List;)Ljava/util/Set;
    .locals 7
    .parameter "row"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/GoodsFormat;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    .local p2, goodsFormats:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsFormat;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 286
    .local v5, temp:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 287
    if-ne p1, v2, :cond_1

    .line 286
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 288
    :cond_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/boohee/model/GoodsFormat;

    iget-object v1, v6, Lcom/boohee/model/GoodsFormat;->arguments:Ljava/util/List;

    .line 289
    .local v1, arguments:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsArgument;>;"
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 290
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/GoodsArgument;

    .line 291
    .local v0, argument:Lcom/boohee/model/GoodsArgument;
    iget-object v3, v0, Lcom/boohee/model/GoodsArgument;->goods_ids:Ljava/util/Set;

    .line 292
    .local v3, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-boolean v6, v0, Lcom/boohee/model/GoodsArgument;->isChecked:Z

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    .line 293
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 294
    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 289
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 296
    :cond_3
    invoke-interface {v5, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 301
    .end local v0           #argument:Lcom/boohee/model/GoodsArgument;
    .end local v1           #arguments:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsArgument;>;"
    .end local v3           #ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4           #j:I
    :cond_4
    return-object v5
.end method

.method private getTestData()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/GoodsFormat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mContext:Landroid/content/Context;

    const-string v2, "mock/goods_format.json"

    invoke-static {v1, v2}, Lcom/boohee/utils/AssetUtils;->readStringFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    .local v0, s:Ljava/lang/String;
    const-class v1, Lcom/boohee/model/GoodsFormat;

    invoke-static {v0, v1}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private getTips(Ljava/util/Map;Z)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter "isCanAdd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/boohee/model/FormatModel;",
            ">;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 352
    .local p1, map_tip:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Lcom/boohee/model/FormatModel;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 353
    .local v3, sb_tip:Ljava/lang/StringBuffer;
    if-nez p2, :cond_1

    .line 354
    const-string v4, "\u8bf7\u9009\u62e9"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 356
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/boohee/model/FormatModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/FormatModel;

    .line 357
    .local v1, formatModel:Lcom/boohee/model/FormatModel;
    iget-boolean v4, v1, Lcom/boohee/model/FormatModel;->isChecked:Z

    if-nez v4, :cond_0

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/boohee/model/FormatModel;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 362
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/boohee/model/FormatModel;>;"
    .end local v1           #formatModel:Lcom/boohee/model/FormatModel;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v4, "\u5df2\u9009\u62e9 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 364
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/boohee/model/FormatModel;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/FormatModel;

    .line 365
    .restart local v1       #formatModel:Lcom/boohee/model/FormatModel;
    iget-boolean v4, v1, Lcom/boohee/model/FormatModel;->isChecked:Z

    if-eqz v4, :cond_2

    .line 366
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/boohee/model/FormatModel;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 370
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/boohee/model/FormatModel;>;"
    .end local v1           #formatModel:Lcom/boohee/model/FormatModel;
    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private initCheckedList(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/GoodsFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    .local p1, goodsFormats:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsFormat;>;"
    iget-object v5, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedTemp:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 210
    iget-object v5, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedRow:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 211
    iget-object v5, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->map_tip:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 212
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 213
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/boohee/model/GoodsFormat;

    iget-object v1, v5, Lcom/boohee/model/GoodsFormat;->arguments:Ljava/util/List;

    .line 214
    .local v1, arguments:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsArgument;>;"
    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->map_tip:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v8, Lcom/boohee/model/FormatModel;

    const/4 v9, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/boohee/model/GoodsFormat;

    iget-object v5, v5, Lcom/boohee/model/GoodsFormat;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v5}, Lcom/boohee/model/FormatModel;-><init>(ZLjava/lang/String;)V

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 216
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/GoodsArgument;

    .line 217
    .local v0, argument:Lcom/boohee/model/GoodsArgument;
    iget-object v3, v0, Lcom/boohee/model/GoodsArgument;->goods_ids:Ljava/util/Set;

    .line 218
    .local v3, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-boolean v5, v0, Lcom/boohee/model/GoodsArgument;->isChecked:Z

    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 219
    iget-object v5, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedRow:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v5, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedTemp:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 221
    iget-object v5, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedTemp:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 225
    :goto_2
    iget-object v5, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->map_tip:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Lcom/boohee/model/FormatModel;

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/boohee/model/GoodsArgument;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Lcom/boohee/model/FormatModel;-><init>(ZLjava/lang/String;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 223
    :cond_1
    iget-object v5, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedTemp:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 212
    .end local v0           #argument:Lcom/boohee/model/GoodsArgument;
    .end local v3           #ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 229
    .end local v1           #arguments:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsArgument;>;"
    .end local v4           #j:I
    :cond_3
    return-void
.end method

.method private initFormat(Ljava/util/List;)V
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/GoodsFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, goodsFormats:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsFormat;>;"
    iget-object v8, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->ll_format:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 145
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 146
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/GoodsFormat;

    .line 147
    .local v1, goodsFormat:Lcom/boohee/model/GoodsFormat;
    iget-object v8, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f030137

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 148
    .local v4, itemView:Landroid/view/View;
    const v8, 0x7f0e0266

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 149
    .local v7, tv_title:Landroid/widget/TextView;
    iget-object v8, v1, Lcom/boohee/model/GoodsFormat;->name:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 150
    iget-object v8, v1, Lcom/boohee/model/GoodsFormat;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :cond_0
    iget-object v0, v1, Lcom/boohee/model/GoodsFormat;->arguments:Ljava/util/List;

    .line 153
    .local v0, goodsArguments:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsArgument;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_2

    .line 145
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    :cond_2
    const v8, 0x7f0e03f0

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/zhy/view/flowlayout/TagFlowLayout;

    .line 155
    .local v6, tfl_format:Lcom/zhy/view/flowlayout/TagFlowLayout;
    new-instance v5, Lcom/boohee/widgets/GoodsFormatPopupWindow$1;

    invoke-direct {v5, p0, v0, v6}, Lcom/boohee/widgets/GoodsFormatPopupWindow$1;-><init>(Lcom/boohee/widgets/GoodsFormatPopupWindow;Ljava/util/List;Lcom/zhy/view/flowlayout/TagFlowLayout;)V

    .line 176
    .local v5, tagAdapter:Lcom/zhy/view/flowlayout/TagAdapter;,"Lcom/zhy/view/flowlayout/TagAdapter<Lcom/boohee/model/GoodsArgument;>;"
    invoke-virtual {v6, v5}, Lcom/zhy/view/flowlayout/TagFlowLayout;->setAdapter(Lcom/zhy/view/flowlayout/TagAdapter;)V

    .line 177
    invoke-direct {p0, v0}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->getCheckedIndex(Ljava/util/List;)I

    move-result v3

    .line 178
    .local v3, index:I
    const/4 v8, -0x1

    if-eq v3, v8, :cond_3

    .line 179
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    aput v3, v8, v9

    invoke-virtual {v5, v8}, Lcom/zhy/view/flowlayout/TagAdapter;->setSelectedList([I)V

    .line 181
    :cond_3
    new-instance v8, Lcom/boohee/widgets/GoodsFormatPopupWindow$2;

    invoke-direct {v8, p0, v0, p1}, Lcom/boohee/widgets/GoodsFormatPopupWindow$2;-><init>(Lcom/boohee/widgets/GoodsFormatPopupWindow;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v8}, Lcom/zhy/view/flowlayout/TagFlowLayout;->setOnTagClickListener(Lcom/zhy/view/flowlayout/TagFlowLayout$OnTagClickListener;)V

    .line 199
    iget-object v8, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->ll_format:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 201
    .end local v0           #goodsArguments:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsArgument;>;"
    .end local v1           #goodsFormat:Lcom/boohee/model/GoodsFormat;
    .end local v3           #index:I
    .end local v4           #itemView:Landroid/view/View;
    .end local v5           #tagAdapter:Lcom/zhy/view/flowlayout/TagAdapter;,"Lcom/zhy/view/flowlayout/TagAdapter<Lcom/boohee/model/GoodsArgument;>;"
    .end local v6           #tfl_format:Lcom/zhy/view/flowlayout/TagFlowLayout;
    .end local v7           #tv_title:Landroid/widget/TextView;
    :cond_4
    return-void
.end method

.method private initIsCanClick(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/GoodsFormat;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, goodsFormats:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsFormat;>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 237
    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedRow:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ne v6, v9, :cond_3

    .line 238
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_a

    .line 239
    invoke-direct {p0, v2, p1}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->getOthersList(ILjava/util/List;)Ljava/util/Set;

    move-result-object v5

    .line 240
    .local v5, otherList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/boohee/model/GoodsFormat;

    iget-object v1, v6, Lcom/boohee/model/GoodsFormat;->arguments:Ljava/util/List;

    .line 241
    .local v1, arguments:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsArgument;>;"
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 242
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/GoodsArgument;

    .line 243
    .local v0, argument:Lcom/boohee/model/GoodsArgument;
    iget-object v3, v0, Lcom/boohee/model/GoodsArgument;->goods_ids:Ljava/util/Set;

    .line 244
    .local v3, ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-boolean v6, v0, Lcom/boohee/model/GoodsArgument;->isChecked:Z

    if-nez v6, :cond_0

    if-eqz v3, :cond_0

    .line 245
    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCompareTemp:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 246
    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCompareTemp:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 247
    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCompareTemp:Ljava/util/Set;

    invoke-interface {v6, v5}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 248
    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCompareTemp:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_1

    move v6, v7

    :goto_2
    iput-boolean v6, v0, Lcom/boohee/model/GoodsArgument;->isCanClick:Z

    .line 241
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    move v6, v8

    .line 248
    goto :goto_2

    .line 238
    .end local v0           #argument:Lcom/boohee/model/GoodsArgument;
    .end local v3           #ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 254
    .end local v1           #arguments:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsArgument;>;"
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v5           #otherList:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_3
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v2, v6, :cond_a

    .line 255
    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedRow:Ljava/util/Set;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 254
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 256
    :cond_5
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/boohee/model/GoodsFormat;

    iget-object v1, v6, Lcom/boohee/model/GoodsFormat;->arguments:Ljava/util/List;

    .line 257
    .restart local v1       #arguments:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsArgument;>;"
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 258
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/GoodsArgument;

    .line 259
    .restart local v0       #argument:Lcom/boohee/model/GoodsArgument;
    iget-object v3, v0, Lcom/boohee/model/GoodsArgument;->goods_ids:Ljava/util/Set;

    .line 260
    .restart local v3       #ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    if-eqz v3, :cond_6

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_7

    .line 261
    :cond_6
    iput-boolean v8, v0, Lcom/boohee/model/GoodsArgument;->isCanClick:Z

    .line 257
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 263
    :cond_7
    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCompareTemp:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->clear()V

    .line 264
    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCompareTemp:Ljava/util/Set;

    invoke-interface {v6, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 265
    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedTemp:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-nez v6, :cond_8

    .line 266
    iput-boolean v7, v0, Lcom/boohee/model/GoodsArgument;->isCanClick:Z

    goto :goto_5

    .line 268
    :cond_8
    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCompareTemp:Ljava/util/Set;

    iget-object v9, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCheckedTemp:Ljava/util/Set;

    invoke-interface {v6, v9}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 269
    iget-object v6, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mCompareTemp:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v6

    if-lez v6, :cond_9

    move v6, v7

    :goto_6
    iput-boolean v6, v0, Lcom/boohee/model/GoodsArgument;->isCanClick:Z

    goto :goto_5

    :cond_9
    move v6, v8

    goto :goto_6

    .line 275
    .end local v0           #argument:Lcom/boohee/model/GoodsArgument;
    .end local v1           #arguments:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/GoodsArgument;>;"
    .end local v3           #ids:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Integer;>;"
    .end local v4           #j:I
    :cond_a
    return-void
.end method

.method private initOptionGoods(Lcom/boohee/model/Goods;)V
    .locals 4
    .parameter "goods"

    .prologue
    .line 135
    iget-object v2, p1, Lcom/boohee/model/Goods;->option_goods:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/boohee/model/Goods;->option_goods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 136
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p1, Lcom/boohee/model/Goods;->option_goods:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 137
    iget-object v2, p1, Lcom/boohee/model/Goods;->option_goods:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/CartGoods;

    .line 138
    .local v0, cartGoods:Lcom/boohee/model/CartGoods;
    iget-object v2, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoodsMap:Ljava/util/Map;

    iget v3, v0, Lcom/boohee/model/CartGoods;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    .end local v0           #cartGoods:Lcom/boohee/model/CartGoods;
    .end local v1           #i:I
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .locals 5

    .prologue
    .line 393
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 395
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->ll_content:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->outAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 396
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mOnSelectListener:Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mOnSelectListener:Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;

    const/4 v1, 0x0

    iget v2, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mSelectGoodsId:I

    iget v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mQuantity:I

    iget-object v4, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tips:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;->onSelect(ZIILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    :cond_0
    monitor-exit p0

    return-void

    .line 393
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isShowing()Z
    .locals 1

    .prologue
    .line 389
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->popWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, 0x1

    .line 425
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 448
    invoke-virtual {p0}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->dismiss()V

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 427
    :sswitch_0
    iget v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mSelectGoodsId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 428
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tips:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u8bf7\u5b8c\u6210\u5546\u54c1\u89c4\u683c\u9009\u62e9"

    :goto_1
    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tips:Ljava/lang/String;

    goto :goto_1

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mOnSelectListener:Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mOnSelectListener:Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;

    iget v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mSelectGoodsId:I

    iget v2, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mQuantity:I

    iget-object v3, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tips:Ljava/lang/String;

    invoke-interface {v0, v4, v1, v2, v3}, Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;->onSelect(ZIILjava/lang/String;)V

    goto :goto_0

    .line 434
    :sswitch_1
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoods:Lcom/boohee/model/Goods;

    iget v1, v0, Lcom/boohee/model/Goods;->quantity:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/boohee/model/Goods;->quantity:I

    .line 435
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoods:Lcom/boohee/model/Goods;

    iget v0, v0, Lcom/boohee/model/Goods;->quantity:I

    iput v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mQuantity:I

    .line 436
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->btn_decrease:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 437
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tv_goods_num:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mQuantity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 440
    :sswitch_2
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoods:Lcom/boohee/model/Goods;

    iget v1, v0, Lcom/boohee/model/Goods;->quantity:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/boohee/model/Goods;->quantity:I

    .line 441
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoods:Lcom/boohee/model/Goods;

    iget v0, v0, Lcom/boohee/model/Goods;->quantity:I

    iput v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mQuantity:I

    .line 442
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mGoods:Lcom/boohee/model/Goods;

    iget v0, v0, Lcom/boohee/model/Goods;->quantity:I

    if-ne v0, v4, :cond_3

    .line 443
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->btn_decrease:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 445
    :cond_3
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->tv_goods_num:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mQuantity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 425
    :sswitch_data_0
    .sparse-switch
        0x7f0e05b4 -> :sswitch_0
        0x7f0e05c5 -> :sswitch_2
        0x7f0e05c7 -> :sswitch_1
    .end sparse-switch
.end method

.method public setOnSelectListener(Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;)V
    .locals 0
    .parameter "onSelectListener"

    .prologue
    .line 420
    iput-object p1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->mOnSelectListener:Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;

    .line 421
    return-void
.end method

.method public declared-synchronized show(Landroid/content/Context;Lcom/boohee/model/Goods;)V
    .locals 5
    .parameter "context"
    .parameter "goods"

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->createPopWindow(Landroid/content/Context;Lcom/boohee/model/Goods;)V

    .line 404
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->popWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->popWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 405
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->popWindow:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 406
    iget-object v0, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->ll_content:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/boohee/widgets/GoodsFormatPopupWindow;->inAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
