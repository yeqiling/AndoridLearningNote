.class Lcom/easemob/chat/EMOfflineMessageHandler$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMOfflineMessageHandler;->startOfflineThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMOfflineMessageHandler;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMOfflineMessageHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    const-string v0, "EMOfflineMessageHandler"

    const-string v1, "start offline notify thread..."

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    #getter for: Lcom/easemob/chat/EMOfflineMessageHandler;->publishInterval:J
    invoke-static {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$0(Lcom/easemob/chat/EMOfflineMessageHandler;)J

    move-result-wide v0

    div-long/2addr v0, v2

    :cond_0
    :goto_0
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Lcom/easemob/chat/EMOfflineMessageHandler$1;->sleep(J)V

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    #getter for: Lcom/easemob/chat/EMOfflineMessageHandler;->publishInterval:J
    invoke-static {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$0(Lcom/easemob/chat/EMOfflineMessageHandler;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-object v2, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    #getter for: Lcom/easemob/chat/EMOfflineMessageHandler;->curOfflineMsg:Lcom/easemob/chat/EMMessage;
    invoke-static {v2}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$1(Lcom/easemob/chat/EMOfflineMessageHandler;)Lcom/easemob/chat/EMMessage;

    move-result-object v2

    iget-object v3, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    #getter for: Lcom/easemob/chat/EMOfflineMessageHandler;->preOfflineMsg:Lcom/easemob/chat/EMMessage;
    invoke-static {v3}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$2(Lcom/easemob/chat/EMOfflineMessageHandler;)Lcom/easemob/chat/EMMessage;

    move-result-object v3

    if-ne v2, v3, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    #getter for: Lcom/easemob/chat/EMOfflineMessageHandler;->curOfflineMsg:Lcom/easemob/chat/EMMessage;
    invoke-static {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$1(Lcom/easemob/chat/EMOfflineMessageHandler;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    #calls: Lcom/easemob/chat/EMOfflineMessageHandler;->sendOfflineBroadcast()V
    invoke-static {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$3(Lcom/easemob/chat/EMOfflineMessageHandler;)V

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    const/4 v1, 0x0

    #setter for: Lcom/easemob/chat/EMOfflineMessageHandler;->notifyThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$4(Lcom/easemob/chat/EMOfflineMessageHandler;Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    const/4 v1, 0x0

    #setter for: Lcom/easemob/chat/EMOfflineMessageHandler;->curOfflineMsg:Lcom/easemob/chat/EMMessage;
    invoke-static {v0, v1}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$5(Lcom/easemob/chat/EMOfflineMessageHandler;Lcom/easemob/chat/EMMessage;)V

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    const/4 v1, 0x0

    #setter for: Lcom/easemob/chat/EMOfflineMessageHandler;->preOfflineMsg:Lcom/easemob/chat/EMMessage;
    invoke-static {v0, v1}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$6(Lcom/easemob/chat/EMOfflineMessageHandler;Lcom/easemob/chat/EMMessage;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    iget-object v3, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    #getter for: Lcom/easemob/chat/EMOfflineMessageHandler;->curOfflineMsg:Lcom/easemob/chat/EMMessage;
    invoke-static {v3}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$1(Lcom/easemob/chat/EMOfflineMessageHandler;)Lcom/easemob/chat/EMMessage;

    move-result-object v3

    #setter for: Lcom/easemob/chat/EMOfflineMessageHandler;->preOfflineMsg:Lcom/easemob/chat/EMMessage;
    invoke-static {v2, v3}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$6(Lcom/easemob/chat/EMOfflineMessageHandler;Lcom/easemob/chat/EMMessage;)V

    iget-object v2, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    #calls: Lcom/easemob/chat/EMOfflineMessageHandler;->sendOfflineBroadcast()V
    invoke-static {v2}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$3(Lcom/easemob/chat/EMOfflineMessageHandler;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    #setter for: Lcom/easemob/chat/EMOfflineMessageHandler;->notifyThread:Ljava/lang/Thread;
    invoke-static {v0, v4}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$4(Lcom/easemob/chat/EMOfflineMessageHandler;Ljava/lang/Thread;)V

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    #setter for: Lcom/easemob/chat/EMOfflineMessageHandler;->curOfflineMsg:Lcom/easemob/chat/EMMessage;
    invoke-static {v0, v4}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$5(Lcom/easemob/chat/EMOfflineMessageHandler;Lcom/easemob/chat/EMMessage;)V

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler$1;->this$0:Lcom/easemob/chat/EMOfflineMessageHandler;

    #setter for: Lcom/easemob/chat/EMOfflineMessageHandler;->preOfflineMsg:Lcom/easemob/chat/EMMessage;
    invoke-static {v0, v4}, Lcom/easemob/chat/EMOfflineMessageHandler;->access$6(Lcom/easemob/chat/EMOfflineMessageHandler;Lcom/easemob/chat/EMMessage;)V

    goto :goto_1
.end method
