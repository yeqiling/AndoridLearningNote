.class public abstract Lcom/easemob/chat/FileMessageBody;
.super Lcom/easemob/chat/MessageBody;


# instance fields
.field public transient downloadCallback:Lcom/easemob/EMCallBack;

.field public transient downloaded:Z

.field fileName:Ljava/lang/String;

.field localUrl:Ljava/lang/String;

.field remoteUrl:Ljava/lang/String;

.field secret:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/easemob/chat/MessageBody;-><init>()V

    iput-object v1, p0, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/FileMessageBody;->downloaded:Z

    iput-object v1, p0, Lcom/easemob/chat/FileMessageBody;->fileName:Ljava/lang/String;

    iput-object v1, p0, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/easemob/chat/FileMessageBody;->remoteUrl:Ljava/lang/String;

    iput-object v1, p0, Lcom/easemob/chat/FileMessageBody;->secret:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/FileMessageBody;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/FileMessageBody;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/FileMessageBody;->secret:Ljava/lang/String;

    return-object v0
.end method

.method public setDownloadCallback(Lcom/easemob/EMCallBack;)V
    .locals 2

    iget-boolean v0, p0, Lcom/easemob/chat/FileMessageBody;->downloaded:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    invoke-interface {p1}, Lcom/easemob/EMCallBack;->onSuccess()V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    goto :goto_0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/FileMessageBody;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setLocalUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    return-void
.end method

.method public setRemoteUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/FileMessageBody;->remoteUrl:Ljava/lang/String;

    return-void
.end method

.method public setSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/FileMessageBody;->secret:Ljava/lang/String;

    return-void
.end method
