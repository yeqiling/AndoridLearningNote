.class Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/core/EMConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XmppConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/core/EMConnectionManager;


# direct methods
.method private constructor <init>(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/easemob/chat/core/EMConnectionManager;Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;-><init>(Lcom/easemob/chat/core/EMConnectionManager;)V

    return-void
.end method


# virtual methods
.method public connectionClosed()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/core/EMConnectionManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connectionClosed"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #calls: Lcom/easemob/chat/core/EMConnectionManager;->onDisconnected()V
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$6(Lcom/easemob/chat/core/EMConnectionManager;)V

    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 3

    invoke-static {}, Lcom/easemob/chat/core/EMConnectionManager;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connectionClosedOnError in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "conflict"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/easemob/chat/core/EMConnectionManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connection closed caused by conflict. set autoreconnect to false"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #calls: Lcom/easemob/chat/core/EMConnectionManager;->onDisconnected()V
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$6(Lcom/easemob/chat/core/EMConnectionManager;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->chatConnectionListener:Lcom/easemob/chat/core/q;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$8(Lcom/easemob/chat/core/EMConnectionManager;)Lcom/easemob/chat/core/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->chatConnectionListener:Lcom/easemob/chat/core/q;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$8(Lcom/easemob/chat/core/EMConnectionManager;)Lcom/easemob/chat/core/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/easemob/chat/core/q;->connectionClosedOnError(Ljava/lang/Exception;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #calls: Lcom/easemob/chat/core/EMConnectionManager;->registerConnectivityReceiver()V
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$7(Lcom/easemob/chat/core/EMConnectionManager;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #calls: Lcom/easemob/chat/core/EMConnectionManager;->startReconnectionThread()V
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$4(Lcom/easemob/chat/core/EMConnectionManager;)V

    goto :goto_0
.end method

.method public reconnectingIn(I)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->chatConnectionListener:Lcom/easemob/chat/core/q;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$8(Lcom/easemob/chat/core/EMConnectionManager;)Lcom/easemob/chat/core/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->chatConnectionListener:Lcom/easemob/chat/core/q;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$8(Lcom/easemob/chat/core/EMConnectionManager;)Lcom/easemob/chat/core/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/easemob/chat/core/q;->reconnectingIn(I)V

    :cond_0
    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 3

    invoke-static {}, Lcom/easemob/chat/core/EMConnectionManager;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "xmpp con mgr reconnectionFailed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #calls: Lcom/easemob/chat/core/EMConnectionManager;->onDisconnected()V
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$6(Lcom/easemob/chat/core/EMConnectionManager;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->chatConnectionListener:Lcom/easemob/chat/core/q;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$8(Lcom/easemob/chat/core/EMConnectionManager;)Lcom/easemob/chat/core/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->chatConnectionListener:Lcom/easemob/chat/core/q;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$8(Lcom/easemob/chat/core/EMConnectionManager;)Lcom/easemob/chat/core/q;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/easemob/chat/core/q;->reconnectionFailed(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/core/EMConnectionManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "reconnectionSuccessful"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #calls: Lcom/easemob/chat/core/EMConnectionManager;->sendVersionIQ()V
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$9(Lcom/easemob/chat/core/EMConnectionManager;)V

    invoke-static {}, Lcom/easemob/chat/core/EMConnectionManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "send available presence after reconnected"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lcom/easemob/chat/core/EMConnectionManager;->access$5(Lcom/easemob/chat/core/EMConnectionManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->chatConnectionListener:Lcom/easemob/chat/core/q;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$8(Lcom/easemob/chat/core/EMConnectionManager;)Lcom/easemob/chat/core/q;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->chatConnectionListener:Lcom/easemob/chat/core/q;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$8(Lcom/easemob/chat/core/EMConnectionManager;)Lcom/easemob/chat/core/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/easemob/chat/core/q;->reconnectionSuccessful()V

    :cond_0
    return-void
.end method
