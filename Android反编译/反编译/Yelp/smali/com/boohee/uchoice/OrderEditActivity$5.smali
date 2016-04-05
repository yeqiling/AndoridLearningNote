.class Lcom/boohee/uchoice/OrderEditActivity$5;
.super Ljava/lang/Object;
.source "OrderEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/OrderEditActivity;->initCoupon()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/OrderEditActivity;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/OrderEditActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 295
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity$5;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    iput p2, p0, Lcom/boohee/uchoice/OrderEditActivity$5;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 298
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$5;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->tb_use_coupon:Landroid/widget/ToggleButton;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$1700(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 299
    const/4 v0, 0x0

    .local v0, j:I
    :goto_0
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$5;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$1800(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 300
    iget v1, p0, Lcom/boohee/uchoice/OrderEditActivity$5;->val$index:I

    if-ne v0, v1, :cond_0

    .line 301
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$5;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$1800(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/Coupon;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/boohee/model/Coupon;->isChecked:Ljava/lang/Boolean;

    .line 299
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$5;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->mCoupons:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$1800(Lcom/boohee/uchoice/OrderEditActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/Coupon;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Lcom/boohee/model/Coupon;->isChecked:Ljava/lang/Boolean;

    goto :goto_1

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/boohee/uchoice/OrderEditActivity$5;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #calls: Lcom/boohee/uchoice/OrderEditActivity;->initCoupon()V
    invoke-static {v1}, Lcom/boohee/uchoice/OrderEditActivity;->access$1900(Lcom/boohee/uchoice/OrderEditActivity;)V

    .line 307
    return-void
.end method
