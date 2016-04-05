.class public Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;
.super Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;
.source "IndexWriter.java"

# interfaces
.implements Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntIndexCollector"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex",
        "<",
        "Lorg/eclipse/mat/collect/ArrayIntCompressed;",
        ">;",
        "Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;"
    }
.end annotation


# instance fields
.field mostSignificantBit:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "size"
    .parameter "mostSignificantBit"

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;-><init>(I)V

    .line 294
    iput p2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->mostSignificantBit:I

    .line 295
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 318
    return-void
.end method

.method public delete()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    .line 322
    return-void
.end method

.method public bridge synthetic get(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 288
    invoke-super {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->get(I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getAll([I)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 288
    invoke-super {p0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->getAll([I)[I

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getNext(II)[I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 288
    invoke-super {p0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->getNext(II)[I

    move-result-object v0

    return-object v0
.end method

.method protected getPage(I)Lorg/eclipse/mat/collect/ArrayIntCompressed;
    .locals 4
    .parameter "page"

    .prologue
    .line 298
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    invoke-virtual {v2, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/collect/ArrayIntCompressed;

    .line 299
    .local v0, array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    if-nez v0, :cond_0

    .line 300
    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->size:I

    iget v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->pageSize:I

    div-int/2addr v2, v3

    if-ge p1, v2, :cond_1

    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->pageSize:I

    .line 301
    .local v1, ps:I
    :goto_0
    new-instance v0, Lorg/eclipse/mat/collect/ArrayIntCompressed;

    .end local v0           #array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->mostSignificantBit:I

    rsub-int/lit8 v2, v2, 0x1f

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/mat/collect/ArrayIntCompressed;-><init>(III)V

    .line 302
    .restart local v0       #array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    invoke-virtual {v2, p1, v0}, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->put(ILjava/lang/Object;)V

    .line 304
    .end local v1           #ps:I
    :cond_0
    return-object v0

    .line 300
    :cond_1
    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->size:I

    iget v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->pageSize:I

    rem-int v1, v2, v3

    goto :goto_0
.end method

.method public bridge synthetic iterator()Lorg/eclipse/mat/collect/IteratorInt;
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->iterator()Lorg/eclipse/mat/collect/IteratorInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 288
    invoke-super {p0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->set(II)V

    return-void
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 288
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic unload()V
    .locals 0

    .prologue
    .line 288
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->unload()V

    return-void
.end method

.method public writeTo(Ljava/io/DataOutputStream;J)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    .locals 2
    .parameter "out"
    .parameter "position"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 314
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-direct {v0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->iterator()Lorg/eclipse/mat/collect/IteratorInt;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->writeTo(Ljava/io/DataOutputStream;JLorg/eclipse/mat/collect/IteratorInt;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    .locals 2
    .parameter "indexFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-direct {v0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;-><init>()V

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->iterator()Lorg/eclipse/mat/collect/IteratorInt;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->writeTo(Ljava/io/File;Lorg/eclipse/mat/collect/IteratorInt;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v0

    return-object v0
.end method
