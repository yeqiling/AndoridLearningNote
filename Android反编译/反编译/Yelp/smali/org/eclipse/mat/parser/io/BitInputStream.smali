.class public Lorg/eclipse/mat/parser/io/BitInputStream;
.super Ljava/lang/Object;
.source "BitInputStream.java"

# interfaces
.implements Ljava/io/Flushable;
.implements Ljava/io/Closeable;


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x4000


# instance fields
.field private avail:I

.field private buffer:[B

.field private current:I

.field private fill:I

.field private is:Ljava/io/InputStream;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .parameter "is"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->is:Ljava/io/InputStream;

    .line 33
    const/16 v0, 0x4000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->buffer:[B

    .line 34
    return-void
.end method

.method private read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 49
    iget v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->avail:I

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->is:Ljava/io/InputStream;

    iget-object v1, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->avail:I

    .line 51
    iget v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->avail:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 52
    iput v2, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->avail:I

    .line 53
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 55
    :cond_0
    iput v2, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->pos:I

    .line 59
    :cond_1
    iget v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->avail:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->avail:I

    .line 60
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->buffer:[B

    iget v1, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readFromCurrent(I)I
    .locals 2
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    .line 66
    :cond_0
    iget v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->fill:I

    if-nez v0, :cond_1

    .line 67
    invoke-direct {p0}, Lorg/eclipse/mat/parser/io/BitInputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->current:I

    .line 68
    const/16 v0, 0x8

    iput v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->fill:I

    .line 71
    :cond_1
    iget v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->current:I

    iget v1, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->fill:I

    sub-int/2addr v1, p1

    iput v1, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->fill:I

    ushr-int/2addr v0, v1

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    goto :goto_0
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

    .line 43
    iget-object v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->is:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 44
    iput-object v1, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->is:Ljava/io/InputStream;

    .line 45
    iput-object v1, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->buffer:[B

    .line 46
    return-void
.end method

.method public flush()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->avail:I

    .line 38
    iput v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->pos:I

    .line 39
    iput v0, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->fill:I

    .line 40
    return-void
.end method

.method public readBit()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/mat/parser/io/BitInputStream;->readFromCurrent(I)I

    move-result v0

    return v0
.end method

.method public readInt(I)I
    .locals 5
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 81
    .local v2, x:I
    iget v3, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->fill:I

    if-gt p1, v3, :cond_0

    invoke-direct {p0, p1}, Lorg/eclipse/mat/parser/io/BitInputStream;->readFromCurrent(I)I

    move-result v3

    .line 91
    :goto_0
    return v3

    .line 83
    :cond_0
    iget v3, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->fill:I

    sub-int/2addr p1, v3

    .line 84
    iget v3, p0, Lorg/eclipse/mat/parser/io/BitInputStream;->fill:I

    invoke-direct {p0, v3}, Lorg/eclipse/mat/parser/io/BitInputStream;->readFromCurrent(I)I

    move-result v2

    .line 86
    shr-int/lit8 v0, p1, 0x3

    .local v0, i:I
    move v1, v0

    .line 87
    .end local v0           #i:I
    .local v1, i:I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1           #i:I
    .restart local v0       #i:I
    if-eqz v1, :cond_1

    shl-int/lit8 v3, v2, 0x8

    invoke-direct {p0}, Lorg/eclipse/mat/parser/io/BitInputStream;->read()I

    move-result v4

    or-int v2, v3, v4

    move v1, v0

    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_1

    .line 89
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_1
    and-int/lit8 p1, p1, 0x7

    .line 91
    shl-int v3, v2, p1

    invoke-direct {p0, p1}, Lorg/eclipse/mat/parser/io/BitInputStream;->readFromCurrent(I)I

    move-result v4

    or-int/2addr v3, v4

    goto :goto_0
.end method
