.class Lcom/boohee/uchoice/AddressEditActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "AddressEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/AddressEditActivity;->addAddress(Lcom/boohee/model/Address;)V
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
    .line 153
    iput-object p1, p0, Lcom/boohee/uchoice/AddressEditActivity$2;->this$0:Lcom/boohee/uchoice/AddressEditActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/boohee/uchoice/AddressEditActivity$2;->this$0:Lcom/boohee/uchoice/AddressEditActivity;

    invoke-virtual {v0}, Lcom/boohee/uchoice/AddressEditActivity;->finish()V

    .line 159
    const-string v0, "\u6536\u8d27\u5730\u5740\u65b0\u589e\u6210\u529f"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 163
    :goto_0
    return-void

    .line 161
    :cond_0
    const-string v0, "\u6536\u8d27\u5730\u5740\u65b0\u589e\u5931\u8d25"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
