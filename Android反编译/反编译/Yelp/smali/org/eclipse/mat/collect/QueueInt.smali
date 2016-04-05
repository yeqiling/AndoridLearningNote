.class public Lorg/eclipse/mat/collect/QueueInt;
.super Ljava/lang/Object;
.source "QueueInt.java"


# instance fields
.field capacity:I

.field data:[I

.field headIdx:I

.field size:I

.field tailIdx:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/eclipse/mat/collect/QueueInt;->capacity:I

    .line 30
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/eclipse/mat/collect/QueueInt;->data:[I

    .line 31
    return-void
.end method


# virtual methods
.method public final get()I
    .locals 3

    .prologue
    .line 35
    iget v1, p0, Lorg/eclipse/mat/collect/QueueInt;->size:I

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->QueueInt_ZeroSizeQueue:Lorg/eclipse/mat/hprof/Messages;

    iget-object v2, v2, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 38
    :cond_0
    iget-object v1, p0, Lorg/eclipse/mat/collect/QueueInt;->data:[I

    iget v2, p0, Lorg/eclipse/mat/collect/QueueInt;->headIdx:I

    aget v0, v1, v2

    .line 39
    .local v0, result:I
    iget v1, p0, Lorg/eclipse/mat/collect/QueueInt;->headIdx:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/mat/collect/QueueInt;->headIdx:I

    .line 40
    iget v1, p0, Lorg/eclipse/mat/collect/QueueInt;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/mat/collect/QueueInt;->size:I

    .line 42
    iget v1, p0, Lorg/eclipse/mat/collect/QueueInt;->headIdx:I

    iget v2, p0, Lorg/eclipse/mat/collect/QueueInt;->capacity:I

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/mat/collect/QueueInt;->headIdx:I

    .line 44
    :cond_1
    return v0
.end method

.method public final put(I)V
    .locals 5
    .parameter "x"

    .prologue
    const/4 v4, 0x0

    .line 53
    iget v2, p0, Lorg/eclipse/mat/collect/QueueInt;->tailIdx:I

    iget v3, p0, Lorg/eclipse/mat/collect/QueueInt;->capacity:I

    if-ne v2, v3, :cond_0

    iput v4, p0, Lorg/eclipse/mat/collect/QueueInt;->tailIdx:I

    .line 55
    :cond_0
    iget v2, p0, Lorg/eclipse/mat/collect/QueueInt;->size:I

    iget v3, p0, Lorg/eclipse/mat/collect/QueueInt;->capacity:I

    if-ne v2, v3, :cond_2

    .line 57
    iget v2, p0, Lorg/eclipse/mat/collect/QueueInt;->capacity:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/mat/collect/QueueInt;->capacity:I

    .line 58
    iget v2, p0, Lorg/eclipse/mat/collect/QueueInt;->capacity:I

    new-array v1, v2, [I

    .line 59
    .local v1, tmp:[I
    iget-object v2, p0, Lorg/eclipse/mat/collect/QueueInt;->data:[I

    array-length v2, v2

    iget v3, p0, Lorg/eclipse/mat/collect/QueueInt;->headIdx:I

    sub-int v0, v2, v3

    .line 60
    .local v0, headToEnd:I
    iget-object v2, p0, Lorg/eclipse/mat/collect/QueueInt;->data:[I

    iget v3, p0, Lorg/eclipse/mat/collect/QueueInt;->headIdx:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget v2, p0, Lorg/eclipse/mat/collect/QueueInt;->tailIdx:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/mat/collect/QueueInt;->data:[I

    iget v3, p0, Lorg/eclipse/mat/collect/QueueInt;->tailIdx:I

    invoke-static {v2, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 63
    :cond_1
    iput v4, p0, Lorg/eclipse/mat/collect/QueueInt;->headIdx:I

    .line 64
    iget-object v2, p0, Lorg/eclipse/mat/collect/QueueInt;->data:[I

    array-length v2, v2

    iput v2, p0, Lorg/eclipse/mat/collect/QueueInt;->tailIdx:I

    .line 66
    iput-object v1, p0, Lorg/eclipse/mat/collect/QueueInt;->data:[I

    .line 69
    .end local v0           #headToEnd:I
    .end local v1           #tmp:[I
    :cond_2
    iget-object v2, p0, Lorg/eclipse/mat/collect/QueueInt;->data:[I

    iget v3, p0, Lorg/eclipse/mat/collect/QueueInt;->tailIdx:I

    aput p1, v2, v3

    .line 70
    iget v2, p0, Lorg/eclipse/mat/collect/QueueInt;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/mat/collect/QueueInt;->size:I

    .line 71
    iget v2, p0, Lorg/eclipse/mat/collect/QueueInt;->tailIdx:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/mat/collect/QueueInt;->tailIdx:I

    .line 72
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/eclipse/mat/collect/QueueInt;->size:I

    return v0
.end method
