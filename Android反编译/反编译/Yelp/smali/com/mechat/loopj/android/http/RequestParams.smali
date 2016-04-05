.class public Lcom/mechat/loopj/android/http/RequestParams;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;,
        Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;
    }
.end annotation


# static fields
.field public static final APPLICATION_JSON:Ljava/lang/String; = "application/json"

.field public static final APPLICATION_OCTET_STREAM:Ljava/lang/String; = "application/octet-stream"

.field protected static final LOG_TAG:Ljava/lang/String; = "RequestParams"


# instance fields
.field protected autoCloseInputStreams:Z

.field protected contentEncoding:Ljava/lang/String;

.field protected final fileParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected isRepeatable:Z

.field protected final streamParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;",
            ">;"
        }
    .end annotation
.end field

.field protected final urlParams:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected useJsonStreamer:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 126
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 150
    new-instance v0, Lcom/mechat/loopj/android/http/RequestParams$1;

    invoke-direct {v0, p1, p2}, Lcom/mechat/loopj/android/http/RequestParams$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 134
    .local p1, source:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mechat/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mechat/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/mechat/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    .line 135
    if-eqz p1, :cond_0

    .line 136
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 140
    :cond_0
    return-void

    .line 136
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 137
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/mechat/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 6
    .parameter "keysAndValues"

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 103
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/mechat/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 104
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/mechat/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    .line 105
    new-instance v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v4, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    .line 106
    const-string v4, "UTF-8"

    iput-object v4, p0, Lcom/mechat/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    .line 164
    array-length v2, p1

    .line 165
    .local v2, len:I
    rem-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_0

    .line 166
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Supplied arguments must be even"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 167
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 172
    return-void

    .line 168
    :cond_1
    aget-object v4, p1, v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, val:Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/mechat/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private createFormEntity()Lorg/apache/http/HttpEntity;
    .locals 4

    .prologue
    .line 462
    :try_start_0
    new-instance v1, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/RequestParams;->getParamsList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mechat/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_0
    return-object v1

    .line 463
    :catch_0
    move-exception v0

    .line 464
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v1, "RequestParams"

    const-string v2, "createFormEntity failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 465
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createJsonStreamerEntity(Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .locals 12
    .parameter "progressHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 425
    new-instance v0, Lcom/mechat/loopj/android/http/JsonStreamerEntity;

    .line 426
    iget-object v6, p0, Lcom/mechat/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mechat/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 425
    const/4 v6, 0x0

    :goto_0
    invoke-direct {v0, p1, v6}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;-><init>(Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Z)V

    .line 429
    .local v0, entity:Lcom/mechat/loopj/android/http/JsonStreamerEntity;
    iget-object v6, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 434
    iget-object v6, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 439
    iget-object v6, p0, Lcom/mechat/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 444
    iget-object v6, p0, Lcom/mechat/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_5

    .line 457
    return-object v0

    .line 425
    .end local v0           #entity:Lcom/mechat/loopj/android/http/JsonStreamerEntity;
    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    .line 429
    .restart local v0       #entity:Lcom/mechat/loopj/android/http/JsonStreamerEntity;
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 430
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 434
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 435
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 439
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 440
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 444
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;>;"
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 445
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;

    .line 446
    .local v5, stream:Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;
    iget-object v6, v5, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    if-eqz v6, :cond_0

    .line 447
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 449
    iget-object v8, v5, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    .line 450
    iget-object v9, v5, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    .line 451
    iget-object v10, v5, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    .line 452
    iget-boolean v11, v5, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->autoClose:Z

    .line 448
    invoke-static {v8, v9, v10, v11}, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;

    move-result-object v8

    .line 447
    invoke-virtual {v0, v6, v8}, Lcom/mechat/loopj/android/http/JsonStreamerEntity;->addPart(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4
.end method

.method private createMultipartEntity(Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .locals 13
    .parameter "progressHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 470
    new-instance v0, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;

    invoke-direct {v0, p1}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;-><init>(Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)V

    .line 471
    .local v0, entity:Lcom/mechat/loopj/android/http/SimpleMultipartEntity;
    iget-boolean v8, p0, Lcom/mechat/loopj/android/http/RequestParams;->isRepeatable:Z

    invoke-virtual {v0, v8}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->setIsRepeatable(Z)V

    .line 474
    iget-object v8, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 479
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v8, v9}, Lcom/mechat/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 480
    .local v6, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 485
    iget-object v8, p0, Lcom/mechat/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_3

    .line 494
    iget-object v8, p0, Lcom/mechat/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v8}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_4

    .line 499
    return-object v0

    .line 474
    .end local v6           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_1
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 475
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v11, p0, Lcom/mechat/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v8, v9, v11}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 480
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v6       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/message/BasicNameValuePair;

    .line 481
    .local v5, kv:Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v5}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/mechat/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v9, v10, v11}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->addPartWithCharset(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 485
    .end local v5           #kv:Lorg/apache/http/message/BasicNameValuePair;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 486
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;

    .line 487
    .local v7, stream:Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;
    iget-object v8, v7, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    if-eqz v8, :cond_0

    .line 488
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v10, v7, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iget-object v11, v7, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    .line 489
    iget-object v12, v7, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    .line 488
    invoke-virtual {v0, v8, v10, v11, v12}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_2

    .line 494
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;>;"
    .end local v7           #stream:Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 495
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;

    .line 496
    .local v4, fileWrapper:Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v10, v4, Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;->file:Ljava/io/File;

    iget-object v11, v4, Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v8, v10, v11}, Lcom/mechat/loopj/android/http/SimpleMultipartEntity;->addPart(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;
    .locals 15
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 516
    .local v9, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    move-object/from16 v0, p2

    instance-of v11, v0, Ljava/util/Map;

    if-eqz v11, :cond_5

    move-object/from16 v5, p2

    .line 517
    check-cast v5, Ljava/util/Map;

    .line 518
    .local v5, map:Ljava/util/Map;
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 520
    .local v3, list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_0

    const/4 v11, 0x0

    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Ljava/lang/Comparable;

    if-eqz v11, :cond_0

    .line 521
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 523
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_3

    .line 552
    .end local v3           #list:Ljava/util/List;
    .end local v5           #map:Ljava/util/Map;
    :cond_2
    :goto_1
    return-object v9

    .line 523
    .restart local v3       #list:Ljava/util/List;
    .restart local v5       #map:Ljava/util/Map;
    :cond_3
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 524
    .local v6, nestedKey:Ljava/lang/Object;
    instance-of v12, v6, Ljava/lang/String;

    if-eqz v12, :cond_1

    .line 525
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 526
    .local v7, nestedValue:Ljava/lang/Object;
    if-eqz v7, :cond_1

    .line 527
    if-nez p1, :cond_4

    check-cast v6, Ljava/lang/String;

    .end local v6           #nestedKey:Ljava/lang/Object;
    :goto_2
    invoke-direct {p0, v6, v7}, Lcom/mechat/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .restart local v6       #nestedKey:Ljava/lang/Object;
    :cond_4
    const-string v12, "%s[%s]"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object p1, v13, v14

    const/4 v14, 0x1

    aput-object v6, v13, v14

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 532
    .end local v3           #list:Ljava/util/List;
    .end local v5           #map:Ljava/util/Map;
    .end local v6           #nestedKey:Ljava/lang/Object;
    .end local v7           #nestedValue:Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p2

    instance-of v11, v0, Ljava/util/List;

    if-eqz v11, :cond_6

    move-object/from16 v3, p2

    .line 533
    check-cast v3, Ljava/util/List;

    .line 534
    .restart local v3       #list:Ljava/util/List;
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 535
    .local v4, listSize:I
    const/4 v8, 0x0

    .local v8, nestedValueIndex:I
    :goto_3
    if-ge v8, v4, :cond_2

    .line 536
    const-string v11, "%s[%d]"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/mechat/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 535
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 538
    .end local v3           #list:Ljava/util/List;
    .end local v4           #listSize:I
    .end local v8           #nestedValueIndex:I
    :cond_6
    move-object/from16 v0, p2

    instance-of v11, v0, [Ljava/lang/Object;

    if-eqz v11, :cond_7

    move-object/from16 v1, p2

    .line 539
    check-cast v1, [Ljava/lang/Object;

    .line 540
    .local v1, array:[Ljava/lang/Object;
    array-length v2, v1

    .line 541
    .local v2, arrayLength:I
    const/4 v8, 0x0

    .restart local v8       #nestedValueIndex:I
    :goto_4
    if-ge v8, v2, :cond_2

    .line 542
    const-string v11, "%s[%d]"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p1, v12, v13

    const/4 v13, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    aget-object v12, v1, v8

    invoke-direct {p0, v11, v12}, Lcom/mechat/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 541
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 544
    .end local v1           #array:[Ljava/lang/Object;
    .end local v2           #arrayLength:I
    .end local v8           #nestedValueIndex:I
    :cond_7
    move-object/from16 v0, p2

    instance-of v11, v0, Ljava/util/Set;

    if-eqz v11, :cond_8

    move-object/from16 v10, p2

    .line 545
    check-cast v10, Ljava/util/Set;

    .line 546
    .local v10, set:Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 547
    .restart local v7       #nestedValue:Ljava/lang/Object;
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v7}, Lcom/mechat/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-interface {v9, v12}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 550
    .end local v7           #nestedValue:Ljava/lang/Object;
    .end local v10           #set:Ljava/util/Set;
    :cond_8
    new-instance v11, Lorg/apache/http/message/BasicNameValuePair;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-direct {v11, v0, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 305
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 306
    iget-object v1, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 307
    .local v0, params:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 309
    new-instance v0, Ljava/util/HashSet;

    .end local v0           #params:Ljava/lang/Object;
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 310
    .local v0, params:Ljava/util/HashSet;
    invoke-virtual {p0, p1, v0}, Lcom/mechat/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    .end local v0           #params:Ljava/util/HashSet;
    :cond_0
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 313
    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    instance-of v1, v0, Ljava/util/Set;

    if-eqz v1, :cond_1

    .line 315
    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getEntity(Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .locals 1
    .parameter "progressHandler"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 415
    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->useJsonStreamer:Z

    if-eqz v0, :cond_0

    .line 416
    invoke-direct {p0, p1}, Lcom/mechat/loopj/android/http/RequestParams;->createJsonStreamerEntity(Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    .line 420
    :goto_0
    return-object v0

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/RequestParams;->createFormEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    goto :goto_0

    .line 420
    :cond_1
    invoke-direct {p0, p1}, Lcom/mechat/loopj/android/http/RequestParams;->createMultipartEntity(Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    goto :goto_0
.end method

.method protected getParamString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/RequestParams;->getParamsList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/apache/http/client/utils/URLEncodedUtils;->format(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParamsList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 505
    .local v1, lparams:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v2, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 509
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v2, v3}, Lcom/mechat/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 511
    return-object v1

    .line 505
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 506
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 339
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 281
    if-eqz p1, :cond_0

    .line 282
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;J)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 293
    if-eqz p1, :cond_0

    .line 294
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .parameter "key"
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mechat/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .parameter "key"
    .parameter "file"
    .parameter "contentType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 206
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 207
    :cond_0
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0}, Ljava/io/FileNotFoundException;-><init>()V

    throw v0

    .line 209
    :cond_1
    if-eqz p1, :cond_2

    .line 210
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;

    invoke-direct {v1, p2, p3}, Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_2
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .parameter "key"
    .parameter "stream"

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mechat/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "stream"
    .parameter "name"

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mechat/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "key"
    .parameter "stream"
    .parameter "name"
    .parameter "contentType"

    .prologue
    .line 244
    iget-boolean v5, p0, Lcom/mechat/loopj/android/http/RequestParams;->autoCloseInputStreams:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/loopj/android/http/RequestParams;->put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 245
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .parameter "key"
    .parameter "stream"
    .parameter "name"
    .parameter "contentType"
    .parameter "autoClose"

    .prologue
    .line 257
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 258
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3, p4, p5}, Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;->newInstance(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 269
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 270
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 181
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 182
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    return-void
.end method

.method public setAutoCloseInputStreams(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 403
    iput-boolean p1, p0, Lcom/mechat/loopj/android/http/RequestParams;->autoCloseInputStreams:Z

    .line 404
    return-void
.end method

.method public setContentEncoding(Ljava/lang/String;)V
    .locals 2
    .parameter "encoding"

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    iput-object p1, p0, Lcom/mechat/loopj/android/http/RequestParams;->contentEncoding:Ljava/lang/String;

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v0, "RequestParams"

    const-string v1, "setContentEncoding called with null attribute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHttpEntityIsRepeatable(Z)V
    .locals 0
    .parameter "isRepeatable"

    .prologue
    .line 389
    iput-boolean p1, p0, Lcom/mechat/loopj/android/http/RequestParams;->isRepeatable:Z

    .line 390
    return-void
.end method

.method public setUseJsonStreamer(Z)V
    .locals 0
    .parameter "useJsonStreamer"

    .prologue
    .line 393
    iput-boolean p1, p0, Lcom/mechat/loopj/android/http/RequestParams;->useJsonStreamer:Z

    .line 394
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 347
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v5, result:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 357
    iget-object v6, p0, Lcom/mechat/loopj/android/http/RequestParams;->streamParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 366
    iget-object v6, p0, Lcom/mechat/loopj/android/http/RequestParams;->fileParams:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 375
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mechat/loopj/android/http/RequestParams;->urlParamsWithObjects:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v6, v7}, Lcom/mechat/loopj/android/http/RequestParams;->getParamsList(Ljava/lang/String;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 376
    .local v4, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 385
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 348
    .end local v4           #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 349
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 350
    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 357
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 358
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;>;"
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 359
    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string v6, "STREAM"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 366
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams$StreamWrapper;>;"
    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 367
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;>;"
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 368
    const-string v6, "&"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_5
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v6, "FILE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 376
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams$FileWrapper;>;"
    .restart local v4       #params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/message/BasicNameValuePair;

    .line 377
    .local v3, kv:Lorg/apache/http/message/BasicNameValuePair;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 378
    const-string v7, "&"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_7
    invoke-virtual {v3}, Lorg/apache/http/message/BasicNameValuePair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string v7, "="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v3}, Lorg/apache/http/message/BasicNameValuePair;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method
