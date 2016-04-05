.class public Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;
.super Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;
.source "IndexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntIndexStreamer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex",
        "<",
        "Ljava/lang/ref/SoftReference",
        "<",
        "Lorg/eclipse/mat/collect/ArrayIntCompressed;",
        ">;>;"
    }
.end annotation


# instance fields
.field left:I

.field out:Ljava/io/DataOutputStream;

.field page:[I

.field pageStart:Lorg/eclipse/mat/collect/ArrayLong;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 325
    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;-><init>()V

    return-void
.end method

.method private addPage()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 443
    new-instance v0, Lorg/eclipse/mat/collect/ArrayIntCompressed;

    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->page:[I

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->page:[I

    array-length v5, v5

    iget v6, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->left:I

    sub-int/2addr v5, v6

    invoke-direct {v0, v3, v4, v5}, Lorg/eclipse/mat/collect/ArrayIntCompressed;-><init>([III)V

    .line 445
    .local v0, array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    invoke-virtual {v0}, Lorg/eclipse/mat/collect/ArrayIntCompressed;->toByteArray()[B

    move-result-object v1

    .line 446
    .local v1, buffer:[B
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 447
    array-length v2, v1

    .line 449
    .local v2, written:I
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    iget-object v4, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->size()I

    move-result v4

    new-instance v5, Ljava/lang/ref/SoftReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->put(ILjava/lang/Object;)V

    .line 450
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    iget-object v4, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v4}, Lorg/eclipse/mat/collect/ArrayLong;->lastElement()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 452
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->page:[I

    array-length v3, v3

    iput v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->left:I

    .line 453
    return-void
.end method


# virtual methods
.method add(I)V
    .locals 4
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 417
    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->left:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->addPage()V

    .line 419
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->page:[I

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->page:[I

    array-length v1, v1

    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->left:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->left:I

    sub-int/2addr v1, v2

    aput p1, v0, v1

    .line 420
    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->size:I

    .line 421
    return-void
.end method

.method addAll(Lorg/eclipse/mat/collect/IteratorInt;)V
    .locals 1
    .parameter "iterator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    :goto_0
    invoke-interface {p1}, Lorg/eclipse/mat/collect/IteratorInt;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/eclipse/mat/collect/IteratorInt;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->add(I)V

    goto :goto_0

    .line 414
    :cond_0
    return-void
.end method

.method addAll([I)V
    .locals 2
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->addAll([III)V

    .line 425
    return-void
.end method

.method addAll([III)V
    .locals 4
    .parameter "values"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 428
    :goto_0
    if-lez p3, :cond_1

    .line 429
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->left:I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->addPage()V

    .line 431
    :cond_0
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->left:I

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 433
    .local v0, chunk:I
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->page:[I

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->page:[I

    array-length v2, v2

    iget v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->left:I

    sub-int/2addr v2, v3

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 434
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->left:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->left:I

    .line 435
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->size:I

    .line 437
    sub-int/2addr p3, v0

    .line 438
    add-int/2addr p2, v0

    .line 439
    goto :goto_0

    .line 440
    .end local v0           #chunk:I
    :cond_1
    return-void
.end method

.method closeStream()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 391
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->left:I

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->page:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->addPage()V

    .line 394
    :cond_0
    const/4 v0, 0x0

    .local v0, jj:I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v1}, Lorg/eclipse/mat/collect/ArrayLong;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 395
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->out:Ljava/io/DataOutputStream;

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v2, v0}, Lorg/eclipse/mat/collect/ArrayLong;->get(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 394
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 397
    :cond_1
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->out:Ljava/io/DataOutputStream;

    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pageSize:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 398
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->out:Ljava/io/DataOutputStream;

    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->size:I

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 400
    iput-object v4, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->page:[I

    .line 402
    iput-object v4, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->out:Ljava/io/DataOutputStream;

    .line 404
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v1}, Lorg/eclipse/mat/collect/ArrayLong;->lastElement()J

    move-result-wide v2

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v1}, Lorg/eclipse/mat/collect/ArrayLong;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    int-to-long v4, v1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x8

    add-long/2addr v2, v4

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v1}, Lorg/eclipse/mat/collect/ArrayLong;->firstElement()J

    move-result-wide v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method public bridge synthetic get(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 325
    invoke-super {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->get(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAll([I)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 325
    invoke-super {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->getAll([I)[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNext(II)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->getNext(II)[I

    move-result-object v0

    return-object v0
.end method

.method protected getPage(I)Lorg/eclipse/mat/collect/ArrayIntCompressed;
    .locals 1
    .parameter "page"

    .prologue
    .line 456
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method getReader(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;
    .locals 6
    .parameter "indexFile"

    .prologue
    .line 409
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    iget v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->size:I

    iget v4, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pageSize:I

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v1}, Lorg/eclipse/mat/collect/ArrayLong;->toArray()[J

    move-result-object v5

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;-><init>(Ljava/io/File;Lorg/eclipse/mat/parser/index/IndexWriter$Pages;II[J)V

    return-object v0
.end method

.method public bridge synthetic iterator()Lorg/eclipse/mat/collect/IteratorInt;
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->iterator()Lorg/eclipse/mat/collect/IteratorInt;

    move-result-object v0

    return-object v0
.end method

.method openStream(Ljava/io/DataOutputStream;J)V
    .locals 2
    .parameter "out"
    .parameter "position"

    .prologue
    .line 377
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->out:Ljava/io/DataOutputStream;

    .line 379
    const/4 v0, 0x0

    const v1, 0xf4240

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->init(II)V

    .line 381
    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pageSize:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->page:[I

    .line 382
    new-instance v0, Lorg/eclipse/mat/collect/ArrayLong;

    invoke-direct {v0}, Lorg/eclipse/mat/collect/ArrayLong;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    .line 383
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->pageStart:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v0, p2, p3}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 384
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->page:[I

    array-length v0, v0

    iput v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->left:I

    .line 385
    return-void
.end method

.method public bridge synthetic set(II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->set(II)V

    return-void
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 325
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic unload()V
    .locals 0

    .prologue
    .line 325
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->unload()V

    return-void
.end method

.method public writeTo(Ljava/io/DataOutputStream;JLorg/eclipse/mat/collect/IteratorInt;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    .locals 2
    .parameter "out"
    .parameter "position"
    .parameter "iterator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->openStream(Ljava/io/DataOutputStream;J)V

    .line 361
    invoke-virtual {p0, p4}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->addAll(Lorg/eclipse/mat/collect/IteratorInt;)V

    .line 362
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->closeStream()J

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->getReader(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/DataOutputStream;J[I)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    .locals 2
    .parameter "out"
    .parameter "position"
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->openStream(Ljava/io/DataOutputStream;J)V

    .line 370
    invoke-virtual {p0, p4}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->addAll([I)V

    .line 371
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->closeStream()J

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->getReader(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/File;Lorg/eclipse/mat/collect/IteratorInt;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    .locals 4
    .parameter "indexFile"
    .parameter "iterator"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 336
    .local v0, out:Ljava/io/DataOutputStream;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->openStream(Ljava/io/DataOutputStream;J)V

    .line 337
    invoke-virtual {p0, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->addAll(Lorg/eclipse/mat/collect/IteratorInt;)V

    .line 338
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->closeStream()J

    .line 340
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 342
    invoke-virtual {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->getReader(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    move-result-object v1

    return-object v1
.end method

.method public writeTo(Ljava/io/File;[I)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    .locals 4
    .parameter "indexFile"
    .parameter "array"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 346
    new-instance v0, Ljava/io/DataOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 349
    .local v0, out:Ljava/io/DataOutputStream;
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->openStream(Ljava/io/DataOutputStream;J)V

    .line 350
    invoke-virtual {p0, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->addAll([I)V

    .line 351
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->closeStream()J

    .line 353
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 355
    invoke-virtual {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->getReader(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    move-result-object v1

    return-object v1
.end method
