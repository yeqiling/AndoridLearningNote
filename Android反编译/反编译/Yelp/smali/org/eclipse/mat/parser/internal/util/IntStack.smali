.class public Lorg/eclipse/mat/parser/internal/util/IntStack;
.super Ljava/lang/Object;
.source "IntStack.java"


# instance fields
.field private data:[I

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lorg/eclipse/mat/parser/internal/util/IntStack;-><init>(I)V

    .line 21
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "capacity"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->data:[I

    .line 25
    return-void
.end method


# virtual methods
.method public final capacity()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->data:[I

    array-length v0, v0

    return v0
.end method

.method public final peek()I
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->data:[I

    iget v1, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->size:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public final pop()I
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->data:[I

    iget v1, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->size:I

    aget v0, v0, v1

    return v0
.end method

.method public final push(I)V
    .locals 4
    .parameter "i"

    .prologue
    const/4 v3, 0x0

    .line 32
    iget v1, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->size:I

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->data:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 33
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->data:[I

    array-length v1, v1

    shl-int/lit8 v1, v1, 0x1

    new-array v0, v1, [I

    .line 34
    .local v0, newArr:[I
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->data:[I

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->data:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->data:[I

    .line 37
    .end local v0           #newArr:[I
    :cond_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->data:[I

    iget v2, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->size:I

    aput p1, v1, v2

    .line 38
    return-void
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lorg/eclipse/mat/parser/internal/util/IntStack;->size:I

    return v0
.end method
