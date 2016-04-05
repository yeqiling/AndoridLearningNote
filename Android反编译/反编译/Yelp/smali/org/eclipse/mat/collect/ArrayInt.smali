.class public final Lorg/eclipse/mat/collect/ArrayInt;
.super Ljava/lang/Object;
.source "ArrayInt.java"


# instance fields
.field elements:[I

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/eclipse/mat/collect/ArrayInt;-><init>(I)V

    .line 23
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/mat/collect/ArrayInt;)V
    .locals 4
    .parameter "template"

    .prologue
    const/4 v3, 0x0

    .line 37
    iget v0, p1, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    invoke-direct {p0, v0}, Lorg/eclipse/mat/collect/ArrayInt;-><init>(I)V

    .line 38
    iget-object v0, p1, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    iget-object v1, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    iget v2, p1, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget v0, p1, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    iput v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    .line 40
    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .parameter "initialValues"

    .prologue
    const/4 v2, 0x0

    .line 31
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/eclipse/mat/collect/ArrayInt;-><init>(I)V

    .line 32
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    array-length v0, p1

    iput v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    .line 34
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 6
    .parameter "minCapacity"

    .prologue
    const/4 v5, 0x0

    .line 123
    iget-object v3, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    array-length v1, v3

    .line 124
    .local v1, oldCapacity:I
    if-le p1, v1, :cond_1

    .line 125
    iget-object v2, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    .line 126
    .local v2, oldData:[I
    mul-int/lit8 v3, v1, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v0, v3, 0x1

    .line 127
    .local v0, newCapacity:I
    if-ge v0, p1, :cond_0

    move v0, p1

    .line 128
    :cond_0
    new-array v3, v0, [I

    iput-object v3, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    .line 129
    iget-object v3, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    iget v4, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    .end local v0           #newCapacity:I
    .end local v2           #oldData:[I
    :cond_1
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 3
    .parameter "element"

    .prologue
    .line 43
    iget v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/mat/collect/ArrayInt;->ensureCapacity(I)V

    .line 44
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    iget v1, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    aput p1, v0, v1

    .line 45
    return-void
.end method

.method public addAll(Lorg/eclipse/mat/collect/ArrayInt;)V
    .locals 5
    .parameter "template"

    .prologue
    .line 54
    iget v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    iget v1, p1, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/eclipse/mat/collect/ArrayInt;->ensureCapacity(I)V

    .line 55
    iget-object v0, p1, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    iget v3, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    iget v4, p1, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 56
    iget v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    iget v1, p1, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    .line 57
    return-void
.end method

.method public addAll([I)V
    .locals 4
    .parameter "elements"

    .prologue
    .line 48
    iget v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    array-length v1, p1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lorg/eclipse/mat/collect/ArrayInt;->ensureCapacity(I)V

    .line 49
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    iget v2, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iget v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    array-length v1, p1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    .line 51
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    .line 102
    return-void
.end method

.method public firstElement()J
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public get(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 68
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 69
    :cond_1
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    aget v0, v0, p1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Lorg/eclipse/mat/collect/IteratorInt;
    .locals 1

    .prologue
    .line 87
    new-instance v0, Lorg/eclipse/mat/collect/ArrayInt$1;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/collect/ArrayInt$1;-><init>(Lorg/eclipse/mat/collect/ArrayInt;)V

    return-object v0
.end method

.method public lastElement()J
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    iget v1, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public set(II)I
    .locals 2
    .parameter "index"
    .parameter "element"

    .prologue
    .line 60
    if-ltz p1, :cond_0

    iget v1, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    if-lt p1, v1, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 62
    :cond_1
    iget-object v1, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    aget v0, v1, p1

    .line 63
    .local v0, oldValue:I
    iget-object v1, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    aput p2, v1, p1

    .line 64
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    return v0
.end method

.method public sort()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    .line 116
    return-void
.end method

.method public toArray()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    iget v1, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    new-array v0, v1, [I

    .line 78
    .local v0, result:[I
    iget-object v1, p0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    iget v2, p0, Lorg/eclipse/mat/collect/ArrayInt;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-object v0
.end method
