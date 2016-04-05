.class Lcom/boohee/uchoice/AddressEditActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "AddressEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/AddressEditActivity;->updateAddress(Lcom/boohee/model/Address;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/AddressEditActivity;


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/AddressEditActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 171
    iput-object p1, p0, Lcom/boohee/uchoice/AddressEditActivity$3;->this$0:Lcom/boohee/uchoice/AddressEditActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 174
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 175
    if-eqz p1, :cond_0

    .line 176
    const-string v0, "\u5730\u5740\u66f4\u65b0\u6210\u529f"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity$3;->this$0:Lcom/boohee/uchoice/AddressEditActivity;

    invoke-virtual {v0}, Lcom/boohee/uchoice/AddressEditActivity;->finish()V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v0, "\u5730\u5740\u66f4\u65b0\u5931\u8d25"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
