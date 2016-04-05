.class public Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;
.super Ljava/lang/Object;
.source "IndexWriter.java"

# interfaces
.implements Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Identifier"
.end annotation


# instance fields
.field identifiers:[J

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 5
    .parameter "id"

    .prologue
    .line 59
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->identifiers:[J

    if-nez v1, :cond_0

    .line 60
    const/16 v1, 0x2710

    new-array v1, v1, [J

    iput-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->identifiers:[J

    .line 61
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size:I

    .line 64
    :cond_0
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->identifiers:[J

    array-length v2, v2

    if-le v1, v2, :cond_2

    .line 65
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->identifiers:[J

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v0, v1, 0x1

    .line 66
    .local v0, newCapacity:I
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1

    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size:I

    add-int/lit8 v0, v1, 0x1

    .line 67
    :cond_1
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->identifiers:[J

    invoke-static {v1, v0}, Lorg/eclipse/mat/parser/index/IndexWriter;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->identifiers:[J

    .line 70
    .end local v0           #newCapacity:I
    :cond_2
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->identifiers:[J

    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size:I

    aput-wide p1, v1, v2

    .line 71
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    return-void
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->identifiers:[J

    .line 132
    return-void
.end method

.method public get(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 82
    if-ltz p1, :cond_0

    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 84
    :cond_1
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->identifiers:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getNext(II)[J
    .locals 4
    .parameter "index"
    .parameter "length"

    .prologue
    .line 121
    new-array v0, p2, [J

    .line 122
    .local v0, answer:[J
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_0
    if-ge v1, p2, :cond_0

    .line 123
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->identifiers:[J

    add-int v3, p1, v1

    aget-wide v2, v2, v3

    aput-wide v2, v0, v1

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    return-object v0
.end method

.method public iterator()Lorg/eclipse/mat/collect/IteratorLong;
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier$1;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier$1;-><init>(Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;)V

    return-object v0
.end method

.method public reverse(J)I
    .locals 7
    .parameter "val"

    .prologue
    .line 89
    const/4 v0, 0x0

    .local v0, a:I
    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size:I

    .local v2, c:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 91
    add-int v3, v0, v2

    ushr-int/lit8 v1, v3, 0x1

    .line 92
    .local v1, b:I
    invoke-virtual {p0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->get(I)J

    move-result-wide v4

    .line 93
    .local v4, probeVal:J
    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    .line 94
    move v2, v1

    goto :goto_0

    .line 95
    :cond_0
    cmp-long v3, v4, p1

    if-gez v3, :cond_2

    .line 96
    add-int/lit8 v0, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1           #b:I
    .end local v4           #probeVal:J
    :cond_1
    rsub-int/lit8 v1, v0, -0x1

    :cond_2
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size:I

    return v0
.end method

.method public sort()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->identifiers:[J

    const/4 v1, 0x0

    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([JII)V

    .line 75
    return-void
.end method

.method public unload()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
