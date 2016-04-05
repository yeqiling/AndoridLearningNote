.class public Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;
.super Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;
.source "IndexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongIndexCollector"
.end annotation


# instance fields
.field mostSignificantBit:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "size"
    .parameter "mostSignificantBit"

    .prologue
    .line 1010
    invoke-direct {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;-><init>(I)V

    .line 1011
    iput p2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->mostSignificantBit:I

    .line 1012
    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 1006
    invoke-super {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getNext(II)[J
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1006
    invoke-super {p0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->getNext(II)[J

    move-result-object v0

    return-object v0
.end method

.method protected getPage(I)Lorg/eclipse/mat/collect/ArrayLongCompressed;
    .locals 4
    .parameter "page"

    .prologue
    .line 1015
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->pages:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v2, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/collect/ArrayLongCompressed;

    .line 1016
    .local v0, array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    if-nez v0, :cond_0

    .line 1017
    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->size:I

    iget v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->pageSize:I

    div-int/2addr v2, v3

    if-ge p1, v2, :cond_1

    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->pageSize:I

    .line 1018
    .local v1, ps:I
    :goto_0
    new-instance v0, Lorg/eclipse/mat/collect/ArrayLongCompressed;

    .end local v0           #array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->mostSignificantBit:I

    rsub-int/lit8 v2, v2, 0x3f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/mat/collect/ArrayLongCompressed;-><init>(III)V

    .line 1019
    .restart local v0       #array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->pages:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v2, p1, v0}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1021
    .end local v1           #ps:I
    :cond_0
    return-object v0

    .line 1017
    :cond_1
    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->size:I

    iget v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->pageSize:I

    rem-int v1, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic iterator()Lorg/eclipse/mat/collect/IteratorLong;
    .locals 1

    .prologue
    .line 1006
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->iterator()Lorg/eclipse/mat/collect/IteratorLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reverse(J)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 1006
    invoke-super {p0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->reverse(J)I

    move-result v0

    return v0
.end method

.method public bridge synthetic set(IJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1006
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->set(IJ)V

    return-void
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 1006
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic unload()V
    .locals 0

    .prologue
    .line 1006
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->unload()V

    return-void
.end method

.method public writeTo(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    .locals 4
    .parameter "indexFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1026
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;

    invoke-direct {v0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;-><init>()V

    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->size:I

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->pages:Lorg/eclipse/mat/collect/HashMapIntObject;

    iget v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->pageSize:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->writeTo(Ljava/io/File;ILorg/eclipse/mat/collect/HashMapIntObject;I)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v0

    return-object v0
.end method
