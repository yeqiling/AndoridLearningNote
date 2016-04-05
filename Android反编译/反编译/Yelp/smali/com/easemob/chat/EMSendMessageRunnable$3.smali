.class Lcom/easemob/chat/EMSendMessageRunnable$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/EMCloudOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMSendMessageRunnable;->uploadEncryptedThumbnailImage(Ljava/io/File;Lcom/easemob/chat/EMMessage;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMSendMessageRunnable;

.field private final synthetic val$lock:Ljava/lang/Object;

.field private final synthetic val$maps:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMSendMessageRunnable;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMSendMessageRunnable$3;->this$0:Lcom/easemob/chat/EMSendMessageRunnable;

    iput-object p2, p0, Lcom/easemob/chat/EMSendMessageRunnable$3;->val$maps:Ljava/util/Map;

    iput-object p3, p0, Lcom/easemob/chat/EMSendMessageRunnable$3;->val$lock:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "sender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "encrypted thumbnail upload error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$3;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$3;->val$lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onProgress(I)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    const-string v0, "sender"

    const-string v1, "encrypted thumbnail uploaded"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    const-string v0, ""

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "entities"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "uuid"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "share-secret"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "share-secret"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable$3;->val$maps:Ljava/util/Map;

    const-string v3, "uuid"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$3;->val$maps:Ljava/util/Map;

    const-string v2, "share-secret"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$3;->val$lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$3;->val$lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method
