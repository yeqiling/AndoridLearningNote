.class Lcom/hanyou/leyusdk/LEYUApplication$1;
.super Landroid/os/Handler;
.source "LEYUApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hanyou/leyusdk/LEYUApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hanyou/leyusdk/LEYUApplication;


# direct methods
.method constructor <init>(Lcom/hanyou/leyusdk/LEYUApplication;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hanyou/leyusdk/LEYUApplication$1;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    .line 56
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 59
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, smsg:Ljava/lang/String;
    iget v4, p1, Landroid/os/Message;->what:I

    if-nez v4, :cond_1

    .line 62
    :try_start_0
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, jsonParser:Lorg/json/JSONTokener;
    invoke-virtual {v1}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/json/JSONObject;

    .line 65
    .local v2, person:Lorg/json/JSONObject;
    const-string v4, "access_token"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/hanyou/leyusdk/LEYUApplication;->access$0(Ljava/lang/String;)V

    .line 66
    const-string v4, "leyu_dev_access_token"

    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->access$1()Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/hanyou/leyusdk/LEYUApplication;->set(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/hanyou/leyusdk/LEYUApplication;->access$2(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v4, p0, Lcom/hanyou/leyusdk/LEYUApplication$1;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    iget-object v4, v4, Lcom/hanyou/leyusdk/LEYUApplication;->_callback:Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;

    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->access$1()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;->ReturnAccessToken(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v1           #jsonParser:Lorg/json/JSONTokener;
    .end local v2           #person:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, ex:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 70
    iget-object v4, p0, Lcom/hanyou/leyusdk/LEYUApplication$1;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    iget-object v4, v4, Lcom/hanyou/leyusdk/LEYUApplication;->_callback:Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 72
    .end local v0           #ex:Lorg/json/JSONException;
    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 73
    iget-object v4, p0, Lcom/hanyou/leyusdk/LEYUApplication$1;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    iget-object v4, v4, Lcom/hanyou/leyusdk/LEYUApplication;->_callback:Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;

    invoke-interface {v4, v3}, Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;->OnCompleted(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_2
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 75
    iget-object v4, p0, Lcom/hanyou/leyusdk/LEYUApplication$1;->this$0:Lcom/hanyou/leyusdk/LEYUApplication;

    iget-object v4, v4, Lcom/hanyou/leyusdk/LEYUApplication;->_callback:Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;

    invoke-interface {v4, v3}, Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;->onFailed(Ljava/lang/String;)V

    goto :goto_0
.end method
