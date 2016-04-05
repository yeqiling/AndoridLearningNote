.class public Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;
.super Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;
.source "IndexReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntIndex1NSortedReader"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 0
    .parameter "indexFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;-><init>(Ljava/io/File;)V

    .line 239
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)V
    .locals 0
    .parameter "indexFile"
    .parameter "header"
    .parameter "body"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;-><init>(Ljava/io/File;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)V

    .line 247
    return-void
.end method


# virtual methods
.method public bridge synthetic close()V
    .locals 0

    .prologue
    .line 236
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->close()V

    return-void
.end method

.method public bridge synthetic delete()V
    .locals 0

    .prologue
    .line 236
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->delete()V

    return-void
.end method

.method public get(I)[I
    .locals 7
    .parameter "index"

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 250
    const/4 v1, 0x0

    .line 252
    .local v1, p:[I
    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 253
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, index:I
    invoke-virtual {v2, p1, v6}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->getNext(II)[I

    move-result-object v1

    .line 254
    aget v2, v1, v5

    if-nez v2, :cond_0

    new-array v2, v5, [I

    move p1, v0

    .line 266
    .end local v0           #index:I
    .restart local p1
    :goto_0
    return-object v2

    .line 256
    .end local p1
    .restart local v0       #index:I
    :cond_0
    add-int/lit8 p1, v0, 0x1

    .end local v0           #index:I
    .restart local p1
    :goto_1
    aget v2, v1, v4

    aget v3, v1, v5

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 257
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v2, p1}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->get(I)I

    move-result v2

    aput v2, v1, v4

    .line 256
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 259
    :cond_1
    aget v2, v1, v4

    aget v3, v1, v5

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    .line 266
    :cond_2
    :goto_2
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    aget v3, v1, v5

    add-int/lit8 v3, v3, -0x1

    aget v4, v1, v4

    aget v5, v1, v5

    sub-int/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->getNext(II)[I

    move-result-object v2

    goto :goto_0

    .line 261
    :cond_3
    new-array v1, v6, [I

    .end local v1           #p:[I
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;->header:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v2, p1}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->get(I)I

    move-result v2

    aput v2, v1, v5

    aput v5, v1, v4

    .line 262
    .restart local v1       #p:[I
    aget v2, v1, v5

    if-nez v2, :cond_4

    new-array v2, v5, [I

    goto :goto_0

    .line 263
    :cond_4
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v4

    goto :goto_2
.end method

.method public bridge synthetic size()I
    .locals 1

    .prologue
    .line 236
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic unload()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-super {p0}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NReader;->unload()V

    return-void
.end method
