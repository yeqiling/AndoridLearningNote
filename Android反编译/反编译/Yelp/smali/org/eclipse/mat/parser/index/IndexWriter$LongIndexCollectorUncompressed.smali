.class public Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollectorUncompressed;
.super Ljava/lang/Object;
.source "IndexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongIndexCollectorUncompressed"
.end annotation


# instance fields
.field dataElements:[J


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 865
    new-array v0, p1, [J

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollectorUncompressed;->dataElements:[J

    .line 866
    return-void
.end method


# virtual methods
.method public get(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 873
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollectorUncompressed;->dataElements:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public set(IJ)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 869
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollectorUncompressed;->dataElements:[J

    aput-wide p2, v0, p1

    .line 870
    return-void
.end method

.method public writeTo(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    .locals 2
    .parameter "indexFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 877
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;

    invoke-direct {v0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;-><init>()V

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollectorUncompressed;->dataElements:[J

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->writeTo(Ljava/io/File;[J)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v0

    return-object v0
.end method
