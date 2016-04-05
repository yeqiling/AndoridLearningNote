.class Lorg/eclipse/mat/collect/PrimeFinder;
.super Ljava/lang/Object;
.source "PrimeFinder.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findNextPrime(I)I
    .locals 6
    .parameter "floor"

    .prologue
    .line 17
    const/4 v1, 0x0

    .line 18
    .local v1, isPrime:Z
    :cond_0
    if-nez v1, :cond_2

    .line 19
    add-int/lit8 p0, p0, 0x1

    .line 20
    const/4 v1, 0x1

    .line 21
    int-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 22
    .local v2, sqrt:I
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 23
    div-int v3, p0, v0

    mul-int/2addr v3, v0

    if-ne v3, p0, :cond_1

    .line 24
    const/4 v1, 0x0

    .line 22
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 28
    .end local v0           #i:I
    .end local v2           #sqrt:I
    :cond_2
    return p0
.end method

.method public static findPrevPrime(I)I
    .locals 6
    .parameter "ceil"

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, isPrime:Z
    :cond_0
    if-nez v1, :cond_2

    .line 34
    add-int/lit8 p0, p0, -0x1

    .line 35
    const/4 v1, 0x1

    .line 36
    int-to-double v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 37
    .local v2, sqrt:I
    const/4 v0, 0x2

    .local v0, i:I
    :goto_0
    if-gt v0, v2, :cond_0

    .line 38
    div-int v3, p0, v0

    mul-int/2addr v3, v0

    if-ne v3, p0, :cond_1

    .line 39
    const/4 v1, 0x0

    .line 37
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v0           #i:I
    .end local v2           #sqrt:I
    :cond_2
    return p0
.end method
