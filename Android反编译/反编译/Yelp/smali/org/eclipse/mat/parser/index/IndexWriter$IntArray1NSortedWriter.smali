.class public Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;
.super Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;
.source "IndexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntArray1NSortedWriter"
.end annotation


# direct methods
.method public constructor <init>(ILjava/io/File;)V
    .locals 0
    .parameter "size"
    .parameter "indexFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 565
    invoke-direct {p0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;-><init>(ILjava/io/File;)V

    .line 566
    return-void
.end method


# virtual methods
.method protected createReader(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    .locals 2
    .parameter "headerIndex"
    .parameter "bodyIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 576
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;->indexFile:Ljava/io/File;

    invoke-direct {v0, v1, p1, p2}, Lorg/eclipse/mat/parser/index/IndexReader$IntIndex1NSortedReader;-><init>(Ljava/io/File;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)V

    return-object v0
.end method

.method protected set(I[III)V
    .locals 2
    .parameter "index"
    .parameter "values"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 569
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;->header:[I

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;->body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->size()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 571
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;->body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-virtual {v0, p2, p3, p4}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->addAll([III)V

    .line 572
    return-void
.end method
