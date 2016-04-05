.class public Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;
.super Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;
.source "IndexReader.java"

# interfaces
.implements Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongIndexReader"
.end annotation


# instance fields
.field LOCK:Ljava/lang/Object;

.field in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

.field indexFile:Ljava/io/File;

.field pageStart:[J


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 6
    .parameter "indexFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 313
    new-instance v1, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v0, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;-><init>(Ljava/io/RandomAccessFile;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;-><init>(Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;JJ)V

    .line 315
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->indexFile:Ljava/io/File;

    .line 317
    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->open()V

    .line 318
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/eclipse/mat/collect/HashMapIntObject;II[J)V
    .locals 1
    .parameter "indexFile"
    .parameter
    .parameter "size"
    .parameter "pageSize"
    .parameter "pageStart"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Ljava/lang/Object;",
            ">;II[J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 301
    .local p2, pages:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Ljava/lang/Object;>;"
    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;-><init>()V

    .line 294
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->LOCK:Ljava/lang/Object;

    .line 302
    iput p3, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->size:I

    .line 303
    iput p4, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->pageSize:I

    .line 304
    iput-object p2, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->pages:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 306
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->indexFile:Ljava/io/File;

    .line 307
    iput-object p5, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->pageStart:[J

    .line 309
    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->open()V

    .line 310
    return-void
.end method

.method protected constructor <init>(Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;JJ)V
    .locals 8
    .parameter "in"
    .parameter "start"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x8

    .line 321
    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;-><init>()V

    .line 294
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->LOCK:Ljava/lang/Object;

    .line 322
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    .line 323
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    add-long v4, p2, p4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->seek(J)V

    .line 325
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readInt()I

    move-result v0

    .line 326
    .local v0, pageSize:I
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readInt()I

    move-result v2

    .line 328
    .local v2, size:I
    invoke-virtual {p0, v2, v0}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->init(II)V

    .line 330
    div-int v4, v2, v0

    rem-int v3, v2, v0

    if-lez v3, :cond_0

    const/4 v3, 0x2

    :goto_0
    add-int v1, v4, v3

    .line 332
    .local v1, pages:I
    new-array v3, v1, [J

    iput-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->pageStart:[J

    .line 334
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    add-long v4, p2, p4

    sub-long/2addr v4, v6

    iget-object v6, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->pageStart:[J

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->seek(J)V

    .line 335
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iget-object v4, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->pageStart:[J

    invoke-virtual {v3, v4}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readLongArray([J)I

    .line 336
    return-void

    .line 330
    .end local v1           #pages:I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private declared-synchronized open()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 347
    :goto_0
    monitor-exit p0

    return-void

    .line 341
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->indexFile:Ljava/io/File;

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lorg/eclipse/mat/hprof/Messages;->IndexReader_Error_IndexIsEmbedded:Lorg/eclipse/mat/hprof/Messages;

    iget-object v1, v1, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 345
    :cond_1
    :try_start_2
    new-instance v0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->indexFile:Ljava/io/File;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->unload()V

    .line 352
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 354
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 361
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 358
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 350
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 358
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 395
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->close()V

    .line 397
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->indexFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 398
    :cond_0
    return-void
.end method

.method public bridge synthetic get(I)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 292
    invoke-super {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getNext(II)[J
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->getNext(II)[J

    move-result-object v0

    return-object v0
.end method

.method protected getPage(I)Lorg/eclipse/mat/collect/ArrayLongCompressed;
    .locals 14
    .parameter "page"

    .prologue
    const/4 v8, 0x0

    .line 364
    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->pages:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v7, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/SoftReference;

    .line 365
    .local v6, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/eclipse/mat/collect/ArrayLongCompressed;>;"
    if-nez v6, :cond_0

    move-object v2, v8

    .line 366
    .local v2, array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    :goto_0
    if-nez v2, :cond_4

    .line 367
    iget-object v9, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 368
    :try_start_0
    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->pages:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v7, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/ref/SoftReference;

    move-object v6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    if-nez v6, :cond_1

    move-object v2, v8

    .line 371
    :goto_1
    if-nez v2, :cond_3

    .line 373
    const/4 v4, 0x0

    .line 375
    .local v4, buffer:[B
    :try_start_1
    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iget-object v8, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->pageStart:[J

    aget-wide v10, v8, p1

    invoke-virtual {v7, v10, v11}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->seek(J)V

    .line 377
    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->pageStart:[J

    add-int/lit8 v8, p1, 0x1

    aget-wide v10, v7, v8

    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->pageStart:[J

    aget-wide v12, v7, p1

    sub-long/2addr v10, v12

    long-to-int v7, v10

    new-array v4, v7, [B

    .line 378
    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    invoke-virtual {v7, v4}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->read([B)I

    move-result v7

    array-length v8, v4

    if-eq v7, v8, :cond_2

    new-instance v7, Ljava/io/IOException;

    invoke-direct {v7}, Ljava/io/IOException;-><init>()V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 385
    :catch_0
    move-exception v5

    .line 386
    .end local v2           #array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    .local v5, e:Ljava/io/IOException;
    :goto_2
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 389
    .end local v4           #buffer:[B
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 365
    :cond_0
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/mat/collect/ArrayLongCompressed;

    move-object v2, v7

    goto :goto_0

    .line 369
    .restart local v2       #array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    :cond_1
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/mat/collect/ArrayLongCompressed;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v7

    goto :goto_1

    .line 380
    .restart local v4       #buffer:[B
    :cond_2
    :try_start_4
    new-instance v3, Lorg/eclipse/mat/collect/ArrayLongCompressed;

    invoke-direct {v3, v4}, Lorg/eclipse/mat/collect/ArrayLongCompressed;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 382
    .end local v2           #array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    .local v3, array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    :try_start_5
    iget-object v8, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->pages:Lorg/eclipse/mat/collect/HashMapIntObject;

    monitor-enter v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 383
    :try_start_6
    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$LongIndexReader;->pages:Lorg/eclipse/mat/collect/HashMapIntObject;

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, p1, v10}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 384
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v3

    .line 389
    .end local v3           #array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    .end local v4           #buffer:[B
    :cond_3
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 391
    :cond_4
    return-object v2

    .line 384
    .restart local v3       #array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    .restart local v4       #buffer:[B
    :catchall_1
    move-exception v7

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    .line 385
    :catch_1
    move-exception v5

    move-object v2, v3

    .local v2, array:Ljava/lang/Object;
    goto :goto_2

    .line 389
    .end local v2           #array:Ljava/lang/Object;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .restart local v2       #array:Ljava/lang/Object;
    goto :goto_3
.end method

.method public bridge synthetic iterator()Lorg/eclipse/mat/collect/IteratorLong;
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->iterator()Lorg/eclipse/mat/collect/IteratorLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse(J)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 292
    invoke-super {p0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->reverse(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic set(IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 292
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->set(IJ)V

    return-void
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic unload()V
    .locals 0

    .prologue
    .line 292
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->unload()V

    return-void
.end method
