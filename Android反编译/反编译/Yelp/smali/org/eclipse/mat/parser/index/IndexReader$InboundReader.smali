.class Lorg/eclipse/mat/parser/index/IndexReader$InboundReader;
.super Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;
.source "IndexReader.java"

# interfaces
.implements Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyObjectsIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InboundReader"
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
    .line 273
    invoke-direct {p0, p1}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;-><init>(Ljava/io/File;)V

    .line 274
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
    .line 278
    invoke-direct {p0, p1, p2, p3}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;-><init>(Ljava/io/File;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)V

    .line 279
    return-void
.end method


# virtual methods
.method public getObjectsOf(Ljava/io/Serializable;)[I
    .locals 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 282
    if-nez p1, :cond_0

    new-array v1, v1, [I

    .line 287
    .end local p1
    :goto_0
    return-object v1

    .line 284
    .restart local p1
    :cond_0
    check-cast p1, [I

    .end local p1
    move-object v0, p1

    check-cast v0, [I

    .line 286
    .local v0, pos:[I
    monitor-enter p0

    .line 287
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexReader$InboundReader;->body:Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;->getNext(II)[I

    move-result-object v1

    monitor-exit p0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
