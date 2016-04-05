.class Lcom/easemob/chat/EMRecvAckListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "acklistener"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onDeliveryAckReceived(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/i;->c(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-boolean v3, v0, Lcom/easemob/chat/EMMessage;->isDelivered:Z

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/easemob/chat/core/i;->g(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/easemob/chat/EMChatManager;->notifyDeliveryAckMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private onReadAckReceived(Lorg/jivesoftware/smack/packet/Message;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/i;->c(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-boolean v3, v0, Lcom/easemob/chat/EMMessage;->isAcked:Z

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Lcom/easemob/chat/core/i;->e(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/easemob/chat/EMChatManager;->notifiyReadAckMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized processClientAckMessage(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    const-string v2, "urn:xmpp:receipts"

    invoke-virtual {p1, v2}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Lorg/jivesoftware/smack/packet/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "acked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getRequireAck()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "acklistener"

    const-string v2, "msg read ack is not enabled. skip ack msg received"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v0, "acklistener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "received message read ack for msg id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMRecvAckListener;->onReadAckReceived(Lorg/jivesoftware/smack/packet/Message;)V

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v3, "delivery"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getRequireDeliveryAck()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "acklistener"

    const-string v2, "msg delivery ack is not enabled. skip ack msg received"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_4
    const-string v0, "acklistener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "received message delivered ack for msg id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMRecvAckListener;->onDeliveryAckReceived(Lorg/jivesoftware/smack/packet/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 5

    check-cast p1, Lorg/jivesoftware/smack/packet/Message;

    const-string v0, "acklistener"

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/easemob/chat/EMMessageListener;->ackMessage(Lorg/jivesoftware/smack/packet/Message;)V

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMRecvAckListener;->processClientAckMessage(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "urn:xmpp:receipts"

    invoke-virtual {p1, v0}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/jivesoftware/smack/packet/PacketExtension;->getElementName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "received"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/easemob/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v2, v0, Lcom/easemob/chat/core/a;

    if-eqz v2, :cond_2

    check-cast v0, Lcom/easemob/chat/core/a;

    invoke-virtual {v0}, Lcom/easemob/chat/core/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "acklistener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " found returned global server msg id : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/easemob/chat/EMChatManager;->replaceMessageId(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "acklistener"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "received server ack for msg:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/easemob/chat/EMSendMessageRunnable;->notifySendLock(Ljava/lang/String;)V

    goto :goto_0
.end method
