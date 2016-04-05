.class public final Lorg/eclipse/mat/collect/BitField;
.super Ljava/lang/Object;
.source "BitField.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private bits:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    add-int/lit8 v0, p1, -0x1

    ushr-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/mat/collect/BitField;->bits:[I

    .line 35
    return-void
.end method


# virtual methods
.method public final clear(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 50
    iget-object v0, p0, Lorg/eclipse/mat/collect/BitField;->bits:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    aput v2, v0, v1

    .line 51
    return-void
.end method

.method public final get(I)Z
    .locals 3
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 58
    iget-object v1, p0, Lorg/eclipse/mat/collect/BitField;->bits:[I

    ushr-int/lit8 v2, p1, 0x5

    aget v1, v1, v2

    and-int/lit8 v2, p1, 0x1f

    shl-int v2, v0, v2

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final set(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 42
    iget-object v0, p0, Lorg/eclipse/mat/collect/BitField;->bits:[I

    ushr-int/lit8 v1, p1, 0x5

    aget v2, v0, v1

    const/4 v3, 0x1

    and-int/lit8 v4, p1, 0x1f

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 43
    return-void
.end method
