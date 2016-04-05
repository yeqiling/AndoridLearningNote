.class Lcom/boohee/uchoice/GoodsDetailActivity$1;
.super Ljava/lang/Object;
.source "GoodsDetailActivity.java"

# interfaces
.implements Lcom/boohee/widgets/GoodsFormatPopupWindow$OnSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/GoodsDetailActivity;->openFormatPop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

.field final synthetic val$goodsFormatPop:Lcom/boohee/widgets/GoodsFormatPopupWindow;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/GoodsDetailActivity;Lcom/boohee/widgets/GoodsFormatPopupWindow;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$1;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iput-object p2, p0, Lcom/boohee/uchoice/GoodsDetailActivity$1;->val$goodsFormatPop:Lcom/boohee/widgets/GoodsFormatPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelect(ZIILjava/lang/String;)V
    .locals 1
    .parameter "canDismiss"
    .parameter "good_id"
    .parameter "quantity"
    .parameter "tips"

    .prologue
    .line 165
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$1;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->mTvFormat:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$1;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->mTvFormat:Landroid/widget/TextView;

    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    if-eqz p1, :cond_1

    .line 169
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$1;->val$goodsFormatPop:Lcom/boohee/widgets/GoodsFormatPopupWindow;

    invoke-virtual {v0}, Lcom/boohee/widgets/GoodsFormatPopupWindow;->dismiss()V

    .line 170
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$1;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #calls: Lcom/boohee/uchoice/GoodsDetailActivity;->addGoodToCart(II)V
    invoke-static {v0, p2, p3}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$000(Lcom/boohee/uchoice/GoodsDetailActivity;II)V

    .line 172
    :cond_1
    return-void
.end method
