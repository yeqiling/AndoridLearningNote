.class public Lorg/eclipse/mat/collect/ArrayIntCompressed;
.super Ljava/lang/Object;
.source "ArrayIntCompressed.java"


# static fields
.field private static final BIT_LENGTH:I = 0x20


# instance fields
.field private data:[B

.field private trailingClearBits:B

.field private varyingBits:B


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .parameter "size"
    .parameter "leadingClearBits"
    .parameter "trailingClearBits"

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    rsub-int/lit8 v0, p2, 0x20

    sub-int/2addr v0, p3

    invoke-direct {p0, p1, v0, p3}, Lorg/eclipse/mat/collect/ArrayIntCompressed;->init(III)V

    .line 56
    return-void
.end method

.method public constructor <init>([B)V
    .locals 2
    .parameter "bytes"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    .line 40
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->varyingBits:B

    .line 41
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->trailingClearBits:B

    .line 42
    return-void
.end method

.method public constructor <init>([I)V
    .locals 2
    .parameter "ints"

    .prologue
    .line 66
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/mat/collect/ArrayIntCompressed;-><init>([III)V

    .line 67
    return-void
.end method

.method public constructor <init>([III)V
    .locals 6
    .parameter "ints"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v5, 0x1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, mask:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p3, :cond_0

    .line 81
    add-int v4, p2, v0

    aget v4, p1, v4

    or-int/2addr v2, v4

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 83
    :cond_0
    const/4 v1, 0x0

    .line 84
    .local v1, leadingClearBits:I
    const/4 v3, 0x0

    .line 85
    .local v3, trailingClearBits:I
    :goto_1
    rsub-int/lit8 v4, v1, 0x20

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v5, v4

    and-int/2addr v4, v2

    if-nez v4, :cond_1

    const/16 v4, 0x20

    if-ge v1, v4, :cond_1

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    :cond_1
    :goto_2
    shl-int v4, v5, v3

    and-int/2addr v4, v2

    if-nez v4, :cond_2

    rsub-int/lit8 v4, v1, 0x20

    if-ge v3, v4, :cond_2

    .line 91
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 95
    :cond_2
    rsub-int/lit8 v4, v1, 0x20

    sub-int/2addr v4, v3

    invoke-direct {p0, p3, v4, v3}, Lorg/eclipse/mat/collect/ArrayIntCompressed;->init(III)V

    .line 98
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p3, :cond_3

    .line 99
    add-int v4, p2, v0

    aget v4, p1, v4

    invoke-virtual {p0, v0, v4}, Lorg/eclipse/mat/collect/ArrayIntCompressed;->set(II)V

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 101
    :cond_3
    return-void
.end method

.method private init(III)V
    .locals 4
    .parameter "size"
    .parameter "varyingBits"
    .parameter "trailingClearBits"

    .prologue
    .line 106
    int-to-long v0, p1

    int-to-long v2, p2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x8

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    .line 107
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    const/4 v1, 0x0

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    iput-byte v2, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->varyingBits:B

    .line 108
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    const/4 v1, 0x1

    int-to-byte v2, p3

    aput-byte v2, v0, v1

    iput-byte v2, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->trailingClearBits:B

    .line 109
    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 11
    .parameter "index"

    .prologue
    const/16 v10, 0x8

    .line 141
    const/4 v3, 0x0

    .line 142
    .local v3, value:I
    int-to-long v6, p1

    iget-byte v8, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->varyingBits:B

    int-to-long v8, v8

    mul-long v4, v6, v8

    .line 143
    .local v4, pos:J
    const/4 v6, 0x3

    ushr-long v6, v4, v6

    long-to-int v6, v6

    add-int/lit8 v0, v6, 0x2

    .line 144
    .local v0, idx:I
    long-to-int v6, v4

    and-int/lit8 v2, v6, 0x7

    .line 145
    .local v2, off:I
    iget-byte v6, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->varyingBits:B

    add-int/2addr v6, v2

    if-le v6, v10, :cond_1

    .line 146
    iget-object v6, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .local v1, idx:I
    aget-byte v6, v6, v0

    shl-int/2addr v6, v2

    and-int/lit16 v6, v6, 0xff

    ushr-int v3, v6, v2

    .line 147
    iget-byte v6, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->varyingBits:B

    add-int/lit8 v6, v6, -0x8

    add-int/2addr v2, v6

    .line 148
    :goto_0
    if-le v2, v10, :cond_0

    .line 149
    shl-int/lit8 v3, v3, 0x8

    .line 150
    iget-object v6, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    aget-byte v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v3, v6

    .line 151
    add-int/lit8 v2, v2, -0x8

    move v1, v0

    .end local v0           #idx:I
    .restart local v1       #idx:I
    goto :goto_0

    .line 153
    :cond_0
    shl-int/2addr v3, v2

    .line 154
    iget-object v6, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    aget-byte v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v7, v2, 0x8

    ushr-int/2addr v6, v7

    or-int/2addr v3, v6

    move v0, v1

    .line 158
    .end local v1           #idx:I
    .restart local v0       #idx:I
    :goto_1
    iget-byte v6, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->trailingClearBits:B

    shl-int v6, v3, v6

    return v6

    .line 156
    :cond_1
    iget-object v6, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    aget-byte v6, v6, v0

    shl-int/2addr v6, v2

    and-int/lit16 v6, v6, 0xff

    iget-byte v7, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->varyingBits:B

    rsub-int/lit8 v7, v7, 0x8

    ushr-int v3, v6, v7

    goto :goto_1
.end method

.method public set(II)V
    .locals 11
    .parameter "index"
    .parameter "value"

    .prologue
    const/16 v10, 0x8

    .line 118
    iget-byte v3, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->trailingClearBits:B

    ushr-int/2addr p2, v3

    .line 119
    int-to-long v6, p1

    iget-byte v3, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->varyingBits:B

    int-to-long v8, v3

    mul-long v4, v6, v8

    .line 120
    .local v4, pos:J
    const/4 v3, 0x3

    ushr-long v6, v4, v3

    long-to-int v3, v6

    add-int/lit8 v0, v3, 0x2

    .line 121
    .local v0, idx:I
    long-to-int v3, v4

    and-int/lit8 v2, v3, 0x7

    .line 122
    .local v2, off:I
    iget-byte v3, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->varyingBits:B

    add-int/2addr v2, v3

    .line 123
    if-le v2, v10, :cond_1

    .line 124
    add-int/lit8 v2, v2, -0x8

    .line 125
    iget-object v3, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    add-int/lit8 v1, v0, 0x1

    .end local v0           #idx:I
    .local v1, idx:I
    aget-byte v6, v3, v0

    ushr-int v7, p2, v2

    int-to-byte v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    .line 126
    :goto_0
    if-le v2, v10, :cond_0

    .line 127
    add-int/lit8 v2, v2, -0x8

    .line 128
    iget-object v3, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    add-int/lit8 v0, v1, 0x1

    .end local v1           #idx:I
    .restart local v0       #idx:I
    ushr-int v6, p2, v2

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    move v1, v0

    .end local v0           #idx:I
    .restart local v1       #idx:I
    goto :goto_0

    :cond_0
    move v0, v1

    .line 131
    .end local v1           #idx:I
    .restart local v0       #idx:I
    :cond_1
    iget-object v3, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    aget-byte v6, v3, v0

    rsub-int/lit8 v7, v2, 0x8

    shl-int v7, p2, v7

    int-to-byte v7, v7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    .line 132
    return-void
.end method

.method public toByteArray()[B
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayIntCompressed;->data:[B

    return-object v0
.end method
