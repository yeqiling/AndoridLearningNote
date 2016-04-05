.class public Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;
.super Ljava/lang/Object;
.source "DefaultConfigurationFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmapDisplayer()Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;
    .locals 1

    .prologue
    .line 130
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;

    invoke-direct {v0}, Lcom/mechat/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;-><init>()V

    return-object v0
.end method

.method public static createDiskCache(Landroid/content/Context;Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 10
    .parameter "context"
    .parameter "diskCacheFileNameGenerator"
    .parameter "diskCacheSize"
    .parameter "diskCacheFileCount"

    .prologue
    .line 82
    invoke-static {p0}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createReserveDiskCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 83
    .local v2, reserveCacheDir:Ljava/io/File;
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-gtz v0, :cond_0

    if-lez p4, :cond_1

    .line 84
    :cond_0
    invoke-static {p0}, Lcom/mechat/nostra13/universalimageloader/utils/StorageUtils;->getIndividualCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 86
    .local v1, individualCacheDir:Ljava/io/File;
    :try_start_0
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/ext/LruDiscCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1           #individualCacheDir:Ljava/io/File;
    :goto_0
    return-object v0

    .line 88
    .restart local v1       #individualCacheDir:Ljava/io/File;
    :catch_0
    move-exception v8

    .line 89
    .local v8, e:Ljava/io/IOException;
    invoke-static {v8}, Lcom/mechat/nostra13/universalimageloader/utils/L;->e(Ljava/lang/Throwable;)V

    .line 93
    .end local v1           #individualCacheDir:Ljava/io/File;
    .end local v8           #e:Ljava/io/IOException;
    :cond_1
    invoke-static {p0}, Lcom/mechat/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object v7

    .line 94
    .local v7, cacheDir:Ljava/io/File;
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;

    invoke-direct {v0, v7, v2, p1}, Lcom/mechat/nostra13/universalimageloader/cache/disc/impl/UnlimitedDiscCache;-><init>(Ljava/io/File;Ljava/io/File;Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)V

    goto :goto_0
.end method

.method public static createExecutor(IILcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;
    .locals 9
    .parameter "threadPoolSize"
    .parameter "threadPriority"
    .parameter "tasksProcessingType"

    .prologue
    .line 60
    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;->LIFO:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    if-ne p2, v1, :cond_0

    const/4 v0, 0x1

    .line 62
    .local v0, lifo:Z
    :goto_0
    if-eqz v0, :cond_1

    new-instance v7, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;

    invoke-direct {v7}, Lcom/mechat/nostra13/universalimageloader/core/assist/deque/LIFOLinkedBlockingDeque;-><init>()V

    .line 63
    .local v7, taskQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :goto_1
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    const-string v2, "uil-pool-"

    invoke-static {p1, v2}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    move v2, p0

    move v3, p0

    .line 63
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v1

    .line 60
    .end local v0           #lifo:Z
    .end local v7           #taskQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    .restart local v0       #lifo:Z
    :cond_1
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    goto :goto_1
.end method

.method public static createFileNameGenerator()Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;

    invoke-direct {v0}, Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/HashCodeFileNameGenerator;-><init>()V

    return-object v0
.end method

.method public static createImageDecoder(Z)Lcom/mechat/nostra13/universalimageloader/core/decode/ImageDecoder;
    .locals 1
    .parameter "loggingEnabled"

    .prologue
    .line 125
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder;

    invoke-direct {v0, p0}, Lcom/mechat/nostra13/universalimageloader/core/decode/BaseImageDecoder;-><init>(Z)V

    return-object v0
.end method

.method public static createImageDownloader(Landroid/content/Context;)Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1
    .parameter "context"

    .prologue
    .line 120
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;

    invoke-direct {v0, p0}, Lcom/mechat/nostra13/universalimageloader/core/download/BaseImageDownloader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static createMemoryCache(I)Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;
    .locals 4
    .parameter "memoryCacheSize"

    .prologue
    .line 112
    if-nez p0, :cond_0

    .line 113
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int p0, v0

    .line 115
    :cond_0
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    invoke-direct {v0, p0}, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;-><init>(I)V

    return-object v0
.end method

.method private static createReserveDiskCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .parameter "context"

    .prologue
    .line 99
    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/mechat/nostra13/universalimageloader/utils/StorageUtils;->getCacheDirectory(Landroid/content/Context;Z)Ljava/io/File;

    move-result-object v0

    .line 100
    .local v0, cacheDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "uil-images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 101
    .local v1, individualDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    :cond_0
    move-object v0, v1

    .line 104
    :cond_1
    return-object v0
.end method

.method public static createTaskDistributor()Ljava/util/concurrent/Executor;
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x5

    const-string v1, "uil-pool-d-"

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method private static createThreadFactory(ILjava/lang/String;)Ljava/util/concurrent/ThreadFactory;
    .locals 1
    .parameter "threadPriority"
    .parameter "threadNamePrefix"

    .prologue
    .line 135
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;

    invoke-direct {v0, p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory$DefaultThreadFactory;-><init>(ILjava/lang/String;)V

    return-object v0
.end method
