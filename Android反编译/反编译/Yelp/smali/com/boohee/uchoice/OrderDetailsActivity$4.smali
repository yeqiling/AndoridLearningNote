.class Lcom/boohee/uchoice/OrderDetailsActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "OrderDetailsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/OrderDetailsActivity;->cancelOrder()V
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
    .line 211
    iput-object p1, p0, Lcom/boohee/uchoice/OrderDetailsActivity$4;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 214
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 215
    const v1, 0x7f070135

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 217
    .local v0, result:Landroid/content/Intent;
    const-string v1, "index"

    iget-object v2, p0, Lcom/boohee/uchoice/OrderDetailsActivity$4;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    #getter for: Lcom/boohee/uchoice/OrderDetailsActivity;->index:I
    invoke-static {v2}, Lcom/boohee/uchoice/OrderDetailsActivity;->access$1500(Lcom/boohee/uchoice/OrderDetailsActivity;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity$4;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/boohee/uchoice/OrderDetailsActivity;->setResult(ILandroid/content/Intent;)V

    .line 219
    iget-object v1, p0, Lcom/boohee/uchoice/OrderDetailsActivity$4;->this$0:Lcom/boohee/uchoice/OrderDetailsActivity;

    invoke-virtual {v1}, Lcom/boohee/uchoice/OrderDetailsActivity;->finish()V

    .line 220
    return-void
.end method
