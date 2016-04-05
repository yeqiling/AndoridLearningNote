.class Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine$1;
.super Ljava/lang/Object;
.source "ImageLoaderEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->submit(Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

.field private final synthetic val$task:Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;


# direct methods
.method constructor <init>(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    iput-object p2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine$1;->val$task:Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 73
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    iget-object v2, v2, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->configuration:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    iget-object v2, v2, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderConfiguration;->diskCache:Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;

    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine$1;->val$task:Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-virtual {v3}, Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;->getLoadingUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/mechat/nostra13/universalimageloader/cache/disc/DiskCache;->get(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 74
    .local v0, image:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 75
    .local v1, isImageCachedOnDisk:Z
    :goto_0
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    #calls: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->initExecutorsIfNeed()V
    invoke-static {v2}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->access$0(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;)V

    .line 76
    if-eqz v1, :cond_1

    .line 77
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutorForCachedImages:Ljava/util/concurrent/Executor;
    invoke-static {v2}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->access$1(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine$1;->val$task:Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 81
    :goto_1
    return-void

    .line 74
    .end local v1           #isImageCachedOnDisk:Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 79
    .restart local v1       #isImageCachedOnDisk:Z
    :cond_1
    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine$1;->this$0:Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;

    #getter for: Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->taskExecutor:Ljava/util/concurrent/Executor;
    invoke-static {v2}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;->access$2(Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoaderEngine$1;->val$task:Lcom/mechat/nostra13/universalimageloader/core/LoadAndDisplayImageTask;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
