.class Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;
.super Ljava/lang/Object;
.source "ImageLoaderEngine.java"


# instance fields
.field private final cacheKeysForImageAwares:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pauseLock:Ljava/lang/Object;

.field private final paused:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private taskDistributor:Ljava/util/concurrent/Executor;

.field private taskExecutor:Ljava/util/concurrent/Executor;

.field private taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

.field private final uriLocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    .locals 2
    .parameter "configuration"

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageAwares:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->pauseLock:Ljava/lang/Object;

    .line 60
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 62
    iget-object v0, p1, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 63
    iget-object v0, p1, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 65
    invoke-static {}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createTaskDistributor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskDistributor:Ljava/util/concurrent/Executor;

    .line 66
    return-void
.end method

.method static synthetic access$0(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->initExecutorsIfNeed()V

    return-void
.end method

.method static synthetic access$1(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private createTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v0, v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPoolSize:I

    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget v1, v1, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPriority:I

    .line 104
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v2, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->tasksProcessingType:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 103
    invoke-static {v0, v1, v2}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 102
    return-object v0
.end method

.method private initExecutorsIfNeed()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v0, v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutor:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->createTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v0, v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutorForCachedImages:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 96
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->createTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 99
    :cond_1
    return-void
.end method


# virtual methods
.method cancelDisplayTaskFor(Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 2
    .parameter "imageAware"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageAwares:Ljava/util/Map;

    invoke-interface {p1}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method denyNetworkDownloads(Z)V
    .locals 1
    .parameter "denyNetworkDownloads"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 142
    return-void
.end method

.method fireCallback(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskDistributor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method getLoadingUriForView(Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
    .locals 2
    .parameter "imageAware"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageAwares:Ljava/util/Map;

    invoke-interface {p1}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 2
    .parameter "uri"

    .prologue
    .line 195
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 196
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    if-nez v0, :cond_0

    .line 197
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .end local v0           #lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 198
    .restart local v0       #lock:Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    :cond_0
    return-object v0
.end method

.method getPause()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method getPauseLock()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->pauseLock:Ljava/lang/Object;

    return-object v0
.end method

.method handleSlowNetwork(Z)V
    .locals 1
    .parameter "handleSlowNetwork"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    return-void
.end method

.method isNetworkDenied()Z
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->networkDenied:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method isSlowNetwork()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->slowNetwork:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method pause()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 161
    return-void
.end method

.method prepareDisplayTaskFor(Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Ljava/lang/String;)V
    .locals 2
    .parameter "imageAware"
    .parameter "memoryCacheKey"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageAwares:Ljava/util/Map;

    invoke-interface {p1}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method resume()V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->paused:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 166
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->pauseLock:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->pauseLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 166
    monitor-exit v1

    .line 169
    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method stop()V
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v0, v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutor:Z

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-boolean v0, v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutorForCachedImages:Z

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->cacheKeysForImageAwares:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 187
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->uriLocks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    return-void
.end method

.method submit(Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
    .locals 2
    .parameter "task"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskDistributor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine$1;

    invoke-direct {v1, p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine$1;-><init>(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 83
    return-void
.end method

.method submit(Lcom/mechat/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->initExecutorsIfNeed()V

    .line 88
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method
