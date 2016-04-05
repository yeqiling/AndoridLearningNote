.class Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexIterator;
.super Ljava/lang/Object;
.source "IndexWriter.java"

# interfaces
.implements Lorg/eclipse/mat/collect/IteratorLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LongIndexIterator"
.end annotation


# instance fields
.field longArray:Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;

.field nextIndex:I


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;)V
    .locals 1
    .parameter "longArray"

    .prologue
    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 991
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexIterator;->nextIndex:I

    .line 994
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexIterator;->longArray:Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;

    .line 995
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 1002
    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexIterator;->nextIndex:I

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexIterator;->longArray:Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()J
    .locals 3

    .prologue
    .line 998
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexIterator;->longArray:Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;

    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexIterator;->nextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexIterator;->nextIndex:I

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->get(I)J

    move-result-wide v0

    return-wide v0
.end method
