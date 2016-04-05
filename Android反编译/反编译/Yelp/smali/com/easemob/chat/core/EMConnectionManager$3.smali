.class Lcom/easemob/chat/core/EMConnectionManager$3;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/core/EMConnectionManager;->startReconnectionThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/core/EMConnectionManager;


# direct methods
.method constructor <init>(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/EMConnectionManager$3;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/easemob/chat/core/EMConnectionManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "run in reconnectionThread"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/easemob/chat/core/EMConnectionManager$3;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$3;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$3;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    iget-boolean v0, v0, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$3;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    iget-boolean v0, v0, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/easemob/chat/core/EMConnectionManager;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "run in reconnectionThread with connection "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/core/EMConnectionManager$3;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v2}, Lcom/easemob/chat/core/EMConnectionManager;->access$5(Lcom/easemob/chat/core/EMConnectionManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$3;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$10(Lcom/easemob/chat/core/EMConnectionManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/util/NetUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$3;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->reconnectSync()V
    :try_end_1
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$3;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #calls: Lcom/easemob/chat/core/EMConnectionManager;->timeDelay()I
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$11(Lcom/easemob/chat/core/EMConnectionManager;)I

    move-result v0

    :goto_2
    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager$3;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v1}, Lcom/easemob/chat/core/EMConnectionManager;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager$3;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    iget-boolean v1, v1, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-static {v2, v3}, Lcom/easemob/chat/core/EMConnectionManager$3;->sleep(J)V

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager$3;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->connectionListener:Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;
    invoke-static {v1}, Lcom/easemob/chat/core/EMConnectionManager;->access$12(Lcom/easemob/chat/core/EMConnectionManager;)Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;->reconnectingIn(I)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$3;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    iget-boolean v0, v0, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_3
    :try_start_3
    invoke-static {}, Lcom/easemob/chat/core/EMConnectionManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skip the reconnection since there is no data connection!"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lcom/easemob/exceptions/EaseMobException;->printStackTrace()V

    goto :goto_1
.end method
