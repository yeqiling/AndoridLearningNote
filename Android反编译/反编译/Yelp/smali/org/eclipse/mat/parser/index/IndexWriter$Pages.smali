.class Lorg/eclipse/mat/parser/index/IndexWriter$Pages;
.super Ljava/lang/Object;
.source "IndexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pages"
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
.field elements:[Ljava/lang/Object;

.field size:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "initialSize"

    .prologue
    .line 163
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;,"Lorg/eclipse/mat/parser/index/IndexWriter$Pages<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->elements:[Ljava/lang/Object;

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->size:I

    .line 166
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 6
    .parameter "minCapacity"

    .prologue
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;,"Lorg/eclipse/mat/parser/index/IndexWriter$Pages<TV;>;"
    const/4 v5, 0x0

    .line 169
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->elements:[Ljava/lang/Object;

    array-length v2, v3

    .line 170
    .local v2, oldCapacity:I
    if-le p1, v2, :cond_1

    .line 171
    mul-int/lit8 v3, v2, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v1, v3, 0x1

    .line 172
    .local v1, newCapacity:I
    if-ge v1, p1, :cond_0

    move v1, p1

    .line 174
    :cond_0
    new-array v0, v1, [Ljava/lang/Object;

    .line 175
    .local v0, copy:[Ljava/lang/Object;
    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->elements:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->elements:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->elements:[Ljava/lang/Object;

    .line 178
    .end local v0           #copy:[Ljava/lang/Object;
    .end local v1           #newCapacity:I
    :cond_1
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;,"Lorg/eclipse/mat/parser/index/IndexWriter$Pages<TV;>;"
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->elements:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->elements:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;,"Lorg/eclipse/mat/parser/index/IndexWriter$Pages<TV;>;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->ensureCapacity(I)V

    .line 186
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->elements:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 187
    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->size:I

    add-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->size:I

    .line 188
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 191
    .local p0, this:Lorg/eclipse/mat/parser/index/IndexWriter$Pages;,"Lorg/eclipse/mat/parser/index/IndexWriter$Pages<TV;>;"
    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$Pages;->size:I

    return v0
.end method
