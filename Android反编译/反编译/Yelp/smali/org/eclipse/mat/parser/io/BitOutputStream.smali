.class public Lorg/eclipse/mat/parser/io/BitOutputStream;
.super Ljava/lang/Object;
.source "BitOutputStream.java"

# interfaces
.implements Ljava/io/Flushable;
.implements Ljava/io/Closeable;


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x4000

.field static final TEMP_BUFFER_SIZE:I = 0x80


# instance fields
.field private avail:I

.field private buffer:[B

.field private current:I

.field private free:I

.field private os:Ljava/io/OutputStream;

.field private pos:I

.field private tempBuffer:[B


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "os"

    .prologue
    const/16 v1, 0x4000

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->tempBuffer:[B

    .line 36
    iput-object p1, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->os:Ljava/io/OutputStream;

    .line 37
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->buffer:[B

    .line 38
    iput v1, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->avail:I

    .line 39
    const/16 v0, 0x8

    iput v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->free:I

    .line 40
    return-void
.end method

.method private align()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 92
    iget v1, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->free:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 93
    iget v1, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->free:I

    invoke-direct {p0, v0, v1}, Lorg/eclipse/mat/parser/io/BitOutputStream;->writeInCurrent(II)I

    move-result v0

    .line 95
    :cond_0
    return v0
.end method

.method private write(I)V
    .locals 3
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 61
    iget v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->avail:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->avail:I

    if-nez v0, :cond_2

    .line 62
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->os:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    .line 63
    iput v2, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->avail:I

    .line 64
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lorg/eclipse/mat/hprof/Messages;->BitOutputStream_Error_ArrayFull:Lorg/eclipse/mat/hprof/Messages;

    iget-object v1, v1, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->buffer:[B

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 69
    iput v2, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->avail:I

    .line 78
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->os:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 73
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->buffer:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->avail:I

    .line 74
    iput v2, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->pos:I

    .line 77
    :cond_2
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->buffer:[B

    iget v1, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->pos:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method private writeInCurrent(II)I
    .locals 3
    .parameter "b"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    iget v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->current:I

    const/4 v1, 0x1

    shl-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p1

    iget v2, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->free:I

    sub-int/2addr v2, p2

    iput v2, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->free:I

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->current:I

    .line 82
    iget v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->free:I

    if-nez v0, :cond_0

    .line 83
    iget v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->current:I

    invoke-direct {p0, v0}, Lorg/eclipse/mat/parser/io/BitOutputStream;->write(I)V

    .line 84
    const/16 v0, 0x8

    iput v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->free:I

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->current:I

    .line 88
    :cond_0
    return p2
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/io/BitOutputStream;->flush()V

    .line 54
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 55
    iput-object v1, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->os:Ljava/io/OutputStream;

    .line 56
    iput-object v1, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->buffer:[B

    .line 57
    iput-object v1, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->tempBuffer:[B

    .line 58
    return-void
.end method

.method public flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 43
    invoke-direct {p0}, Lorg/eclipse/mat/parser/io/BitOutputStream;->align()I

    .line 45
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->os:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->buffer:[B

    iget v2, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->pos:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 46
    iput v3, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->pos:I

    .line 47
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->buffer:[B

    array-length v0, v0

    iput v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->avail:I

    .line 49
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 50
    return-void
.end method

.method public writeBit(I)I
    .locals 1
    .parameter "bit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/eclipse/mat/parser/io/BitOutputStream;->writeInCurrent(II)I

    move-result v0

    return v0
.end method

.method public writeInt(II)I
    .locals 6
    .parameter "x"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    iget v4, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->free:I

    if-gt p2, v4, :cond_1

    invoke-direct {p0, p1, p2}, Lorg/eclipse/mat/parser/io/BitOutputStream;->writeInCurrent(II)I

    move-result p2

    .line 124
    .end local p2
    :cond_0
    :goto_0
    return p2

    .line 106
    .restart local p2
    :cond_1
    iget v4, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->free:I

    sub-int v4, p2, v4

    and-int/lit8 v3, v4, 0x7

    .local v3, queue:I
    iget v4, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->free:I

    sub-int v4, p2, v4

    shr-int/lit8 v0, v4, 0x3

    .line 107
    .local v0, blocks:I
    move v1, v0

    .line 109
    .local v1, i:I
    if-eqz v3, :cond_4

    .line 110
    iget-object v4, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->tempBuffer:[B

    int-to-byte v5, p1

    aput-byte v5, v4, v0

    .line 111
    shr-int/2addr p1, v3

    move v2, v1

    .line 114
    .end local v1           #i:I
    .local v2, i:I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    if-eqz v2, :cond_2

    .line 115
    iget-object v4, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->tempBuffer:[B

    int-to-byte v5, p1

    aput-byte v5, v4, v1

    .line 116
    ushr-int/lit8 p1, p1, 0x8

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 119
    .end local v2           #i:I
    .restart local v1       #i:I
    :cond_2
    iget v4, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->free:I

    invoke-direct {p0, p1, v4}, Lorg/eclipse/mat/parser/io/BitOutputStream;->writeInCurrent(II)I

    .line 120
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_3

    .line 121
    iget-object v4, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->tempBuffer:[B

    aget-byte v4, v4, v1

    invoke-direct {p0, v4}, Lorg/eclipse/mat/parser/io/BitOutputStream;->write(I)V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 123
    :cond_3
    if-eqz v3, :cond_0

    iget-object v4, p0, Lorg/eclipse/mat/parser/io/BitOutputStream;->tempBuffer:[B

    aget-byte v4, v4, v0

    invoke-direct {p0, v4, v3}, Lorg/eclipse/mat/parser/io/BitOutputStream;->writeInCurrent(II)I

    goto :goto_0

    :cond_4
    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1
.end method
