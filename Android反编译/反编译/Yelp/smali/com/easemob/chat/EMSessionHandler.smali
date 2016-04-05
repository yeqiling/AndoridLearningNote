.class Lcom/easemob/chat/EMSessionHandler;
.super Lcom/xonami/javaBells/JinglePacketHandler;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected activeSession:Lcom/easemob/chat/EMVoiceCallSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/easemob/chat/EMSessionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/EMSessionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/xonami/javaBells/JinglePacketHandler;-><init>(Lorg/jivesoftware/smack/XMPPConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMSessionHandler;->activeSession:Lcom/easemob/chat/EMVoiceCallSession;

    return-void
.end method


# virtual methods
.method getActiveSession()Lcom/easemob/chat/EMVoiceCallSession;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMSessionHandler;->activeSession:Lcom/easemob/chat/EMVoiceCallSession;

    return-object v0
.end method

.method protected isGeneralJiq(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;)Z
    .locals 2

    invoke-virtual {p1}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->getAction()Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    move-result-object v0

    sget-object v1, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;->CONTENT_ADD:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;->CONTENT_MODIFY:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;->CONTENT_ACCEPT:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;->CONTENT_REJECT:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;->CONTENT_REMOVE:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;->DESCRIPTION_INFO:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;->SECURITY_INFO:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;->SESSION_INFO:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    if-eq v0, v1, :cond_0

    sget-object v1, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;->SESSION_TERMINATE:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected jiqAccepted(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;

    invoke-virtual {v0}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v1

    sget-object v2, Lorg/jivesoftware/smack/packet/IQ$Type;->ERROR:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/easemob/chat/EMSessionHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error is received with error code = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/packet/XMPPError;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/XMPPError;->getCode()I

    move-result v0

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMSessionHandler;->activeSession:Lcom/easemob/chat/EMVoiceCallSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMSessionHandler;->activeSession:Lcom/easemob/chat/EMVoiceCallSession;

    sget-object v1, Lcom/easemob/chat/EMCallStateChangeListener$CallState;->DISCONNNECTED:Lcom/easemob/chat/EMCallStateChangeListener$CallState;

    sget-object v2, Lcom/easemob/chat/EMCallStateChangeListener$CallError;->ERROR_INAVAILABLE:Lcom/easemob/chat/EMCallStateChangeListener$CallError;

    invoke-virtual {v0, v1, v2}, Lcom/easemob/chat/EMVoiceCallSession;->changeState(Lcom/easemob/chat/EMCallStateChangeListener$CallState;Lcom/easemob/chat/EMCallStateChangeListener$CallError;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSessionHandler;->activeSession:Lcom/easemob/chat/EMVoiceCallSession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMVoiceCallSession;->closeSession(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/Reason;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMSessionHandler;->isGeneralJiq(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Lcom/xonami/javaBells/JinglePacketHandler;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/easemob/chat/EMSessionHandler;->jingleSessions:Ljava/util/HashMap;

    invoke-virtual {v0}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->getSID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xonami/javaBells/JingleSession;

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMSessionHandler;->jiqAccepted(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->getAction()Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    move-result-object v2

    sget-object v3, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;->CALL_ACCEPT:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_0

    check-cast v1, Lcom/easemob/chat/EMVoiceCallSession;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMVoiceCallSession;->handleCallAccept(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->getAction()Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    move-result-object v2

    sget-object v3, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;->CALLER_RELAY:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleAction;

    if-ne v2, v3, :cond_4

    if-eqz v1, :cond_0

    check-cast v1, Lcom/easemob/chat/EMVoiceCallSession;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMVoiceCallSession;->handleCallerRelay(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;)V

    goto :goto_0

    :cond_4
    invoke-super {p0, p1}, Lcom/xonami/javaBells/JinglePacketHandler;->processPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method

.method setActiveSession(Lcom/easemob/chat/EMVoiceCallSession;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMSessionHandler;->activeSession:Lcom/easemob/chat/EMVoiceCallSession;

    return-void
.end method
