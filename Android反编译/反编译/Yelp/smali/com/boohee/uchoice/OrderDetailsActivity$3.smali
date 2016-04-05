.class Lcom/boohee/uchoice/OrderDetailsActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "OrderDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/OrderDetailsActivity;->getOrderDetails()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/OrderDetailsActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/OrderDetailsActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "object"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 179
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 180
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    invoke-static {p1}, Lcom/boohee/model/UchoiceOrder;->parseOrderDetail(Lorg/json/JSONObject;)Lcom/boohee/model/UchoiceOrder;

    move-result-object v1

    #setter for: Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;
    invoke-static {v0, v1}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$402(Lcom/boohee/uchoice/OrderDetailsActivity;Lcom/boohee/model/UchoiceOrder;)Lcom/boohee/model/UchoiceOrder;

    .line 181
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    new-instance v1, Lcom/boohee/uchoice/OrderDetailAdapter;

    iget-object v2, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$600(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;
    invoke-static {v3}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$400(Lcom/boohee/uchoice/OrderDetailsActivity;)Lcom/boohee/model/UchoiceOrder;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/uchoice/OrderDetailAdapter;-><init>(Landroid/content/Context;Lcom/boohee/model/UchoiceOrder;)V

    #setter for: Lcom/boohee/uchoice/OrderDetailsActivity;->orderDetailAdapter:Lcom/boohee/uchoice/OrderDetailAdapter;
    invoke-static {v0, v1}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$502(Lcom/boohee/uchoice/OrderDetailsActivity;Lcom/boohee/uchoice/OrderDetailAdapter;)Lcom/boohee/uchoice/OrderDetailAdapter;

    .line 182
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->orderDetailList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$800(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #calls: Lcom/boohee/uchoice/OrderDetailsActivity;->getHeaderView()Landroid/view/View;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$700(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->orderDetailList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$800(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #calls: Lcom/boohee/uchoice/OrderDetailsActivity;->getFooterView()Landroid/view/View;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$900(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 185
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->orderDetailList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$800(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->orderDetailAdapter:Lcom/boohee/uchoice/OrderDetailAdapter;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$500(Lcom/boohee/uchoice/OrderDetailsActivity;)Lcom/boohee/uchoice/OrderDetailAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->countAll:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$1000(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    const v3, 0x7f070647

    invoke-virtual {v2, v3}, Lcom/boohee/uchoice/OrderDetailsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;
    invoke-static {v2}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$400(Lcom/boohee/uchoice/OrderDetailsActivity;)Lcom/boohee/model/UchoiceOrder;

    move-result-object v2

    iget v2, v2, Lcom/boohee/model/UchoiceOrder;->price:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    sget-object v0, Lcom/boohee/model/UchoiceOrder;->INITIAL:Ljava/lang/String;

    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->orderUchoice:Lcom/boohee/model/UchoiceOrder;
    invoke-static {v1}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$400(Lcom/boohee/uchoice/OrderDetailsActivity;)Lcom/boohee/model/UchoiceOrder;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/UchoiceOrder;->state:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->ll_pay_type:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$1100(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->pay:Landroid/widget/Button;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$1200(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->pay:Landroid/widget/Button;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$1200(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->mMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$1300(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->mMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$1300(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 201
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$1400(Lcom/boohee/uchoice/OrderDetailsActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 202
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->ll_pay_type:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$1100(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->pay:Landroid/widget/Button;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$1200(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 197
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->mMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$1300(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/boohee/uchoice/OrderDetailsActivity$3;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->mMenuItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$1300(Lcom/boohee/uchoice/OrderDetailsActivity;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method
