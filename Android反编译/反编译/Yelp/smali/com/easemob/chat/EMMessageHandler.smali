.class Lcom/easemob/chat/EMMessageHandler;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/core/r;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final me:Lcom/easemob/chat/EMMessageHandler;


# instance fields
.field errorMsgLlistener:Lorg/jivesoftware/smack/PacketListener;

.field sendThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/easemob/chat/EMMessageHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/EMMessageHandler;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/easemob/chat/EMMessageHandler;

    invoke-direct {v0}, Lcom/easemob/chat/EMMessageHandler;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMMessageHandler;->me:Lcom/easemob/chat/EMMessageHandler;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMMessageHandler;->sendThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/easemob/chat/EMMessageHandler$1;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMMessageHandler$1;-><init>(Lcom/easemob/chat/EMMessageHandler;)V

    iput-object v0, p0, Lcom/easemob/chat/EMMessageHandler;->errorMsgLlistener:Lorg/jivesoftware/smack/PacketListener;

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMMessageHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/easemob/chat/EMMessageHandler;Lcom/easemob/chat/EMMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMMessageHandler;->updateMsgState(Lcom/easemob/chat/EMMessage;)V

    return-void
.end method

.method static synthetic access$2(Lcom/easemob/chat/EMMessageHandler;Lcom/easemob/chat/EMMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMMessageHandler;->updateMsgBody(Lcom/easemob/chat/EMMessage;)V

    return-void
.end method

.method public static getInstance()Lcom/easemob/chat/EMMessageHandler;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMMessageHandler;->me:Lcom/easemob/chat/EMMessageHandler;

    return-object v0
.end method

.method private updateMsgBody(Lcom/easemob/chat/EMMessage;)V
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

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method private updateMsgState(Lcom/easemob/chat/EMMessage;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method


# virtual methods
.method public ackMessageRead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    invoke-static {p2}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v2, Lcom/easemob/chat/core/a;

    const-string v3, "acked"

    invoke-direct {v2, v3}, Lcom/easemob/chat/core/a;-><init>(Ljava/lang/String;)V

    const-string v3, "id"

    invoke-virtual {v2, v3, p3}, Lcom/easemob/chat/core/a;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    invoke-virtual {v0, p3}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    sget-object v2, Lcom/easemob/chat/EMMessageHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send ack msg to:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->normal:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/easemob/chat/core/i;->e(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public asyncFetchMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 9

    const/4 v7, -0x1

    iget-object v4, p1, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    check-cast v4, Lcom/easemob/chat/FileMessageBody;

    iget-object v2, v4, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    iget-object v1, v4, Lcom/easemob/chat/FileMessageBody;->remoteUrl:Ljava/lang/String;

    iget-object v3, v4, Lcom/easemob/chat/FileMessageBody;->fileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v4, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    const-string v1, "remoteUrl is null or empty"

    invoke-interface {v0, v7, v1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v5, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v5, :cond_3

    move-object v0, v4

    check-cast v0, Lcom/easemob/chat/ImageMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/ImageMessageBody;->thumbnailUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    move-object v0, v4

    check-cast v0, Lcom/easemob/chat/ImageMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/ImageMessageBody;->thumbnailUrl:Ljava/lang/String;

    move-object v6, v0

    :goto_1
    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->INPROGRESS:Lcom/easemob/chat/EMMessage$Status;

    iput-object v0, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "th"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/"

    invoke-virtual {v6, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/util/PathUtil;->getImagePath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "th"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_2
    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v0, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMMessageHandler;->updateMsgState(Lcom/easemob/chat/EMMessage;)V

    iget-object v0, v4, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, v4, Lcom/easemob/chat/FileMessageBody;->downloadCallback:Lcom/easemob/EMCallBack;

    const-string v1, "fileName is null or empty"

    invoke-interface {v0, v7, v1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v5, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    if-eq v0, v5, :cond_f

    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v5, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v5, :cond_f

    move-object v0, v4

    check-cast v0, Lcom/easemob/chat/VideoMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/VideoMessageBody;->thumbnailUrl:Ljava/lang/String;

    move-object v6, v0

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v1, :cond_5

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

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

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v4

    check-cast v0, Lcom/easemob/chat/VideoMessageBody;

    iput-object v2, v0, Lcom/easemob/chat/VideoMessageBody;->localThumb:Ljava/lang/String;

    move-object v0, v4

    check-cast v0, Lcom/easemob/chat/VideoMessageBody;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easemob/util/PathUtil;->getVideoPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".mp4"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/easemob/chat/VideoMessageBody;->localUrl:Ljava/lang/String;

    move-object v0, v1

    goto/16 :goto_2

    :cond_5
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v1, :cond_6

    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/util/PathUtil;->getVoicePath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    goto/16 :goto_2

    :cond_6
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->FILE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v1, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/util/PathUtil;->getFilePath()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    move-object v0, v3

    goto/16 :goto_2

    :cond_7
    move-object v0, v3

    goto/16 :goto_2

    :cond_8
    sget-object v0, Lcom/easemob/chat/EMMessageHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "localUrl:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " remoteurl:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v1, :cond_d

    move-object v0, v4

    check-cast v0, Lcom/easemob/chat/ImageMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/ImageMessageBody;->thumbnailSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, v4, Lcom/easemob/chat/FileMessageBody;->secret:Ljava/lang/String;

    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "share-secret"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_3
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-eq v0, v1, :cond_b

    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v1, :cond_c

    :cond_b
    const-string v0, "thumbnail"

    const-string v1, "true"

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v8

    new-instance v0, Lcom/easemob/chat/EMMessageHandler$2;

    move-object v1, p0

    move-object v3, p1

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/easemob/chat/EMMessageHandler$2;-><init>(Lcom/easemob/chat/EMMessageHandler;Ljava/lang/String;Lcom/easemob/chat/EMMessage;Lcom/easemob/chat/FileMessageBody;Ljava/lang/String;)V

    invoke-virtual {v8, v6, v2, v7, v0}, Lcom/easemob/cloud/EMHttpClient;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v1, :cond_e

    move-object v0, v4

    check-cast v0, Lcom/easemob/chat/VideoMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/VideoMessageBody;->thumbnailSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "share-secret"

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_e
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v1, :cond_a

    iget-object v0, v4, Lcom/easemob/chat/FileMessageBody;->secret:Ljava/lang/String;

    if-eqz v0, :cond_a

    const-string v0, "share-secret"

    iget-object v1, v4, Lcom/easemob/chat/FileMessageBody;->secret:Ljava/lang/String;

    invoke-interface {v7, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_f
    move-object v6, v1

    goto/16 :goto_1
.end method

.method onConnected()V
    .locals 0

    invoke-static {}, Lcom/easemob/chat/EMSendMessageRunnable;->notifySendMsgLocks()V

    invoke-static {}, Lcom/easemob/chat/EMSendMessageRunnable;->flushPendingQueue()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-static {}, Lcom/easemob/chat/EMSendMessageRunnable;->onDestroy()V

    return-void
.end method

.method public onInit()V
    .locals 3

    invoke-static {}, Lcom/easemob/chat/EMSendMessageRunnable;->onInit()V

    new-instance v0, Lorg/jivesoftware/smack/filter/MessageTypeFilter;

    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Type;->error:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/MessageTypeFilter;-><init>(Lorg/jivesoftware/smack/packet/Message$Type;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMMessageHandler;->errorMsgLlistener:Lorg/jivesoftware/smack/PacketListener;

    invoke-virtual {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    return-void
.end method

.method public sendGroupMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {p1, v0}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    :cond_1
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    if-nez v0, :cond_2

    invoke-static {}, Lcom/easemob/chat/EMMessageUtils;->getUniqueMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    :cond_2
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->CMD:Lcom/easemob/chat/EMMessage$Type;

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMConversationManager;->saveMessage(Lcom/easemob/chat/EMMessage;)V

    :cond_3
    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->INPROGRESS:Lcom/easemob/chat/EMMessage$Status;

    iput-object v0, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMSessionManager;->currentUser:Lcom/easemob/chat/EMContact;

    iput-object v0, p1, Lcom/easemob/chat/EMMessage;->from:Lcom/easemob/chat/EMContact;

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v1

    sget-object v2, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/easemob/chat/EMMessageHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start send group message:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lcom/easemob/chat/EMSendMessageRunnable;

    invoke-direct {v1, v0, p1, p2}, Lcom/easemob/chat/EMSendMessageRunnable;-><init>(Ljava/lang/String;Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V

    iget-object v0, p0, Lcom/easemob/chat/EMMessageHandler;->sendThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    sget-object v1, Lcom/easemob/chat/EMMessageHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start send chat room message:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "status"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v4}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v2

    iget-object v3, p1, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p2, :cond_4

    const/4 v1, -0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lcom/easemob/chat/EMMessageUtils;->asyncCallback(Lcom/easemob/EMCallBack;ILjava/lang/String;)V

    goto :goto_1
.end method

.method public sendMessage(Lorg/jivesoftware/smack/Chat;Lcom/easemob/chat/EMMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/easemob/chat/EMMessageHandler;->sendMessage(Lorg/jivesoftware/smack/Chat;Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V

    return-void
.end method

.method public sendMessage(Lorg/jivesoftware/smack/Chat;Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
    .locals 5

    invoke-static {p2}, Lcom/easemob/chat/EMMessageUtils;->checkMessageError(Lcom/easemob/chat/EMMessage;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, p2, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "status"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v4}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v2

    iget-object v3, p2, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    if-eqz p3, :cond_0

    const-string v1, "send message error"

    invoke-static {p3, v0, v1}, Lcom/easemob/chat/EMMessageUtils;->asyncCallback(Lcom/easemob/EMCallBack;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/easemob/chat/EMMessageHandler;->sendGroupMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-object v0, p2, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    if-nez v0, :cond_3

    invoke-static {}, Lcom/easemob/chat/EMMessageUtils;->getUniqueMessageId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    :cond_3
    invoke-virtual {p2}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->CMD:Lcom/easemob/chat/EMMessage$Type;

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/easemob/chat/EMConversationManager;->saveMessage(Lcom/easemob/chat/EMMessage;)V

    :cond_4
    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->INPROGRESS:Lcom/easemob/chat/EMMessage$Status;

    iput-object v0, p2, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMSessionManager;->currentUser:Lcom/easemob/chat/EMContact;

    iput-object v0, p2, Lcom/easemob/chat/EMMessage;->from:Lcom/easemob/chat/EMContact;

    new-instance v0, Lcom/easemob/chat/EMSendMessageRunnable;

    invoke-direct {v0, p1, p2, p3}, Lcom/easemob/chat/EMSendMessageRunnable;-><init>(Lorg/jivesoftware/smack/Chat;Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V

    iget-object v1, p0, Lcom/easemob/chat/EMMessageHandler;->sendThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, p2, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "status"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p2, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v4}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v2

    iget-object v3, p2, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p3, :cond_0

    const/4 v1, -0x2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v1, v0}, Lcom/easemob/chat/EMMessageUtils;->asyncCallback(Lcom/easemob/EMCallBack;ILjava/lang/String;)V

    goto :goto_0
.end method
