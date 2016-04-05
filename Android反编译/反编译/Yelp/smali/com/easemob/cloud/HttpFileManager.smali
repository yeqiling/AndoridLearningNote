.class public Lcom/easemob/cloud/HttpFileManager;
.super Lcom/easemob/cloud/CloudFileManager;


# static fields
.field private static final MAX_ALLOWED_FILE_SIZE:J = 0xa00000L

.field private static final max_retry_times_on_connection_refused:I = 0x14


# instance fields
.field private appContext:Landroid/content/Context;

.field tokenRetrieved:Z

.field private totalSize:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/easemob/cloud/CloudFileManager;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/cloud/HttpFileManager;->tokenRetrieved:Z

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/cloud/HttpFileManager;->appContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/easemob/cloud/CloudFileManager;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/cloud/HttpFileManager;->tokenRetrieved:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/cloud/HttpFileManager;->appContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/easemob/cloud/CloudFileManager;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/cloud/HttpFileManager;->tokenRetrieved:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/cloud/HttpFileManager;->appContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$0(Lcom/easemob/cloud/HttpFileManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/easemob/cloud/HttpFileManager;->totalSize:J

    return-wide v0
.end method

.method static synthetic access$1(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;IZ)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/easemob/cloud/HttpFileManager;->sendFiletoServerHttpWithCountDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;IZ)V

    return-void
.end method

.method static synthetic access$2(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/easemob/cloud/HttpFileManager;->sendFiletoServerHttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V

    return-void
.end method

.method static synthetic access$3(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;I)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/easemob/cloud/HttpFileManager;->downloadFileWithCountDown(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;I)V

    return-void
.end method

.method private downloadFileWithCountDown(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;I)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/easemob/cloud/CloudOperationCallback;",
            "I)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_2

    :cond_0
    const-string v2, "invalid remoteUrl"

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static/range {p3 .. p3}, Lcom/easemob/cloud/HttpClientManager;->addDomainToHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    invoke-static {p1}, Lcom/easemob/cloud/HttpClientConfig;->getFileRemoteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CloudFileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "remoteUrl:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " localFilePath:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/easemob/cloud/HttpFileManager;->processUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "CloudFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "download file: remote url : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , local file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "CloudFileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "local exists:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_3
    new-instance v3, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v3}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    invoke-virtual {v3}, Lcom/easemob/analytics/EMTimeTag;->start()V

    invoke-static {v5}, Lcom/easemob/cloud/HttpClientConfig;->getTimeout(Ljava/util/Map;)I

    move-result v2

    invoke-static {v2}, Lcom/easemob/cloud/HttpClientConfig;->getDefaultHttpClient(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    :try_start_0
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v4, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4, v5}, Lcom/easemob/cloud/HttpFileManager;->processHeaders(Lorg/apache/http/client/methods/HttpGet;Ljava/util/Map;)V

    invoke-static {v6, v2}, Lcom/easemob/cloud/HttpClientManager;->checkAndProcessSSL(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    instance-of v7, v2, Lorg/apache/http/client/HttpClient;

    if-nez v7, :cond_5

    invoke-virtual {v2, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    const-string v2, "CloudFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "error response code is :"

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v2, "failed to download file"

    :cond_4
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/core/p;->f()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "refused"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/easemob/cloud/HttpFileManager;->appContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/easemob/util/NetUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/core/j;->h()Z

    move-result v3

    if-eqz v3, :cond_a

    if-lez p5, :cond_a

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/j;->g()Lcom/easemob/chat/core/j$c;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/easemob/cloud/HttpClientManager;->getNewHost(Ljava/lang/String;Lcom/easemob/chat/core/j$c;)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v12, p5, -0x1

    new-instance v6, Lcom/easemob/cloud/HttpFileManager$8;

    move-object v7, p0

    move-object/from16 v9, p2

    move-object v10, v5

    move-object/from16 v11, p4

    invoke-direct/range {v6 .. v12}, Lcom/easemob/cloud/HttpFileManager$8;-><init>(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;I)V

    invoke-virtual {v6}, Lcom/easemob/cloud/HttpFileManager$8;->start()V

    goto/16 :goto_0

    :cond_5
    :try_start_1
    check-cast v2, Lorg/apache/http/client/HttpClient;

    invoke-static {v2, v4}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    goto/16 :goto_1

    :sswitch_0
    move-object/from16 v0, p4

    move-object/from16 v1, p2

    invoke-direct {p0, v2, v0, v1}, Lcom/easemob/cloud/HttpFileManager;->onDownloadCompleted(Lorg/apache/http/HttpResponse;Lcom/easemob/cloud/CloudOperationCallback;Ljava/lang/String;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v2, v8, v10

    if-gtz v2, :cond_6

    if-eqz p4, :cond_1

    const-string v2, "downloaded content size is zero!"

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    invoke-virtual {v3}, Lcom/easemob/analytics/EMTimeTag;->timeSpent()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-lez v2, :cond_7

    invoke-static {v3, v8, v9, v6}, Lcom/easemob/analytics/EMPerformanceCollector;->collectDownloadFileTime(Lcom/easemob/analytics/EMTimeTag;JLjava/lang/String;)V

    :cond_7
    if-eqz p4, :cond_1

    const-string v2, "download successfully"

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onSuccess(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->z()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v2, v8, v2

    const-wide/32 v8, 0x927c0

    cmp-long v2, v2, v8

    if-gtz v2, :cond_8

    if-eqz p4, :cond_1

    const-string v2, "unauthorized file"

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-boolean v2, p0, Lcom/easemob/cloud/HttpFileManager;->tokenRetrieved:Z

    if-eqz v2, :cond_9

    if-eqz p4, :cond_1

    const-string v2, "unauthorized file"

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    new-instance v2, Lcom/easemob/cloud/HttpFileManager$7;

    move-object v3, p0

    move-object/from16 v4, p4

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/easemob/cloud/HttpFileManager$7;-><init>(Lcom/easemob/cloud/HttpFileManager;Lcom/easemob/cloud/CloudOperationCallback;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/easemob/cloud/HttpFileManager$7;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_a
    const-string v3, "CloudFileManager"

    invoke-static {v3, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    move-object/from16 v0, p4

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method

.method public static getMimeType(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".amr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "audio/3gp"

    :goto_0
    return-object v0

    :cond_1
    const-string v1, ".jpe"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v0, "image/jpeg"

    goto :goto_0

    :cond_3
    const-string v1, ".amr"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "audio/amr"

    goto :goto_0

    :cond_4
    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "video/mp4"

    goto :goto_0

    :cond_5
    const-string v0, "image/png"

    goto :goto_0
.end method

.method private onDownloadCompleted(Lorg/apache/http/HttpResponse;Lcom/easemob/cloud/CloudOperationCallback;Ljava/lang/String;)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    :try_start_0
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v9, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_1
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/easemob/cloud/HttpFileManager;->appContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/easemob/util/NetUtils;->getDownloadBufSize(Landroid/content/Context;)I

    move-result v2

    new-array v11, v2, [B

    const-wide/16 v2, 0x0

    move-wide/from16 v16, v2

    move v2, v4

    move-wide/from16 v4, v16

    :goto_1
    :try_start_2
    invoke-virtual {v8, v11}, Ljava/io/InputStream;->read([B)I

    move-result v12

    const/4 v3, -0x1

    if-ne v12, v3, :cond_1

    invoke-virtual {v9}, Ljava/io/File;->length()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-wide v2

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    throw v2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    throw v2

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    throw v2

    :cond_1
    int-to-long v14, v12

    add-long/2addr v4, v14

    const-wide/16 v14, 0x64

    mul-long/2addr v14, v4

    :try_start_3
    div-long/2addr v14, v6

    long-to-int v3, v14

    const-string v13, "HttpFileManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0x64

    if-eq v3, v13, :cond_2

    add-int/lit8 v13, v2, 0x5

    if-le v3, v13, :cond_4

    :cond_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lcom/easemob/cloud/CloudOperationCallback;->onProgress(I)V

    :cond_3
    move v2, v3

    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v10, v11, v3, v12}, Ljava/io/OutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    :catch_3
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v2

    invoke-virtual {v10}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    throw v2
.end method

.method private processHeaders(Lorg/apache/http/client/methods/HttpGet;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/methods/HttpGet;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Authorization"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Bearer "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "application/octet-stream"

    invoke-virtual {p1, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "Authorization"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v3, "Accept"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "+"

    const-string v1, "%2B"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#"

    const-string v1, "%23"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method private sendFiletoServerHttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/easemob/cloud/CloudOperationCallback;",
            ")V"
        }
    .end annotation

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/easemob/cloud/HttpFileManager;->sendFiletoServerHttpWithCountDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;IZ)V

    return-void
.end method

.method private sendFiletoServerHttpWithCountDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;IZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/easemob/cloud/CloudOperationCallback;",
            "IZ)V"
        }
    .end annotation

    const-string v2, "CloudFileManager"

    const-string v3, "sendFiletoServerHttpWithCountDown ....."

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "CloudFileManager"

    const-string v3, "Source file doesn\'t exist"

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Source file doesn\'t exist"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v6, 0xa00000

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    const-string v2, "file doesn\'t bigger than 10 M"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static/range {p5 .. p5}, Lcom/easemob/cloud/HttpClientManager;->addDomainToHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    invoke-static {p2}, Lcom/easemob/cloud/HttpClientConfig;->getFileRemoteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "CloudFileManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " remote path url : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " --countDown: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/easemob/cloud/HttpClientConfig;->getTimeout(Ljava/util/Map;)I

    move-result v2

    invoke-static {v2}, Lcom/easemob/cloud/HttpClientConfig;->getDefaultHttpClient(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v4

    :try_start_0
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, v11}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v7, Lcom/easemob/cloud/CustomMultiPartEntity;

    new-instance v2, Lcom/easemob/cloud/HttpFileManager$1;

    move-object/from16 v0, p6

    invoke-direct {v2, p0, v0}, Lcom/easemob/cloud/HttpFileManager$1;-><init>(Lcom/easemob/cloud/HttpFileManager;Lcom/easemob/cloud/CloudOperationCallback;)V

    invoke-direct {v7, v2}, Lcom/easemob/cloud/CustomMultiPartEntity;-><init>(Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;)V

    if-eqz p3, :cond_3

    const-string v2, "app"

    new-instance v3, Linternal/org/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p3

    invoke-direct {v3, v0}, Linternal/org/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Lcom/easemob/cloud/CustomMultiPartEntity;->addPart(Ljava/lang/String;Linternal/org/apache/http/entity/mime/content/ContentBody;)V

    :cond_3
    if-eqz p4, :cond_4

    const-string v2, "id"

    new-instance v3, Linternal/org/apache/http/entity/mime/content/StringBody;

    move-object/from16 v0, p4

    invoke-direct {v3, v0}, Linternal/org/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Lcom/easemob/cloud/CustomMultiPartEntity;->addPart(Ljava/lang/String;Linternal/org/apache/http/entity/mime/content/ContentBody;)V

    :cond_4
    if-eqz v8, :cond_5

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    :cond_5
    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_11

    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v2, "/"

    invoke-virtual {p2, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v9, "path"

    new-instance v10, Linternal/org/apache/http/entity/mime/content/StringBody;

    invoke-direct {v10, v3}, Linternal/org/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Lcom/easemob/cloud/CustomMultiPartEntity;->addPart(Ljava/lang/String;Linternal/org/apache/http/entity/mime/content/ContentBody;)V

    :goto_2
    invoke-static {v5}, Lcom/easemob/cloud/HttpFileManager;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "CloudFileManager"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, " remote file name : "

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "file"

    new-instance v10, Linternal/org/apache/http/entity/mime/content/FileBody;

    const-string v12, "UTF-8"

    invoke-direct {v10, v5, v2, v3, v12}, Linternal/org/apache/http/entity/mime/content/FileBody;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9, v10}, Lcom/easemob/cloud/CustomMultiPartEntity;->addPart(Ljava/lang/String;Linternal/org/apache/http/entity/mime/content/ContentBody;)V

    invoke-virtual {v7}, Lcom/easemob/cloud/CustomMultiPartEntity;->getContentLength()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/easemob/cloud/HttpFileManager;->totalSize:J

    invoke-virtual {v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->N()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v11, v4}, Lcom/easemob/cloud/HttpClientManager;->checkAndProcessSSL(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V

    :cond_6
    new-instance v3, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v3}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    invoke-virtual {v3}, Lcom/easemob/analytics/EMTimeTag;->start()V

    instance-of v2, v4, Lorg/apache/http/client/HttpClient;

    if-nez v2, :cond_9

    invoke-virtual {v4, v6}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    :goto_3
    invoke-virtual {v3}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    invoke-virtual {v3}, Lcom/easemob/analytics/EMTimeTag;->timeSpent()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_7

    iget-wide v4, p0, Lcom/easemob/cloud/HttpFileManager;->totalSize:J

    invoke-static {v3, v4, v5, v11}, Lcom/easemob/analytics/EMPerformanceCollector;->collectUploadFileTime(Lcom/easemob/analytics/EMTimeTag;JLjava/lang/String;)V

    :cond_7
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const-string v4, "CloudFileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "server responseCode:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " localFilePath : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch v3, :sswitch_data_0

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Http response error : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CloudFileManager"

    invoke-static {v3, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    :goto_4
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_5
    const-string v3, "CloudFileManager"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendFiletoServerHttp:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/core/p;->f()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "refused"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lcom/easemob/cloud/HttpFileManager;->appContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/easemob/util/NetUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/core/j;->h()Z

    move-result v3

    if-eqz v3, :cond_10

    if-nez p8, :cond_f

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/j;->g()Lcom/easemob/chat/core/j$c;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/easemob/cloud/HttpClientManager;->getNewHost(Ljava/lang/String;Lcom/easemob/chat/core/j$c;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/easemob/cloud/HttpFileManager$4;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/easemob/cloud/HttpFileManager$4;-><init>(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V

    invoke-virtual {v2}, Lcom/easemob/cloud/HttpFileManager$4;->start()V

    goto/16 :goto_0

    :cond_8
    :try_start_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v3, v2}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    move-object v0, v4

    check-cast v0, Lorg/apache/http/client/HttpClient;

    move-object v2, v0

    invoke-static {v2, v6}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    goto/16 :goto_3

    :sswitch_0
    const/16 v3, 0x64

    move-object/from16 v0, p6

    invoke-interface {v0, v3}, Lcom/easemob/cloud/CloudOperationCallback;->onProgress(I)V

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onSuccess(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->z()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_a

    if-eqz p6, :cond_0

    const-string v2, "unauthorized file"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    iget-boolean v2, p0, Lcom/easemob/cloud/HttpFileManager;->tokenRetrieved:Z

    if-eqz v2, :cond_b

    const-string v2, "unauthorized file"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->y()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/easemob/cloud/HttpFileManager;->tokenRetrieved:Z

    if-nez v2, :cond_c

    const-string v2, "unauthorized token is null"

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_c
    const-string v3, "Authorization"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Bearer "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p8, :cond_d

    new-instance v2, Lcom/easemob/cloud/HttpFileManager$2;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/easemob/cloud/HttpFileManager$2;-><init>(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V

    invoke-virtual {v2}, Lcom/easemob/cloud/HttpFileManager$2;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_d
    if-lez p7, :cond_0

    add-int/lit8 v10, p7, -0x1

    :try_start_2
    new-instance v2, Lcom/easemob/cloud/HttpFileManager$3;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/easemob/cloud/HttpFileManager$3;-><init>(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;I)V

    invoke-virtual {v2}, Lcom/easemob/cloud/HttpFileManager$3;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v2

    move/from16 p7, v10

    goto/16 :goto_4

    :cond_e
    const-string v2, "failed to upload the files"

    goto/16 :goto_5

    :cond_f
    if-lez p7, :cond_10

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/j;->g()Lcom/easemob/chat/core/j$c;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/easemob/cloud/HttpClientManager;->getNewHost(Ljava/lang/String;Lcom/easemob/chat/core/j$c;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v10, p7, -0x1

    new-instance v2, Lcom/easemob/cloud/HttpFileManager$5;

    move-object v3, p0

    move-object v4, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/easemob/cloud/HttpFileManager$5;-><init>(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;I)V

    invoke-virtual {v2}, Lcom/easemob/cloud/HttpFileManager$5;->start()V

    goto/16 :goto_0

    :cond_10
    if-eqz p6, :cond_0

    move-object/from16 v0, p6

    invoke-interface {v0, v2}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_11
    move-object v2, p2

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x191 -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public authorization()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public deleteFileInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/easemob/cloud/CloudOperationCallback;)V
    .locals 1

    new-instance v0, Lcom/easemob/cloud/HttpFileManager$9;

    invoke-direct {v0, p0, p1, p2, p4}, Lcom/easemob/cloud/HttpFileManager$9;-><init>(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Lcom/easemob/cloud/CloudOperationCallback;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/easemob/cloud/CloudOperationCallback;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p5, :cond_0

    const-string v0, "remotefilepath is null or empty"

    invoke-interface {p5, v0}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    :cond_0
    const-string v0, "CloudFileManager"

    const-string v1, "remotefilepath is null or empty"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/easemob/cloud/HttpClientConfig;->getFileRemoteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p4, p5}, Lcom/easemob/cloud/HttpFileManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V

    goto :goto_0
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/easemob/cloud/CloudOperationCallback;",
            ")V"
        }
    .end annotation

    const/16 v5, 0x14

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/easemob/cloud/HttpFileManager;->downloadFileWithCountDown(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "failed to download file : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p4, :cond_0

    invoke-interface {p4, v0}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/easemob/cloud/CloudOperationCallback;",
            ")V"
        }
    .end annotation

    :try_start_0
    invoke-direct/range {p0 .. p6}, Lcom/easemob/cloud/HttpFileManager;->sendFiletoServerHttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CloudFileManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "uploadFile error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p6, v0}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public uploadFileInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/easemob/cloud/CloudOperationCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/easemob/cloud/HttpFileManager$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/easemob/cloud/HttpFileManager$6;-><init>(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V

    invoke-virtual {v0}, Lcom/easemob/cloud/HttpFileManager$6;->start()V

    return-void
.end method
