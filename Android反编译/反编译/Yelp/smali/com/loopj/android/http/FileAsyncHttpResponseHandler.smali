.class public abstract Lcom/loopj/android/http/FileAsyncHttpResponseHandler;
.super Lcom/loopj/android/http/AsyncHttpResponseHandler;
.source "FileAsyncHttpResponseHandler.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FileAsyncHttpResponseHandler"


# instance fields
.field protected final append:Z

.field protected final mFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 71
    invoke-virtual {p0, p1}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTemporaryFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->mFile:Ljava/io/File;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->append:Z

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .parameter "file"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;-><init>(Ljava/io/File;Z)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Z)V
    .locals 4
    .parameter "file"
    .parameter "append"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Lcom/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 55
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "File passed into FileAsyncHttpResponseHandler constructor must not be null"

    invoke-static {v0, v3}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 56
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    const-string v0, "File passed into FileAsyncHttpResponseHandler constructor must not point to directory"

    invoke-static {v1, v0}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    const-string v1, "Cannot create parent directories for requested File location"

    invoke-static {v0, v1}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->mFile:Ljava/io/File;

    .line 61
    iput-boolean p2, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->append:Z

    .line 62
    return-void

    :cond_1
    move v0, v2

    .line 55
    goto :goto_0

    :cond_2
    move v1, v2

    .line 56
    goto :goto_1
.end method


# virtual methods
.method public deleteTargetFile()Z
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getResponseData(Lorg/apache/http/HttpEntity;)[B
    .locals 10
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    if-eqz p1, :cond_1

    .line 145
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v4

    .line 146
    .local v4, instream:Ljava/io/InputStream;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    .line 147
    .local v2, contentLength:J
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v7

    iget-boolean v8, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->append:Z

    invoke-direct {v0, v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 148
    .local v0, buffer:Ljava/io/FileOutputStream;
    if-eqz v4, :cond_1

    .line 150
    const/16 v7, 0x1000

    :try_start_0
    new-array v6, v7, [B

    .line 151
    .local v6, tmp:[B
    const/4 v1, 0x0

    .line 153
    .local v1, count:I
    :goto_0
    invoke-virtual {v4, v6}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .local v5, l:I
    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v7

    if-nez v7, :cond_0

    .line 154
    add-int/2addr v1, v5

    .line 155
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 156
    int-to-long v8, v1

    invoke-virtual {p0, v8, v9, v2, v3}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->sendProgressMessage(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    .end local v1           #count:I
    .end local v5           #l:I
    .end local v6           #tmp:[B
    :catchall_0
    move-exception v7

    invoke-static {v4}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 161
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    throw v7

    .line 159
    .restart local v1       #count:I
    .restart local v5       #l:I
    .restart local v6       #tmp:[B
    :cond_0
    invoke-static {v4}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 160
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 161
    invoke-static {v0}, Lcom/loopj/android/http/AsyncHttpClient;->silentCloseOutputStream(Ljava/io/OutputStream;)V

    .line 165
    .end local v0           #buffer:Ljava/io/FileOutputStream;
    .end local v1           #count:I
    .end local v2           #contentLength:J
    .end local v4           #instream:Ljava/io/InputStream;
    .end local v5           #l:I
    .end local v6           #tmp:[B
    :cond_1
    const/4 v7, 0x0

    return-object v7
.end method

.method protected getTargetFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 108
    sget-boolean v0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->mFile:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->mFile:Ljava/io/File;

    return-object v0
.end method

.method protected getTemporaryFile(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .parameter "context"

    .prologue
    .line 91
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const-string v2, "Tried creating temporary file without having Context"

    invoke-static {v1, v2}, Lcom/loopj/android/http/Utils;->asserts(ZLjava/lang/String;)V

    .line 94
    :try_start_0
    sget-boolean v1, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->$assertionsDisabled:Z

    if-nez v1, :cond_1

    if-nez p1, :cond_1

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Ljava/io/IOException;
    const-string v1, "FileAsyncHttpResponseHandler"

    const-string v2, "Cannot create temporary file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 99
    const/4 v1, 0x0

    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    return-object v1

    .line 91
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 95
    :cond_1
    :try_start_1
    const-string v1, "temp_"

    const-string v2, "_handled"

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V
.end method

.method public final onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBytes"
    .parameter "throwable"

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 115
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V
.end method

.method public final onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBytes"

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->getTargetFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/loopj/android/http/FileAsyncHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/io/File;)V

    .line 131
    return-void
.end method
