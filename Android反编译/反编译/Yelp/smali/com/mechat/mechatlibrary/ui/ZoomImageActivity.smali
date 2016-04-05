.class public Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;
.super Landroid/app/Activity;
.source "ZoomImageActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field private final DETAIL_DIR:Ljava/lang/String;

.field private final FILE_DIR:Ljava/lang/String;

.field private backbtn:Landroid/view/View;

.field private imageLoader:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

.field private mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

.field private noSDcardId:I

.field private picIv:Landroid/widget/ImageView;

.field private saveBtn:Landroid/view/View;

.field private saveFailedId:I

.field private saveSucId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 27
    const-string v0, "/Pictures/MeChat"

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->DETAIL_DIR:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Pictures/MeChat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->FILE_DIR:Ljava/lang/String;

    .line 25
    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->picIv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->storeInSD(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->saveSucId:I

    return v0
.end method

.method static synthetic access$3(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;Lcom/mechat/photoview/PhotoViewAttacher;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    return-void
.end method

.method static synthetic access$4(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;)Lcom/mechat/photoview/PhotoViewAttacher;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method private storeInSD(Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter "bitmap"

    .prologue
    const/4 v8, 0x1

    .line 99
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 100
    const-string v6, "mounted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 101
    .local v4, sdCardExist:Z
    if-eqz v4, :cond_2

    .line 102
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->FILE_DIR:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 104
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 106
    :cond_0
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ".jpg"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 108
    .local v3, imageFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 109
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 110
    .local v2, fos:Ljava/io/FileOutputStream;
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-virtual {p1, v5, v6, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 111
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 112
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 127
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .end local v3           #imageFile:Ljava/io/File;
    :cond_1
    :goto_0
    return-void

    .line 113
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #imageFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 114
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 115
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 116
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 117
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 118
    .local v0, e:Ljava/lang/Exception;
    iget v5, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->saveFailedId:I

    if-eqz v5, :cond_1

    .line 119
    iget v5, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->saveFailedId:I

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 123
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #imageFile:Ljava/io/File;
    :cond_2
    iget v5, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->noSDcardId:I

    if-eqz v5, :cond_1

    .line 124
    iget v5, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->noSDcardId:I

    invoke-static {p0, v5, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const-string v1, "ZoomImageActivity"

    invoke-static {v1}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "ZoomImageActivity#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->requestWindowFeature(I)Z

    .line 45
    const-string v1, "layout"

    const-string v2, "mc_zoom_image_activity"

    invoke-static {p0, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->setContentView(I)V

    .line 47
    const-string v1, "string"

    const-string v2, "mc_save_pic_suc"

    invoke-static {p0, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->saveSucId:I

    .line 48
    const-string v1, "string"

    const-string v2, "mc_save_pic_failed"

    invoke-static {p0, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->saveFailedId:I

    .line 49
    const-string v1, "string"

    const-string v2, "mc_save_pic_suc"

    invoke-static {p0, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->noSDcardId:I

    .line 51
    const-string v1, "id"

    const-string v2, "pic_iv"

    invoke-static {p0, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->picIv:Landroid/widget/ImageView;

    .line 52
    const-string v1, "id"

    const-string v2, "chat_back"

    invoke-static {p0, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->backbtn:Landroid/view/View;

    .line 53
    const-string v1, "id"

    const-string v2, "save_btn"

    invoke-static {p0, v1, v2}, Lcom/mechat/mechatlibrary/utils/MResource;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->saveBtn:Landroid/view/View;

    .line 55
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->backbtn:Landroid/view/View;

    new-instance v2, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$1;

    invoke-direct {v2, p0}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$1;-><init>(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->saveBtn:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->saveBtn:Landroid/view/View;

    new-instance v2, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$2;

    invoke-direct {v2, p0}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$2;-><init>(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    :cond_0
    invoke-static {}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v1

    iput-object v1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->imageLoader:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    .line 80
    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "picUrl"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, picUrl:Ljava/lang/String;
    iget-object v1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->imageLoader:Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->picIv:Landroid/widget/ImageView;

    new-instance v3, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;

    invoke-direct {v3, p0}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;-><init>(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;)V

    invoke-virtual {v1, v0, v2, v3}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 96
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line -1
    .end local v0           #picUrl:Ljava/lang/String;
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "ZoomImageActivity#onCreate"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method
