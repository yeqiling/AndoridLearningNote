.class public Lme/nereo/multi_image_selector/MultiImagePreviewFragment;
.super Landroid/support/v4/app/Fragment;
.source "MultiImagePreviewFragment.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final KEY_PHOTO:Ljava/lang/String; = "key_photo"


# instance fields
.field attacher:Luk/co/senab/photoview/PhotoViewAttacher;

.field image:Lme/nereo/multi_image_selector/bean/Image;

.field ivPhoto:Luk/co/senab/photoview/PhotoView;

.field mImageLoader:Lme/nereo/multi_image_selector/utils/MultiImageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private findView()V
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 70
    .local v0, v:Landroid/view/View;
    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    sget v1, Lme/nereo/multi_image_selector/R$id;->iv_photo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Luk/co/senab/photoview/PhotoView;

    iput-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->ivPhoto:Luk/co/senab/photoview/PhotoView;

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 75
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->mImageLoader:Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    if-nez v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v1, Luk/co/senab/photoview/PhotoViewAttacher;

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->ivPhoto:Luk/co/senab/photoview/PhotoView;

    invoke-direct {v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->attacher:Luk/co/senab/photoview/PhotoViewAttacher;

    .line 77
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->attacher:Luk/co/senab/photoview/PhotoViewAttacher;

    new-instance v2, Lme/nereo/multi_image_selector/MultiImagePreviewFragment$1;

    invoke-direct {v2, p0}, Lme/nereo/multi_image_selector/MultiImagePreviewFragment$1;-><init>(Lme/nereo/multi_image_selector/MultiImagePreviewFragment;)V

    invoke-virtual {v1, v2}, Luk/co/senab/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    .line 83
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->image:Lme/nereo/multi_image_selector/bean/Image;

    iget-object v2, v2, Lme/nereo/multi_image_selector/bean/Image;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 84
    .local v0, imageUri:Landroid/net/Uri;
    iget-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->mImageLoader:Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->ivPhoto:Luk/co/senab/photoview/PhotoView;

    const v4, 0x106000d

    new-instance v5, Lme/nereo/multi_image_selector/MultiImagePreviewFragment$2;

    invoke-direct {v5, p0}, Lme/nereo/multi_image_selector/MultiImagePreviewFragment$2;-><init>(Lme/nereo/multi_image_selector/MultiImagePreviewFragment;)V

    invoke-interface {v1, v2, v3, v4, v5}, Lme/nereo/multi_image_selector/utils/MultiImageLoader;->loadImage(Ljava/lang/String;Landroid/widget/ImageView;ILme/nereo/multi_image_selector/utils/MultiImageLoader$LoadCallBack;)V

    goto :goto_0
.end method

.method public static newInstance(Lme/nereo/multi_image_selector/bean/Image;)Lme/nereo/multi_image_selector/MultiImagePreviewFragment;
    .locals 3
    .parameter "image"

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "key_photo"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    new-instance v1, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;

    invoke-direct {v1}, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;-><init>()V

    .line 38
    .local v1, fragment:Lme/nereo/multi_image_selector/MultiImagePreviewFragment;
    invoke-virtual {v1, v0}, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    invoke-static {}, Lme/nereo/multi_image_selector/utils/MultiImageSelector;->getImageLoader()Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    move-result-object v0

    iput-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->mImageLoader:Lme/nereo/multi_image_selector/utils/MultiImageLoader;

    .line 65
    invoke-direct {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->init()V

    .line 66
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 45
    invoke-virtual {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 46
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 48
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v1, "key_photo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lme/nereo/multi_image_selector/bean/Image;

    iput-object v1, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->image:Lme/nereo/multi_image_selector/bean/Image;

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    :try_start_0
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MultiImagePreviewFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    sget v0, Lme/nereo/multi_image_selector/R$layout;->fragment_multi_image_preview:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line -1
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MultiImagePreviewFragment#onCreateView"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 97
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->attacher:Luk/co/senab/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->attacher:Luk/co/senab/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Luk/co/senab/photoview/PhotoViewAttacher;->cleanup()V

    .line 100
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 58
    invoke-direct {p0}, Lme/nereo/multi_image_selector/MultiImagePreviewFragment;->findView()V

    .line 59
    return-void
.end method
