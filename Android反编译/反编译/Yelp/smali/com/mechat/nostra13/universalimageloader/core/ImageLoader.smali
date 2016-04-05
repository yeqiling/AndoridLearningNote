.class public Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;
    }
.end annotation


# static fields
.field private static final ERROR_INIT_CONFIG_WITH_NULL:Ljava/lang/String; = "ImageLoader configuration can not be initialized with null"

.field private static final ERROR_NOT_INIT:Ljava/lang/String; = "ImageLoader must be init with configuration before using"

.field private static final ERROR_WRONG_ARGUMENTS:Ljava/lang/String; = "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

.field static final LOG_DESTROY:Ljava/lang/String; = "Destroy ImageLoader"

.field static final LOG_INIT_CONFIG:Ljava/lang/String; = "Initialize ImageLoader with configuration"

.field static final LOG_LOAD_IMAGE_FROM_MEMORY_CACHE:Ljava/lang/String; = "Load image from memory cache [%s]"

.field public static final TAG:Ljava/lang/String; = null

.field private static final WARNING_RE_INIT_CONFIG:Ljava/lang/String; = "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

.field private static volatile instance:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;


# instance fields
.field private configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

.field private final emptyListener:Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field private engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-class v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->TAG:Ljava/lang/String;

    .line 67
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;

    invoke-direct {v0}, Lcom/mechat/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->emptyListener:Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 82
    return-void
.end method

.method private checkConfiguration()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be init with configuration before using"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_0
    return-void
.end method

.method private static defineHandler(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;
    .locals 3
    .parameter "options"

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 737
    .local v0, handler:Landroid/os/Handler;
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    const/4 v0, 0x0

    .line 742
    :cond_0
    :goto_0
    return-object v0

    .line 739
    :cond_1
    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 740
    new-instance v0, Landroid/os/Handler;

    .end local v0           #handler:Landroid/os/Handler;
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .restart local v0       #handler:Landroid/os/Handler;
    goto :goto_0
.end method

.method public static getInstance()Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;
    .locals 2

    .prologue
    .line 71
    sget-object v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    invoke-direct {v0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;-><init>()V

    sput-object v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    .line 72
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    sget-object v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->instance:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelDisplayTask(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "imageView"

    .prologue
    .line 669
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    new-instance v1, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v1, p1}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 670
    return-void
.end method

.method public cancelDisplayTask(Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 1
    .parameter "imageAware"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 660
    return-void
.end method

.method public clearDiscCache()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 622
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->clearDiskCache()V

    .line 623
    return-void
.end method

.method public clearDiskCache()V
    .locals 1

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 632
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    invoke-interface {v0}, Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;->clear()V

    .line 633
    return-void
.end method

.method public clearMemoryCache()V
    .locals 1

    .prologue
    .line 589
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 590
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v0}, Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;->clear()V

    .line 591
    return-void
.end method

.method public denyNetworkDownloads(Z)V
    .locals 1
    .parameter "denyNetworkDownloads"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->denyNetworkDownloads(Z)V

    .line 684
    return-void
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 728
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_0

    const-string v0, "Destroy ImageLoader"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    :cond_0
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->stop()V

    .line 730
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    invoke-interface {v0}, Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;->close()V

    .line 731
    iput-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 732
    iput-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    .line 733
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 6
    .parameter "uri"
    .parameter "imageView"

    .prologue
    const/4 v3, 0x0

    .line 287
    new-instance v2, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 288
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6
    .parameter "uri"
    .parameter "imageView"
    .parameter "options"

    .prologue
    const/4 v4, 0x0

    .line 304
    new-instance v2, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 305
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .parameter "uri"
    .parameter "imageView"
    .parameter "options"
    .parameter "listener"

    .prologue
    .line 341
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 342
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 6
    .parameter "uri"
    .parameter "imageView"
    .parameter "options"
    .parameter "listener"
    .parameter "progressListener"

    .prologue
    .line 366
    new-instance v2, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 367
    return-void
.end method

.method public displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .parameter "uri"
    .parameter "imageView"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 321
    new-instance v2, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v2, p2}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 322
    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;)V
    .locals 6
    .parameter "uri"
    .parameter "imageAware"

    .prologue
    const/4 v3, 0x0

    .line 126
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 127
    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)V
    .locals 6
    .parameter "uri"
    .parameter "imageAware"
    .parameter "options"

    .prologue
    const/4 v4, 0x0

    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 163
    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .parameter "uri"
    .parameter "imageAware"
    .parameter "options"
    .parameter "listener"

    .prologue
    .line 183
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 184
    return-void
.end method

.method public displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 11
    .parameter "uri"
    .parameter "imageAware"
    .parameter "options"
    .parameter "listener"
    .parameter "progressListener"

    .prologue
    .line 209
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 210
    if-nez p2, :cond_0

    .line 211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Wrong arguments were passed to displayImage() method (ImageView reference must not be null)"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 213
    :cond_0
    if-nez p4, :cond_1

    .line 214
    iget-object p4, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->emptyListener:Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 216
    :cond_1
    if-nez p3, :cond_2

    .line 217
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, v1, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 220
    :cond_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 221
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, p2}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->cancelDisplayTaskFor(Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;)V

    .line 222
    invoke-interface {p2}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p4, p1, v1}, Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 223
    invoke-virtual {p3}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageForEmptyUri()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 224
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {p3, v1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->getImageForEmptyUri(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 228
    :goto_0
    invoke-interface {p2}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p4, p1, v1, v2}, Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 273
    :goto_1
    return-void

    .line 226
    :cond_3
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_0

    .line 232
    :cond_4
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->getMaxImageSize()Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/mechat/nostra13/universalimageloader/utils/ImageSizeUtils;->defineTargetSizeForView(Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object v3

    .line 233
    .local v3, targetSize:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;
    invoke-static {p1, v3}, Lcom/mechat/nostra13/universalimageloader/utils/MemoryCacheUtils;->generateKey(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;)Ljava/lang/String;

    move-result-object v4

    .line 234
    .local v4, memoryCacheKey:Ljava/lang/String;
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, p2, v4}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->prepareDisplayTaskFor(Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Ljava/lang/String;)V

    .line 236
    invoke-interface {p2}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p4, p1, v1}, Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V

    .line 238
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    invoke-interface {v1, v4}, Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 239
    .local v9, bmp:Landroid/graphics/Bitmap;
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 240
    const-string v1, "Load image from memory cache [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v2, v5

    invoke-static {v1, v2}, Lcom/mechat/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    invoke-virtual {p3}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->shouldPostProcess()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 243
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;

    .line 244
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    .line 243
    invoke-direct/range {v0 .. v8}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;-><init>(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 245
    .local v0, imageLoadingInfo:Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;
    new-instance v10, Lcom/mechat/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;

    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 246
    invoke-static {p3}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->defineHandler(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object v2

    .line 245
    invoke-direct {v10, v1, v9, v0, v2}, Lcom/mechat/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;-><init>(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;Landroid/graphics/Bitmap;Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    .line 247
    .local v10, displayTask:Lcom/mechat/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;
    invoke-virtual {p3}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 248
    invoke-virtual {v10}, Lcom/mechat/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;->run()V

    goto :goto_1

    .line 250
    :cond_5
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, v10}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->submit(Lcom/mechat/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;)V

    goto :goto_1

    .line 253
    .end local v0           #imageLoadingInfo:Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;
    .end local v10           #displayTask:Lcom/mechat/nostra13/universalimageloader/core/ProcessAndDisplayImageTask;
    :cond_6
    invoke-virtual {p3}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->getDisplayer()Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;

    move-result-object v1

    sget-object v2, Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;->MEMORY_CACHE:Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;

    invoke-interface {v1, v9, p2, v2}, Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;->display(Landroid/graphics/Bitmap;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;)V

    .line 254
    invoke-interface {p2}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->getWrappedView()Landroid/view/View;

    move-result-object v1

    invoke-interface {p4, p1, v1, v9}, Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 257
    :cond_7
    invoke-virtual {p3}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->shouldShowImageOnLoading()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 258
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v1, v1, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->resources:Landroid/content/res/Resources;

    invoke-virtual {p3, v1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->getImageOnLoading(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 263
    :cond_8
    :goto_2
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;

    .line 264
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->getLockForUri(Ljava/lang/String;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v8

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    .line 263
    invoke-direct/range {v0 .. v8}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;-><init>(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 265
    .restart local v0       #imageLoadingInfo:Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;
    new-instance v10, Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 266
    invoke-static {p3}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->defineHandler(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/os/Handler;

    move-result-object v2

    .line 265
    invoke-direct {v10, v1, v0, v2}, Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;-><init>(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;Landroid/os/Handler;)V

    .line 267
    .local v10, displayTask:Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
    invoke-virtual {p3}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->isSyncLoading()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 268
    invoke-virtual {v10}, Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->run()V

    goto/16 :goto_1

    .line 259
    .end local v0           #imageLoadingInfo:Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;
    .end local v10           #displayTask:Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
    :cond_9
    invoke-virtual {p3}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;->isResetViewBeforeLoading()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 260
    const/4 v1, 0x0

    invoke-interface {p2, v1}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    goto :goto_2

    .line 270
    .restart local v0       #imageLoadingInfo:Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;
    .restart local v10       #displayTask:Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;
    :cond_a
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v1, v10}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->submit(Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V

    goto/16 :goto_1
.end method

.method public displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .parameter "uri"
    .parameter "imageAware"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 145
    return-void
.end method

.method public getDiscCache()Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 601
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->getDiskCache()Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    move-result-object v0

    return-object v0
.end method

.method public getDiskCache()Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;
    .locals 1

    .prologue
    .line 610
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 611
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    return-object v0
.end method

.method public getLoadingUriForView(Landroid/widget/ImageView;)Ljava/lang/String;
    .locals 2
    .parameter "imageView"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    new-instance v1, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    invoke-direct {v1, p1}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageViewAware;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadingUriForView(Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;
    .locals 1
    .parameter "imageAware"

    .prologue
    .line 640
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->getLoadingUriForView(Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMemoryCache()Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;
    .locals 1

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 580
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v0, v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->memoryCache:Lcom/mechat/nostra13/universalimageloader/cache/memory/MemoryCache;

    return-object v0
.end method

.method public handleSlowNetwork(Z)V
    .locals 1
    .parameter "handleSlowNetwork"

    .prologue
    .line 694
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0, p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->handleSlowNetwork(Z)V

    .line 695
    return-void
.end method

.method public declared-synchronized init(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    .locals 2
    .parameter "configuration"

    .prologue
    .line 93
    monitor-enter p0

    if-nez p1, :cond_0

    .line 94
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageLoader configuration can not be initialized with null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-nez v0, :cond_1

    .line 97
    const-string v0, "Initialize ImageLoader with configuration"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-direct {v0, p1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;-><init>(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    .line 99
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    :goto_0
    monitor-exit p0

    return-void

    .line 101
    :cond_1
    :try_start_2
    const-string v0, "Try to initialize ImageLoader which had already been initialized before. To re-init ImageLoader with new configuration call ImageLoader.destroy() at first."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/mechat/nostra13/universalimageloader/utils/L;->w(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .parameter "uri"
    .parameter "options"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 420
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 421
    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .parameter "uri"
    .parameter "targetImageSize"
    .parameter "options"
    .parameter "listener"

    .prologue
    .line 445
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 446
    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V
    .locals 6
    .parameter "uri"
    .parameter "targetImageSize"
    .parameter "options"
    .parameter "listener"
    .parameter "progressListener"

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->checkConfiguration()V

    .line 476
    if-nez p2, :cond_0

    .line 477
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    invoke-virtual {v0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->getMaxImageSize()Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

    move-result-object p2

    .line 479
    :cond_0
    if-nez p3, :cond_1

    .line 480
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 483
    :cond_1
    new-instance v2, Lcom/mechat/nostra13/universalimageloader/core/imageaware/NonViewAware;

    sget-object v0, Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-direct {v2, p1, p2, v0}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/NonViewAware;-><init>(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;)V

    .local v2, imageAware:Lcom/mechat/nostra13/universalimageloader/core/imageaware/NonViewAware;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 484
    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 485
    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .parameter "uri"
    .parameter "targetImageSize"
    .parameter "listener"

    .prologue
    const/4 v3, 0x0

    .line 401
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 402
    return-void
.end method

.method public loadImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V
    .locals 6
    .parameter "uri"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 381
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;)V

    .line 382
    return-void
.end method

.method public loadImageSync(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 499
    invoke-virtual {p0, p1, v0, v0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "uri"
    .parameter "options"

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "uri"
    .parameter "targetImageSize"

    .prologue
    .line 533
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->loadImageSync(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageSync(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "uri"
    .parameter "targetImageSize"
    .parameter "options"

    .prologue
    .line 552
    if-nez p3, :cond_0

    .line 553
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object p3, v1, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->defaultDisplayImageOptions:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 555
    :cond_0
    new-instance v1, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    invoke-direct {v1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;-><init>()V

    invoke-virtual {v1, p3}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->cloneFrom(Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->syncLoading(Z)Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions$Builder;->build()Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object p3

    .line 557
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;-><init>(Lcom/mechat/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;)V

    .line 558
    .local v0, listener:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->loadImage(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 559
    invoke-virtual {v0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;->getLoadedBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->pause()V

    .line 704
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 708
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->resume()V

    .line 709
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->engine:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    invoke-virtual {v0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->stop()V

    .line 720
    return-void
.end method
