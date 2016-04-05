.class Lcom/easemob/chat/EMChatManager$XmppConnectionListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/core/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XmppConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatManager;


# direct methods
.method private constructor <init>(Lcom/easemob/chat/EMChatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/chat/EMChatManager$XmppConnectionListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;-><init>(Lcom/easemob/chat/EMChatManager;)V

    return-void
.end method

.method static synthetic access$1(Lcom/easemob/chat/EMChatManager$XmppConnectionListener;)Lcom/easemob/chat/EMChatManager;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    return-object v0
.end method


# virtual methods
.method public connectionClosed()V
    .locals 2

    const-string v0, "EMChatManager"

    const-string v1, "closing connection"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$3(Lcom/easemob/chat/EMChatManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$1;

    invoke-direct {v1, p0}, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$1;-><init>(Lcom/easemob/chat/EMChatManager$XmppConnectionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->threadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$5(Lcom/easemob/chat/EMChatManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$2;

    invoke-direct {v1, p0}, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$2;-><init>(Lcom/easemob/chat/EMChatManager$XmppConnectionListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public connectionClosedOnError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "EMChatManager"

    const-string v1, "connectionClosedOnError"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$3(Lcom/easemob/chat/EMChatManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$3;

    invoke-direct {v1, p0, p1}, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$3;-><init>(Lcom/easemob/chat/EMChatManager$XmppConnectionListener;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->threadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$5(Lcom/easemob/chat/EMChatManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$4;

    invoke-direct {v1, p0, p1}, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$4;-><init>(Lcom/easemob/chat/EMChatManager$XmppConnectionListener;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onConnecting()V
    .locals 2

    const-string v0, "EMChatManager"

    const-string v1, "onConnecting..."

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onConnectionSuccessful()V
    .locals 3

    const-string v0, "EMChatManager"

    const-string v1, "onConnectionSuccessful"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #calls: Lcom/easemob/chat/EMChatManager;->notifyMessageHandlerConnectionConnected()V
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$7(Lcom/easemob/chat/EMChatManager;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->scheduleNextHeartBeat()V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->scheduleNextAlarm()V

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;
    invoke-static {v2}, Lcom/easemob/chat/EMChatManager;->access$8(Lcom/easemob/chat/EMChatManager;)Lcom/easemob/chat/core/EMConnectionManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/easemob/chat/EMContactManager;->init(Landroid/content/Context;Lcom/easemob/chat/core/EMConnectionManager;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$8(Lcom/easemob/chat/EMChatManager;)Lcom/easemob/chat/core/EMConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->getLastLoginUser()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;
    invoke-static {v1}, Lcom/easemob/chat/EMChatManager;->access$8(Lcom/easemob/chat/EMChatManager;)Lcom/easemob/chat/core/EMConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/EMConnectionManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/easemob/chat/core/p;->e(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMSessionManager;->setLastLoginUser(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;
    invoke-static {v1}, Lcom/easemob/chat/EMChatManager;->access$8(Lcom/easemob/chat/EMChatManager;)Lcom/easemob/chat/core/EMConnectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/EMConnectionManager;->getCurrentPwd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMSessionManager;->setLastLoginPwd(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$3(Lcom/easemob/chat/EMChatManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$7;

    invoke-direct {v1, p0}, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$7;-><init>(Lcom/easemob/chat/EMChatManager$XmppConnectionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->threadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$5(Lcom/easemob/chat/EMChatManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$8;

    invoke-direct {v1, p0}, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$8;-><init>(Lcom/easemob/chat/EMChatManager$XmppConnectionListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public reconnectingIn(I)V
    .locals 3

    const-string v0, "EMChatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reconnectingIn in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reconnectionFailed(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "EMChatManager"

    const-string v1, "reconnectionFailed"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$3(Lcom/easemob/chat/EMChatManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$5;

    invoke-direct {v1, p0, p1}, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$5;-><init>(Lcom/easemob/chat/EMChatManager$XmppConnectionListener;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->threadPool:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$5(Lcom/easemob/chat/EMChatManager;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$6;

    invoke-direct {v1, p0, p1}, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$6;-><init>(Lcom/easemob/chat/EMChatManager$XmppConnectionListener;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public reconnectionSuccessful()V
    .locals 2

    const-string v0, "EMChatManager"

    const-string v1, "reconnectionSuccessful"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->scheduleNextHeartBeat()V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->scheduleNextAlarm()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->onReconnectionSuccessful()V

    return-void
.end method
