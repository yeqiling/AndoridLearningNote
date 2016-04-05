.class public Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;
.super Ljava/lang/Object;
.source "IndexReader.java"

# interfaces
.implements Lorg/eclipse/mat/parser/index/IIndexReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongIndex1NReader"
.end annotation


# instance fields
.field body:Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

.field header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

.field in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

.field indexFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 12
    .parameter "indexFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x8

    .line 407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->indexFile:Ljava/io/File;

    .line 410
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->open()V

    .line 412
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 413
    .local v10, indexLength:J
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    sub-long v4, v10, v6

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->seek(J)V

    .line 414
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readLong()J

    move-result-wide v2

    .line 416
    .local v2, divider:J
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    sub-long v4, v10, v2

    sub-long/2addr v4, v6

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;-><init>(Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;JJ)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    .line 417
    new-instance v4, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    iget-object v5, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    const-wide/16 v6, 0x0

    move-wide v8, v2

    invoke-direct/range {v4 .. v9}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;-><init>(Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;JJ)V

    iput-object v4, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    .line 419
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v1, v1, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->LOCK:Ljava/lang/Object;

    iput-object v1, v0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->LOCK:Ljava/lang/Object;

    .line 420
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 4

    .prologue
    .line 449
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->unload()V

    .line 451
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 453
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 457
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iput-object v2, v0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iput-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 460
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 454
    :catch_0
    move-exception v0

    .line 457
    :try_start_3
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iput-object v2, v0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iput-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 449
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 457
    :catchall_1
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    const/4 v3, 0x0

    iput-object v3, v2, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iput-object v3, v1, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iput-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 472
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->close()V

    .line 474
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->indexFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 475
    :cond_0
    return-void
.end method

.method public get(I)[J
    .locals 4
    .parameter "index"

    .prologue
    .line 423
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v2, p1}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->get(I)I

    move-result v1

    .line 425
    .local v1, p:I
    if-nez v1, :cond_0

    const/4 v2, 0x0

    new-array v2, v2, [J

    .line 429
    :goto_0
    return-object v2

    .line 427
    :cond_0
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->get(I)J

    move-result-wide v2

    long-to-int v0, v2

    .line 429
    .local v0, length:I
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    invoke-virtual {v2, v1, v0}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->getNext(II)[J

    move-result-object v2

    goto :goto_0
.end method

.method protected declared-synchronized open()V
    .locals 5

    .prologue
    .line 434
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    if-nez v1, :cond_1

    .line 436
    new-instance v1, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->indexFile:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    .line 439
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iput-object v2, v1, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    .line 441
    :cond_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iput-object v2, v1, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_1
    monitor-exit p0

    return-void

    .line 443
    :catch_0
    move-exception v0

    .line 444
    .local v0, e:Ljava/io/IOException;
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->size()I

    move-result v0

    return v0
.end method

.method public unload()V
    .locals 1

    .prologue
    .line 463
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->unload()V

    .line 464
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndex1NReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->unload()V

    .line 465
    return-void
.end method
