.class public Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;
.super Ljava/io/InputStream;
.source "BufferedRandomAccessInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;
    }
.end annotation


# instance fields
.field bufsize:I

.field current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

.field fileLength:J

.field pages:Lorg/eclipse/mat/collect/HashMapLongObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;",
            ">;>;"
        }
    .end annotation
.end field

.field raf:Ljava/io/RandomAccessFile;

.field real_pos:J

.field reported_pos:J


# direct methods
.method public constructor <init>(Ljava/io/RandomAccessFile;)V
    .locals 1
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;-><init>(Ljava/io/RandomAccessFile;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;I)V
    .locals 2
    .parameter "in"
    .parameter "bufsize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 39
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-direct {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->pages:Lorg/eclipse/mat/collect/HashMapLongObject;

    .line 48
    iput p2, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->bufsize:I

    .line 49
    iput-object p1, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 50
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->fileLength:J

    .line 51
    return-void
.end method

.method private getPage(J)Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;
    .locals 13
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget v8, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->bufsize:I

    int-to-long v8, v8

    div-long v0, p1, v8

    .line 98
    .local v0, key:J
    iget-object v8, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->pages:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v8, v0, v1}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/SoftReference;

    .line 99
    .local v5, r:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;>;"
    if-nez v5, :cond_0

    const/4 v3, 0x0

    .line 101
    .local v3, p:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;
    :goto_0
    if-eqz v3, :cond_1

    move-object v4, v3

    .line 121
    .end local v3           #p:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;
    .local v4, p:Ljava/lang/Object;
    :goto_1
    return-object v4

    .line 99
    .end local v4           #p:Ljava/lang/Object;
    :cond_0
    invoke-virtual {v5}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    move-object v3, v8

    goto :goto_0

    .line 103
    .restart local v3       #p:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;
    :cond_1
    iget v8, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->bufsize:I

    int-to-long v8, v8

    mul-long v6, v0, v8

    .line 105
    .local v6, page_start:J
    iget-wide v8, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->real_pos:J

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    .line 106
    iget-object v8, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v8, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 107
    iput-wide v6, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->real_pos:J

    .line 110
    :cond_2
    new-instance v3, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    .end local v3           #p:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;
    invoke-direct {v3, p0}, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;-><init>(Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;)V

    .line 112
    .restart local v3       #p:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;
    iget-object v8, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v9, v3, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->buffer:[B

    invoke-virtual {v8, v9}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v2

    .line 113
    .local v2, n:I
    if-ltz v2, :cond_3

    .line 114
    iget-wide v8, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->real_pos:J

    iput-wide v8, v3, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->real_pos_start:J

    .line 115
    iput v2, v3, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->buf_end:I

    .line 116
    iget-wide v8, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->real_pos:J

    int-to-long v10, v2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->real_pos:J

    .line 119
    :cond_3
    iget-object v8, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->pages:Lorg/eclipse/mat/collect/HashMapLongObject;

    new-instance v9, Ljava/lang/ref/SoftReference;

    invoke-direct {v9, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v0, v1, v9}, Lorg/eclipse/mat/collect/HashMapLongObject;->put(JLjava/lang/Object;)Ljava/lang/Object;

    move-object v4, v3

    .line 121
    .restart local v4       #p:Ljava/lang/Object;
    goto :goto_1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 130
    return-void
.end method

.method public getFilePointer()J
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    return-wide v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 54
    iget-wide v0, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    iget-wide v2, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->fileLength:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 60
    :goto_0
    return v0

    .line 56
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    iget-object v2, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    iget-wide v2, v2, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->real_pos_start:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    iget v2, v2, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->buf_end:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    .line 57
    :cond_1
    iget-wide v0, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    invoke-direct {p0, v0, v1}, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->getPage(J)Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    .line 60
    :cond_2
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    iget-object v0, v0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->buffer:[B

    iget-wide v2, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    iget-object v1, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    iget-wide v4, v1, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->real_pos_start:J

    sub-long/2addr v2, v4

    long-to-int v1, v2

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 8
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 66
    :cond_0
    if-ltz p2, :cond_1

    array-length v3, p1

    if-gt p2, v3, :cond_1

    if-ltz p3, :cond_1

    add-int v3, p2, p3

    array-length v4, p1

    if-gt v3, v4, :cond_1

    add-int v3, p2, p3

    if-gez v3, :cond_2

    .line 68
    :cond_1
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3

    .line 69
    :cond_2
    if-nez p3, :cond_4

    .line 70
    const/4 v1, 0x0

    .line 92
    :cond_3
    :goto_0
    return v1

    .line 73
    :cond_4
    iget-wide v4, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    iget-wide v6, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->fileLength:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_5

    const/4 v1, -0x1

    goto :goto_0

    .line 75
    :cond_5
    const/4 v1, 0x0

    .line 77
    .local v1, copied:I
    :goto_1
    if-ge v1, p3, :cond_3

    .line 78
    iget-wide v4, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    iget-wide v6, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->fileLength:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 80
    iget-object v3, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    if-eqz v3, :cond_6

    iget-wide v4, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    iget-object v3, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    iget-wide v6, v3, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->real_pos_start:J

    sub-long/2addr v4, v6

    iget-object v3, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    iget v3, v3, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->buf_end:I

    int-to-long v6, v3

    cmp-long v3, v4, v6

    if-ltz v3, :cond_7

    .line 81
    :cond_6
    iget-wide v4, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    invoke-direct {p0, v4, v5}, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->getPage(J)Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    .line 84
    :cond_7
    iget-wide v4, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    iget-object v3, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    iget-wide v6, v3, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->real_pos_start:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    .line 85
    .local v0, buf_pos:I
    sub-int v3, p3, v1

    iget-object v4, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    iget v4, v4, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->buf_end:I

    sub-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 86
    .local v2, length:I
    iget-object v3, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    iget-object v3, v3, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;->buffer:[B

    add-int v4, p2, v1

    invoke-static {v3, v0, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    iget-wide v4, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    .line 89
    add-int/2addr v1, v2

    .line 90
    goto :goto_1
.end method

.method public seek(J)V
    .locals 1
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iput-wide p1, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->reported_pos:J

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->current:Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream$Page;

    .line 138
    return-void
.end method
