.class Lcom/easemob/chat/EMSendMessageRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static synthetic $SWITCH_TABLE$com$easemob$chat$EMMessage$Type:[I = null

.field private static final PERF:Ljava/lang/String; = "perf"

.field private static final TAG:Ljava/lang/String; = "sender"

.field private static final WAIT_SEND_TIME_OUT:I = 0x3c

.field private static final WAIT_TIME_OUT:I = 0x28

.field static errorMsgWaitLocks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static lastForceReconnectTime:J

.field private static pendingMsgQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/easemob/chat/EMSendMessageRunnable;",
            ">;"
        }
    .end annotation
.end field

.field static sendLocks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static sendMsgLocks:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sendThreadPool:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private callback:Lcom/easemob/EMCallBack;

.field private chat:Lorg/jivesoftware/smack/Chat;

.field private connectedBeforeSend:Z

.field private errorWaitLock:Ljava/lang/Object;

.field private groupId:Ljava/lang/String;

.field private msg:Lcom/easemob/chat/EMMessage;

.field private muc:Lorg/jivesoftware/smackx/muc/MultiUserChat;

.field private mutex:Ljava/lang/Object;

.field private numberOfRetried:I

.field private sendMutex:Ljava/lang/Object;

.field timeTag:Lcom/easemob/analytics/EMTimeTag;


# direct methods
.method static synthetic $SWITCH_TABLE$com$easemob$chat$EMMessage$Type()[I
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->$SWITCH_TABLE$com$easemob$chat$EMMessage$Type:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMMessage$Type;->values()[Lcom/easemob/chat/EMMessage$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->CMD:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_6

    :goto_1
    :try_start_1
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->FILE:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_5

    :goto_2
    :try_start_2
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->IMAGE:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_4

    :goto_3
    :try_start_3
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->LOCATION:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_4
    :try_start_4
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->TXT:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_2

    :goto_5
    :try_start_5
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->VIDEO:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1

    :goto_6
    :try_start_6
    sget-object v1, Lcom/easemob/chat/EMMessage$Type;->VOICE:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_0

    :goto_7
    sput-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->$SWITCH_TABLE$com$easemob$chat$EMMessage$Type:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_7

    :catch_1
    move-exception v1

    goto :goto_6

    :catch_2
    move-exception v1

    goto :goto_5

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v1

    goto :goto_2

    :catch_6
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->errorMsgWaitLocks:Ljava/util/Hashtable;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/easemob/chat/EMSendMessageRunnable;->lastForceReconnectTime:J

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->pendingMsgQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->mutex:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->errorWaitLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->sendMutex:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->connectedBeforeSend:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->numberOfRetried:I

    new-instance v0, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v0}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->timeTag:Lcom/easemob/analytics/EMTimeTag;

    iput-object p1, p0, Lcom/easemob/chat/EMSendMessageRunnable;->groupId:Ljava/lang/String;

    iput-object p2, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    iput-object p3, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/Chat;Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->mutex:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->errorWaitLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->sendMutex:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->connectedBeforeSend:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->numberOfRetried:I

    new-instance v0, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v0}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->timeTag:Lcom/easemob/analytics/EMTimeTag;

    iput-object p1, p0, Lcom/easemob/chat/EMSendMessageRunnable;->chat:Lorg/jivesoftware/smack/Chat;

    iput-object p2, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    iput-object p3, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smackx/muc/MultiUserChat;Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->mutex:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->errorWaitLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->sendMutex:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->connectedBeforeSend:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->numberOfRetried:I

    new-instance v0, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v0}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->timeTag:Lcom/easemob/analytics/EMTimeTag;

    iput-object p1, p0, Lcom/easemob/chat/EMSendMessageRunnable;->muc:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iput-object p2, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    iput-object p3, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    return-void
.end method

.method static synthetic access$1(Lcom/easemob/chat/EMSendMessageRunnable;Lcom/easemob/chat/EMMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMSendMessageRunnable;->updateMsgState(Lcom/easemob/chat/EMMessage;)V

    return-void
.end method

.method static synthetic access$2(Lcom/easemob/chat/EMSendMessageRunnable;Ljava/io/File;Lcom/easemob/chat/EMMessage;)Ljava/util/Map;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/easemob/chat/EMSendMessageRunnable;->uploadEncryptedThumbnailImage(Ljava/io/File;Lcom/easemob/chat/EMMessage;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3(Lcom/easemob/chat/EMSendMessageRunnable;Lcom/easemob/chat/EMMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMSendMessageRunnable;->sendMessageXmpp(Lcom/easemob/chat/EMMessage;)V

    return-void
.end method

.method static addErrorMsgWaitLock(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->errorMsgWaitLocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static declared-synchronized addSendLock(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    const-class v1, Lcom/easemob/chat/EMSendMessageRunnable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendLocks:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendLocks:Ljava/util/Hashtable;

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendLocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private checkConnection()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->checkConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable;->sendMutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable;->sendMutex:Ljava/lang/Object;

    invoke-virtual {p0, v0, v2}, Lcom/easemob/chat/EMSendMessageRunnable;->addSendMsgLock(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->sendMutex:Ljava/lang/Object;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    const-string v0, "sender"

    const-string v2, "wait send message time out"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method static declared-synchronized flushPendingQueue()V
    .locals 5

    const-class v1, Lcom/easemob/chat/EMSendMessageRunnable;

    monitor-enter v1

    :try_start_0
    const-string v0, "sender"

    const-string v2, "start flush Pending Queue"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->pendingMsgQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMSendMessageRunnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string v2, "sender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "resend msg : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    invoke-virtual {v4}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/easemob/chat/EMSendMessageRunnable;->sendThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->pendingMsgQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMSendMessageRunnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getThumbnailImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "th"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "msg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "original image path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "msg"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "thum image path:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static notifyErrorMsgWaitLock(Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->errorMsgWaitLocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-enter v1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    const/4 v0, 0x1

    :goto_0
    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static declared-synchronized notifySendLock(Ljava/lang/String;)V
    .locals 3

    const-class v1, Lcom/easemob/chat/EMSendMessageRunnable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendLocks:Ljava/util/Hashtable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendLocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static declared-synchronized notifySendMsgLocks()V
    .locals 3

    const-class v1, Lcom/easemob/chat/EMSendMessageRunnable;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendMsgLocks:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendMsgLocks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendMsgLocks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendMsgLocks:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_2
    :try_start_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method static onDestroy()V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->pendingMsgQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMSendMessageRunnable;

    :goto_0
    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v1, v0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    sget-object v2, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v2, v1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    iget-object v1, v0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v1

    sget-object v2, Lcom/easemob/chat/EMMessage$Type;->CMD:Lcom/easemob/chat/EMMessage$Type;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    invoke-direct {v0, v1}, Lcom/easemob/chat/EMSendMessageRunnable;->updateMsgState(Lcom/easemob/chat/EMMessage;)V

    :cond_1
    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->pendingMsgQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMSendMessageRunnable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method static onInit()V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private sendFileMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
    .locals 13

    const/4 v1, 0x0

    iget-object v10, p1, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    check-cast v10, Lcom/easemob/chat/FileMessageBody;

    iget-object v0, v10, Lcom/easemob/chat/FileMessageBody;->localUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    const/4 v0, -0x3

    const-string v1, "file doesn\'t exist"

    invoke-interface {p2, v0, v1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatOptions;->getUseEncryption()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/chat/EMEncryptUtils;->encryptFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    const-string v1, "sender"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "start to send file:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->K()Ljava/lang/String;

    move-result-object v9

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    const-string v1, "restrict-access"

    const-string v2, "true"

    invoke-interface {v11, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v0, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMSendMessageRunnable;->updateMsgState(Lcom/easemob/chat/EMMessage;)V

    if-eqz p2, :cond_2

    const/4 v0, -0x2

    const-string v1, "unauthorized token is null"

    invoke-interface {p2, v0, v1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Bearer "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v12

    new-instance v1, Lcom/easemob/chat/EMSendMessageRunnable$4;

    move-object v2, p0

    move-object v3, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v10}, Lcom/easemob/chat/EMSendMessageRunnable$4;-><init>(Lcom/easemob/chat/EMSendMessageRunnable;Lcom/easemob/chat/EMMessage;JJLcom/easemob/EMCallBack;Ljava/lang/String;Lcom/easemob/chat/FileMessageBody;)V

    invoke-virtual {v12, v0, v9, v11, v1}, Lcom/easemob/cloud/EMHttpClient;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V

    goto/16 :goto_0
.end method

.method private sendImageMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
    .locals 17

    const/4 v3, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    check-cast v14, Lcom/easemob/chat/ImageMessageBody;

    iget-object v5, v14, Lcom/easemob/chat/ImageMessageBody;->localUrl:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/easemob/chat/EMSendMessageRunnable;->getThumbnailImagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    if-eqz p2, :cond_2

    const/4 v2, -0x3

    const-string v3, "file doesn\'t exist"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v14}, Lcom/easemob/chat/ImageMessageBody;->isSendOriginalImage()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5}, Lcom/easemob/util/ImageUtils;->getScaledImage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v2, "sender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "send scaled image:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v8

    const-string v5, "perf"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "original image size:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " scaled image size:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ratio:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    div-long v6, v8, v6

    long-to-int v6, v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    move v11, v2

    move-object v12, v3

    move-object v2, v4

    :goto_1
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    const-string v3, "sender"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "start to send file:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " size:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v2}, Lcom/easemob/util/ImageUtils;->getBitmapOptions(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    iget v4, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v3, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v4, v14, Lcom/easemob/chat/ImageMessageBody;->width:I

    iput v3, v14, Lcom/easemob/chat/ImageMessageBody;->height:I

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/core/p;->K()Ljava/lang/String;

    move-result-object v13

    const-string v3, "sender"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "remote file path:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatOptions;->getUseEncryption()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual/range {p1 .. p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/chat/EMEncryptUtils;->encryptFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    const-string v3, "restrict-access"

    const-string v4, "true"

    invoke-interface {v15, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatManager;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v2, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    move-object/from16 v0, p1

    iput-object v2, v0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-direct/range {p0 .. p1}, Lcom/easemob/chat/EMSendMessageRunnable;->updateMsgState(Lcom/easemob/chat/EMMessage;)V

    if-eqz p2, :cond_2

    const/4 v2, -0x2

    const-string v3, "unauthorized token is null"

    move-object/from16 v0, p2

    invoke-interface {v0, v2, v3}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "Bearer "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v15, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v16

    new-instance v3, Lcom/easemob/chat/EMSendMessageRunnable$1;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v10, p2

    invoke-direct/range {v3 .. v14}, Lcom/easemob/chat/EMSendMessageRunnable$1;-><init>(Lcom/easemob/chat/EMSendMessageRunnable;Lcom/easemob/chat/EMMessage;JJLcom/easemob/EMCallBack;ZLjava/io/File;Ljava/lang/String;Lcom/easemob/chat/ImageMessageBody;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v13, v15, v3}, Lcom/easemob/cloud/EMHttpClient;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V

    goto/16 :goto_0

    :cond_7
    move v11, v2

    move-object v12, v3

    move-object v2, v5

    goto/16 :goto_1
.end method

.method private sendMessageXmpp(Lcom/easemob/chat/EMMessage;)V
    .locals 6

    const/4 v1, -0x2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcom/easemob/chat/MessageEncoder;->getJSONMsg(Lcom/easemob/chat/EMMessage;Z)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "try to send msg to:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/easemob/chat/EMMessage;->to:Lcom/easemob/chat/EMContact;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smack/packet/Message;->setPacketID(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatOptions;->getUseEncryption()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/easemob/chat/EMEncryptUtils;->encryptMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Lcom/easemob/chat/core/k;

    invoke-direct {v4}, Lcom/easemob/chat/core/k;-><init>()V

    invoke-virtual {v2, v4}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    :cond_0
    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Message;->setBody(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatOptions;->getRequireServerAck()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/easemob/chat/EMSendMessageRunnable;->mutex:Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/easemob/chat/EMSendMessageRunnable;->addSendLock(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->isConnected()Z

    move-result v0

    iput-boolean v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->connectedBeforeSend:Z

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v4, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    if-eq v0, v4, :cond_2

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v4, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v0, v4, :cond_7

    :cond_2
    sget-object v0, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Message;->setType(Lorg/jivesoftware/smack/packet/Message$Type;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->muc:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getRoom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v4, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v0, v4, :cond_3

    new-instance v0, Lcom/easemob/chat/core/x;

    invoke-direct {v0}, Lcom/easemob/chat/core/x;-><init>()V

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    :cond_3
    const-string v0, "sender"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send message to muc:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/easemob/chat/EMSendMessageRunnable;->muc:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getRoom()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->muc:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->sendMessage(Lorg/jivesoftware/smack/packet/Message;)V

    :goto_0
    invoke-virtual {v3}, Lcom/easemob/chat/EMChatOptions;->getRequireServerAck()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "sender"

    const-string v3, "wait for server ack..."

    invoke-static {v0, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/easemob/chat/EMSendMessageRunnable;->mutex:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendLocks:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->mutex:Ljava/lang/Object;

    const-wide/32 v4, 0x9c40

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    :cond_4
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "sender"

    const-string v3, "exit from wait"

    invoke-static {v0, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendLocks:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v0, "sender"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "did not receive ack from server for msg:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/jivesoftware/smack/packet/Message;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->connectedBeforeSend:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->numberOfRetried:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->numberOfRetried:I

    iget v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->numberOfRetried:I

    if-gtz v0, :cond_9

    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v0, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v0

    sget-object v2, Lcom/easemob/chat/EMMessage$Type;->CMD:Lcom/easemob/chat/EMMessage$Type;

    if-eq v0, v2, :cond_5

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMSendMessageRunnable;->updateMsgState(Lcom/easemob/chat/EMMessage;)V

    :cond_5
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    const/4 v2, -0x2

    const-string v3, "no response from server"

    invoke-interface {v0, v2, v3}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->chat:Lorg/jivesoftware/smack/Chat;

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/Chat;->sendMessage(Lorg/jivesoftware/smack/packet/Message;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v2

    sget-object v3, Lcom/easemob/chat/EMMessage$Type;->CMD:Lcom/easemob/chat/EMMessage$Type;

    if-eq v2, v3, :cond_8

    sget-object v2, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v2, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    :cond_8
    invoke-direct {p0, p1}, Lcom/easemob/chat/EMSendMessageRunnable;->updateMsgState(Lcom/easemob/chat/EMMessage;)V

    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_9
    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->pendingMsgQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    const-string v0, "sender"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "add new msg to pending msg queue : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v2, Lcom/easemob/chat/EMSendMessageRunnable;->lastForceReconnectTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/easemob/chat/EMSendMessageRunnable;->lastForceReconnectTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7530

    cmp-long v0, v2, v4

    if-lez v0, :cond_b

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/easemob/chat/EMSendMessageRunnable;->lastForceReconnectTime:J

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->forceReconnect()V

    goto :goto_1

    :cond_b
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/easemob/chat/EMSendMessageRunnable;->flushPendingQueue()V

    goto :goto_1

    :cond_c
    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v0, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v0

    sget-object v2, Lcom/easemob/chat/EMMessage$Type;->CMD:Lcom/easemob/chat/EMMessage$Type;

    if-eq v0, v2, :cond_d

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMSendMessageRunnable;->updateMsgState(Lcom/easemob/chat/EMMessage;)V

    :cond_d
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->timeTag:Lcom/easemob/analytics/EMTimeTag;

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/easemob/analytics/EMMessageCollector;->collectSendMsgTime(JLcom/easemob/chat/EMMessage;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    const/4 v2, -0x2

    const-string v3, "no response from server"

    invoke-interface {v0, v2, v3}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable;->errorWaitLock:Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/easemob/chat/EMSendMessageRunnable;->addErrorMsgWaitLock(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable;->errorWaitLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->errorWaitLock:Ljava/lang/Object;

    const-wide/16 v4, 0x32

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->errorMsgWaitLocks:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    sget-object v2, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    if-ne v0, v2, :cond_f

    const-string v0, "sender"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "server send the msg error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getError()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->timeTag:Lcom/easemob/analytics/EMTimeTag;

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/easemob/analytics/EMMessageCollector;->collectSendMsgTime(JLcom/easemob/chat/EMMessage;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getError()I

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getError()I

    move-result v0

    :goto_2
    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    const-string v3, "send message fail"

    invoke-interface {v2, v0, v3}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0

    :cond_f
    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->SUCCESS:Lcom/easemob/chat/EMMessage$Status;

    iput-object v0, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getType()Lcom/easemob/chat/EMMessage$Type;

    move-result-object v0

    sget-object v2, Lcom/easemob/chat/EMMessage$Type;->CMD:Lcom/easemob/chat/EMMessage$Type;

    if-eq v0, v2, :cond_10

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMSendMessageRunnable;->updateMsgState(Lcom/easemob/chat/EMMessage;)V

    :cond_10
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->timeTag:Lcom/easemob/analytics/EMTimeTag;

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v2

    invoke-static {v2, v3, p1}, Lcom/easemob/analytics/EMMessageCollector;->collectSendMsgTime(JLcom/easemob/chat/EMMessage;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    invoke-interface {v0}, Lcom/easemob/EMCallBack;->onSuccess()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_1

    :cond_11
    move v0, v1

    goto :goto_2
.end method

.method private sendVideoMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
    .locals 10

    const/4 v2, -0x3

    iget-object v6, p1, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    check-cast v6, Lcom/easemob/chat/VideoMessageBody;

    iget-object v0, v6, Lcom/easemob/chat/VideoMessageBody;->localUrl:Ljava/lang/String;

    iget-object v3, v6, Lcom/easemob/chat/VideoMessageBody;->localThumb:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, "video file doesn\'t exist"

    invoke-interface {p2, v2, v0}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-eqz v3, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    if-eqz p2, :cond_1

    const-string v0, "video thumb file doesn\'t exist"

    invoke-interface {p2, v2, v0}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->K()Ljava/lang/String;

    move-result-object v2

    const-string v1, "sender"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "remote file path:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatOptions;->getUseEncryption()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/chat/EMEncryptUtils;->encryptFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :goto_1
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const-string v0, "restrict-access"

    const-string v1, "true"

    invoke-interface {v8, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v0, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMSendMessageRunnable;->updateMsgState(Lcom/easemob/chat/EMMessage;)V

    if-eqz p2, :cond_1

    const/4 v0, -0x2

    const-string v1, "unauthorized token is null"

    invoke-interface {p2, v0, v1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bearer "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v9

    new-instance v0, Lcom/easemob/chat/EMSendMessageRunnable$2;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/easemob/chat/EMSendMessageRunnable$2;-><init>(Lcom/easemob/chat/EMSendMessageRunnable;Ljava/lang/String;Ljava/lang/String;Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;Lcom/easemob/chat/VideoMessageBody;)V

    invoke-virtual {v9, v7, v2, v8, v0}, Lcom/easemob/cloud/EMHttpClient;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V

    goto/16 :goto_0

    :cond_6
    move-object v7, v0

    goto :goto_1
.end method

.method private updateMsgState(Lcom/easemob/chat/EMMessage;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v3}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method private uploadEncryptedThumbnailImage(Ljava/io/File;Lcom/easemob/chat/EMMessage;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lcom/easemob/chat/EMMessage;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0x64

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/easemob/util/ImageUtils;->getThumbnailImage(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatOptions;->getUseEncryption()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/chat/EMEncryptUtils;->encryptFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->K()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "restrict-access"

    const-string v5, "true"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easemob/chat/EMChatManager;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "Authorization"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bearer "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v5

    new-instance v6, Lcom/easemob/chat/EMSendMessageRunnable$3;

    invoke-direct {v6, p0, v1, v4}, Lcom/easemob/chat/EMSendMessageRunnable$3;-><init>(Lcom/easemob/chat/EMSendMessageRunnable;Ljava/util/Map;Ljava/lang/Object;)V

    invoke-virtual {v5, v0, v2, v3, v6}, Lcom/easemob/cloud/EMHttpClient;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V

    monitor-enter v4

    const-wide/32 v2, 0xea60

    :try_start_0
    invoke-virtual {v4, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    monitor-exit v4

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method declared-synchronized addSendMsgLock(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendMsgLocks:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendMsgLocks:Ljava/util/Hashtable;

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMSendMessageRunnable;->sendMsgLocks:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 3

    invoke-direct {p0}, Lcom/easemob/chat/EMSendMessageRunnable;->checkConnection()V

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->muc:Lorg/jivesoftware/smackx/muc/MultiUserChat;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->groupId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->groupId:Ljava/lang/String;

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/easemob/chat/EMMultiUserChatManager;->getMUCWithoutJoin(Ljava/lang/String;Lcom/easemob/chat/EMMessage$ChatType;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->muc:Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->INPROGRESS:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, v0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->timeTag:Lcom/easemob/analytics/EMTimeTag;

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->start()V

    invoke-static {}, Lcom/easemob/chat/EMSendMessageRunnable;->$SWITCH_TABLE$com$easemob$chat$EMMessage$Type()[I

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v1, v1, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1}, Lcom/easemob/chat/EMMessage$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "sender"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupport msg type, need to check:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v2, v2, Lcom/easemob/chat/EMMessage;->type:Lcom/easemob/chat/EMMessage$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    invoke-direct {p0, v0}, Lcom/easemob/chat/EMSendMessageRunnable;->sendMessageXmpp(Lcom/easemob/chat/EMMessage;)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMSendMessageRunnable;->sendImageMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMSendMessageRunnable;->sendFileMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMSendMessageRunnable;->sendFileMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/easemob/chat/EMSendMessageRunnable;->msg:Lcom/easemob/chat/EMMessage;

    iget-object v1, p0, Lcom/easemob/chat/EMSendMessageRunnable;->callback:Lcom/easemob/EMCallBack;

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMSendMessageRunnable;->sendVideoMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
