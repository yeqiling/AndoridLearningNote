.class public Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;
.super Ljava/lang/Object;
.source "IndexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntArray1NUncompressedCollector"
.end annotation


# instance fields
.field elements:[[I

.field indexFile:Ljava/io/File;


# direct methods
.method public constructor <init>(ILjava/io/File;)V
    .locals 1
    .parameter "size"
    .parameter "indexFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 829
    new-array v0, p1, [[I

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->elements:[[I

    .line 830
    iput-object p2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->indexFile:Ljava/io/File;

    .line 831
    return-void
.end method


# virtual methods
.method public flush()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 849
    new-instance v1, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->elements:[[I

    array-length v2, v2

    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->indexFile:Ljava/io/File;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;-><init>(ILjava/io/File;)V

    .line 850
    .local v1, writer:Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->elements:[[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 851
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->elements:[[I

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->elements:[[I

    aget-object v2, v2, v0

    invoke-virtual {v1, v0, v2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;->log(I[I)V

    .line 850
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 853
    :cond_1
    invoke-virtual {v1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;->flush()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v2

    return-object v2
.end method

.method public getIndexFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->indexFile:Ljava/io/File;

    return-object v0
.end method

.method public log(II)V
    .locals 4
    .parameter "classId"
    .parameter "methodId"

    .prologue
    const/4 v3, 0x0

    .line 834
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->elements:[[I

    aget-object v1, v1, p1

    if-nez v1, :cond_0

    .line 835
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->elements:[[I

    const/4 v2, 0x1

    new-array v2, v2, [I

    aput p2, v2, v3

    aput-object v2, v1, p1

    .line 842
    :goto_0
    return-void

    .line 837
    :cond_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->elements:[[I

    aget-object v1, v1, p1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 838
    .local v0, newChildren:[I
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->elements:[[I

    aget-object v1, v1, p1

    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->elements:[[I

    aget-object v2, v2, p1

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 839
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->elements:[[I

    aget-object v1, v1, p1

    array-length v1, v1

    aput p2, v0, v1

    .line 840
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NUncompressedCollector;->elements:[[I

    aput-object v0, v1, p1

    goto :goto_0
.end method
