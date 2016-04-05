.class public Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;
.super Ljava/lang/Object;
.source "IndexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntIndexCollectorUncompressed"
.end annotation


# instance fields
.field dataElements:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;->dataElements:[I

    .line 144
    return-void
.end method


# virtual methods
.method public get(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 151
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;->dataElements:[I

    aget v0, v0, p1

    return v0
.end method

.method public set(II)V
    .locals 1
    .parameter "index"
    .parameter "value"

    .prologue
    .line 147
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;->dataElements:[I

    aput p2, v0, p1

    .line 148
    return-void
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
    .line 155
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-direct {v0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;->dataElements:[I

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->writeTo(Ljava/io/File;[I)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v0

    return-object v0
.end method
