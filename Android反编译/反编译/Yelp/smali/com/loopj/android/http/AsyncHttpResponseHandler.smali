.class public abstract Lcom/loopj/android/http/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"

# interfaces
.implements Lcom/loopj/android/http/ResponseHandlerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;
    }
.end annotation


# static fields
.field protected static final BUFFER_SIZE:I = 0x1000

.field protected static final CANCEL_MESSAGE:I = 0x6

.field public static final DEFAULT_CHARSET:Ljava/lang/String; = "UTF-8"

.field protected static final FAILURE_MESSAGE:I = 0x1

.field protected static final FINISH_MESSAGE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "AsyncHttpResponseHandler"

.field protected static final PROGRESS_MESSAGE:I = 0x4

.field protected static final RETRY_MESSAGE:I = 0x5

.field protected static final START_MESSAGE:I = 0x2

.field protected static final SUCCESS_MESSAGE:I = 0x0

.field public static final UTF8_BOM:Ljava/lang/String; = "\ufeff"


# instance fields
.field private handler:Landroid/os/Handler;

.field private looper:Landroid/os/Looper;

.field private requestHeaders:[Lorg/apache/http/Header;

.field private requestURI:Ljava/net/URI;

.field private responseCharset:Ljava/lang/String;

.field private usePoolThread:Z

.field private useSynchronousMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>(Landroid/os/Looper;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 3
    .parameter "looper"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 104
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 105
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 122
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    .end local p1
    :cond_0
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 125
    invoke-virtual {p0, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 128
    invoke-virtual {p0, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->setUsePoolThread(Z)V

    .line 129
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .parameter "usePoolThread"

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 103
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 104
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 105
    iput-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 139
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->setUsePoolThread(Z)V

    .line 142
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->getUsePoolThread()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 149
    :cond_0
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRequestHeaders()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getRequestURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    return-object v0
.end method

.method getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 14
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    const/4 v9, 0x0

    .line 472
    .local v9, responseBody:[B
    if-eqz p1, :cond_4

    .line 473
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v7

    .line 474
    .local v7, instream:Ljava/io/InputStream;
    if-eqz v7, :cond_4

    .line 475
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 476
    .local v2, contentLength:J
    const-wide/32 v12, 0x7fffffff

    cmp-long v11, v2, v12

    if-lez v11, :cond_0

    .line 477
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "HTTP entity too large to be buffered in memory"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 479
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-gtz v11, :cond_1

    const/16 v1, 0x1000

    .line 481
    .local v1, buffersize:I
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .local v0, buffer:Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v11, 0x1000

    :try_start_1
    new-array v10, v11, [B

    .line 484
    .local v10, tmp:[B
    const-wide/16 v4, 0x0

    .line 487
    .local v4, count:J
    :goto_1
    invoke-virtual {v7, v10}, Ljava/io/InputStream;->read([B)I

    move-result v8

    .local v8, l:I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v11

    if-nez v11, :cond_3

    .line 488
    int-to-long v12, v8

    add-long/2addr v4, v12

    .line 489
    const/4 v11, 0x0

    invoke-virtual {v0, v10, v11, v8}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 490
    const-wide/16 v12, 0x0

    cmp-long v11, v2, v12

    if-gtz v11, :cond_2

    const-wide/16 v12, 0x1

    :goto_2
    invoke-virtual {p0, v4, v5, v12, v13}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 493
    .end local v4           #count:J
    .end local v8           #l:I
    .end local v10           #tmp:[B
    :catchall_0
    move-exception v11

    :try_start_2
    invoke-static {v7}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 494
    invoke-static {p1}, Lcom/loopj/android/http/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    throw v11
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    .line 497
    .end local v0           #buffer:Lorg/apache/http/util/ByteArrayBuffer;
    :catch_0
    move-exception v6

    .line 498
    .local v6, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 499
    new-instance v11, Ljava/io/IOException;

    const-string v12, "File too large to fit into available memory"

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 479
    .end local v1           #buffersize:I
    .end local v6           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    long-to-int v1, v2

    goto :goto_0

    .restart local v0       #buffer:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1       #buffersize:I
    .restart local v4       #count:J
    .restart local v8       #l:I
    .restart local v10       #tmp:[B
    :cond_2
    move-wide v12, v2

    .line 490
    goto :goto_2

    .line 493
    :cond_3
    :try_start_3
    invoke-static {v7}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 494
    invoke-static {p1}, Lcom/loopj/android/http/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    .line 496
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v9

    .line 503
    .end local v0           #buffer:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1           #buffersize:I
    .end local v2           #contentLength:J
    .end local v4           #count:J
    .end local v7           #instream:Ljava/io/InputStream;
    .end local v8           #l:I
    .end local v10           #tmp:[B
    :cond_4
    return-object v9
.end method

.method public getUsePoolThread()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->usePoolThread:Z

    return v0
.end method

.method public getUseSynchronousMode()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->useSynchronousMode:Z

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "message"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 356
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 406
    :goto_0
    return-void

    .line 358
    :pswitch_0
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 359
    .local v3, response:[Ljava/lang/Object;
    if-eqz v3, :cond_0

    array-length v5, v3

    if-lt v5, v8, :cond_0

    .line 360
    const/4 v5, 0x0

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v5, 0x1

    aget-object v5, v3, v5

    check-cast v5, [Lorg/apache/http/Header;

    check-cast v5, [Lorg/apache/http/Header;

    const/4 v6, 0x2

    aget-object v6, v3, v6

    check-cast v6, [B

    check-cast v6, [B

    invoke-virtual {p0, v7, v5, v6}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 403
    .end local v3           #response:[Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 404
    .local v2, error:Ljava/lang/Throwable;
    invoke-virtual {p0, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onUserException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 362
    .end local v2           #error:Ljava/lang/Throwable;
    .restart local v3       #response:[Ljava/lang/Object;
    :cond_0
    :try_start_1
    const-string v5, "AsyncHttpResponseHandler"

    const-string v6, "SUCCESS_MESSAGE didn\'t got enough params"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 366
    .end local v3           #response:[Ljava/lang/Object;
    :pswitch_1
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 367
    .restart local v3       #response:[Ljava/lang/Object;
    if-eqz v3, :cond_1

    array-length v5, v3

    const/4 v6, 0x4

    if-lt v5, v6, :cond_1

    .line 368
    const/4 v5, 0x0

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v5, 0x1

    aget-object v5, v3, v5

    check-cast v5, [Lorg/apache/http/Header;

    check-cast v5, [Lorg/apache/http/Header;

    const/4 v6, 0x2

    aget-object v6, v3, v6

    check-cast v6, [B

    check-cast v6, [B

    const/4 v7, 0x3

    aget-object v7, v3, v7

    check-cast v7, Ljava/lang/Throwable;

    invoke-virtual {p0, v8, v5, v6, v7}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 370
    :cond_1
    const-string v5, "AsyncHttpResponseHandler"

    const-string v6, "FAILURE_MESSAGE didn\'t got enough params"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 374
    .end local v3           #response:[Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    goto :goto_0

    .line 377
    :pswitch_3
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    goto :goto_0

    .line 380
    :pswitch_4
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 381
    .restart local v3       #response:[Ljava/lang/Object;
    if-eqz v3, :cond_2

    array-length v5, v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v5, v7, :cond_2

    .line 383
    const/4 v5, 0x0

    :try_start_2
    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const/4 v5, 0x1

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onProgress(JJ)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 384
    :catch_1
    move-exception v4

    .line 385
    .local v4, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "AsyncHttpResponseHandler"

    const-string v6, "custom onProgress contains an error"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 388
    .end local v4           #t:Ljava/lang/Throwable;
    :cond_2
    const-string v5, "AsyncHttpResponseHandler"

    const-string v6, "PROGRESS_MESSAGE didn\'t got enough params"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 392
    .end local v3           #response:[Ljava/lang/Object;
    :pswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 393
    .restart local v3       #response:[Ljava/lang/Object;
    if-eqz v3, :cond_3

    array-length v5, v3

    if-ne v5, v6, :cond_3

    .line 394
    const/4 v5, 0x0

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onRetry(I)V

    goto/16 :goto_0

    .line 396
    :cond_3
    const-string v5, "AsyncHttpResponseHandler"

    const-string v6, "RETRY_MESSAGE didn\'t get enough params"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 400
    .end local v3           #response:[Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->onCancel()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "responseMessageId"
    .parameter "responseMessageData"

    .prologue
    .line 442
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-static {v0, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 2

    .prologue
    .line 308
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "Request got cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public onPostProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .parameter "instance"
    .parameter "response"

    .prologue
    .line 277
    return-void
.end method

.method public onPreProcessResponse(Lcom/loopj/android/http/ResponseHandlerInterface;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .parameter "instance"
    .parameter "response"

    .prologue
    .line 272
    return-void
.end method

.method public onProgress(JJ)V
    .locals 9
    .parameter "bytesWritten"
    .parameter "totalSize"

    .prologue
    .line 251
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "Progress %d from %d (%2.0f%%)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    long-to-double v0, p1

    const-wide/high16 v6, 0x3ff0

    mul-double/2addr v0, v6

    long-to-double v6, p3

    div-double/2addr v0, v6

    const-wide/high16 v6, 0x4059

    mul-double/2addr v0, v6

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 251
    :cond_0
    const-wide/high16 v0, -0x4010

    goto :goto_0
.end method

.method public onRetry(I)V
    .locals 5
    .parameter "retryNo"

    .prologue
    .line 304
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "Request retry no. %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;[B)V
.end method

.method public onUserException(Ljava/lang/Throwable;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 312
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "User-space exception detected!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 423
    if-eqz p1, :cond_1

    .line 424
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 426
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 432
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final sendCancelMessage()V
    .locals 2

    .prologue
    .line 348
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 349
    return-void
.end method

.method public final sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 4
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "throwable"

    .prologue
    const/4 v3, 0x1

    .line 328
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    aput-object p2, v0, v3

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p4, v0, v1

    invoke-virtual {p0, v3, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 329
    return-void
.end method

.method public final sendFinishMessage()V
    .locals 2

    .prologue
    .line 338
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 339
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 410
    :cond_0
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 415
    :cond_1
    :goto_0
    return-void

    .line 411
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 412
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    const-string v1, "handler should not be null!"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 413
    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 412
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final sendProgressMessage(JJ)V
    .locals 5
    .parameter "bytesWritten"
    .parameter "bytesTotal"

    .prologue
    .line 318
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 319
    return-void
.end method

.method public sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 7
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 448
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 451
    .local v1, status:Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->getResponseData(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 453
    .local v0, responseBody:[B
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 454
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    .line 455
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    new-instance v4, Lorg/apache/http/client/HttpResponseException;

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 461
    .end local v0           #responseBody:[B
    .end local v1           #status:Lorg/apache/http/StatusLine;
    :cond_0
    :goto_0
    return-void

    .line 457
    .restart local v0       #responseBody:[B
    .restart local v1       #status:Lorg/apache/http/StatusLine;
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendSuccessMessage(I[Lorg/apache/http/Header;[B)V

    goto :goto_0
.end method

.method public final sendRetryMessage(I)V
    .locals 4
    .parameter "retryNo"

    .prologue
    .line 343
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 344
    return-void
.end method

.method public final sendStartMessage()V
    .locals 2

    .prologue
    .line 333
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 334
    return-void
.end method

.method public final sendSuccessMessage(I[Lorg/apache/http/Header;[B)V
    .locals 3
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBytes"

    .prologue
    const/4 v2, 0x0

    .line 323
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 324
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .parameter "charset"

    .prologue
    .line 237
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public setRequestHeaders([Lorg/apache/http/Header;)V
    .locals 0
    .parameter "requestHeaders"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 169
    return-void
.end method

.method public setRequestURI(Ljava/net/URI;)V
    .locals 0
    .parameter "requestURI"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 164
    return-void
.end method

.method public setUsePoolThread(Z)V
    .locals 1
    .parameter "pool"

    .prologue
    const/4 v0, 0x0

    .line 222
    if-eqz p1, :cond_0

    .line 223
    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    .line 224
    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 227
    :cond_0
    iput-boolean p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->usePoolThread:Z

    .line 228
    return-void
.end method

.method public setUseSynchronousMode(Z)V
    .locals 2
    .parameter "sync"

    .prologue
    .line 196
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    if-nez v0, :cond_0

    .line 197
    const/4 p1, 0x1

    .line 198
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "Current thread has not called Looper.prepare(). Forcing synchronous mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 204
    new-instance v0, Lcom/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;

    iget-object v1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->looper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;-><init>(Lcom/loopj/android/http/AsyncHttpResponseHandler;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 210
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->useSynchronousMode:Z

    .line 211
    return-void

    .line 205
    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    goto :goto_0
.end method
