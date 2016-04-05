.class Lcom/easemob/chat/EMSendMessageRunnable$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/EMCloudOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMSendMessageRunnable;->sendVideoMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMSendMessageRunnable;

.field private final synthetic val$callback:Lcom/easemob/EMCallBack;

.field private final synthetic val$msg:Lcom/easemob/chat/EMMessage;

.field private final synthetic val$remoteFilePath:Ljava/lang/String;

.field private final synthetic val$thumFilePath:Ljava/lang/String;

.field private final synthetic val$videoMsgBody:Lcom/easemob/chat/VideoMessageBody;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMSendMessageRunnable;Ljava/lang/String;Ljava/lang/String;Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;Lcom/easemob/chat/VideoMessageBody;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->this$0:Lcom/easemob/chat/EMSendMessageRunnable;

    iput-object p2, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$remoteFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$thumFilePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$msg:Lcom/easemob/chat/EMMessage;

    iput-object p5, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    iput-object p6, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$videoMsgBody:Lcom/easemob/chat/VideoMessageBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    const-string v0, "sender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$msg:Lcom/easemob/chat/EMMessage;

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, v0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->this$0:Lcom/easemob/chat/EMSendMessageRunnable;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$msg:Lcom/easemob/chat/EMMessage;

    #calls: Lcom/easemob/chat/EMSendMessageRunnable;->updateMsgState(Lcom/easemob/chat/EMMessage;)V
    invoke-static {v0, v1}, Lcom/easemob/chat/EMSendMessageRunnable;->access$1(Lcom/easemob/chat/EMSendMessageRunnable;Lcom/easemob/chat/EMMessage;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, -0x2

    invoke-interface {v0, v1, p1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$msg:Lcom/easemob/chat/EMMessage;

    iput p1, v0, Lcom/easemob/chat/EMMessage;->progress:I

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 11

    const/4 v10, 0x0

    const/16 v9, 0x64

    const/4 v8, -0x2

    const-string v0, ""

    const-string v1, ""

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

    move-result-object v0

    const-string v3, "share-secret"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "share-secret"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v3, v1

    move-object v2, v0

    :goto_0
    :try_start_1
    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, "sender"

    const-string v1, "start to upload encrypted thumbnail"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->this$0:Lcom/easemob/chat/EMSendMessageRunnable;

    new-instance v1, Ljava/io/File;

    iget-object v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$thumFilePath:Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$msg:Lcom/easemob/chat/EMMessage;

    #calls: Lcom/easemob/chat/EMSendMessageRunnable;->uploadEncryptedThumbnailImage(Ljava/io/File;Lcom/easemob/chat/EMMessage;)Ljava/util/Map;
    invoke-static {v0, v1, v4}, Lcom/easemob/chat/EMSendMessageRunnable;->access$2(Lcom/easemob/chat/EMSendMessageRunnable;Ljava/io/File;Lcom/easemob/chat/EMMessage;)Ljava/util/Map;

    move-result-object v1

    const-string v0, "uuid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v4, "share-secret"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easemob/chat/core/p;->K()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "sender"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "thumbail uploaded to:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, -0x2

    const-string v2, "upload file fail"

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string v2, "sender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "json parse exception remotefilePath:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$remoteFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v3, v1

    move-object v2, v0

    goto/16 :goto_0

    :cond_2
    :try_start_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, -0x2

    const-string v2, "upload file fail"

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    invoke-interface {v1, v9, v10}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$callback:Lcom/easemob/EMCallBack;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v8, v0}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_1

    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easemob/chat/core/p;->K()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "#"

    const-string v5, "%23"

    invoke-virtual {v0, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "#"

    const-string v5, "%23"

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$videoMsgBody:Lcom/easemob/chat/VideoMessageBody;

    iput-object v0, v4, Lcom/easemob/chat/VideoMessageBody;->remoteUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$videoMsgBody:Lcom/easemob/chat/VideoMessageBody;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    iput-object v0, v4, Lcom/easemob/chat/VideoMessageBody;->thumbnailUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$videoMsgBody:Lcom/easemob/chat/VideoMessageBody;

    iput-object v3, v0, Lcom/easemob/chat/VideoMessageBody;->secret:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$videoMsgBody:Lcom/easemob/chat/VideoMessageBody;

    iput-object v1, v0, Lcom/easemob/chat/VideoMessageBody;->thumbnailSecret:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->this$0:Lcom/easemob/chat/EMSendMessageRunnable;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$msg:Lcom/easemob/chat/EMMessage;

    #calls: Lcom/easemob/chat/EMSendMessageRunnable;->sendMessageXmpp(Lcom/easemob/chat/EMMessage;)V
    invoke-static {v0, v1}, Lcom/easemob/chat/EMSendMessageRunnable;->access$3(Lcom/easemob/chat/EMSendMessageRunnable;Lcom/easemob/chat/EMMessage;)V

    const-string v0, "sender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sent msg sucessfully:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable$2;->val$msg:Lcom/easemob/chat/EMMessage;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method
