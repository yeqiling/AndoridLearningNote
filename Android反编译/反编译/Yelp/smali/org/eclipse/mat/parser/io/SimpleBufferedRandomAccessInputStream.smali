.class public Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;
.super Ljava/io/InputStream;
.source "SimpleBufferedRandomAccessInputStream.java"


# instance fields
.field private buf_end:I

.field private buf_pos:I

.field private buffer:[B

.field private raf:Ljava/io/RandomAccessFile;

.field private readBuffer:[B

.field private real_pos:J


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
    .line 30
    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;-><init>(Ljava/io/RandomAccessFile;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/io/RandomAccessFile;I)V
    .locals 1
    .parameter "in"
    .parameter "bufsize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 21
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readBuffer:[B

    .line 35
    iput-object p1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->raf:Ljava/io/RandomAccessFile;

    .line 36
    invoke-direct {p0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->invalidate()V

    .line 37
    new-array v0, p2, [B

    iput-object v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buffer:[B

    .line 38
    return-void
.end method

.method private fillBuffer()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->raf:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buffer:[B

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    .line 86
    .local v0, n:I
    if-ltz v0, :cond_0

    .line 87
    iget-wide v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->real_pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->real_pos:J

    .line 88
    iput v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    .line 89
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    .line 91
    :cond_0
    return v0
.end method

.method private invalidate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    .line 42
    iput v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    .line 43
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->real_pos:J

    .line 44
    return-void
.end method

.method private static final readInt([BI)I
    .locals 6
    .parameter "b"
    .parameter "offset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    .line 159
    .local v0, ch1:I
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 160
    .local v1, ch2:I
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 161
    .local v2, ch3:I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 162
    .local v3, ch4:I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 163
    :cond_0
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    shl-int/lit8 v5, v3, 0x0

    add-int/2addr v4, v5

    return v4
.end method

.method private static final readLong([BI)J
    .locals 5
    .parameter "b"
    .parameter "offset"

    .prologue
    .line 185
    aget-byte v0, p0, p1

    int-to-long v0, v0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x0

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
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
    .line 99
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buffer:[B

    .line 101
    return-void
.end method

.method public getFilePointer()J
    .locals 4

    .prologue
    .line 114
    iget-wide v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->real_pos:J

    iget v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 47
    iget v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    iget v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    if-lt v1, v2, :cond_1

    .line 48
    invoke-direct {p0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->fillBuffer()I

    move-result v1

    if-gez v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    iget v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    if-eqz v1, :cond_0

    .line 53
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buffer:[B

    iget v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 58
    if-nez p3, :cond_1

    .line 59
    const/4 v0, 0x0

    .line 81
    :cond_0
    return v0

    .line 62
    :cond_1
    iget v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    iget v3, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    if-lt v2, v3, :cond_2

    .line 63
    invoke-direct {p0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->fillBuffer()I

    move-result v2

    if-ltz v2, :cond_0

    .line 66
    :cond_2
    iget v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    if-eqz v2, :cond_0

    .line 68
    const/4 v0, 0x0

    .line 70
    .local v0, copied:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 71
    iget v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    iget v3, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    if-lt v2, v3, :cond_3

    .line 72
    invoke-direct {p0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->fillBuffer()I

    move-result v2

    if-ltz v2, :cond_0

    .line 75
    :cond_3
    sub-int v2, p3, v0

    iget v3, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    iget v4, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 76
    .local v1, length:I
    iget-object v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buffer:[B

    iget v3, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    add-int v4, p2, v0

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iget v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    .line 78
    add-int/2addr v0, v1

    .line 79
    goto :goto_0
.end method

.method public final readInt()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 118
    iget v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    add-int/lit8 v1, v1, 0x4

    iget v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    if-ge v1, v2, :cond_0

    .line 119
    iget-object v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buffer:[B

    iget v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    invoke-static {v1, v2}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readInt([BI)I

    move-result v0

    .line 120
    .local v0, a:I
    iget v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    .line 124
    .end local v0           #a:I
    :goto_0
    return v0

    .line 123
    :cond_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readBuffer:[B

    invoke-virtual {p0, v1, v3, v4}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->read([BII)I

    move-result v1

    if-eq v1, v4, :cond_1

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 124
    :cond_1
    iget-object v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readBuffer:[B

    invoke-static {v1, v3}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readInt([BI)I

    move-result v0

    goto :goto_0
.end method

.method public readIntArray([I)I
    .locals 6
    .parameter "a"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const/4 v3, 0x0

    .local v3, offset:I
    array-length v4, p1

    mul-int/lit8 v2, v4, 0x4

    .line 141
    .local v2, len:I
    const/4 v0, 0x0

    .line 142
    .local v0, b:[B
    iget v4, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    add-int/2addr v4, v2

    iget v5, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    if-ge v4, v5, :cond_1

    .line 143
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buffer:[B

    .line 144
    iget v3, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    .line 145
    iget v4, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    .line 151
    :cond_0
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 152
    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v3

    invoke-static {v0, v4}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readInt([BI)I

    move-result v4

    aput v4, p1, v1

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    .end local v1           #ii:I
    :cond_1
    iget-object v4, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readBuffer:[B

    array-length v4, v4

    if-le v2, v4, :cond_2

    new-array v0, v2, [B

    .line 148
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v2}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->read([BII)I

    move-result v4

    if-eq v4, v2, :cond_0

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 147
    :cond_2
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readBuffer:[B

    goto :goto_1

    .line 154
    .restart local v1       #ii:I
    :cond_3
    array-length v4, p1

    return v4
.end method

.method public final readLong()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 129
    iget v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    add-int/lit8 v2, v2, 0x8

    iget v3, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    if-ge v2, v3, :cond_0

    .line 130
    iget-object v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buffer:[B

    iget v3, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    invoke-static {v2, v3}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readLong([BI)J

    move-result-wide v0

    .line 131
    .local v0, a:J
    iget v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    add-int/lit8 v2, v2, 0x8

    iput v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    .line 135
    .end local v0           #a:J
    :goto_0
    return-wide v0

    .line 134
    :cond_0
    iget-object v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readBuffer:[B

    invoke-virtual {p0, v2, v4, v5}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->read([BII)I

    move-result v2

    if-eq v2, v5, :cond_1

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 135
    :cond_1
    iget-object v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readBuffer:[B

    invoke-static {v2, v4}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readLong([BI)J

    move-result-wide v0

    goto :goto_0
.end method

.method public readLongArray([J)I
    .locals 6
    .parameter "a"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 167
    const/4 v3, 0x0

    .local v3, offset:I
    array-length v4, p1

    mul-int/lit8 v2, v4, 0x8

    .line 168
    .local v2, len:I
    const/4 v0, 0x0

    .line 169
    .local v0, b:[B
    iget v4, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    add-int/2addr v4, v2

    iget v5, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    if-ge v4, v5, :cond_1

    .line 170
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buffer:[B

    .line 171
    iget v3, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    .line 172
    iget v4, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    add-int/2addr v4, v2

    iput v4, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    .line 178
    :cond_0
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_3

    .line 179
    mul-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v3

    invoke-static {v0, v4}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readLong([BI)J

    move-result-wide v4

    aput-wide v4, p1, v1

    .line 178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1           #ii:I
    :cond_1
    iget-object v4, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readBuffer:[B

    array-length v4, v4

    if-le v2, v4, :cond_2

    new-array v0, v2, [B

    .line 175
    :goto_1
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, v2}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->read([BII)I

    move-result v4

    if-eq v4, v2, :cond_0

    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4}, Ljava/io/IOException;-><init>()V

    throw v4

    .line 174
    :cond_2
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->readBuffer:[B

    goto :goto_1

    .line 181
    .restart local v1       #ii:I
    :cond_3
    array-length v4, p1

    return v4
.end method

.method public seek(J)V
    .locals 5
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget-wide v2, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->real_pos:J

    sub-long/2addr v2, p1

    long-to-int v0, v2

    .line 105
    .local v0, n:I
    if-ltz v0, :cond_0

    iget v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    if-gt v0, v1, :cond_0

    .line 106
    iget v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_end:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->buf_pos:I

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 109
    invoke-direct {p0}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->invalidate()V

    goto :goto_0
.end method
