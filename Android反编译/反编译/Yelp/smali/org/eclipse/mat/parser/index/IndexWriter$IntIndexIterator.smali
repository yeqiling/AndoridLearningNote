.class Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexIterator;
.super Ljava/lang/Object;
.source "IndexWriter.java"

# interfaces
.implements Lorg/eclipse/mat/collect/IteratorInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntIndexIterator"
.end annotation


# instance fields
.field intArray:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex",
            "<*>;"
        }
    .end annotation
.end field

.field nextIndex:I


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 275
    .local p1, intArray:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;,"Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexIterator;->nextIndex:I

    .line 276
    iput-object p1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexIterator;->intArray:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;

    .line 277
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 284
    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexIterator;->nextIndex:I

    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexIterator;->intArray:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()I
    .locals 3

    .prologue
    .line 280
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexIterator;->intArray:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;

    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexIterator;->nextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexIterator;->nextIndex:I

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndex;->get(I)I

    move-result v0

    return v0
.end method
