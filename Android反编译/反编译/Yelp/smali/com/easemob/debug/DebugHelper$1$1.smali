.class Lcom/easemob/debug/DebugHelper$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/EMCloudOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/debug/DebugHelper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easemob/debug/DebugHelper$1;

.field private final synthetic val$callback:Lcom/easemob/EMCallBack;

.field private final synthetic val$remoteServer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easemob/debug/DebugHelper$1;Lcom/easemob/EMCallBack;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/debug/DebugHelper$1$1;->this$1:Lcom/easemob/debug/DebugHelper$1;

    iput-object p2, p0, Lcom/easemob/debug/DebugHelper$1$1;->val$callback:Lcom/easemob/EMCallBack;

    iput-object p3, p0, Lcom/easemob/debug/DebugHelper$1$1;->val$remoteServer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/debug/DebugHelper$1$1;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/debug/DebugHelper$1$1;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x5

    const-string v1, "DebugHelper"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "entities"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "uuid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/easemob/debug/DebugHelper$1$1;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v2, 0x5

    const-string v3, "authentificate failed"

    invoke-interface {v1, v2, v3}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "sdk_version"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "os_version"

    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "model"

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "uploadDate"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "login_username"

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "appkey"

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "logfile_uuid"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "DebugHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v1, "post body :"

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    instance-of v1, v2, Lorg/json/JSONObject;

    if-nez v1, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/easemob/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "http://"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/easemob/debug/DebugHelper$1$1;->val$remoteServer:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "easemob#logger"

    const-string v4, "#"

    const-string v5, "/"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/devicelogs/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "DebugHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "start post uri : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/easemob/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v4

    const/4 v5, 0x0

    instance-of v1, v2, Lorg/json/JSONObject;

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    sget-object v2, Lcom/easemob/cloud/EMHttpClient;->POST:Ljava/lang/String;

    invoke-virtual {v4, v3, v5, v1, v2}, Lcom/easemob/cloud/EMHttpClient;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "DebugHelper"

    invoke-static {v2, v1}, Lcom/easemob/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/debug/DebugHelper$1$1;->val$callback:Lcom/easemob/EMCallBack;

    invoke-interface {v1}, Lcom/easemob/EMCallBack;->onSuccess()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    iget-object v2, p0, Lcom/easemob/debug/DebugHelper$1$1;->val$callback:Lcom/easemob/EMCallBack;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v7, v1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    check-cast v2, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/easemob/debug/DebugHelper$1$1;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v2, 0x5

    const-string v3, "send post by uuid failed"

    invoke-interface {v1, v2, v3}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    const-string v1, "DebugHelper"

    const-string v2, "send post by uuid failed"

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lcom/easemob/exceptions/EaseMobException;->printStackTrace()V

    iget-object v2, p0, Lcom/easemob/debug/DebugHelper$1$1;->val$callback:Lcom/easemob/EMCallBack;

    invoke-virtual {v1}, Lcom/easemob/exceptions/EaseMobException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v7, v1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    iget-object v2, p0, Lcom/easemob/debug/DebugHelper$1$1;->val$callback:Lcom/easemob/EMCallBack;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v7, v1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v2, p0, Lcom/easemob/debug/DebugHelper$1$1;->val$callback:Lcom/easemob/EMCallBack;

    const/16 v3, -0x3e6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto/16 :goto_0
.end method
