.class Lcom/easemob/chat/EMMessageUtils;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/easemob/chat/EMMessageUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/EMMessageUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static asyncCallback(Lcom/easemob/EMCallBack;ILjava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/easemob/chat/EMMessageUtils$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/easemob/chat/EMMessageUtils$1;-><init>(Lcom/easemob/EMCallBack;ILjava/lang/String;)V

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessageUtils$1;->start()V

    goto :goto_0
.end method

.method static checkMessageError(Lcom/easemob/chat/EMMessage;)I
    .locals 10

    const-wide/16 v8, 0x0

    const/16 v2, -0x3f3

    const/16 v1, -0x3f4

    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v0

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->FILE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/NormalFileMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/NormalFileMessageBody;->localUrl:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v2, Lcom/easemob/chat/EMMessageUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file doesn\'t exists:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_9

    sget-object v1, Lcom/easemob/chat/EMMessageUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "file size is 0:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v0

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/ImageMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/ImageMessageBody;->localUrl:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v2, Lcom/easemob/chat/EMMessageUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "image doesn\'t exists:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_9

    sget-object v1, Lcom/easemob/chat/EMMessageUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "image size is 0:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v0

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/VoiceMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/VoiceMessageBody;->localUrl:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    sget-object v2, Lcom/easemob/chat/EMMessageUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "voice file doesn\'t exists:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_9

    sget-object v1, Lcom/easemob/chat/EMMessageUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "voice file size is 0:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v0

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v3, :cond_9

    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/VideoMessageBody;

    iget-object v3, v0, Lcom/easemob/chat/VideoMessageBody;->localUrl:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/VideoMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/VideoMessageBody;->localThumb:Ljava/lang/String;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v0, Lcom/easemob/chat/EMMessageUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "video file doesn\'t exists:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v4, v6, v8

    if-nez v4, :cond_7

    sget-object v0, Lcom/easemob/chat/EMMessageUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "video file size is 0:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v2, Lcom/easemob/chat/EMMessageUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "video thumb image doesn\'t exists:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_9

    sget-object v1, Lcom/easemob/chat/EMMessageUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "video thum image size is 0:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method static getUniqueMessageId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/jivesoftware/smack/packet/Packet;->nextID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
