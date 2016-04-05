.class Lcom/easemob/chat/EMMessageListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# static fields
.field private static final INTERNAL_ACTION_PREFIX:Ljava/lang/String; = "em_"

.field protected static final RECENT_QUEUE_SIZE:I = 0x14

.field private static final TAG:Ljava/lang/String; = "chat"


# instance fields
.field protected chatManager:Lcom/easemob/chat/EMChatManager;

.field protected previousBody:Ljava/lang/String;

.field protected previousFrom:Ljava/lang/String;

.field protected previousTime:J

.field protected recentMsgIdQueue:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected recvThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Lcom/easemob/chat/EMChatManager;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/easemob/chat/EMMessageListener;->previousFrom:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/easemob/chat/EMMessageListener;->previousBody:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/easemob/chat/EMMessageListener;->previousTime:J

    iput-object v2, p0, Lcom/easemob/chat/EMMessageListener;->chatManager:Lcom/easemob/chat/EMChatManager;

    iput-object v2, p0, Lcom/easemob/chat/EMMessageListener;->recvThreadPool:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcom/easemob/chat/EMMessageListener;->chatManager:Lcom/easemob/chat/EMChatManager;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMMessageListener;->recvThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/easemob/chat/EMMessageListener;->recentMsgIdQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method

.method protected static ackMessage(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 5

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "urn:xmpp:receipts"

    invoke-virtual {p0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setPacketID(Ljava/lang/String;)V

    sget-object v2, Lcom/easemob/chat/EMChatConfig;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    new-instance v2, Lcom/easemob/chat/core/a;

    const-string v3, "received"

    invoke-direct {v2, v3}, Lcom/easemob/chat/core/a;-><init>(Ljava/lang/String;)V

    const-string v3, "id"

    invoke-virtual {v2, v3, v0}, Lcom/easemob/chat/core/a;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    const-string v2, "chat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send ack message back to server:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatOptions;->getRequireDeliveryAck()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v1}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->setFrom(Ljava/lang/String;)V

    new-instance v2, Lcom/easemob/chat/core/a;

    const-string v3, "delivery"

    invoke-direct {v2, v3}, Lcom/easemob/chat/core/a;-><init>(Ljava/lang/String;)V

    const-string v3, "id"

    invoke-virtual {v2, v3, v0}, Lcom/easemob/chat/core/a;->setValue(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    const-string v2, "chat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send delivered ack msg to:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->normal:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/easemob/chat/core/i;->g(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method private handleCmdMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getBody()Lcom/easemob/chat/MessageBody;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/CmdMessageBody;

    iget-object v0, v0, Lcom/easemob/chat/CmdMessageBody;->action:Ljava/lang/String;

    const-string v1, "em_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/easemob/chat/EMMessageListener;->isAdvanceDebugMessage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/easemob/chat/core/c$a;->valueOf(Ljava/lang/String;)Lcom/easemob/chat/core/c$a;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/core/c;->a()Lcom/easemob/chat/core/c;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/easemob/chat/core/c;->a(Lcom/easemob/chat/EMMessage;Lcom/easemob/chat/core/c$a;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/easemob/chat/EMMessageListener;->handleNormalCmdMessage(Lcom/easemob/chat/EMMessage;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/easemob/chat/EMMessageListener;->handleNormalCmdMessage(Lcom/easemob/chat/EMMessage;)V

    goto :goto_0
.end method

.method private handleNormalCmdMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    iget-boolean v0, v0, Lcom/easemob/chat/EMChat;->appInited:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatManager;->notifyCmdMsg(Lcom/easemob/chat/EMMessage;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatManager;->onNewOfflineCmdMessage(Lcom/easemob/chat/EMMessage;)V

    goto :goto_0
.end method

.method private isAdvanceDebugMessage(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "em_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/easemob/chat/core/c$a;->valueOf(Ljava/lang/String;)Lcom/easemob/chat/core/c$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method clear()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMessageListener;->recentMsgIdQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->clear()V

    return-void
.end method

.method getRoomType(Lorg/jivesoftware/smack/packet/Packet;)Lcom/easemob/chat/core/x$a;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMMessageListener;->getRoomTypeExtension(Lorg/jivesoftware/smack/packet/Packet;)Lcom/easemob/chat/core/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/easemob/chat/core/x;->a()Lcom/easemob/chat/core/x$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getRoomTypeExtension(Lorg/jivesoftware/smack/packet/Packet;)Lcom/easemob/chat/core/x;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "roomtype"

    const-string v2, "easemob:x:roomtype"

    invoke-virtual {p1, v0, v2}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/core/x;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method protected isDuplicateMsg(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMMessageListener;->getRoomTypeExtension(Lorg/jivesoftware/smack/packet/Packet;)Lcom/easemob/chat/core/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/easemob/chat/core/x;->a()Lcom/easemob/chat/core/x$a;

    move-result-object v0

    sget-object v3, Lcom/easemob/chat/core/x$a;->a:Lcom/easemob/chat/core/x$a;

    if-ne v0, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/easemob/chat/EMMessageListener;->previousFrom:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/easemob/chat/EMMessageListener;->previousBody:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/easemob/chat/EMMessageListener;->previousTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-gez v0, :cond_5

    const-string v0, "chat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ignore duplicate msg with same from and body:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/easemob/chat/EMMessageListener;->previousFrom:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/easemob/chat/EMMessageListener;->previousFrom:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/easemob/chat/EMMessageListener;->previousBody:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/easemob/chat/EMMessageListener;->previousTime:J

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMMessageListener;->recentMsgIdQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/easemob/chat/EMMessageListener;->recentMsgIdQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMMessageListener;->recentMsgIdQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/easemob/chat/EMMessageListener;->recentMsgIdQueue:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "chat"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ignore duplicate msg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method protected processEMMessage(Lcom/easemob/chat/EMMessage;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/easemob/util/DateUtils;->getTimestampStr()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    :cond_1
    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->CMD:Lcom/easemob/chat/EMMessage$Type;

    if-ne v2, v3, :cond_2

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMMessageListener;->handleCmdMessage(Lcom/easemob/chat/EMMessage;)V

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    instance-of v2, v2, Lcom/easemob/chat/FileMessageBody;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v2

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->FILE:Lcom/easemob/chat/EMMessage$Type;

    if-eq v2, v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMMessageListener;->setLocalUrl(Lcom/easemob/chat/EMMessage;)V

    const-string v2, "isencrypted"

    invoke-virtual {p1, v2, v0}, Lcom/easemob/chat/EMMessage;->getBooleanAttribute(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v2, Lcom/easemob/chat/EMReceiveMessageThread;

    invoke-direct {v2, p1, v0}, Lcom/easemob/chat/EMReceiveMessageThread;-><init>(Lcom/easemob/chat/EMMessage;Z)V

    iget-object v0, p0, Lcom/easemob/chat/EMMessageListener;->recvThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :goto_1
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatManager;->saveMessage(Lcom/easemob/chat/EMMessage;)V

    iget-boolean v0, p1, Lcom/easemob/chat/EMMessage;->offline:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/easemob/chat/EMMessageListener;->chatManager:Lcom/easemob/chat/EMChatManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatManager;->onNewOfflineMessage(Lcom/easemob/chat/EMMessage;)V

    :goto_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v0

    sget-object v2, Lcom/easemob/chat/EMMessage$Type;->FILE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v0, v2, :cond_4

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMMessageListener;->setLocalUrl(Lcom/easemob/chat/EMMessage;)V

    :cond_4
    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->SUCCESS:Lcom/easemob/chat/EMMessage$Status;

    iput-object v0, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/easemob/chat/EMMessageListener;->chatManager:Lcom/easemob/chat/EMChatManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatManager;->notifyMessage(Lcom/easemob/chat/EMMessage;)V

    goto :goto_2
.end method

.method protected processMessage(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/easemob/chat/EMMessageListener;->ackMessage(Lorg/jivesoftware/smack/packet/Message;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMMessageListener;->isDuplicateMsg(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "chat"

    const-string v2, "ignore duplicate msg"

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chat"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chat listener receive msg from:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " body:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    if-eq v1, v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/easemob/chat/MessageEncoder;->parseXmppMsg(Lorg/jivesoftware/smack/packet/Message;)Lcom/easemob/chat/EMMessage;

    move-result-object v1

    const-string v2, "encrypt"

    const-string v3, "jabber:client"

    invoke-virtual {p1, v2, v3}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v2, "isencrypted"

    invoke-virtual {v1, v2, v0}, Lcom/easemob/chat/EMMessage;->setAttribute(Ljava/lang/String;Z)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/easemob/chat/EMMessageListener;->processEMMessage(Lcom/easemob/chat/EMMessage;)Z

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Message;

    if-nez v0, :cond_0

    const-string v0, "chat"

    const-string v1, "packet is not message, skip"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    check-cast p1, Lorg/jivesoftware/smack/packet/Message;

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMMessageListener;->processMessage(Lorg/jivesoftware/smack/packet/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setLocalUrl(Lcom/easemob/chat/EMMessage;)V
    .locals 4

    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    check-cast v0, Lcom/easemob/chat/FileMessageBody;

    iget-object v1, v0, Lcom/easemob/chat/FileMessageBody;->remoteUrl:Ljava/lang/String;

    iget-object v2, v0, Lcom/easemob/chat/FileMessageBody;->remoteUrl:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/util/PathUtil;->getImagePath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatOptions;->getAudioFileWithExt()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/util/PathUtil;->getVoicePath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/util/PathUtil;->getVoicePath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".amr"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    if-ne v2, v3, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/util/PathUtil;->getVideoPath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    goto/16 :goto_0

    :cond_3
    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->FILE:Lcom/easemob/chat/EMMessage$Type;

    if-ne v2, v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/util/PathUtil;->getFilePath()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/easemob/chat/FileMessageBody;->fileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/easemob/util/PathUtil;->getInstance()Lcom/easemob/util/PathUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/util/PathUtil;->getVideoPath()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    goto/16 :goto_0
.end method
