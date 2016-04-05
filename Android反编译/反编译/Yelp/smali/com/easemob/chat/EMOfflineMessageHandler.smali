.class Lcom/easemob/chat/EMOfflineMessageHandler;
.super Ljava/lang/Object;


# static fields
.field private static final OFFLINE_INTERVAL:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "EMOfflineMessageHandler"


# instance fields
.field private curOfflineMsg:Lcom/easemob/chat/EMMessage;

.field private needSend:Z

.field private notifyThread:Ljava/lang/Thread;

.field offlineCmdMessagesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation
.end field

.field offlineMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation
.end field

.field offlineMsgGrpSenders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field offlineMsgUserSenders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private preOfflineMsg:Lcom/easemob/chat/EMMessage;

.field private publishInterval:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMessages:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineCmdMessagesList:Ljava/util/List;

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->publishInterval:J

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->notifyThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->needSend:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgUserSenders:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgGrpSenders:Ljava/util/Set;

    return-void
.end method

.method static synthetic access$0(Lcom/easemob/chat/EMOfflineMessageHandler;)J
    .locals 2

    iget-wide v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->publishInterval:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/easemob/chat/EMOfflineMessageHandler;)Lcom/easemob/chat/EMMessage;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->curOfflineMsg:Lcom/easemob/chat/EMMessage;

    return-object v0
.end method

.method static synthetic access$2(Lcom/easemob/chat/EMOfflineMessageHandler;)Lcom/easemob/chat/EMMessage;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->preOfflineMsg:Lcom/easemob/chat/EMMessage;

    return-object v0
.end method

.method static synthetic access$3(Lcom/easemob/chat/EMOfflineMessageHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/EMOfflineMessageHandler;->sendOfflineBroadcast()V

    return-void
.end method

.method static synthetic access$4(Lcom/easemob/chat/EMOfflineMessageHandler;Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->notifyThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$5(Lcom/easemob/chat/EMOfflineMessageHandler;Lcom/easemob/chat/EMMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->curOfflineMsg:Lcom/easemob/chat/EMMessage;

    return-void
.end method

.method static synthetic access$6(Lcom/easemob/chat/EMOfflineMessageHandler;Lcom/easemob/chat/EMMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->preOfflineMsg:Lcom/easemob/chat/EMMessage;

    return-void
.end method

.method private declared-synchronized sendOfflineBroadcast()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgUserSenders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgGrpSenders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getOfflineMessageBroadcastAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgUserSenders:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v2, "fromuser"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EMOfflineMessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send offline message broadcast for users:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgGrpSenders:Ljava/util/Set;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v2, "fromgroup"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "EMOfflineMessageHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "send offline message broadcast for groups:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v0, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->curOfflineMsg:Lcom/easemob/chat/EMMessage;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->curOfflineMsg:Lcom/easemob/chat/EMMessage;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatManager;->broadcastMessage(Lcom/easemob/chat/EMMessage;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgUserSenders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgGrpSenders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMessages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/easemob/chat/EMNotifier;->getInstance(Landroid/content/Context;)Lcom/easemob/chat/EMNotifier;

    move-result-object v1

    sget-object v2, Lcom/easemob/EMNotifierEvent$Event;->EventOfflineMessage:Lcom/easemob/EMNotifierEvent$Event;

    invoke-virtual {v1, v2, v0}, Lcom/easemob/chat/EMNotifier;->publishEvent(Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method addOfflineCmdMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineCmdMessagesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineCmdMessagesList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method onAppReady()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->needSend:Z

    return-void
.end method

.method onNewOfflineMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMessages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iput-object p1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->curOfflineMsg:Lcom/easemob/chat/EMMessage;

    invoke-virtual {p0}, Lcom/easemob/chat/EMOfflineMessageHandler;->startOfflineThread()V

    const-string v0, "EMOfflineMessageHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " offline msg, do not send notify for msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notify"

    const-string v2, "offline group msg"

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgGrpSenders:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgGrpSenders:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgUserSenders:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgUserSenders:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method processOfflineCmdMessages()V
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineCmdMessagesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineCmdMessagesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMChatManager;->notifyCmdMsg(Lcom/easemob/chat/EMMessage;)V

    goto :goto_0
.end method

.method reset()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->curOfflineMsg:Lcom/easemob/chat/EMMessage;

    iput-object v1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->preOfflineMsg:Lcom/easemob/chat/EMMessage;

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->notifyThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->notifyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgUserSenders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMsgGrpSenders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iput-object v1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->notifyThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineMessages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->offlineCmdMessagesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method setPublishInterval(J)V
    .locals 1

    iput-wide p1, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->publishInterval:J

    return-void
.end method

.method declared-synchronized startOfflineThread()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->notifyThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->notifyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lcom/easemob/chat/EMOfflineMessageHandler$1;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMOfflineMessageHandler$1;-><init>(Lcom/easemob/chat/EMOfflineMessageHandler;)V

    iput-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->notifyThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->notifyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method stop()V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/EMOfflineMessageHandler;->sendOfflineBroadcast()V

    invoke-virtual {p0}, Lcom/easemob/chat/EMOfflineMessageHandler;->stopOfflineThread()V

    return-void
.end method

.method stopOfflineThread()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->notifyThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMOfflineMessageHandler;->notifyThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-void
.end method
