.class Lcom/mechat/mechatlibrary/MCClient$13;
.super Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCClient;->sendLeaveMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MCClient;

.field private final synthetic val$leaveMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

.field private final synthetic val$onLeaveMessageCallback:Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MCClient;Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCClient$13;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$onLeaveMessageCallback:Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;

    iput-object p3, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$leaveMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    .line 1252
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errorResponse"
    .parameter "responseString"
    .parameter "responseWithThrowable"

    .prologue
    .line 1278
    invoke-super {p0, p1, p2, p3}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;->onFailure(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    const-string v0, "MeChatClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendLeaveMessage failed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$leaveMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    const-string v1, "failure"

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 1281
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getInstance()Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$leaveMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 1282
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$onLeaveMessageCallback:Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;

    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$leaveMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-interface {v0, v1, p2}, Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;->onFailure(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V

    .line 1283
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 1255
    invoke-super {p0, p1, p2, p3}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 1256
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendLeaveMessage suc response = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    :try_start_0
    const-string v2, "success"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1259
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$onLeaveMessageCallback:Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;

    if-eqz v2, :cond_0

    .line 1260
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$leaveMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    const-string v3, "arrived"

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 1261
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getInstance()Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$leaveMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 1263
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$onLeaveMessageCallback:Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$leaveMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-interface {v2, v3}, Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;->onSuccess(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 1274
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 1266
    .restart local p3
    :cond_1
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$leaveMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    const-string v3, "failure"

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 1267
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getInstance()Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$leaveMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->updateMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 1268
    iget-object v3, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$onLeaveMessageCallback:Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;

    iget-object v4, p0, Lcom/mechat/mechatlibrary/MCClient$13;->val$leaveMessage:Lcom/mechat/mechatlibrary/bean/MCMessage;

    instance-of v2, p3, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-interface {v3, v4, v2}, Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;->onFailure(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V

    .line 1269
    const-string v3, "MeChatClient"

    instance-of v2, p3, Lorg/json/JSONObject;

    if-nez v2, :cond_3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local p3
    :goto_2
    invoke-static {v3, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1271
    :catch_0
    move-exception v1

    .line 1272
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1268
    .end local v1           #e:Lorg/json/JSONException;
    .restart local p3
    :cond_2
    :try_start_1
    move-object v0, p3

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1269
    :cond_3
    check-cast p3, Lorg/json/JSONObject;

    .end local p3
    invoke-static {p3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto :goto_2
.end method
