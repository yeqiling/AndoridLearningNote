.class public Lcom/mechat/loopj/android/http/AsyncHttpRequest;
.super Ljava/lang/Object;
.source "AsyncHttpRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private cancelIsNotified:Z

.field private final client:Lorg/apache/http/impl/client/AbstractHttpClient;

.field private final context:Lorg/apache/http/protocol/HttpContext;

.field private executionCount:I

.field private isCancelled:Z

.field private isFinished:Z

.field private final request:Lorg/apache/http/client/methods/HttpUriRequest;

.field private final responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;


# direct methods
.method public constructor <init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)V
    .locals 1
    .parameter "client"
    .parameter "context"
    .parameter "request"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled:Z

    .line 43
    iput-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->cancelIsNotified:Z

    .line 44
    iput-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isFinished:Z

    .line 47
    iput-object p1, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    .line 48
    iput-object p2, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    .line 49
    iput-object p3, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    .line 50
    iput-object p4, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    .line 51
    return-void
.end method

.method private makeRequest()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v1}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 95
    new-instance v1, Ljava/net/MalformedURLException;

    const-string v2, "No valid URI scheme was provided"

    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    iget-object v3, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    instance-of v4, v1, Lorg/apache/http/client/HttpClient;

    if-nez v4, :cond_3

    invoke-virtual {v1, v2, v3}, Lorg/apache/http/impl/client/AbstractHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 100
    .local v0, response:Lorg/apache/http/HttpResponse;
    :goto_1
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v1, v0}, Lcom/mechat/loopj/android/http/ResponseHandlerInterface;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    goto :goto_0

    .line 98
    .end local v0           #response:Lorg/apache/http/HttpResponse;
    :cond_3
    check-cast v1, Lorg/apache/http/client/HttpClient;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_1
.end method

.method private makeRequestWithRetries()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v3, 0x1

    .line 107
    .local v3, retry:Z
    const/4 v0, 0x0

    .line 108
    .local v0, cause:Ljava/io/IOException;
    iget-object v5, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->client:Lorg/apache/http/impl/client/AbstractHttpClient;

    invoke-virtual {v5}, Lorg/apache/http/impl/client/AbstractHttpClient;->getHttpRequestRetryHandler()Lorg/apache/http/client/HttpRequestRetryHandler;

    move-result-object v4

    .local v4, retryHandler:Lorg/apache/http/client/HttpRequestRetryHandler;
    move-object v1, v0

    .line 110
    .end local v0           #cause:Ljava/io/IOException;
    .local v1, cause:Ljava/io/IOException;
    :goto_0
    if-nez v3, :cond_0

    move-object v0, v1

    .line 145
    .end local v1           #cause:Ljava/io/IOException;
    .restart local v0       #cause:Ljava/io/IOException;
    :goto_1
    throw v0

    .line 112
    .end local v0           #cause:Ljava/io/IOException;
    .restart local v1       #cause:Ljava/io/IOException;
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->makeRequest()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 129
    :cond_1
    return-void

    .line 114
    :catch_0
    move-exception v2

    .line 118
    .local v2, e:Ljava/net/UnknownHostException;
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "UnknownHostException exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 119
    .end local v1           #cause:Ljava/io/IOException;
    .restart local v0       #cause:Ljava/io/IOException;
    :try_start_2
    iget v5, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->executionCount:I

    if-lez v5, :cond_3

    iget v5, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->executionCount:I

    iget-object v6, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v3, 0x1

    .line 134
    .end local v2           #e:Ljava/net/UnknownHostException;
    :goto_2
    if-eqz v3, :cond_2

    iget-object v5, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    if-eqz v5, :cond_2

    .line 135
    iget-object v5, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    iget v6, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->executionCount:I

    invoke-interface {v5, v6}, Lcom/mechat/loopj/android/http/ResponseHandlerInterface;->sendRetryMessage(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    move-object v1, v0

    .end local v0           #cause:Ljava/io/IOException;
    .restart local v1       #cause:Ljava/io/IOException;
    goto :goto_0

    .line 119
    .end local v1           #cause:Ljava/io/IOException;
    .restart local v0       #cause:Ljava/io/IOException;
    .restart local v2       #e:Ljava/net/UnknownHostException;
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 120
    .end local v0           #cause:Ljava/io/IOException;
    .end local v2           #e:Ljava/net/UnknownHostException;
    .restart local v1       #cause:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 124
    .local v2, e:Ljava/lang/NullPointerException;
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "NPE in HttpClient: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 125
    .end local v1           #cause:Ljava/io/IOException;
    .restart local v0       #cause:Ljava/io/IOException;
    :try_start_4
    iget v5, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->executionCount:I

    iget-object v6, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    move-result v3

    goto :goto_2

    .line 126
    .end local v0           #cause:Ljava/io/IOException;
    .end local v2           #e:Ljava/lang/NullPointerException;
    .restart local v1       #cause:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 127
    .local v2, e:Ljava/io/IOException;
    :try_start_5
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result v5

    if-nez v5, :cond_1

    .line 131
    move-object v0, v2

    .line 132
    .end local v1           #cause:Ljava/io/IOException;
    .restart local v0       #cause:Ljava/io/IOException;
    :try_start_6
    iget v5, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->executionCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->executionCount:I

    iget-object v6, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->context:Lorg/apache/http/protocol/HttpContext;

    invoke-interface {v4, v0, v5, v6}, Lorg/apache/http/client/HttpRequestRetryHandler;->retryRequest(Ljava/io/IOException;ILorg/apache/http/protocol/HttpContext;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    move-result v3

    goto :goto_2

    .line 138
    .end local v0           #cause:Ljava/io/IOException;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #cause:Ljava/io/IOException;
    :catch_3
    move-exception v2

    move-object v0, v1

    .line 140
    .end local v1           #cause:Ljava/io/IOException;
    .restart local v0       #cause:Ljava/io/IOException;
    .local v2, e:Ljava/lang/Exception;
    :goto_3
    const-string v5, "AsyncHttpRequest"

    const-string v6, "Unhandled exception origin cause"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 141
    new-instance v0, Ljava/io/IOException;

    .end local v0           #cause:Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unhandled exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .restart local v0       #cause:Ljava/io/IOException;
    goto/16 :goto_1

    .line 138
    .end local v2           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v2

    goto :goto_3
.end method

.method private declared-synchronized sendCancelNotification()V
    .locals 1

    .prologue
    .line 156
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->cancelIsNotified:Z

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->cancelIsNotified:Z

    .line 158
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v0}, Lcom/mechat/loopj/android/http/ResponseHandlerInterface;->sendCancelMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    :cond_0
    monitor-exit p0

    return-void

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancel(Z)Z
    .locals 1
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled:Z

    .line 169
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->request:Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-interface {v0}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 170
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public isCancelled()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->sendCancelNotification()V

    .line 152
    :cond_0
    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled:Z

    return v0
.end method

.method public isDone()Z
    .locals 1

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isFinished:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    if-eqz v1, :cond_2

    .line 60
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v1}, Lcom/mechat/loopj/android/http/ResponseHandlerInterface;->sendStartMessage()V

    .line 63
    :cond_2
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 68
    :try_start_0
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->makeRequestWithRetries()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_1
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    if-eqz v1, :cond_3

    .line 82
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    invoke-interface {v1}, Lcom/mechat/loopj/android/http/ResponseHandlerInterface;->sendFinishMessage()V

    .line 85
    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isFinished:Z

    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    if-eqz v1, :cond_4

    .line 71
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;->responseHandler:Lcom/mechat/loopj/android/http/ResponseHandlerInterface;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/mechat/loopj/android/http/ResponseHandlerInterface;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_1

    .line 73
    :cond_4
    const-string v1, "AsyncHttpRequest"

    const-string v2, "makeRequestWithRetries returned error, but handler is null"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
