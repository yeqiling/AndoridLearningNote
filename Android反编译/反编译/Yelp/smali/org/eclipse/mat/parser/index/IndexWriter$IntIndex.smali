.class abstract Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;
.super Ljava/lang/Object;
.source "IndexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "IntIndex"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field pageSize:I

.field pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/parser/index/IndexWriter$Pages",
            "<TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 200
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;,"Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 203
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;,"Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    const v0, 0xf4240

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->init(II)V

    .line 205
    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 214
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;,"Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex<TV;>;"
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->pageSize:I

    div-int v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->getPage(I)Lorg/eclipse/mat/collect/ArrayIntCompressed;

    move-result-object v0

    .line 215
    .local v0, array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->pageSize:I

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/collect/ArrayIntCompressed;->get(I)I

    move-result v1

    return v1
.end method

.method public getAll([I)[I
    .locals 7
    .parameter "index"

    .prologue
    .line 236
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;,"Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex<TV;>;"
    array-length v5, p1

    new-array v0, v5, [I

    .line 238
    .local v0, answer:[I
    const/4 v4, -0x1

    .line 239
    .local v4, page:I
    const/4 v1, 0x0

    .line 241
    .local v1, array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    const/4 v2, 0x0

    .local v2, ii:I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 242
    aget v5, p1, v2

    iget v6, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->pageSize:I

    div-int v3, v5, v6

    .line 243
    .local v3, p:I
    if-eq v3, v4, :cond_0

    move v4, v3

    invoke-virtual {p0, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->getPage(I)Lorg/eclipse/mat/collect/ArrayIntCompressed;

    move-result-object v1

    .line 245
    :cond_0
    aget v5, p1, v2

    iget v6, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->pageSize:I

    rem-int/2addr v5, v6

    invoke-virtual {v1, v5}, Lorg/eclipse/mat/collect/ArrayIntCompressed;->get(I)I

    move-result v5

    aput v5, v0, v2

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v3           #p:I
    :cond_1
    return-object v0
.end method

.method public getNext(II)[I
    .locals 7
    .parameter "index"
    .parameter "length"

    .prologue
    .line 219
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;,"Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex<TV;>;"
    new-array v0, p2, [I

    .line 220
    .local v0, answer:[I
    iget v6, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->pageSize:I

    div-int v3, p1, v6

    .line 221
    .local v3, page:I
    iget v6, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->pageSize:I

    rem-int v4, p1, v6

    .line 223
    .local v4, pageIndex:I
    invoke-virtual {p0, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->getPage(I)Lorg/eclipse/mat/collect/ArrayIntCompressed;

    move-result-object v1

    .line 224
    .local v1, array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    const/4 v2, 0x0

    .local v2, ii:I
    move v5, v4

    .end local v4           #pageIndex:I
    .local v5, pageIndex:I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 225
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pageIndex:I
    .restart local v4       #pageIndex:I
    invoke-virtual {v1, v5}, Lorg/eclipse/mat/collect/ArrayIntCompressed;->get(I)I

    move-result v6

    aput v6, v0, v2

    .line 226
    iget v6, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->pageSize:I

    if-lt v4, v6, :cond_0

    .line 227
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->getPage(I)Lorg/eclipse/mat/collect/ArrayIntCompressed;

    move-result-object v1

    .line 228
    const/4 v4, 0x0

    .line 224
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #pageIndex:I
    .restart local v5       #pageIndex:I
    goto :goto_0

    .line 232
    :cond_1
    return-object v0
.end method

.method protected abstract getPage(I)Lorg/eclipse/mat/collect/ArrayIntCompressed;
.end method

.method protected init(II)V
    .locals 2
    .parameter "size"
    .parameter "pageSize"

    .prologue
    .line 208
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;,"Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex<TV;>;"
    iput p1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->size:I

    .line 209
    iput p2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->pageSize:I

    .line 210
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    div-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    .line 211
    return-void
.end method

.method public iterator()Lorg/eclipse/mat/collect/IteratorInt;
    .locals 1

    .prologue
    .line 267
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;,"Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex<TV;>;"
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexIterator;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexIterator;-><init>(Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;)V

    return-object v0
.end method

.method public set(II)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 252
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;,"Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex<TV;>;"
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->pageSize:I

    div-int v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->getPage(I)Lorg/eclipse/mat/collect/ArrayIntCompressed;

    move-result-object v0

    .line 253
    .local v0, array:Lorg/eclipse/mat/collect/ArrayIntCompressed;
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->pageSize:I

    rem-int v1, p1, v1

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/mat/collect/ArrayIntCompressed;->set(II)V

    .line 254
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 263
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;,"Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex<TV;>;"
    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->size:I

    return v0
.end method

.method public declared-synchronized unload()V
    .locals 3

    .prologue
    .line 259
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;,"Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex<TV;>;"
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;

    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->size:I

    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->pageSize:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->pages:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    monitor-exit p0

    return-void

    .line 259
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
