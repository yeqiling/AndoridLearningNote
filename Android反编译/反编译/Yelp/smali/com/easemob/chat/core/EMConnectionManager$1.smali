.class Lcom/easemob/chat/core/EMConnectionManager$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/core/EMConnectionManager;
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

    iput-object p1, p0, Lcom/easemob/chat/core/EMConnectionManager$1;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/easemob/chat/core/EMConnectionManager$1;)Lcom/easemob/chat/core/EMConnectionManager;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$1;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/easemob/chat/core/EMConnectionManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "skip no connectivity action"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/easemob/chat/core/EMConnectionManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "connectivity receiver onReceiver"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/easemob/util/NetUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$1;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$1(Lcom/easemob/chat/core/EMConnectionManager;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$1;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$1(Lcom/easemob/chat/core/EMConnectionManager;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$1;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/easemob/chat/core/EMConnectionManager$1$1;

    invoke-direct {v0, p0}, Lcom/easemob/chat/core/EMConnectionManager$1$1;-><init>(Lcom/easemob/chat/core/EMConnectionManager$1;)V

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager$1$1;->start()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/easemob/util/NetUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/easemob/chat/core/EMConnectionManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "in connectivity broadcast, skip since no data connection"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$1;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$1;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #calls: Lcom/easemob/chat/core/EMConnectionManager;->resetAttempts()V
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$3(Lcom/easemob/chat/core/EMConnectionManager;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$1;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$1(Lcom/easemob/chat/core/EMConnectionManager;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$1;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$1(Lcom/easemob/chat/core/EMConnectionManager;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Lcom/easemob/chat/core/EMConnectionManager$1$2;

    invoke-direct {v0, p0}, Lcom/easemob/chat/core/EMConnectionManager$1$2;-><init>(Lcom/easemob/chat/core/EMConnectionManager$1;)V

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager$1$2;->start()V

    goto :goto_0
.end method
