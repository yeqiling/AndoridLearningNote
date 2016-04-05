.class public Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;
.super Ljava/lang/Object;
.source "IndexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntArray1NWriter"
.end annotation


# instance fields
.field body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

.field header:[I

.field indexFile:Ljava/io/File;

.field out:Ljava/io/DataOutputStream;


# direct methods
.method public constructor <init>(ILjava/io/File;)V
    .locals 4
    .parameter "size"
    .parameter "indexFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 468
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->header:[I

    .line 469
    iput-object p2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->indexFile:Ljava/io/File;

    .line 471
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->out:Ljava/io/DataOutputStream;

    .line 472
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-direct {v0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    .line 473
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->out:Ljava/io/DataOutputStream;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->openStream(Ljava/io/DataOutputStream;J)V

    .line 474
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 547
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->out:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->out:Ljava/io/DataOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 556
    :cond_1
    :goto_0
    return-void

    .line 552
    :catch_0
    move-exception v0

    .line 554
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->indexFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->indexFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_2
    throw v0
.end method

.method protected createReader(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    .locals 2
    .parameter "headerIndex"
    .parameter "bodyIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 542
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->indexFile:Ljava/io/File;

    invoke-direct {v0, v1, p1, p2}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;-><init>(Ljava/io/File;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)V

    return-object v0
.end method

.method public flush()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 525
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->closeStream()J

    move-result-wide v0

    .line 527
    .local v0, divider:J
    new-instance v3, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-direct {v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;-><init>()V

    iget-object v4, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->out:Ljava/io/DataOutputStream;

    iget-object v5, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->header:[I

    invoke-virtual {v3, v4, v0, v1, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->writeTo(Ljava/io/DataOutputStream;J[I)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v2

    .line 529
    .local v2, headerIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 531
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 532
    iput-object v6, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->out:Ljava/io/DataOutputStream;

    .line 534
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-virtual {v3, v6}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->getReader(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->createReader(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v3

    return-object v3
.end method

.method public getIndexFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->indexFile:Ljava/io/File;

    return-object v0
.end method

.method public log(ILorg/eclipse/mat/collect/ArrayInt;)V
    .locals 3
    .parameter "index"
    .parameter "references"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-virtual {p2}, Lorg/eclipse/mat/collect/ArrayInt;->toArray()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/eclipse/mat/collect/ArrayInt;->size()I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->set(I[III)V

    .line 510
    return-void
.end method

.method public log(I[I)V
    .locals 2
    .parameter "index"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 513
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->set(I[III)V

    .line 514
    return-void
.end method

.method public log(Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;ILorg/eclipse/mat/collect/ArrayLong;)V
    .locals 18
    .parameter "identifer"
    .parameter "index"
    .parameter "references"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 480
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/mat/collect/ArrayLong;->firstElement()J

    move-result-wide v12

    .line 482
    .local v12, pseudo:J
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/mat/collect/ArrayLong;->sort()V

    .line 484
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/mat/collect/ArrayLong;->size()I

    move-result v14

    new-array v11, v14, [I

    .line 485
    .local v11, objectIds:[I
    const/4 v8, 0x1

    .line 487
    .local v8, length:I
    const-wide/16 v2, 0x0

    .local v2, current:J
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/mat/collect/ArrayLong;->firstElement()J

    move-result-wide v14

    const-wide/16 v16, 0x1

    sub-long v6, v14, v16

    .line 488
    .local v6, last:J
    const/4 v4, 0x0

    .local v4, ii:I
    :goto_0
    array-length v14, v11

    if-ge v4, v14, :cond_2

    .line 489
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/eclipse/mat/collect/ArrayLong;->get(I)J

    move-result-wide v2

    .line 490
    cmp-long v14, v6, v2

    if-eqz v14, :cond_0

    .line 491
    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->reverse(J)I

    move-result v10

    .line 493
    .local v10, objectId:I
    if-ltz v10, :cond_0

    .line 494
    cmp-long v14, v2, v12

    if-nez v14, :cond_1

    const/4 v5, 0x0

    .line 495
    .local v5, jj:I
    :goto_1
    aput v10, v11, v5

    .line 499
    .end local v5           #jj:I
    .end local v10           #objectId:I
    :cond_0
    move-wide v6, v2

    .line 488
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 494
    .restart local v10       #objectId:I
    :cond_1
    add-int/lit8 v9, v8, 0x1

    .end local v8           #length:I
    .local v9, length:I
    move v5, v8

    move v8, v9

    .end local v9           #length:I
    .restart local v8       #length:I
    goto :goto_1

    .line 502
    .end local v10           #objectId:I
    :cond_2
    const/4 v14, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1, v11, v14, v8}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->set(I[III)V

    .line 503
    return-void
.end method

.method protected set(I[III)V
    .locals 2
    .parameter "index"
    .parameter "values"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->header:[I

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->size()I

    move-result v1

    aput v1, v0, p1

    .line 519
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-virtual {v0, p4}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->add(I)V

    .line 521
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-virtual {v0, p2, p3, p4}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->addAll([III)V

    .line 522
    return-void
.end method
