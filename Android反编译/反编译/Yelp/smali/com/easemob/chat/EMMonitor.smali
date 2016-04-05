.class public Lcom/easemob/chat/EMMonitor;
.super Ljava/lang/Object;


# static fields
.field private static FILENAME:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EMMonitor"

.field private static _instance:Lcom/easemob/chat/EMMonitor;


# instance fields
.field private libraryLoaded:Z

.field private mContext:Landroid/content/Context;

.field private monitorDB:Lcom/easemob/chat/core/s;

.field private nativeServiceStarted:Z

.field private wakeuped:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/EMMonitor;->_instance:Lcom/easemob/chat/EMMonitor;

    const-string v0, "pid"

    sput-object v0, Lcom/easemob/chat/EMMonitor;->FILENAME:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/easemob/chat/EMMonitor;->libraryLoaded:Z

    iput-boolean v0, p0, Lcom/easemob/chat/EMMonitor;->nativeServiceStarted:Z

    new-instance v0, Lcom/easemob/chat/core/s;

    invoke-direct {v0}, Lcom/easemob/chat/core/s;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMMonitor;->monitorDB:Lcom/easemob/chat/core/s;

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/easemob/chat/EMMonitor;
    .locals 2

    const-class v1, Lcom/easemob/chat/EMMonitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/EMMonitor;->_instance:Lcom/easemob/chat/EMMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMMonitor;

    invoke-direct {v0}, Lcom/easemob/chat/EMMonitor;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMMonitor;->_instance:Lcom/easemob/chat/EMMonitor;

    sget-object v0, Lcom/easemob/chat/EMMonitor;->_instance:Lcom/easemob/chat/EMMonitor;

    invoke-direct {v0}, Lcom/easemob/chat/EMMonitor;->loadLibrary()V

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMMonitor;->_instance:Lcom/easemob/chat/EMMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadLibrary()V
    .locals 1

    :try_start_0
    const-string v0, "easemobservice"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMMonitor;->libraryLoaded:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/EMMonitor;->libraryLoaded:Z

    goto :goto_0
.end method

.method private native startMonitor(Ljava/lang/String;)V
.end method

.method private native startWakeup([Ljava/lang/String;)V
.end method


# virtual methods
.method public getMonitorDB()Lcom/easemob/chat/core/s;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMonitor;->monitorDB:Lcom/easemob/chat/core/s;

    return-object v0
.end method

.method start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMMonitor;->libraryLoaded:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/easemob/chat/EMMonitor;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/easemob/chat/EMMonitor;->nativeServiceStarted:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/easemob/chat/EMMonitor;->startMonitor(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMMonitor;->nativeServiceStarted:Z

    goto :goto_0
.end method

.method startWakeup(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    iget-boolean v0, p0, Lcom/easemob/chat/EMMonitor;->libraryLoaded:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/easemob/chat/EMMonitor;->wakeuped:Z

    if-nez v0, :cond_0

    const-string v0, "wakeup"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMMonitor;->wakeuped:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/easemob/chat/EMMonitor;->monitorDB:Lcom/easemob/chat/core/s;

    invoke-virtual {v0}, Lcom/easemob/chat/core/s;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/easemob/util/EasyUtils;->getRunningApps(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/easemob/chat/EMMonitor;->startWakeup([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v4, Lcom/easemob/chat/EMChatService;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method
