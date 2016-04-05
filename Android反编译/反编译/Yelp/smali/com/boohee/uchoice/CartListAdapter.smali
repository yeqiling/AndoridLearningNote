.class public Lcom/boohee/uchoice/CartListAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "CartListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/uchoice/CartListAdapter$onEditGoodQuantityListener;,
        Lcom/boohee/uchoice/CartListAdapter$onCreaseClickListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private ctx:Landroid/content/Context;

.field public editGoodQuantityListener:Lcom/boohee/uchoice/CartListAdapter$onEditGoodQuantityListener;

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

.field private loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field private options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/boohee/uchoice/CartListAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/uchoice/CartListAdapter;->TAG:Ljava/lang/String;

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
    .line 36
    .local p2, goodsList:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/CartGoods;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 37
    iput-object p1, p0, Lcom/boohee/uchoice/CartListAdapter;->ctx:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/boohee/uchoice/CartListAdapter;->goodsList:Ljava/util/List;

    .line 39
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/uchoice/CartListAdapter;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 40
    const v0, 0x7f02032a

    invoke-static {v0}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/uchoice/CartListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 41
    return-void
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0301ec

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 16
    .parameter "position"
    .parameter "convertView"
    .parameter "holder"

    .prologue
    .line 51
    sget-object v5, Lcom/boohee/uchoice/CartActivity;->isEdit:Ljava/lang/Boolean;

    .line 52
    .local v5, isEdit:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boohee/uchoice/CartListAdapter;->goodsList:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/CartGoods;

    .line 53
    .local v4, goods:Lcom/boohee/model/CartGoods;
    const v13, 0x7f0e0417

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 54
    .local v8, rl_title:Landroid/widget/RelativeLayout;
    const v13, 0x7f0e05c4

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 55
    .local v7, ll_edit:Landroid/widget/LinearLayout;
    const v13, 0x7f0e05c3

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 56
    .local v10, tv_goods_state:Landroid/widget/TextView;
    const v13, 0x7f0e05bf

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ToggleButton;

    .line 57
    .local v3, checkBox:Landroid/widget/ToggleButton;
    const v13, 0x7f0e05c0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 58
    .local v6, iv_goods:Landroid/widget/ImageView;
    const v13, 0x7f0e05c1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 59
    .local v11, tv_goods_title:Landroid/widget/TextView;
    const v13, 0x7f0e05c2

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 60
    .local v12, tv_price_value:Landroid/widget/TextView;
    const v13, 0x7f0e05c5

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 61
    .local v1, btn_decrease:Landroid/widget/Button;
    const v13, 0x7f0e05c7

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 62
    .local v2, btn_increase:Landroid/widget/Button;
    const v13, 0x7f0e05c6

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 64
    .local v9, tv_goods_num:Landroid/widget/TextView;
    iget-object v13, v4, Lcom/boohee/model/CartGoods;->isChecked:Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    invoke-virtual {v3, v13}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 65
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boohee/uchoice/CartListAdapter;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v14, v4, Lcom/boohee/model/CartGoods;->thumb_photo_url:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/boohee/uchoice/CartListAdapter;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    invoke-virtual {v13, v14, v6, v15}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 66
    sget-object v13, Lcom/boohee/model/Goods$goods_type;->SpecGoods:Lcom/boohee/model/Goods$goods_type;

    invoke-virtual {v13}, Lcom/boohee/model/Goods$goods_type;->name()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v4, Lcom/boohee/model/CartGoods;->type:Ljava/lang/String;

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 67
    iget-object v13, v4, Lcom/boohee/model/CartGoods;->title:Ljava/lang/String;

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/uchoice/CartListAdapter;->ctx:Landroid/content/Context;

    const v15, 0x7f07042e

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/uchoice/CartListAdapter;->ctx:Landroid/content/Context;

    const v15, 0x7f070647

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v4, Lcom/boohee/model/CartGoods;->base_price:F

    invoke-static {v14}, Lcom/boohee/utils/TextUtil;->m2(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget v13, v4, Lcom/boohee/model/CartGoods;->quantity:I

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v13, Lcom/boohee/uchoice/CartListAdapter$onCreaseClickListener;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9, v1, v4}, Lcom/boohee/uchoice/CartListAdapter$onCreaseClickListener;-><init>(Lcom/boohee/uchoice/CartListAdapter;Landroid/widget/TextView;Landroid/widget/Button;Lcom/boohee/model/CartGoods;)V

    invoke-virtual {v1, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    new-instance v13, Lcom/boohee/uchoice/CartListAdapter$onCreaseClickListener;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v9, v2, v4}, Lcom/boohee/uchoice/CartListAdapter$onCreaseClickListener;-><init>(Lcom/boohee/uchoice/CartListAdapter;Landroid/widget/TextView;Landroid/widget/Button;Lcom/boohee/model/CartGoods;)V

    invoke-virtual {v2, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget v13, v4, Lcom/boohee/model/CartGoods;->quantity:I

    const/4 v14, 0x1

    if-le v13, v14, :cond_1

    .line 78
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Landroid/widget/Button;->setEnabled(Z)V

    .line 79
    const v13, 0x7f02059e

    invoke-virtual {v1, v13}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 84
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 85
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 86
    const/16 v13, 0x8

    invoke-virtual {v1, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    const/16 v13, 0x8

    invoke-virtual {v2, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    :goto_2
    iget-boolean v13, v4, Lcom/boohee/model/CartGoods;->can_sale:Z

    if-eqz v13, :cond_3

    .line 94
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    const/16 v13, 0x8

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    const/high16 v13, 0x3f80

    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 107
    :goto_3
    return-object p2

    .line 69
    :cond_0
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v4, Lcom/boohee/model/CartGoods;->title:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v4, Lcom/boohee/model/CartGoods;->chosen_specs:Ljava/util/List;

    invoke-static {v14}, Lcom/boohee/utils/ShopUtils;->getFormatInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 81
    :cond_1
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 89
    :cond_2
    const/16 v13, 0x8

    invoke-virtual {v3, v13}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 90
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 99
    :cond_3
    iget-object v13, v4, Lcom/boohee/model/CartGoods;->msg:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 100
    iget-object v13, v4, Lcom/boohee/model/CartGoods;->msg:Ljava/lang/String;

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_4
    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    const/high16 v13, 0x3f00

    invoke-virtual {v8, v13}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    goto :goto_3
.end method

.method public setEditGoodQuantityListener(Lcom/boohee/uchoice/CartListAdapter$onEditGoodQuantityListener;)V
    .locals 0
    .parameter "editGoodQuantityListener"

    .prologue
    .line 158
    iput-object p1, p0, Lcom/boohee/uchoice/CartListAdapter;->editGoodQuantityListener:Lcom/boohee/uchoice/CartListAdapter$onEditGoodQuantityListener;

    .line 159
    return-void
.end method
