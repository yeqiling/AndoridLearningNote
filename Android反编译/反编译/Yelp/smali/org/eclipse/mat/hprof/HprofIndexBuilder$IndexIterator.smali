.class final Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;
.super Ljava/lang/Object;
.source "HprofIndexBuilder.java"

# interfaces
.implements Lorg/eclipse/mat/collect/IteratorLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/hprof/HprofIndexBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IndexIterator"
.end annotation


# instance fields
.field private final id2position:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

.field private nextIndex:I

.field private final purgedMapping:[I


# direct methods
.method private constructor <init>(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;[I)V
    .locals 1
    .parameter "id2position"
    .parameter "purgedMapping"

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->nextIndex:I

    .line 138
    iput-object p1, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->id2position:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    .line 139
    iput-object p2, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->purgedMapping:[I

    .line 140
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->findNext()V

    .line 141
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;[ILorg/eclipse/mat/hprof/HprofIndexBuilder$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;-><init>(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;[I)V

    return-void
.end method


# virtual methods
.method protected findNext()V
    .locals 2

    .prologue
    .line 154
    iget v0, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->nextIndex:I

    .line 155
    :goto_0
    iget v0, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->nextIndex:I

    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->purgedMapping:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->purgedMapping:[I

    iget v1, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->nextIndex:I

    aget v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->nextIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->nextIndex:I

    goto :goto_0

    .line 156
    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 144
    iget v0, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->nextIndex:I

    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->purgedMapping:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()J
    .locals 4

    .prologue
    .line 148
    iget-object v2, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->id2position:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    iget v3, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->nextIndex:I

    invoke-interface {v2, v3}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->get(I)J

    move-result-wide v0

    .line 149
    .local v0, answer:J
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;->findNext()V

    .line 150
    return-wide v0
.end method
