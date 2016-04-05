.class public Lorg/eclipse/mat/parser/io/PositionInputStream;
.super Ljava/io/FilterInputStream;
.source "PositionInputStream.java"

# interfaces
.implements Ljava/io/DataInput;


# instance fields
.field private position:J

.field private final readBuffer:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .parameter "in"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 24
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->readBuffer:[B

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    .line 29
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
    .line 204
    aget-byte v4, p0, p1

    and-int/lit16 v0, v4, 0xff

    .line 205
    .local v0, ch1:I
    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v1, v4, 0xff

    .line 206
    .local v1, ch2:I
    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    and-int/lit16 v2, v4, 0xff

    .line 207
    .local v2, ch3:I
    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v3, v4, 0xff

    .line 208
    .local v3, ch4:I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_0

    new-instance v4, Ljava/io/EOFException;

    invoke-direct {v4}, Ljava/io/EOFException;-><init>()V

    throw v4

    .line 209
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
    .line 225
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
.method public mark(I)V
    .locals 2
    .parameter "readLimit"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/eclipse/mat/hprof/Messages;->PositionInputStream_mark:Lorg/eclipse/mat/hprof/Messages;

    iget-object v1, v1, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public position()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    return-wide v0
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 33
    .local v0, res:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    .line 34
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 39
    .local v0, res:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    .line 40
    :cond_0
    return v0
.end method

.method public readBoolean()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 134
    iget-object v1, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 135
    .local v0, ch:I
    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 136
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    .line 137
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public readByte()B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v1, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 142
    .local v0, ch:I
    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 143
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    .line 144
    int-to-byte v1, v0

    return v1
.end method

.method public readChar()C
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 149
    .local v0, ch1:I
    iget-object v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 150
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 151
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    .line 152
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    int-to-char v2, v2

    return v2
.end method

.method public readDouble()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final readFully([B)V
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readFully([BII)V

    .line 85
    return-void
.end method

.method public final readFully([BII)V
    .locals 4
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    const/4 v1, 0x0

    .line 89
    .local v1, n:I
    :goto_0
    if-ge v1, p3, :cond_1

    .line 90
    add-int v2, p2, v1

    sub-int v3, p3, v1

    invoke-virtual {p0, p1, v2, v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->read([BII)I

    move-result v0

    .line 91
    .local v0, count:I
    if-gez v0, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 92
    :cond_0
    add-int/2addr v1, v0

    .line 93
    goto :goto_0

    .line 94
    .end local v0           #count:I
    :cond_1
    return-void
.end method

.method public final readInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->readBuffer:[B

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v2, v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readFully([BII)V

    .line 125
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->readBuffer:[B

    invoke-static {v0, v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt([BI)I

    move-result v0

    return v0
.end method

.method public readIntArray([I)I
    .locals 4
    .parameter "a"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    array-length v3, p1

    mul-int/lit8 v2, v3, 0x4

    .line 193
    .local v2, len:I
    iget-object v3, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->readBuffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    new-array v0, v2, [B

    .line 195
    .local v0, b:[B
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->read([BII)I

    move-result v3

    if-eq v3, v2, :cond_1

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 193
    .end local v0           #b:[B
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->readBuffer:[B

    goto :goto_0

    .line 197
    .restart local v0       #b:[B
    :cond_1
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 198
    mul-int/lit8 v3, v1, 0x4

    invoke-static {v0, v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt([BI)I

    move-result v3

    aput v3, p1, v1

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    :cond_2
    array-length v3, p1

    return v3
.end method

.method public readLine()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final readLong()J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 129
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->readBuffer:[B

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v2, v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readFully([BII)V

    .line 130
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->readBuffer:[B

    invoke-static {v0, v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readLong([BI)J

    move-result-wide v0

    return-wide v0
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
    .line 213
    array-length v3, p1

    mul-int/lit8 v2, v3, 0x8

    .line 214
    .local v2, len:I
    iget-object v3, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->readBuffer:[B

    array-length v3, v3

    if-le v2, v3, :cond_0

    new-array v0, v2, [B

    .line 216
    .local v0, b:[B
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lorg/eclipse/mat/parser/io/PositionInputStream;->read([BII)I

    move-result v3

    if-eq v3, v2, :cond_1

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3}, Ljava/io/IOException;-><init>()V

    throw v3

    .line 214
    .end local v0           #b:[B
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->readBuffer:[B

    goto :goto_0

    .line 218
    .restart local v0       #b:[B
    :cond_1
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 219
    mul-int/lit8 v3, v1, 0x8

    invoke-static {v0, v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readLong([BI)J

    move-result-wide v4

    aput-wide v4, p1, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 221
    :cond_2
    array-length v3, p1

    return v3
.end method

.method public readShort()S
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    iget-object v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 169
    .local v0, ch1:I
    iget-object v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 170
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 171
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    .line 172
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    int-to-short v2, v2

    return v2
.end method

.method public readUTF()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    invoke-static {p0}, Ljava/io/DataInputStream;->readUTF(Ljava/io/DataInput;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    iget-object v1, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 118
    .local v0, ch:I
    if-gez v0, :cond_0

    new-instance v1, Ljava/io/EOFException;

    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    throw v1

    .line 119
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    .line 120
    return v0
.end method

.method public readUnsignedShort()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    iget-object v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 181
    .local v0, ch1:I
    iget-object v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 182
    .local v1, ch2:I
    or-int v2, v0, v1

    if-gez v2, :cond_0

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2

    .line 183
    :cond_0
    iget-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    const-wide/16 v4, 0x2

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    .line 184
    shl-int/lit8 v2, v0, 0x8

    shl-int/lit8 v3, v1, 0x0

    add-int/2addr v2, v3

    return v2
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/eclipse/mat/hprof/Messages;->PositionInputStream_reset:Lorg/eclipse/mat/hprof/Messages;

    iget-object v1, v1, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seek(J)V
    .locals 3
    .parameter "pos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;

    if-eqz v0, :cond_0

    .line 102
    iput-wide p1, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    .line 103
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;->seek(J)V

    .line 110
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->in:Ljava/io/InputStream;

    instance-of v0, v0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    if-eqz v0, :cond_1

    .line 105
    iput-wide p1, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    .line 106
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->in:Ljava/io/InputStream;

    check-cast v0, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/mat/parser/io/SimpleBufferedRandomAccessInputStream;->seek(J)V

    goto :goto_0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    sget-object v1, Lorg/eclipse/mat/hprof/Messages;->PositionInputStream_seek:Lorg/eclipse/mat/hprof/Messages;

    iget-object v1, v1, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 45
    .local v0, res:J
    iget-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/eclipse/mat/parser/io/PositionInputStream;->position:J

    .line 46
    return-wide v0
.end method

.method public final skipBytes(I)I
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 63
    .local v1, total:I
    const/4 v0, 0x0

    .line 65
    .local v0, cur:I
    :goto_0
    if-ge v1, p1, :cond_0

    sub-int v2, p1, v1

    int-to-long v2, v2

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skip(J)J

    move-result-wide v2

    long-to-int v0, v2

    if-lez v0, :cond_0

    .line 66
    add-int/2addr v1, v0

    goto :goto_0

    .line 69
    :cond_0
    return v1
.end method

.method public final skipBytes(J)I
    .locals 5
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 74
    .local v1, total:I
    const/4 v0, 0x0

    .line 76
    .local v0, cur:I
    :goto_0
    int-to-long v2, v1

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    int-to-long v2, v1

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skip(J)J

    move-result-wide v2

    long-to-int v0, v2

    if-lez v0, :cond_0

    .line 77
    add-int/2addr v1, v0

    goto :goto_0

    .line 80
    :cond_0
    return v1
.end method
