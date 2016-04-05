.class public final Lorg/eclipse/mat/collect/ArrayIntBig;
.super Ljava/lang/Object;
.source "ArrayIntBig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private length:I

.field private page:[I

.field private pages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->pages:Ljava/util/ArrayList;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    .line 39
    return-void
.end method


# virtual methods
.method public final add(I)V
    .locals 3
    .parameter "element"

    .prologue
    .line 47
    iget v1, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    and-int/lit16 v0, v1, 0x3ff

    .line 48
    .local v0, index:I
    if-nez v0, :cond_0

    .line 49
    iget-object v1, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->pages:Ljava/util/ArrayList;

    const/16 v2, 0x400

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->page:[I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_0
    iget-object v1, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->page:[I

    aput p1, v1, v0

    .line 52
    return-void
.end method

.method public final addAll([I)V
    .locals 7
    .parameter "elements"

    .prologue
    const/16 v6, 0x400

    const/4 v3, 0x0

    .line 60
    iget v4, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    and-int/lit16 v2, v4, 0x3ff

    .line 61
    .local v2, free:I
    if-nez v2, :cond_1

    move v0, v3

    .line 62
    .local v0, bite:I
    :goto_0
    if-lez v0, :cond_0

    .line 63
    iget-object v4, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->pages:Ljava/util/ArrayList;

    iget v5, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    shr-int/lit8 v5, v5, 0xa

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget v5, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    and-int/lit16 v5, v5, 0x3ff

    invoke-static {p1, v3, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    iget v4, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    .line 66
    :cond_0
    move v1, v0

    .line 67
    .local v1, copied:I
    :goto_1
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 68
    iget-object v4, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->pages:Ljava/util/ArrayList;

    new-array v5, v6, [I

    iput-object v5, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->page:[I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    array-length v4, p1

    sub-int/2addr v4, v1

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 70
    iget-object v4, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->page:[I

    invoke-static {p1, v1, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    add-int/2addr v1, v0

    .line 72
    iget v4, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    add-int/2addr v4, v0

    iput v4, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    goto :goto_1

    .line 61
    .end local v0           #bite:I
    .end local v1           #copied:I
    :cond_1
    array-length v4, p1

    rsub-int v5, v2, 0x400

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 74
    .restart local v0       #bite:I
    .restart local v1       #copied:I
    :cond_2
    return-void
.end method

.method public final consumption()J
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->pages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0xc

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public final get(I)I
    .locals 2
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 84
    iget v0, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    if-lt p1, v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 87
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->pages:Ljava/util/ArrayList;

    shr-int/lit8 v1, p1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    and-int/lit16 v1, p1, 0x3ff

    aget v0, v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final length()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    return v0
.end method

.method public final toArray()[I
    .locals 5

    .prologue
    .line 125
    iget v3, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    new-array v2, v3, [I

    .line 127
    .local v2, elements:[I
    const/4 v1, 0x0

    .line 128
    .local v1, copied:I
    :goto_0
    iget v3, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    if-ge v1, v3, :cond_0

    .line 129
    iget v3, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->length:I

    sub-int/2addr v3, v1

    const/16 v4, 0x400

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 130
    .local v0, bite:I
    iget-object v3, p0, Lorg/eclipse/mat/collect/ArrayIntBig;->pages:Ljava/util/ArrayList;

    shr-int/lit8 v4, v1, 0xa

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 131
    add-int/2addr v1, v0

    goto :goto_0

    .line 133
    .end local v0           #bite:I
    :cond_0
    return-object v2
.end method
