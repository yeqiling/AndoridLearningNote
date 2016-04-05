.class Lcom/boohee/uchoice/OrderEditActivity$4;
.super Ljava/lang/Object;
.source "OrderEditActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/OrderEditActivity;->getFooterView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/OrderEditActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/OrderEditActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity$4;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$4;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #setter for: Lcom/boohee/uchoice/OrderEditActivity;->isUseCoupon:Z
    invoke-static {v0, p2}, Lcom/boohee/uchoice/OrderEditActivity;->access$1502(Lcom/boohee/uchoice/OrderEditActivity;Z)Z

    .line 253
    if-eqz p2, :cond_0

    .line 254
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$4;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #calls: Lcom/boohee/uchoice/OrderEditActivity;->refreshPayTotal()V
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$1600(Lcom/boohee/uchoice/OrderEditActivity;)V

    .line 259
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$4;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->tv_price_all_value:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$200(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/uchoice/OrderEditActivity$4;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    const v3, 0x7f070647

    invoke-virtual {v2, v3}, Lcom/boohee/uchoice/OrderEditActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/uchoice/OrderEditActivity$4;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->priceAllValue:F
    invoke-static {v2}, Lcom/boohee/uchoice/OrderEditActivity;->access$000(Lcom/boohee/uchoice/OrderEditActivity;)F

    move-result v2

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->m2(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
