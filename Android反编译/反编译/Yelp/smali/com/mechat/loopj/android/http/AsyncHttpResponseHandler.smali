.class public abstract Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;
.super Ljava/lang/Object;
.source "AsyncHttpResponseHandler.java"

# interfaces
.implements Lcom/mechat/loopj/android/http/ResponseHandlerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;
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

.field protected static final SUCCESS_MESSAGE:I


# instance fields
.field private handler:Landroid/os/Handler;

.field private requestHeaders:[Lorg/apache/http/Header;

.field private requestURI:Ljava/net/URI;

.field private responseCharset:Ljava/lang/String;

.field private useSynchronousMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 99
    iput-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 100
    iput-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 182
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->setUseSynchronousMode(Z)V

    .line 183
    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "UTF-8"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    goto :goto_0
.end method

.method public getRequestHeaders()[Lorg/apache/http/Header;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    return-object v0
.end method

.method public getRequestURI()Ljava/net/URI;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

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
    const-wide/16 v12, 0x0

    const/16 v1, 0x1000

    .line 394
    const/4 v8, 0x0

    .line 395
    .local v8, responseBody:[B
    if-eqz p1, :cond_2

    .line 396
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v6

    .line 397
    .local v6, instream:Ljava/io/InputStream;
    if-eqz v6, :cond_2

    .line 398
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 399
    .local v2, contentLength:J
    const-wide/32 v10, 0x7fffffff

    cmp-long v10, v2, v10

    if-lez v10, :cond_0

    .line 400
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "HTTP entity too large to be buffered in memory"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 402
    :cond_0
    cmp-long v10, v2, v12

    if-gtz v10, :cond_3

    .line 404
    .local v1, buffersize:I
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    .local v0, buffer:Lorg/apache/http/util/ByteArrayBuffer;
    const/16 v10, 0x1000

    :try_start_1
    new-array v9, v10, [B

    .line 407
    .local v9, tmp:[B
    const/4 v4, 0x0

    .line 409
    .local v4, count:I
    :goto_1
    invoke-virtual {v6, v9}, Ljava/io/InputStream;->read([B)I

    move-result v7

    .local v7, l:I
    const/4 v10, -0x1

    if-eq v7, v10, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->isInterrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-eqz v10, :cond_4

    .line 415
    :cond_1
    :try_start_2
    invoke-static {v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 416
    invoke-static {p1}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    .line 418
    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 425
    .end local v0           #buffer:Lorg/apache/http/util/ByteArrayBuffer;
    .end local v1           #buffersize:I
    .end local v2           #contentLength:J
    .end local v4           #count:I
    .end local v6           #instream:Ljava/io/InputStream;
    .end local v7           #l:I
    .end local v9           #tmp:[B
    :cond_2
    return-object v8

    .line 402
    .restart local v2       #contentLength:J
    .restart local v6       #instream:Ljava/io/InputStream;
    :cond_3
    long-to-int v1, v2

    goto :goto_0

    .line 410
    .restart local v0       #buffer:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v1       #buffersize:I
    .restart local v4       #count:I
    .restart local v7       #l:I
    .restart local v9       #tmp:[B
    :cond_4
    add-int/2addr v4, v7

    .line 411
    const/4 v10, 0x0

    :try_start_3
    invoke-virtual {v0, v9, v10, v7}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    .line 412
    cmp-long v10, v2, v12

    if-gtz v10, :cond_5

    const-wide/16 v10, 0x1

    :goto_2
    long-to-int v10, v10

    invoke-virtual {p0, v4, v10}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->sendProgressMessage(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 414
    .end local v4           #count:I
    .end local v7           #l:I
    .end local v9           #tmp:[B
    :catchall_0
    move-exception v10

    .line 415
    :try_start_4
    invoke-static {v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 416
    invoke-static {p1}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->endEntityViaReflection(Lorg/apache/http/HttpEntity;)V

    .line 417
    throw v10
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    .line 419
    .end local v0           #buffer:Lorg/apache/http/util/ByteArrayBuffer;
    :catch_0
    move-exception v5

    .line 420
    .local v5, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 421
    new-instance v10, Ljava/io/IOException;

    const-string v11, "File too large to fit into available memory"

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .end local v5           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #buffer:Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v4       #count:I
    .restart local v7       #l:I
    .restart local v9       #tmp:[B
    :cond_5
    move-wide v10, v2

    .line 412
    goto :goto_2
.end method

.method public getUseSynchronousMode()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->useSynchronousMode:Z

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "message"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 274
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 320
    :goto_0
    return-void

    .line 276
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 277
    .local v0, response:[Ljava/lang/Object;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lt v2, v8, :cond_0

    .line 278
    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v2, v0, v6

    check-cast v2, [Lorg/apache/http/Header;

    aget-object v3, v0, v7

    check-cast v3, [B

    invoke-virtual {p0, v4, v2, v3}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;[B)V

    goto :goto_0

    .line 280
    :cond_0
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "SUCCESS_MESSAGE didn\'t got enough params"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    .end local v0           #response:[Ljava/lang/Object;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 285
    .restart local v0       #response:[Ljava/lang/Object;
    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 286
    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v2, v0, v6

    check-cast v2, [Lorg/apache/http/Header;

    aget-object v3, v0, v7

    check-cast v3, [B

    aget-object v4, v0, v8

    check-cast v4, Ljava/lang/Throwable;

    invoke-virtual {p0, v5, v2, v3, v4}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 288
    :cond_1
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "FAILURE_MESSAGE didn\'t got enough params"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    .end local v0           #response:[Ljava/lang/Object;
    :pswitch_2
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->onStart()V

    goto :goto_0

    .line 295
    :pswitch_3
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->onFinish()V

    goto :goto_0

    .line 298
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 299
    .restart local v0       #response:[Ljava/lang/Object;
    if-eqz v0, :cond_2

    array-length v2, v0

    if-lt v2, v7, :cond_2

    .line 301
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v3, v2}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->onProgress(II)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "custom onProgress contains an error"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 306
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "PROGRESS_MESSAGE didn\'t got enough params"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 310
    .end local v0           #response:[Ljava/lang/Object;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 311
    .restart local v0       #response:[Ljava/lang/Object;
    if-eqz v0, :cond_3

    array-length v2, v0

    if-ne v2, v6, :cond_3

    .line 312
    aget-object v2, v0, v4

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->onRetry(I)V

    goto/16 :goto_0

    .line 314
    :cond_3
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "RETRY_MESSAGE didn\'t get enough params"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 317
    .end local v0           #response:[Ljava/lang/Object;
    :pswitch_6
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->onCancel()V

    goto/16 :goto_0

    .line 274
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
    .locals 2
    .parameter "responseMessageId"
    .parameter "responseMessageData"

    .prologue
    .line 356
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 357
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 358
    .local v0, msg:Landroid/os/Message;
    if-eqz v0, :cond_0

    .line 359
    iput p1, v0, Landroid/os/Message;->what:I

    .line 360
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 365
    :cond_0
    :goto_0
    return-object v0

    .line 363
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    goto :goto_0
.end method

.method public onCancel()V
    .locals 2

    .prologue
    .line 239
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "Request got cancelled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 208
    return-void
.end method

.method public onProgress(II)V
    .locals 8
    .parameter "bytesWritten"
    .parameter "totalSize"

    .prologue
    .line 192
    const-string v2, "AsyncHttpResponseHandler"

    const-string v3, "Progress %d from %d (%2.0f%%)"

    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v5, 0x2

    if-lez p2, :cond_0

    int-to-double v0, p1

    const-wide/high16 v6, 0x3ff0

    mul-double/2addr v0, v6

    int-to-double v6, p2

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

    .line 193
    return-void

    .line 192
    :cond_0
    const-wide/high16 v0, -0x4010

    goto :goto_0
.end method

.method public onRetry(I)V
    .locals 5
    .parameter "retryNo"

    .prologue
    .line 235
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

    .line 236
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;[B)V
.end method

.method protected postRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 336
    if-eqz p1, :cond_1

    .line 337
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 339
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 345
    :cond_1
    :goto_0
    return-void

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final sendCancelMessage()V
    .locals 2

    .prologue
    .line 267
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 268
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

    .line 251
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

    invoke-virtual {p0, v3, v0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 252
    return-void
.end method

.method public final sendFinishMessage()V
    .locals 2

    .prologue
    .line 259
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 260
    return-void
.end method

.method protected sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->getUseSynchronousMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 324
    :cond_0
    invoke-virtual {p0, p1}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->handleMessage(Landroid/os/Message;)V

    .line 328
    :cond_1
    :goto_0
    return-void

    .line 325
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final sendProgressMessage(II)V
    .locals 4
    .parameter "bytesWritten"
    .parameter "bytesTotal"

    .prologue
    .line 243
    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 244
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
    .line 371
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 372
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    .line 374
    .local v1, status:Lorg/apache/http/StatusLine;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->getResponseData(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    .line 376
    .local v0, responseBody:[B
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_1

    .line 378
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

    invoke-virtual {p0, v2, v3, v0, v4}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 384
    .end local v0           #responseBody:[B
    .end local v1           #status:Lorg/apache/http/StatusLine;
    :cond_0
    :goto_0
    return-void

    .line 380
    .restart local v0       #responseBody:[B
    .restart local v1       #status:Lorg/apache/http/StatusLine;
    :cond_1
    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v3

    invoke-virtual {p0, v2, v3, v0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->sendSuccessMessage(I[Lorg/apache/http/Header;[B)V

    goto :goto_0
.end method

.method public final sendRetryMessage(I)V
    .locals 4
    .parameter "retryNo"

    .prologue
    .line 263
    const/4 v0, 0x5

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 264
    return-void
.end method

.method public final sendStartMessage()V
    .locals 2

    .prologue
    .line 255
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 256
    return-void
.end method

.method public final sendSuccessMessage(I[Lorg/apache/http/Header;[B)V
    .locals 3
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBytes"

    .prologue
    const/4 v2, 0x0

    .line 247
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->sendMessage(Landroid/os/Message;)V

    .line 248
    return-void
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0
    .parameter "charset"

    .prologue
    .line 170
    iput-object p1, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->responseCharset:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setRequestHeaders([Lorg/apache/http/Header;)V
    .locals 0
    .parameter "requestHeaders"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->requestHeaders:[Lorg/apache/http/Header;

    .line 120
    return-void
.end method

.method public setRequestURI(Ljava/net/URI;)V
    .locals 0
    .parameter "requestURI"

    .prologue
    .line 114
    iput-object p1, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->requestURI:Ljava/net/URI;

    .line 115
    return-void
.end method

.method public setUseSynchronousMode(Z)V
    .locals 2
    .parameter "value"

    .prologue
    .line 146
    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 147
    const/4 p1, 0x1

    .line 148
    const-string v0, "AsyncHttpResponseHandler"

    const-string v1, "Current thread has not called Looper.prepare(). Forcing synchronous mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-nez v0, :cond_2

    .line 154
    new-instance v0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;

    invoke-direct {v0, p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler$ResponderHandler;-><init>(Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    iput-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    .line 160
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->useSynchronousMode:Z

    .line 161
    return-void

    .line 155
    :cond_2
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 157
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->handler:Landroid/os/Handler;

    goto :goto_0
.end method
