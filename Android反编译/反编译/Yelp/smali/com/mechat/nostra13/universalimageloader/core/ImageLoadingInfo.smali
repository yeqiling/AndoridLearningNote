.class final Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;
.super Ljava/lang/Object;
.source "ImageLoadingInfo.java"


# instance fields
.field final imageAware:Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;

.field final listener:Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;

.field final loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;

.field final memoryCacheKey:Ljava/lang/String;

.field final options:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

.field final progressListener:Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

.field final targetSize:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

.field final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Ljava/lang/String;Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 0
    .parameter "uri"
    .parameter "imageAware"
    .parameter "targetSize"
    .parameter "memoryCacheKey"
    .parameter "options"
    .parameter "listener"
    .parameter "progressListener"
    .parameter "loadFromUriLock"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;->uri:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;->imageAware:Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;

    .line 51
    iput-object p3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;->targetSize:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

    .line 52
    iput-object p5, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;->options:Lcom/mechat/nostra13/universalimageloader/core/DisplayImageOptions;

    .line 53
    iput-object p6, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;->listener:Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;

    .line 54
    iput-object p7, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;->progressListener:Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingProgressListener;

    .line 55
    iput-object p8, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;->loadFromUriLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    iput-object p4, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoadingInfo;->memoryCacheKey:Ljava/lang/String;

    .line 57
    return-void
.end method
