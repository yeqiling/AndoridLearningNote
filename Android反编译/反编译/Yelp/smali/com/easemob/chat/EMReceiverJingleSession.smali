.class Lcom/easemob/chat/EMReceiverJingleSession;
.super Lcom/easemob/chat/EMVoiceCallSession;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private acceptedContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/ContentPacketExtension;",
            ">;"
        }
    .end annotation
.end field

.field private acceptedContentJsonStr:Ljava/lang/String;

.field private callee:Lcom/easemob/media/EIce;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/easemob/chat/EMReceiverJingleSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/EMReceiverJingleSession;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/easemob/chat/EMSessionHandler;Ljava/lang/String;Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/easemob/chat/EMVoiceCallSession;-><init>(Lcom/easemob/chat/EMSessionHandler;Ljava/lang/String;Lorg/jivesoftware/smack/XMPPConnection;)V

    iput-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->acceptedContent:Ljava/util/List;

    iput-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->acceptedContentJsonStr:Ljava/lang/String;

    sget-object v0, Lcom/easemob/chat/EMCallDirection;->INCOMING:Lcom/easemob/chat/EMCallDirection;

    iput-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->callDirection:Lcom/easemob/chat/EMCallDirection;

    return-void
.end method

.method private acceptCallFrom(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private acceptContent(Z)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easemob/chat/EMReceiverJingleSession$1;

    invoke-direct {v1, p0, p1}, Lcom/easemob/chat/EMReceiverJingleSession$1;-><init>(Lcom/easemob/chat/EMReceiverJingleSession;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic access$0(Lcom/easemob/chat/EMReceiverJingleSession;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMReceiverJingleSession;->acceptedContentJsonStr:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1(Lcom/easemob/chat/EMReceiverJingleSession;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMReceiverJingleSession;->acceptedContent:Ljava/util/List;

    return-void
.end method

.method static synthetic access$10(Lcom/easemob/chat/EMReceiverJingleSession;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method static synthetic access$11(Lcom/easemob/chat/EMReceiverJingleSession;Lcom/xonami/javaBells/DefaultJingleSession$SessionState;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMReceiverJingleSession;->state:Lcom/xonami/javaBells/DefaultJingleSession$SessionState;

    return-void
.end method

.method static synthetic access$2(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->acceptedContent:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMReceiverJingleSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->acceptedContentJsonStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/easemob/chat/EMReceiverJingleSession;Lcom/easemob/media/EIce;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMReceiverJingleSession;->callee:Lcom/easemob/media/EIce;

    return-void
.end method

.method static synthetic access$6(Lcom/easemob/chat/EMReceiverJingleSession;)Lcom/easemob/media/EIce;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->callee:Lcom/easemob/media/EIce;

    return-object v0
.end method

.method static synthetic access$7(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->myJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->peerJid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->sessionId:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method acceptSessionInitiate()V
    .locals 4

    sget-object v0, Lcom/easemob/chat/EMReceiverJingleSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "accept an incoming session initiate request : from peer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession;->peerJid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " session id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->jingleIQ:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;

    invoke-virtual {v0}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->getContentList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    new-instance v1, Lcom/easemob/chat/EMJingleStreamManager;

    sget-object v2, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/ContentPacketExtension$CreatorEnum;->initiator:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/ContentPacketExtension$CreatorEnum;

    invoke-direct {v1, v2}, Lcom/easemob/chat/EMJingleStreamManager;-><init>(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/ContentPacketExtension$CreatorEnum;)V

    iput-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession;->jingleStreamManager:Lcom/easemob/chat/EMJingleStreamManager;

    :goto_1
    :try_start_0
    invoke-direct {p0, v0}, Lcom/easemob/chat/EMReceiverJingleSession;->acceptContent(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/ContentPacketExtension;

    const-string v3, "name"

    invoke-virtual {v0, v3}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/ContentPacketExtension;->getAttributeAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/easemob/chat/EMVoiceCallManager$CallType;->video:Lcom/easemob/chat/EMVoiceCallManager$CallType;

    invoke-virtual {v3}, Lcom/easemob/chat/EMVoiceCallManager$CallType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/easemob/chat/EMJingleStreamManager;

    sget-object v2, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/ContentPacketExtension$CreatorEnum;->initiator:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/ContentPacketExtension$CreatorEnum;

    sget-object v3, Lcom/easemob/chat/EMVoiceCallManager$CallType;->video:Lcom/easemob/chat/EMVoiceCallManager$CallType;

    invoke-direct {v1, v2, v3}, Lcom/easemob/chat/EMJingleStreamManager;-><init>(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/ContentPacketExtension$CreatorEnum;Lcom/easemob/chat/EMVoiceCallManager$CallType;)V

    iput-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession;->jingleStreamManager:Lcom/easemob/chat/EMJingleStreamManager;

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/easemob/chat/EMReceiverJingleSession;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public answerCall()V
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMReceiverJingleSession;->TAG:Ljava/lang/String;

    const-string v1, "start answer call"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->callState:Lcom/easemob/chat/EMCallStateChangeListener$CallState;

    sget-object v1, Lcom/easemob/chat/EMCallStateChangeListener$CallState;->CONNECTED:Lcom/easemob/chat/EMCallStateChangeListener$CallState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->callState:Lcom/easemob/chat/EMCallStateChangeListener$CallState;

    sget-object v1, Lcom/easemob/chat/EMCallStateChangeListener$CallState;->ACCEPTED:Lcom/easemob/chat/EMCallStateChangeListener$CallState;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/easemob/chat/EMReceiverJingleSession;->TAG:Ljava/lang/String;

    const-string v1, "Accepting incomig call!"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->myJid:Ljava/lang/String;

    iget-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession;->peerJid:Ljava/lang/String;

    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession;->sessionId:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JinglePacketFactory;->createCallAccept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/easemob/chat/EMReceiverJingleSession;->getCallStatistic(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->setStatistic(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->jingleStreamManager:Lcom/easemob/chat/EMJingleStreamManager;

    iget-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession;->streamParams:Lcom/easemob/chat/EMStreamParams;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMJingleStreamManager;->startStream(Lcom/easemob/chat/EMStreamParams;)V

    sget-object v0, Lcom/easemob/chat/EMCallStateChangeListener$CallState;->CONNECTED:Lcom/easemob/chat/EMCallStateChangeListener$CallState;

    sget-object v1, Lcom/easemob/chat/EMCallStateChangeListener$CallError;->ERROR_NONE:Lcom/easemob/chat/EMCallStateChangeListener$CallError;

    invoke-virtual {p0, v0, v1}, Lcom/easemob/chat/EMReceiverJingleSession;->changeState(Lcom/easemob/chat/EMCallStateChangeListener$CallState;Lcom/easemob/chat/EMCallStateChangeListener$CallError;)V

    sget-object v0, Lcom/easemob/chat/EMCallStateChangeListener$CallState;->ACCEPTED:Lcom/easemob/chat/EMCallStateChangeListener$CallState;

    sget-object v1, Lcom/easemob/chat/EMCallStateChangeListener$CallError;->ERROR_NONE:Lcom/easemob/chat/EMCallStateChangeListener$CallError;

    invoke-virtual {p0, v0, v1}, Lcom/easemob/chat/EMReceiverJingleSession;->changeState(Lcom/easemob/chat/EMCallStateChangeListener$CallState;Lcom/easemob/chat/EMCallStateChangeListener$CallError;)V

    goto :goto_0
.end method

.method protected closeSession(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/Reason;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/easemob/chat/EMVoiceCallSession;->closeSession(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/Reason;)V

    return-void
.end method

.method protected declared-synchronized freeIce()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->callee:Lcom/easemob/media/EIce;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/easemob/chat/EMReceiverJingleSession;->TAG:Ljava/lang/String;

    const-string v1, "callee free ice"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->callee:Lcom/easemob/media/EIce;

    invoke-virtual {v0}, Lcom/easemob/media/EIce;->freeCall()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->callee:Lcom/easemob/media/EIce;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/easemob/chat/EMReceiverJingleSession;->TAG:Ljava/lang/String;

    const-string v1, "callee is null when free ice"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public handleCallerRelay(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;)V
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMReceiverJingleSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleCallerRelay : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->getReason()Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/ReasonPacketExtension;

    move-result-object v2

    invoke-virtual {v2}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/ReasonPacketExtension;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/easemob/chat/EMReceiverJingleSession;->jingleIQ:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->jingleIQ:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMReceiverJingleSession;->ack(Lorg/jivesoftware/smack/packet/IQ;)V

    return-void
.end method

.method public handleSessionAccept(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;)V
    .locals 0

    return-void
.end method

.method public handleSessionInitiate(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;)V
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMReceiverJingleSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call from : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is ringing!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/easemob/chat/EMReceiverJingleSession;->jingleIQ:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->jingleIQ:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMReceiverJingleSession;->ack(Lorg/jivesoftware/smack/packet/IQ;)V

    invoke-virtual {p1}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->getFrom()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->peerJid:Ljava/lang/String;

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/easemob/chat/EMVoiceCallManager;->onJingleInitiateAction(Lcom/easemob/chat/EMVoiceCallSession;)V

    return-void
.end method

.method public handleSessionTerminate(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;)V
    .locals 2

    sget-object v0, Lcom/easemob/chat/EMCallStateChangeListener$CallState;->DISCONNNECTED:Lcom/easemob/chat/EMCallStateChangeListener$CallState;

    iput-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession;->callState:Lcom/easemob/chat/EMCallStateChangeListener$CallState;

    invoke-virtual {p0}, Lcom/easemob/chat/EMReceiverJingleSession;->freeIce()V

    invoke-super {p0, p1}, Lcom/easemob/chat/EMVoiceCallSession;->handleSessionTerminate(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;)V

    sget-object v0, Lcom/easemob/chat/EMCallStateChangeListener$CallState;->DISCONNNECTED:Lcom/easemob/chat/EMCallStateChangeListener$CallState;

    sget-object v1, Lcom/easemob/chat/EMCallStateChangeListener$CallError;->ERROR_NONE:Lcom/easemob/chat/EMCallStateChangeListener$CallError;

    invoke-virtual {p0, v0, v1}, Lcom/easemob/chat/EMReceiverJingleSession;->changeState(Lcom/easemob/chat/EMCallStateChangeListener$CallState;Lcom/easemob/chat/EMCallStateChangeListener$CallError;)V

    return-void
.end method

.method public onConnectionConnected()V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/easemob/chat/EMVoiceCallManager;->onCallRinging(Lcom/easemob/chat/EMVoiceCallSession;)V

    return-void
.end method

.method public rejectCall()V
    .locals 2

    sget-object v0, Lcom/easemob/chat/EMReceiverJingleSession;->TAG:Ljava/lang/String;

    const-string v1, "Rejecting call!"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/Reason;->DECLINE:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/Reason;

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMReceiverJingleSession;->closeSession(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/Reason;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/easemob/chat/EMCallStateChangeListener$CallState;->DISCONNNECTED:Lcom/easemob/chat/EMCallStateChangeListener$CallState;

    sget-object v1, Lcom/easemob/chat/EMCallStateChangeListener$CallError;->ERROR_NONE:Lcom/easemob/chat/EMCallStateChangeListener$CallError;

    invoke-virtual {p0, v0, v1}, Lcom/easemob/chat/EMReceiverJingleSession;->changeState(Lcom/easemob/chat/EMCallStateChangeListener$CallState;Lcom/easemob/chat/EMCallStateChangeListener$CallError;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/easemob/chat/EMReceiverJingleSession;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method rejectSessionInitiate()V
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMReceiverJingleSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "try to reject an incoming session initiate IQ request : from peer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession;->peerJid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " session id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession;->sessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/easemob/chat/EMReceiverJingleSession;->onBusy()V

    return-void
.end method
