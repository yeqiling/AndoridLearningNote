.class Lcom/easemob/chat/EMReceiveMessageThread;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "receiver"


# instance fields
.field private encrypted:Z

.field private msg:Lcom/easemob/chat/EMMessage;

.field private msgbody:Lcom/easemob/chat/FileMessageBody;


# direct methods
.method public constructor <init>(Lcom/easemob/chat/EMMessage;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->encrypted:Z

    iput-object p1, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    check-cast v0, Lcom/easemob/chat/FileMessageBody;

    iput-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    return-void
.end method

.method public constructor <init>(Lcom/easemob/chat/EMMessage;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->encrypted:Z

    iput-object p1, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    check-cast v0, Lcom/easemob/chat/FileMessageBody;

    iput-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    iput-boolean p2, p0, Lcom/easemob/chat/EMReceiveMessageThread;->encrypted:Z

    return-void
.end method

.method static synthetic access$0(Lcom/easemob/chat/EMReceiveMessageThread;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->encrypted:Z

    return v0
.end method

.method static synthetic access$1(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/EMMessage;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    return-object v0
.end method

.method static synthetic access$2(Lcom/easemob/chat/EMReceiveMessageThread;)Lcom/easemob/chat/FileMessageBody;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->INPROGRESS:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, v0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    iget-object v2, v0, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    iget-object v1, v0, Lcom/easemob/chat/FileMessageBody;->remoteUrl:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    iget-object v3, v0, Lcom/easemob/chat/FileMessageBody;->fileName:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    check-cast v0, Lcom/easemob/chat/ImageMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/ImageMessageBody;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    check-cast v0, Lcom/easemob/chat/ImageMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/ImageMessageBody;->thumbnailUrl:Ljava/lang/String;

    move-object v1, v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v4, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "th"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/util/PathUtil;->getImagePath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "th"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, v0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {p0}, Lcom/easemob/chat/EMReceiveMessageThread;->updateMsgState()V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    const/4 v1, -0x1

    const-string v2, "file name is null or empty"

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    check-cast v0, Lcom/easemob/chat/VideoMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/VideoMessageBody;->thumbnailUrl:Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v4, :cond_5

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/util/PathUtil;->getImagePath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    check-cast v0, Lcom/easemob/chat/VideoMessageBody;

    iput-object v2, v0, Lcom/easemob/chat/VideoMessageBody;->localThumb:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    check-cast v0, Lcom/easemob/chat/VideoMessageBody;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easemob/util/PathUtil;->getVideoPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".mp4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/easemob/chat/VideoMessageBody;->localUrl:Ljava/lang/String;

    move-object v0, v3

    goto/16 :goto_1

    :cond_5
    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v4, :cond_7

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getAudioFileWithExt()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/util/PathUtil;->getVoicePath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v3, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    iput-object v0, v3, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    move-object v6, v0

    move-object v0, v2

    move-object v2, v6

    goto/16 :goto_1

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/util/PathUtil;->getVoicePath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".amr"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->FILE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v4, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/util/PathUtil;->getFilePath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    iput-object v0, v2, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_1

    :cond_8
    move-object v0, v3

    goto/16 :goto_1

    :cond_9
    const-string v0, "receiver"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "localUrl:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    iget-object v4, v4, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " remoteurl:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " localThumb:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v4, :cond_e

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    check-cast v0, Lcom/easemob/chat/ImageMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/ImageMessageBody;->thumbnailSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/FileMessageBody;->secret:Ljava/lang/String;

    :cond_a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "share-secret"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_4
    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-eq v0, v4, :cond_c

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v4, :cond_d

    :cond_c
    const-string v0, "thumbnail"

    const-string v4, "true"

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_d
    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v0

    new-instance v4, Lcom/easemob/chat/EMReceiveMessageThread$1;

    invoke-direct {v4, p0, v2, v2}, Lcom/easemob/chat/EMReceiveMessageThread$1;-><init>(Lcom/easemob/chat/EMReceiveMessageThread;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/easemob/cloud/EMHttpClient;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V

    goto/16 :goto_2

    :cond_e
    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v4, :cond_f

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    check-cast v0, Lcom/easemob/chat/VideoMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/VideoMessageBody;->thumbnailSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "share-secret"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_f
    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v0, v0, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v4, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v4, :cond_b

    iget-object v0, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/FileMessageBody;->secret:Ljava/lang/String;

    if-eqz v0, :cond_b

    const-string v0, "share-secret"

    iget-object v4, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msgbody:Lcom/easemob/chat/FileMessageBody;

    iget-object v4, v4, Lcom/easemob/chat/FileMessageBody;->secret:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method protected updateMsgBody(Lcom/easemob/chat/EMMessage;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "msgbody"

    const/4 v2, 0x1

    invoke-static {p1, v2}, Lcom/easemob/chat/MessageEncoder;->getJSONMsg(Lcom/easemob/chat/EMMessage;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method protected updateMsgState()V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    iget-object v2, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v2, v2, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMReceiveMessageThread;->msg:Lcom/easemob/chat/EMMessage;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method
