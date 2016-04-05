.class public Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
.super Ljava/lang/Object;
.source "ImageLoaderConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final DEFAULT_TASK_PROCESSING_TYPE:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType; = null

.field public static final DEFAULT_THREAD_POOL_SIZE:I = 0x3

.field public static final DEFAULT_THREAD_PRIORITY:I = 0x4

.field private static final WARNING_OVERLAP_DISK_CACHE_NAME_GENERATOR:Ljava/lang/String; = "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

.field private static final WARNING_OVERLAP_DISK_CACHE_PARAMS:Ljava/lang/String; = "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

.field private static final WARNING_OVERLAP_EXECUTOR:Ljava/lang/String; = "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

.field private static final WARNING_OVERLAP_MEMORY_CACHE:Ljava/lang/String; = "memoryCache() and memoryCacheSize() calls overlap each other"


# instance fields
.field private context:Landroid/content/Context;

.field private customExecutor:Z

.field private customExecutorForCachedImages:Z

.field private decoder:Lcom/mechat/nostra13/universalimageloader/core/decode/ImageDecoder;

.field private defaultDisplayImageOptions:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

.field private denyCacheImageMultipleSizesInMemory:Z

.field private diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

.field private diskCacheFileCount:I

.field private diskCacheFileNameGenerator:Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

.field private diskCacheSize:J

.field private downloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

.field private maxImageHeightForDiskCache:I

.field private maxImageHeightForMemoryCache:I

.field private maxImageWidthForDiskCache:I

.field private maxImageWidthForMemoryCache:I

.field private memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

.field private memoryCacheSize:I

.field private processorForDiskCache:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

.field private taskExecutor:Ljava/util/concurrent/Executor;

.field private taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

.field private tasksProcessingType:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

.field private threadPoolSize:I

.field private threadPriority:I

.field private writeLogs:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 163
    sget-object v0, Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;->FIFO:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sput-object v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    .line 168
    iput v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    .line 169
    iput v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I

    .line 170
    iput v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I

    .line 171
    iput-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 173
    iput-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 174
    iput-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 175
    iput-boolean v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    .line 176
    iput-boolean v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    .line 178
    const/4 v0, 0x3

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    .line 179
    const/4 v0, 0x4

    iput v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    .line 180
    iput-boolean v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    .line 181
    sget-object v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 183
    iput v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    .line 184
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    .line 185
    iput v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    .line 187
    iput-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 188
    iput-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 189
    iput-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 190
    iput-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 192
    iput-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 194
    iput-boolean v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    .line 198
    return-void
.end method

.method static synthetic access$0(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 167
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    return v0
.end method

.method static synthetic access$10(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    return-object v0
.end method

.method static synthetic access$11(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 1
    .parameter

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    return-object v0
.end method

.method static synthetic access$12(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;
    .locals 1
    .parameter

    .prologue
    .line 187
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    return-object v0
.end method

.method static synthetic access$13(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    return-object v0
.end method

.method static synthetic access$14(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;
    .locals 1
    .parameter

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

    return-object v0
.end method

.method static synthetic access$15(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/core/decode/ImageDecoder;
    .locals 1
    .parameter

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/mechat/nostra13/universalimageloader/core/decode/ImageDecoder;

    return-object v0
.end method

.method static synthetic access$16(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    return v0
.end method

.method static synthetic access$17(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 176
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    return v0
.end method

.method static synthetic access$18(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Z
    .locals 1
    .parameter

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    return v0
.end method

.method static synthetic access$2(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 168
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    return v0
.end method

.method static synthetic access$3(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 169
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I

    return v0
.end method

.method static synthetic access$4(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 170
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I

    return v0
.end method

.method static synthetic access$5(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;
    .locals 1
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)Ljava/util/concurrent/Executor;
    .locals 1
    .parameter

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$8(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 178
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    return v0
.end method

.method static synthetic access$9(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;)I
    .locals 1
    .parameter

    .prologue
    .line 179
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    return v0
.end method

.method private initEmptyFieldsWithDefaultValues()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 565
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_7

    .line 567
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    iget v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 566
    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 571
    :goto_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_8

    .line 573
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    iget v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    invoke-static {v0, v1, v2}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createExecutor(IILcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 572
    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 577
    :goto_1
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    if-nez v0, :cond_1

    .line 578
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    if-nez v0, :cond_0

    .line 579
    invoke-static {}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createFileNameGenerator()Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    iget-wide v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    iget v4, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createDiskCache(Landroid/content/Context;Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;JI)Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    .line 581
    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 584
    :cond_1
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    if-nez v0, :cond_2

    .line 585
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    invoke-static {v0}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createMemoryCache(I)Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 587
    :cond_2
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    if-eqz v0, :cond_3

    .line 588
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;

    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-static {}, Lcom/mechat/nostra13/universalimageloader/utils/MemoryCacheUtils;->createFuzzyKeyComparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/FuzzyKeyMemoryCache;-><init>(Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 590
    :cond_3
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

    if-nez v0, :cond_4

    .line 591
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createImageDownloader(Landroid/content/Context;)Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 593
    :cond_4
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/mechat/nostra13/universalimageloader/core/decode/ImageDecoder;

    if-nez v0, :cond_5

    .line 594
    iget-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    invoke-static {v0}, Lcom/mechat/nostra13/universalimageloader/core/DefaultConfigurationFactory;->createImageDecoder(Z)Lcom/mechat/nostra13/universalimageloader/core/decode/ImageDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/mechat/nostra13/universalimageloader/core/decode/ImageDecoder;

    .line 596
    :cond_5
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    if-nez v0, :cond_6

    .line 597
    invoke-static {}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->createSimple()Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 599
    :cond_6
    return-void

    .line 569
    :cond_7
    iput-boolean v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutor:Z

    goto :goto_0

    .line 575
    :cond_8
    iput-boolean v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->customExecutorForCachedImages:Z

    goto :goto_1
.end method


# virtual methods
.method public build()Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    .locals 2

    .prologue
    .line 560
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->initEmptyFieldsWithDefaultValues()V

    .line 561
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;-><init>(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    return-object v0
.end method

.method public defaultDisplayImageOptions(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .parameter "defaultDisplayImageOptions"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->defaultDisplayImageOptions:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 545
    return-object p0
.end method

.method public denyCacheImageMultipleSizesInMemory()Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1

    .prologue
    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->denyCacheImageMultipleSizesInMemory:Z

    .line 335
    return-object p0
.end method

.method public discCache(Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .parameter "diskCache"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 486
    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache(Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public discCacheExtraOptions(IILcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .parameter "maxImageWidthForDiskCache"
    .parameter "maxImageHeightForDiskCache"
    .parameter "processorForDiskCache"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0, p1, p2, p3}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheExtraOptions(IILcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public discCacheFileCount(I)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .parameter "maxFileCount"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 440
    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount(I)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public discCacheFileNameGenerator(Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .parameter "fileNameGenerator"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 465
    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator(Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public discCacheSize(I)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1
    .parameter "maxCacheSize"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 415
    invoke-virtual {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize(I)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;

    move-result-object v0

    return-object v0
.end method

.method public diskCache(Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 5
    .parameter "diskCache"

    .prologue
    const/4 v4, 0x0

    .line 504
    iget-wide v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    if-lez v0, :cond_1

    .line 505
    :cond_0
    const-string v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    if-eqz v0, :cond_2

    .line 508
    const-string v0, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 511
    :cond_2
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    .line 512
    return-object p0
.end method

.method public diskCacheExtraOptions(IILcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .parameter "maxImageWidthForDiskCache"
    .parameter "maxImageHeightForDiskCache"
    .parameter "processorForDiskCache"

    .prologue
    .line 235
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForDiskCache:I

    .line 236
    iput p2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForDiskCache:I

    .line 237
    iput-object p3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->processorForDiskCache:Lcom/mechat/nostra13/universalimageloader/core/process/BitmapProcessor;

    .line 238
    return-object p0
.end method

.method public diskCacheFileCount(I)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "maxFileCount"

    .prologue
    .line 452
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxFileCount must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 454
    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    if-eqz v0, :cond_1

    .line 455
    const-string v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    :cond_1
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileCount:I

    .line 459
    return-object p0
.end method

.method public diskCacheFileNameGenerator(Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "fileNameGenerator"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    if-eqz v0, :cond_0

    .line 476
    const-string v0, "diskCache() and diskCacheFileNameGenerator() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    :cond_0
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheFileNameGenerator:Lcom/mechat/nostra13/universalimageloader/cache/disc/naming/FileNameGenerator;

    .line 480
    return-object p0
.end method

.method public diskCacheSize(I)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "maxCacheSize"

    .prologue
    .line 427
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxCacheSize must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    if-eqz v0, :cond_1

    .line 430
    const-string v0, "diskCache(), diskCacheSize() and diskCacheFileCount calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    :cond_1
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->diskCacheSize:J

    .line 434
    return-object p0
.end method

.method public imageDecoder(Lcom/mechat/nostra13/universalimageloader/core/decode/ImageDecoder;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .parameter "imageDecoder"

    .prologue
    .line 533
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->decoder:Lcom/mechat/nostra13/universalimageloader/core/decode/ImageDecoder;

    .line 534
    return-object p0
.end method

.method public imageDownloader(Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .parameter "imageDownloader"

    .prologue
    .line 522
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->downloader:Lcom/mechat/nostra13/universalimageloader/core/download/ImageDownloader;

    .line 523
    return-object p0
.end method

.method public memoryCache(Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "memoryCache"

    .prologue
    .line 404
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    :cond_0
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    .line 409
    return-object p0
.end method

.method public memoryCacheExtraOptions(II)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 0
    .parameter "maxImageWidthForMemoryCache"
    .parameter "maxImageHeightForMemoryCache"

    .prologue
    .line 209
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageWidthForMemoryCache:I

    .line 210
    iput p2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->maxImageHeightForMemoryCache:I

    .line 211
    return-object p0
.end method

.method public memoryCacheSize(I)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "memoryCacheSize"

    .prologue
    .line 360
    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "memoryCacheSize must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    if-eqz v0, :cond_1

    .line 363
    const-string v0, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    :cond_1
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    .line 367
    return-object p0
.end method

.method public memoryCacheSizePercentage(I)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 5
    .parameter "availableMemoryPercent"

    .prologue
    .line 380
    if-lez p1, :cond_0

    const/16 v2, 0x64

    if-lt p1, v2, :cond_1

    .line 381
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "availableMemoryPercent must be in range (0 < % < 100)"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    :cond_1
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    if-eqz v2, :cond_2

    .line 385
    const-string v2, "memoryCache() and memoryCacheSize() calls overlap each other"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    :cond_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    .line 389
    .local v0, availableMemory:J
    long-to-float v2, v0

    int-to-float v3, p1

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->memoryCacheSize:I

    .line 390
    return-object p0
.end method

.method public taskExecutor(Ljava/util/concurrent/Executor;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "executor"

    .prologue
    .line 255
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    if-eq v0, v1, :cond_1

    .line 256
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    :cond_1
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    .line 260
    return-object p0
.end method

.method public taskExecutorForCachedImages(Ljava/util/concurrent/Executor;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "executorForCachedImages"

    .prologue
    .line 282
    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->DEFAULT_TASK_PROCESSING_TYPE:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    if-eq v0, v1, :cond_1

    .line 283
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    :cond_1
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    .line 287
    return-object p0
.end method

.method public tasksProcessingOrder(Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "tasksProcessingType"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 344
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    :cond_1
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->tasksProcessingType:Lcom/mechat/nostra13/universalimageloader/core/assist/QueueProcessingType;

    .line 348
    return-object p0
.end method

.method public threadPoolSize(I)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 2
    .parameter "threadPoolSize"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :cond_1
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPoolSize:I

    .line 300
    return-object p0
.end method

.method public threadPriority(I)Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 4
    .parameter "threadPriority"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 309
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    .line 310
    :cond_0
    const-string v0, "threadPoolSize(), threadPriority() and tasksProcessingOrder() calls can overlap taskExecutor() and taskExecutorForCachedImages() calls."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    :cond_1
    if-ge p1, v2, :cond_2

    .line 314
    iput v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    .line 322
    :goto_0
    return-object p0

    .line 316
    :cond_2
    if-le p1, v3, :cond_3

    .line 317
    iput v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    goto :goto_0

    .line 319
    :cond_3
    iput p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->threadPriority:I

    goto :goto_0
.end method

.method public writeDebugLogs()Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;
    .locals 1

    .prologue
    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration$Builder;->writeLogs:Z

    .line 555
    return-object p0
.end method
