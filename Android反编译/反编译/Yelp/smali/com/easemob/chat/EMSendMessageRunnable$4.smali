.class Lcom/easemob/chat/EMSendMessageRunnable$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/EMCloudOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMSendMessageRunnable;->sendFileMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMSendMessageRunnable;

.field private final synthetic val$callback:Lcom/easemob/EMCallBack;

.field private final synthetic val$fileLength:J

.field private final synthetic val$fileMsgBody:Lcom/easemob/chat/FileMessageBody;

.field private final synthetic val$msg:Lcom/easemob/chat/EMMessage;

.field private final synthetic val$remoteFilePath:Ljava/lang/String;

.field private final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMSendMessageRunnable;Lcom/easemob/chat/EMMessage;JJLcom/easemob/EMCallBack;Ljava/lang/String;Lcom/easemob/chat/FileMessageBody;)V
    .locals 1

    iput-object p1, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->this$0:Lcom/easemob/chat/EMSendMessageRunnable;

    iput-object p2, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$msg:Lcom/easemob/chat/EMMessage;

    iput-wide p3, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$startTime:J

    iput-wide p5, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$fileLength:J

    iput-object p7, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$callback:Lcom/easemob/EMCallBack;

    iput-object p8, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$remoteFilePath:Ljava/lang/String;

    iput-object p9, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$fileMsgBody:Lcom/easemob/chat/FileMessageBody;

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

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$msg:Lcom/easemob/chat/EMMessage;

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, v0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->this$0:Lcom/easemob/chat/EMSendMessageRunnable;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$msg:Lcom/easemob/chat/EMMessage;

    #calls: Lcom/easemob/chat/EMSendMessageRunnable;->updateMsgState(Lcom/easemob/chat/EMMessage;)V
    invoke-static {v0, v1}, Lcom/easemob/chat/EMSendMessageRunnable;->access$1(Lcom/easemob/chat/EMSendMessageRunnable;Lcom/easemob/chat/EMMessage;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$callback:Lcom/easemob/EMCallBack;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, -0x2

    invoke-interface {v0, v1, p1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 10

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$msg:Lcom/easemob/chat/EMMessage;

    iput p1, v0, Lcom/easemob/chat/EMMessage;->progress:I

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    iget-wide v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$startTime:J

    invoke-static {v0, v1}, Lcom/easemob/util/PerfUtils;->getTimeSpendSecond(J)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "perf"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "upload "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "% file size(byte)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$fileLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " speed(byte/s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$fileLength:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$startTime:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Lcom/easemob/util/PerfUtils;->getSpeed(JJ)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 13

    const/4 v12, 0x0

    const/16 v11, 0x64

    const/4 v10, -0x2

    :try_start_0
    const-string v1, ""

    const-string v2, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "entities"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "uuid"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "share-secret"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "share-secret"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    :try_start_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$callback:Lcom/easemob/EMCallBack;

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, -0x2

    const-string v2, "upload file fail"

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v3, "sendFileMessage"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$remoteFilePath:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "#"

    const-string v3, "%23"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    const-string v3, "%20"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$fileMsgBody:Lcom/easemob/chat/FileMessageBody;

    iput-object v1, v2, Lcom/easemob/chat/FileMessageBody;->remoteUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$fileMsgBody:Lcom/easemob/chat/FileMessageBody;

    iput-object v0, v1, Lcom/easemob/chat/FileMessageBody;->secret:Ljava/lang/String;

    iget-wide v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$startTime:J

    invoke-static {v0, v1}, Lcom/easemob/util/PerfUtils;->getTimeSpendSecond(J)I

    move-result v0

    int-to-long v0, v0

    const-string v2, "perf"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "uploaded file size(bytes)"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$fileLength:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " time(s)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " speed(bytes/s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$fileLength:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$startTime:J

    sub-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Lcom/easemob/util/PerfUtils;->getSpeed(JJ)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->this$0:Lcom/easemob/chat/EMSendMessageRunnable;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$msg:Lcom/easemob/chat/EMMessage;

    #calls: Lcom/easemob/chat/EMSendMessageRunnable;->sendMessageXmpp(Lcom/easemob/chat/EMMessage;)V
    invoke-static {v0, v1}, Lcom/easemob/chat/EMSendMessageRunnable;->access$3(Lcom/easemob/chat/EMSendMessageRunnable;Lcom/easemob/chat/EMMessage;)V

    const-string v0, "sender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sent msg successfully:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$msg:Lcom/easemob/chat/EMMessage;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$callback:Lcom/easemob/EMCallBack;

    invoke-interface {v1, v11, v12}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable$4;->val$callback:Lcom/easemob/EMCallBack;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v10, v0}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto/16 :goto_1
.end method
