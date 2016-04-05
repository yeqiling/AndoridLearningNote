.class Lcom/easemob/chat/EMSessionManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMSessionManager;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMSessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMSessionManager$1;->this$0:Lcom/easemob/chat/EMSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "Session"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "has network connection:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMSessionManager$1;->this$0:Lcom/easemob/chat/EMSessionManager;

    #getter for: Lcom/easemob/chat/EMSessionManager;->appContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/easemob/chat/EMSessionManager;->access$0(Lcom/easemob/chat/EMSessionManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easemob/util/NetUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has data conn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMSessionManager$1;->this$0:Lcom/easemob/chat/EMSessionManager;

    #getter for: Lcom/easemob/chat/EMSessionManager;->appContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/easemob/chat/EMSessionManager;->access$0(Lcom/easemob/chat/EMSessionManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/easemob/util/NetUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isConnected to easemob server:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSessionManager$1;->this$0:Lcom/easemob/chat/EMSessionManager;

    #getter for: Lcom/easemob/chat/EMSessionManager;->connectionManager:Lcom/easemob/chat/core/EMConnectionManager;
    invoke-static {v0}, Lcom/easemob/chat/EMSessionManager;->access$1(Lcom/easemob/chat/EMSessionManager;)Lcom/easemob/chat/core/EMConnectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMSessionManager$1;->this$0:Lcom/easemob/chat/EMSessionManager;

    #getter for: Lcom/easemob/chat/EMSessionManager;->connectionManager:Lcom/easemob/chat/core/EMConnectionManager;
    invoke-static {v0}, Lcom/easemob/chat/EMSessionManager;->access$1(Lcom/easemob/chat/EMSessionManager;)Lcom/easemob/chat/core/EMConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMSessionManager$1;->this$0:Lcom/easemob/chat/EMSessionManager;

    #getter for: Lcom/easemob/chat/EMSessionManager;->connectionManager:Lcom/easemob/chat/core/EMConnectionManager;
    invoke-static {v0}, Lcom/easemob/chat/EMSessionManager;->access$1(Lcom/easemob/chat/EMSessionManager;)Lcom/easemob/chat/core/EMConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string v0, "Session"

    const-string v1, "send heartbeat"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSessionManager$1;->this$0:Lcom/easemob/chat/EMSessionManager;

    #getter for: Lcom/easemob/chat/EMSessionManager;->connectionManager:Lcom/easemob/chat/core/EMConnectionManager;
    invoke-static {v0}, Lcom/easemob/chat/EMSessionManager;->access$1(Lcom/easemob/chat/EMSessionManager;)Lcom/easemob/chat/core/EMConnectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMSessionManager;->pingPacket:Lcom/easemob/chat/core/ac;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/easemob/b/a;->d()V

    iget-object v0, p0, Lcom/easemob/chat/EMSessionManager$1;->this$0:Lcom/easemob/chat/EMSessionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->scheduleNextHeartBeat()V

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Session"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Session"

    const-string v1, "....no connection to server"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, p0, Lcom/easemob/chat/EMSessionManager$1;->this$0:Lcom/easemob/chat/EMSessionManager;

    #getter for: Lcom/easemob/chat/EMSessionManager;->appContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/easemob/chat/EMSessionManager;->access$0(Lcom/easemob/chat/EMSessionManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/util/NetUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Session"

    const-string v1, "... try to reconnect"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
