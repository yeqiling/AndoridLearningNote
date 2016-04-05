.class Lcom/easemob/chat/EMSendMessageRunnable$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/EMCloudOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMSendMessageRunnable;->sendImageMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMSendMessageRunnable;

.field private final synthetic val$callback:Lcom/easemob/EMCallBack;

.field private final synthetic val$fileLength:J

.field private final synthetic val$fileToSend:Ljava/io/File;

.field private final synthetic val$imgMsgBody:Lcom/easemob/chat/ImageMessageBody;

.field private final synthetic val$msg:Lcom/easemob/chat/EMMessage;

.field private final synthetic val$needToDeleteFile:Z

.field private final synthetic val$remoteFilePath:Ljava/lang/String;

.field private final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMSendMessageRunnable;Lcom/easemob/chat/EMMessage;JJLcom/easemob/EMCallBack;ZLjava/io/File;Ljava/lang/String;Lcom/easemob/chat/ImageMessageBody;)V
    .locals 1

    iput-object p1, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->this$0:Lcom/easemob/chat/EMSendMessageRunnable;

    iput-object p2, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$msg:Lcom/easemob/chat/EMMessage;

    iput-wide p3, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$startTime:J

    iput-wide p5, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$fileLength:J

    iput-object p7, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$callback:Lcom/easemob/EMCallBack;

    iput-boolean p8, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$needToDeleteFile:Z

    iput-object p9, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$fileToSend:Ljava/io/File;

    iput-object p10, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$remoteFilePath:Ljava/lang/String;

    iput-object p11, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$imgMsgBody:Lcom/easemob/chat/ImageMessageBody;

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

    iget-boolean v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$needToDeleteFile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$fileToSend:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$msg:Lcom/easemob/chat/EMMessage;

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, v0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->this$0:Lcom/easemob/chat/EMSendMessageRunnable;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$msg:Lcom/easemob/chat/EMMessage;

    #calls: Lcom/easemob/chat/EMSendMessageRunnable;->updateMsgState(Lcom/easemob/chat/EMMessage;)V
    invoke-static {v0, v1}, Lcom/easemob/chat/EMSendMessageRunnable;->access$1(Lcom/easemob/chat/EMSendMessageRunnable;Lcom/easemob/chat/EMMessage;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$callback:Lcom/easemob/EMCallBack;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, -0x2

    invoke-interface {v0, v1, p1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onProgress(I)V
    .locals 6

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$msg:Lcom/easemob/chat/EMMessage;

    iput p1, v0, Lcom/easemob/chat/EMMessage;->progress:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$startTime:J

    sub-long/2addr v0, v2

    const-string v2, "perf"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upload "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% file size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$fileLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(bytes) time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(ms) speed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$fileLength:J

    div-long v0, v4, v0

    long-to-int v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(byte/ms)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    const-string v0, "sender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendfile progress:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 12

    const/4 v10, -0x2

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

    move-object v4, v0

    :goto_0
    :try_start_1
    const-string v0, ""

    const-string v1, ""

    const-string v0, ""

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatOptions;->getUseEncryption()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v0, "sender"

    const-string v1, "start to upload encrypted thumbnail"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->this$0:Lcom/easemob/chat/EMSendMessageRunnable;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$fileToSend:Ljava/io/File;

    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$msg:Lcom/easemob/chat/EMMessage;

    #calls: Lcom/easemob/chat/EMSendMessageRunnable;->uploadEncryptedThumbnailImage(Ljava/io/File;Lcom/easemob/chat/EMMessage;)Ljava/util/Map;
    invoke-static {v0, v1, v2}, Lcom/easemob/chat/EMSendMessageRunnable;->access$2(Lcom/easemob/chat/EMSendMessageRunnable;Ljava/io/File;Lcom/easemob/chat/EMMessage;)Ljava/util/Map;

    move-result-object v1

    const-string v0, "uuid"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "share-secret"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easemob/chat/core/p;->K()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "sender"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "encryptd thumbnail uploaded to:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    const-string v0, "sender"

    const-string v1, "upload thumb uuid is null"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, -0x2

    const-string v2, "upload file fail "

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string v2, "sendImageMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "json parse exception remotefilepath:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$remoteFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v3, v1

    move-object v4, v0

    goto/16 :goto_0

    :cond_2
    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    :goto_2
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$startTime:J

    sub-long/2addr v6, v8

    const-string v0, "perf"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "uploaded file size:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$fileLength:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "(bytes) time:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "(ms) speed:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v8, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$fileLength:J

    div-long v6, v8, v6

    long-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "(byte/ms)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, -0x2

    const-string v2, "upload file fail "

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    :goto_3
    iget-boolean v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$needToDeleteFile:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$fileToSend:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easemob/chat/core/p;->K()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "#"

    const-string v5, "%23"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "#"

    const-string v5, "%23"

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$imgMsgBody:Lcom/easemob/chat/ImageMessageBody;

    iput-object v0, v4, Lcom/easemob/chat/ImageMessageBody;->remoteUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$imgMsgBody:Lcom/easemob/chat/ImageMessageBody;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :goto_4
    iput-object v0, v4, Lcom/easemob/chat/ImageMessageBody;->thumbnailUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$imgMsgBody:Lcom/easemob/chat/ImageMessageBody;

    iput-object v3, v0, Lcom/easemob/chat/ImageMessageBody;->secret:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$imgMsgBody:Lcom/easemob/chat/ImageMessageBody;

    iput-object v2, v0, Lcom/easemob/chat/ImageMessageBody;->thumbnailSecret:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->this$0:Lcom/easemob/chat/EMSendMessageRunnable;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$msg:Lcom/easemob/chat/EMMessage;

    #calls: Lcom/easemob/chat/EMSendMessageRunnable;->sendMessageXmpp(Lcom/easemob/chat/EMMessage;)V
    invoke-static {v0, v1}, Lcom/easemob/chat/EMSendMessageRunnable;->access$3(Lcom/easemob/chat/EMSendMessageRunnable;Lcom/easemob/chat/EMMessage;)V

    const-string v0, "sender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sent msg successfully:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$msg:Lcom/easemob/chat/EMMessage;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$callback:Lcom/easemob/EMCallBack;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$1;->val$callback:Lcom/easemob/EMCallBack;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v10, v0}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_4

    :cond_6
    move-object v2, v1

    move-object v1, v0

    goto/16 :goto_2
.end method
