.class Lcom/hanyou/leyusdk/HttpConnection$1;
.super Landroid/os/Handler;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hanyou/leyusdk/HttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 81
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 86
    :pswitch_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;

    .line 87
    .local v2, listener:Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 88
    .local v1, data:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 89
    if-eqz v1, :cond_0

    move-object v0, v1

    .line 90
    check-cast v0, Landroid/os/Bundle;

    .line 91
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "callbackkey"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, result:Ljava/lang/String;
    invoke-interface {v2, v3}, Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;->callBack(Ljava/lang/String;)V

    goto :goto_0

    .line 81
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
