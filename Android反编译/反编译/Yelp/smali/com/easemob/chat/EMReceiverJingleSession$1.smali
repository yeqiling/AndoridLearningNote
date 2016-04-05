.class Lcom/easemob/chat/EMReceiverJingleSession$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMReceiverJingleSession;->acceptContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMReceiverJingleSession;

.field private final synthetic val$isVideoCall:Z


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMReceiverJingleSession;Z)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    iput-boolean p2, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->val$isVideoCall:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    iget-object v2, v2, Lcom/easemob/chat/EMReceiverJingleSession;->jingleIQ:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;

    invoke-virtual {v2}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->getSdpJsonString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    iget-object v2, v2, Lcom/easemob/chat/EMReceiverJingleSession;->jingleIQ:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;

    invoke-virtual {v2}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->getSdpJsonString()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/easemob/chat/EMReceiverJingleSession;->acceptedContentJsonStr:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/easemob/chat/EMReceiverJingleSession;->access$0(Lcom/easemob/chat/EMReceiverJingleSession;Ljava/lang/String;)V

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/easemob/chat/EMReceiverJingleSession;->access$3()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Accepting incomig jingle call!"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->val$isVideoCall:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/easemob/chat/EMVoiceCallManager$CallType;->video:Lcom/easemob/chat/EMVoiceCallManager$CallType;

    :goto_1
    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v0, v4, v5, v6}, Lcom/easemob/chat/EMVoiceCallManager;->getCallConfig(Lcom/easemob/chat/EMVoiceCallManager$CallType;ZLjava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMReceiverJingleSession;->buildCallConfig(Ljava/lang/String;)Lcom/easemob/chat/EMVoiceCallSession;

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    iget-object v2, v2, Lcom/easemob/chat/EMReceiverJingleSession;->callConfig:Ljava/lang/String;

    iget-object v3, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->acceptedContentJsonStr:Ljava/lang/String;
    invoke-static {v3}, Lcom/easemob/chat/EMReceiverJingleSession;->access$4(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/media/EIce;->newCallee(Ljava/lang/String;Ljava/lang/String;)Lcom/easemob/media/EIce;

    move-result-object v2

    #setter for: Lcom/easemob/chat/EMReceiverJingleSession;->callee:Lcom/easemob/media/EIce;
    invoke-static {v0, v2}, Lcom/easemob/chat/EMReceiverJingleSession;->access$5(Lcom/easemob/chat/EMReceiverJingleSession;Lcom/easemob/media/EIce;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->callee:Lcom/easemob/media/EIce;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiverJingleSession;->access$6(Lcom/easemob/chat/EMReceiverJingleSession;)Lcom/easemob/media/EIce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/media/EIce;->getLocalContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->myJid:Ljava/lang/String;
    invoke-static {v1}, Lcom/easemob/chat/EMReceiverJingleSession;->access$7(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->peerJid:Ljava/lang/String;
    invoke-static {v2}, Lcom/easemob/chat/EMReceiverJingleSession;->access$8(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->sessionId:Ljava/lang/String;
    invoke-static {v3}, Lcom/easemob/chat/EMReceiverJingleSession;->access$9(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JinglePacketFactory;->createSessionAccept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;

    move-result-object v0

    :goto_2
    iget-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMReceiverJingleSession;->getCallStatistic(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->setStatistic(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->connection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lcom/easemob/chat/EMReceiverJingleSession;->access$10(Lcom/easemob/chat/EMReceiverJingleSession;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    sget-object v1, Lcom/xonami/javaBells/DefaultJingleSession$SessionState;->NEGOTIATING_TRANSPORT:Lcom/xonami/javaBells/DefaultJingleSession$SessionState;

    #setter for: Lcom/easemob/chat/EMReceiverJingleSession;->state:Lcom/xonami/javaBells/DefaultJingleSession$SessionState;
    invoke-static {v0, v1}, Lcom/easemob/chat/EMReceiverJingleSession;->access$11(Lcom/easemob/chat/EMReceiverJingleSession;Lcom/xonami/javaBells/DefaultJingleSession$SessionState;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->callee:Lcom/easemob/media/EIce;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiverJingleSession;->access$6(Lcom/easemob/chat/EMReceiverJingleSession;)Lcom/easemob/media/EIce;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easemob/media/EIce;->calleeNego(Lcom/easemob/media/EIce$EIceListener;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    sget-object v1, Lcom/easemob/chat/EMCallStateChangeListener$CallState;->CONNECTING:Lcom/easemob/chat/EMCallStateChangeListener$CallState;

    sget-object v2, Lcom/easemob/chat/EMCallStateChangeListener$CallError;->ERROR_NONE:Lcom/easemob/chat/EMCallStateChangeListener$CallError;

    invoke-virtual {v0, v1, v2}, Lcom/easemob/chat/EMReceiverJingleSession;->changeState(Lcom/easemob/chat/EMCallStateChangeListener$CallState;Lcom/easemob/chat/EMCallStateChangeListener$CallError;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->callee:Lcom/easemob/media/EIce;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiverJingleSession;->access$6(Lcom/easemob/chat/EMReceiverJingleSession;)Lcom/easemob/media/EIce;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/media/EIce;->waitforNegoResult()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    invoke-virtual {v1}, Lcom/easemob/chat/EMReceiverJingleSession;->freeIce()V

    iget-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMReceiverJingleSession;->handleNegoResult(Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    iget-object v2, v2, Lcom/easemob/chat/EMReceiverJingleSession;->jingleIQ:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;

    invoke-virtual {v2}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;->getContentList()Ljava/util/List;

    move-result-object v2

    #setter for: Lcom/easemob/chat/EMReceiverJingleSession;->acceptedContent:Ljava/util/List;
    invoke-static {v0, v2}, Lcom/easemob/chat/EMReceiverJingleSession;->access$1(Lcom/easemob/chat/EMReceiverJingleSession;Ljava/util/List;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    iget-object v3, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->acceptedContent:Ljava/util/List;
    invoke-static {v3}, Lcom/easemob/chat/EMReceiverJingleSession;->access$2(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/easemob/chat/EMReceiverJingleSession;->contentListToJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/easemob/chat/EMReceiverJingleSession;->acceptedContentJsonStr:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/easemob/chat/EMReceiverJingleSession;->access$0(Lcom/easemob/chat/EMReceiverJingleSession;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Lcom/easemob/chat/EMReceiverJingleSession;->access$3()Ljava/lang/String;

    move-result-object v0

    const-string v1, "An error occured. Rejecting call!"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->myJid:Ljava/lang/String;
    invoke-static {v0}, Lcom/easemob/chat/EMReceiverJingleSession;->access$7(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->peerJid:Ljava/lang/String;
    invoke-static {v1}, Lcom/easemob/chat/EMReceiverJingleSession;->access$8(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->sessionId:Ljava/lang/String;
    invoke-static {v2}, Lcom/easemob/chat/EMReceiverJingleSession;->access$9(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JinglePacketFactory;->createCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->connection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lcom/easemob/chat/EMReceiverJingleSession;->access$10(Lcom/easemob/chat/EMReceiverJingleSession;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    sget-object v1, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/Reason;->FAILED_APPLICATION:Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/Reason;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMReceiverJingleSession;->closeSession(Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/Reason;)V

    iget-object v0, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    sget-object v1, Lcom/easemob/chat/EMCallStateChangeListener$CallState;->DISCONNNECTED:Lcom/easemob/chat/EMCallStateChangeListener$CallState;

    sget-object v2, Lcom/easemob/chat/EMCallStateChangeListener$CallError;->ERROR_TRANSPORT:Lcom/easemob/chat/EMCallStateChangeListener$CallError;

    invoke-virtual {v0, v1, v2}, Lcom/easemob/chat/EMReceiverJingleSession;->changeState(Lcom/easemob/chat/EMCallStateChangeListener$CallState;Lcom/easemob/chat/EMCallStateChangeListener$CallError;)V

    goto :goto_3

    :cond_1
    :try_start_1
    sget-object v0, Lcom/easemob/chat/EMVoiceCallManager$CallType;->audio:Lcom/easemob/chat/EMVoiceCallManager$CallType;

    goto/16 :goto_1

    :cond_2
    iget-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    iget-object v1, v1, Lcom/easemob/chat/EMReceiverJingleSession;->jingleStreamManager:Lcom/easemob/chat/EMJingleStreamManager;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMJingleStreamManager;->createcontentList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->myJid:Ljava/lang/String;
    invoke-static {v1}, Lcom/easemob/chat/EMReceiverJingleSession;->access$7(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->peerJid:Ljava/lang/String;
    invoke-static {v2}, Lcom/easemob/chat/EMReceiverJingleSession;->access$8(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easemob/chat/EMReceiverJingleSession$1;->this$0:Lcom/easemob/chat/EMReceiverJingleSession;

    #getter for: Lcom/easemob/chat/EMReceiverJingleSession;->sessionId:Ljava/lang/String;
    invoke-static {v3}, Lcom/easemob/chat/EMReceiverJingleSession;->access$9(Lcom/easemob/chat/EMReceiverJingleSession;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JinglePacketFactory;->createSessionAccept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Iterable;)Lnet/java/sip/communicator/impl/protocol/jabber/extensions/jingle/JingleIQ;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_2
.end method
