.class public final Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;,
        Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader;,
        Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;
    }
.end annotation


# instance fields
.field final customExecutor:Z

.field final customExecutorForCachedImages:Z

.field final decoder:Lcom/mechat/nostra13/universalimageloader/core/decode/ImageDecoder;

.field final defaultDisplayImageOptions:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

.field final diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

.field final downloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

.field final maxImageHeightForDiskCache:I

.field final maxImageHeightForMemoryCache:I

.field final maxImageWidthForDiskCache:I

.field final maxImageWidthForMemoryCache:I

.field final memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

.field final networkDeniedDownloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

.field final processorForDiskCache:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

.field final resources:Landroid/content/res/Resources;

.field final slowNetworkDownloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

.field final taskExecutor:Ljava/util/concurrent/Executor;

.field final taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

.field final tasksProcessingType:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field final threadPoolSize:I

.field final threadPriority:I


# direct methods
.method private constructor <init>(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$0(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    .line 81
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$1(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForMemoryCache:I

    .line 82
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$2(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForMemoryCache:I

    .line 83
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$3(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForDiskCache:I

    .line 84
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$4(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForDiskCache:I

    .line 85
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$5(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->processorForDiskCache:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 86
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$6(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 87
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$7(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 88
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$8(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPoolSize:I

    .line 89
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$9(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->threadPriority:I

    .line 90
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$10(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->tasksProcessingType:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 91
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$11(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 92
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$12(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 93
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$13(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 94
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$14(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 95
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/mechat/nostra13/universalimageloader/core/decode/ImageDecoder;
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$15(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/core/decode/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->decoder:Lcom/mechat/nostra13/universalimageloader/core/decode/ImageDecoder;

    .line 97
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$16(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutor:Z

    .line 98
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$17(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->customExecutorForCachedImages:Z

    .line 100
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader;

    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$NetworkDeniedImageDownloader;-><init>(Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->networkDeniedDownloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 101
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;

    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->downloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

    invoke-direct {v0, v1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$SlowNetworkImageDownloader;-><init>(Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;)V

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->slowNetworkDownloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 103
    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z
    invoke-static {p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->access$18(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z

    move-result v0

    invoke-static {v0}, Lcom/mechat/nostra13/universalimageloader/utils/L;->writeDebugLogs(Z)V

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;-><init>(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)V

    return-void
.end method

.method public static createDefault(Landroid/content/Context;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .locals 1
    .parameter "context"

    .prologue
    .line 128
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    invoke-direct {v0, p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->build()Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getMaxImageSize()Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 4

    .prologue
    .line 132
    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 134
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageWidthForMemoryCache:I

    .line 135
    .local v2, width:I
    if-gtz v2, :cond_0

    .line 136
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 138
    :cond_0
    iget v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->maxImageHeightForMemoryCache:I

    .line 139
    .local v1, height:I
    if-gtz v1, :cond_1

    .line 140
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 142
    :cond_1
    new-instance v3, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v3, v2, v1}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    return-object v3
.end method
