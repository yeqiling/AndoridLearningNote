.class Lcom/easemob/chat/EMReceiveMessageThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/EMCloudOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMReceiveMessageThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMReceiveMessageThread;

.field private final synthetic val$localThumbnailFilePath:Ljava/lang/String;

.field private final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMReceiveMessageThread;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    iput-object p2, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->val$localThumbnailFilePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$1(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, v0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    const-string v0, "receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download file localThumbnailFilePath:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->val$localThumbnailFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->val$path:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->val$path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    invoke-virtual {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->updateMsgState()V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$2(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/FileMessageBody;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$2(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/FileMessageBody;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    const/16 v1, -0x3e6

    invoke-interface {v0, v1, p1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v0, "receiver"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "temp file del fail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->val$path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onProgress(I)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$1(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    iput p1, v0, Lcom/easemob/chat/EMMessage;->progress:I

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$2(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/FileMessageBody;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$2(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/FileMessageBody;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 7

    const/16 v6, 0x64

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->val$localThumbnailFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v1, "receiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file downloaded:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->val$localThumbnailFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->encrypted:Z
    invoke-static {v1}, Lcom/easemob/chat/EMReceiveMessageThread;->access$0(Lcom/easemob/chat/EMReceiveMessageThread;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;
    invoke-static {v1}, Lcom/easemob/chat/EMReceiveMessageThread;->access$1(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/EMMessage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/chat/EMEncryptUtils;->decryptFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$2(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/FileMessageBody;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/easemob/chat/FileMessageBody;->downloaded:Z

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$1(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->SUCCESS:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, v0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    invoke-virtual {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->updateMsgState()V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$1(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    iput v6, v0, Lcom/easemob/chat/EMMessage;->progress:I

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$2(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/FileMessageBody;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$2(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/FileMessageBody;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, v6, v1}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$2(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/FileMessageBody;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    invoke-interface {v0}, Lcom/easemob/EMCallBack;->onSuccess()V

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$1(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiveMessageThread;->access$1(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    iget-object v1, p0, Lcom/easemob/chat/EMReceiveMessageThread$1;->this$0:Lcom/easemob/chat/EMReceiveMessageThread;

    #getter for: Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;
    invoke-static {v1}, Lcom/easemob/chat/EMReceiveMessageThread;->access$1(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/EMMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMReceiveMessageThread;->updateMsgBody(Lcom/easemob/chat/EMMessage;)V

    :cond_3
    return-void
.end method
