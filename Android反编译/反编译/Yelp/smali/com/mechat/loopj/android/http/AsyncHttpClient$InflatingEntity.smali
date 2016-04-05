.class Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;
.super Lorg/apache/http/entity/HttpEntityWrapper;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/loopj/android/http/AsyncHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflatingEntity"
.end annotation


# instance fields
.field gzippedStream:Ljava/util/zip/GZIPInputStream;

.field pushbackStream:Ljava/io/PushbackInputStream;

.field wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lorg/apache/http/HttpEntity;)V
    .locals 0
    .parameter "wrapped"

    .prologue
    .line 1307
    invoke-direct {p0, p1}, Lorg/apache/http/entity/HttpEntityWrapper;-><init>(Lorg/apache/http/HttpEntity;)V

    .line 1308
    return-void
.end method


# virtual methods
.method public consumeContent()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1333
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;->wrappedStream:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 1334
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 1335
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;->gzippedStream:Ljava/util/zip/GZIPInputStream;

    invoke-static {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->silentCloseInputStream(Ljava/io/InputStream;)V

    .line 1336
    invoke-super {p0}, Lorg/apache/http/entity/HttpEntityWrapper;->consumeContent()V

    .line 1337
    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;->wrappedEntity:Lorg/apache/http/HttpEntity;

    invoke-interface {v0}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;->wrappedStream:Ljava/io/InputStream;

    .line 1317
    new-instance v0, Ljava/io/PushbackInputStream;

    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;->wrappedStream:Ljava/io/InputStream;

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    iput-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    .line 1318
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    invoke-static {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->isInputStreamGZIPCompressed(Ljava/io/PushbackInputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;->gzippedStream:Ljava/util/zip/GZIPInputStream;

    .line 1320
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;->gzippedStream:Ljava/util/zip/GZIPInputStream;

    .line 1322
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;->pushbackStream:Ljava/io/PushbackInputStream;

    goto :goto_0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 1328
    const-wide/16 v0, -0x1

    return-wide v0
.end method
