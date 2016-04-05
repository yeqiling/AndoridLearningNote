.class public Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;
.super Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;
.source "IndexReader.java"

# interfaces
.implements Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntIndexReader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex",
        "<",
        "Ljava/lang/ref/SoftReference",
        "<",
        "Lorg/eclipse/mat/collect/ArrayIntCompressed;",
        ">;>;",
        "Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;"
    }
.end annotation


# instance fields
.field public LOCK:Ljava/lang/Object;

.field public in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

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
    .line 52
    new-instance v1, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v0, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;-><init>(Ljava/io/RandomAccessFile;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;-><init>(Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;JJ)V

    .line 54
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->indexFile:Ljava/io/File;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/eclipse/mat/parser/index/IndexWriter$Pages;II[J)V
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
            "Lorg/eclipse/mat/parser/index/IndexWriter$Pages",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/eclipse/mat/collect/ArrayIntCompressed;",
            ">;>;II[J)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;,"Lorg/eclipse/mat/parser/index/IndexWriter$Pages<Ljava/lang/ref/SoftReference<Lorg/eclipse/mat/collect/ArrayIntCompressed;>;>;"
    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->LOCK:Ljava/lang/Object;

    .line 41
    iput p3, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->size:I

    .line 42
    iput p4, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->pageSize:I

    .line 43
    iput-object p2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    .line 45
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->indexFile:Ljava/io/File;

    .line 46
    iput-object p5, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->pageStart:[J

    .line 48
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->open()V

    .line 49
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;JJ)V
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

    .line 58
    invoke-direct {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;-><init>()V

    .line 32
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->LOCK:Ljava/lang/Object;

    .line 59
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    .line 60
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    add-long v4, p2, p4

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->seek(J)V

    .line 62
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readInt()I

    move-result v0

    .line 63
    .local v0, pageSize:I
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readInt()I

    move-result v2

    .line 65
    .local v2, size:I
    invoke-virtual {p0, v2, v0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->init(II)V

    .line 67
    div-int v4, v2, v0

    rem-int v3, v2, v0

    if-lez v3, :cond_0

    const/4 v3, 0x2

    :goto_0
    add-int v1, v4, v3

    .line 69
    .local v1, pages:I
    new-array v3, v1, [J

    iput-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->pageStart:[J

    .line 71
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    add-long v4, p2, p4

    sub-long/2addr v4, v6

    iget-object v6, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->pageStart:[J

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x8

    int-to-long v6, v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->seek(J)V

    .line 72
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iget-object v4, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->pageStart:[J

    invoke-virtual {v3, v4}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readLongArray([J)I

    .line 73
    return-void

    .line 67
    .end local v1           #pages:I
    :cond_0
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private declared-synchronized open()V
    .locals 5

    .prologue
    .line 77
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 88
    :goto_0
    monitor-exit p0

    return-void

    .line 79
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->indexFile:Ljava/io/File;

    if-nez v1, :cond_1

    .line 80
    new-instance v1, Ljava/io/IOException;

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->IndexReader_Error_IndexIsEmbedded:Lorg/eclipse/mat/hprof/Messages;

    iget-object v2, v2, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 77
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 83
    :cond_1
    :try_start_3
    new-instance v1, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->indexFile:Ljava/io/File;

    const-string v4, "r"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;-><init>(Ljava/io/RandomAccessFile;)V

    iput-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->unload()V

    .line 93
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 95
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 99
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 99
    const/4 v0, 0x0

    :try_start_3
    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 99
    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->close()V

    .line 138
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->indexFile:Ljava/io/File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->indexFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 139
    :cond_0
    return-void
.end method

.method public bridge synthetic get(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->get(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAll([I)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->getAll([I)[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNext(II)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->getNext(II)[I

    move-result-object v0

    return-object v0
.end method

.method protected getPage(I)Lorg/eclipse/mat/collect/ArrayIntCompressed;
    .locals 14
    .parameter "page"

    .prologue
    const/4 v8, 0x0

    .line 105
    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    invoke-virtual {v7, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/SoftReference;

    .line 106
    .local v6, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/eclipse/mat/collect/ArrayIntCompressed;>;"
    if-nez v6, :cond_0

    move-object v2, v8

    .line 107
    .local v2, array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    :goto_0
    if-nez v2, :cond_4

    .line 108
    iget-object v9, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->LOCK:Ljava/lang/Object;

    monitor-enter v9

    .line 109
    :try_start_0
    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    invoke-virtual {v7, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/ref/SoftReference;

    move-object v6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    if-nez v6, :cond_1

    move-object v2, v8

    .line 112
    :goto_1
    if-nez v2, :cond_3

    .line 114
    const/4 v4, 0x0

    .line 116
    .local v4, buffer:[B
    :try_start_1
    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    iget-object v8, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->pageStart:[J

    aget-wide v10, v8, p1

    invoke-virtual {v7, v10, v11}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->seek(J)V

    .line 118
    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->pageStart:[J

    add-int/lit8 v8, p1, 0x1

    aget-wide v10, v7, v8

    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->pageStart:[J

    aget-wide v12, v7, p1

    sub-long/2addr v10, v12

    long-to-int v7, v10

    new-array v4, v7, [B

    .line 119
    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->in:Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

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

    .line 126
    :catch_0
    move-exception v5

    .line 127
    .end local v2           #array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    .local v5, e:Ljava/io/IOException;
    :goto_2
    :try_start_2
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 130
    .end local v4           #buffer:[B
    .end local v5           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_3
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 106
    :cond_0
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/mat/collect/ArrayIntCompressed;

    move-object v2, v7

    goto :goto_0

    .line 110
    .restart local v2       #array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    :cond_1
    :try_start_3
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/mat/collect/ArrayIntCompressed;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v7

    goto :goto_1

    .line 121
    .restart local v4       #buffer:[B
    :cond_2
    :try_start_4
    new-instance v3, Lorg/eclipse/mat/collect/ArrayIntCompressed;

    invoke-direct {v3, v4}, Lorg/eclipse/mat/collect/ArrayIntCompressed;-><init>([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 123
    .end local v2           #array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    .local v3, array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    :try_start_5
    iget-object v8, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    monitor-enter v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 124
    :try_start_6
    iget-object v7, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    new-instance v10, Ljava/lang/ref/SoftReference;

    invoke-direct {v10, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7, p1, v10}, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->put(ILjava/lang/Object;)V

    .line 125
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v3

    .line 130
    .end local v3           #array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    .end local v4           #buffer:[B
    :cond_3
    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 132
    :cond_4
    return-object v2

    .line 125
    .restart local v3       #array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
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

    .line 126
    :catch_1
    move-exception v5

    move-object v2, v3

    .local v2, array:Ljava/lang/Object;
    goto :goto_2

    .line 130
    .end local v2           #array:Ljava/lang/Object;
    :catchall_2
    move-exception v7

    move-object v2, v3

    .restart local v2       #array:Ljava/lang/Object;
    goto :goto_3
.end method

.method public bridge synthetic iterator()Lorg/eclipse/mat/collect/IteratorInt;
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->iterator()Lorg/eclipse/mat/collect/IteratorInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->set(II)V

    return-void
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 30
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic unload()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->unload()V

    return-void
.end method
