.class public final Lorg/eclipse/mat/collect/SetInt;
.super Ljava/lang/Object;
.source "SetInt.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private capacity:I

.field private keys:[I

.field private limit:I

.field private size:I

.field private step:I

.field private used:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/eclipse/mat/collect/SetInt;-><init>(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "initialCapacity"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lorg/eclipse/mat/collect/SetInt;->init(I)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/mat/collect/SetInt;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lorg/eclipse/mat/collect/SetInt;->size:I

    return v0
.end method

.method static synthetic access$100(Lorg/eclipse/mat/collect/SetInt;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/mat/collect/SetInt;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lorg/eclipse/mat/collect/SetInt;->keys:[I

    return-object v0
.end method

.method private init(I)V
    .locals 4
    .parameter "initialCapacity"

    .prologue
    .line 137
    invoke-static {p1}, Lorg/eclipse/mat/collect/PrimeFinder;->findNextPrime(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    .line 138
    const/4 v0, 0x1

    div-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Lorg/eclipse/mat/collect/PrimeFinder;->findPrevPrime(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/eclipse/mat/collect/SetInt;->step:I

    .line 139
    iget v0, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/eclipse/mat/collect/SetInt;->limit:I

    .line 140
    invoke-virtual {p0}, Lorg/eclipse/mat/collect/SetInt;->clear()V

    .line 141
    iget v0, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/mat/collect/SetInt;->keys:[I

    .line 142
    return-void
.end method

.method private resize(I)V
    .locals 8
    .parameter "newCapacity"

    .prologue
    .line 145
    iget v4, p0, Lorg/eclipse/mat/collect/SetInt;->size:I

    .line 146
    .local v4, oldSize:I
    iget-object v5, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    .line 147
    .local v5, oldUsed:[Z
    iget-object v3, p0, Lorg/eclipse/mat/collect/SetInt;->keys:[I

    .line 148
    .local v3, oldKeys:[I
    invoke-direct {p0, p1}, Lorg/eclipse/mat/collect/SetInt;->init(I)V

    .line 150
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_2

    .line 151
    aget-boolean v6, v5, v1

    if-eqz v6, :cond_1

    .line 152
    aget v2, v3, v1

    .line 153
    .local v2, key:I
    const v6, 0x7fffffff

    and-int/2addr v6, v2

    iget v7, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    rem-int v0, v6, v7

    .line 154
    .local v0, hash:I
    :goto_1
    iget-object v6, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_0

    .line 155
    iget v6, p0, Lorg/eclipse/mat/collect/SetInt;->step:I

    add-int/2addr v6, v0

    iget v7, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    rem-int v0, v6, v7

    goto :goto_1

    .line 157
    :cond_0
    iget-object v6, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    const/4 v7, 0x1

    aput-boolean v7, v6, v0

    .line 158
    iget-object v6, p0, Lorg/eclipse/mat/collect/SetInt;->keys:[I

    aput v2, v6, v0

    .line 150
    .end local v0           #hash:I
    .end local v2           #key:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    :cond_2
    iput v4, p0, Lorg/eclipse/mat/collect/SetInt;->size:I

    .line 162
    return-void
.end method


# virtual methods
.method public add(I)Z
    .locals 4
    .parameter "key"

    .prologue
    const/4 v1, 0x1

    .line 37
    iget v2, p0, Lorg/eclipse/mat/collect/SetInt;->size:I

    iget v3, p0, Lorg/eclipse/mat/collect/SetInt;->limit:I

    if-ne v2, v3, :cond_0

    .line 38
    iget v2, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/eclipse/mat/collect/SetInt;->resize(I)V

    .line 40
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, p1

    iget v3, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    rem-int v0, v2, v3

    .line 41
    .local v0, hash:I
    :goto_0
    iget-object v2, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    .line 42
    iget-object v2, p0, Lorg/eclipse/mat/collect/SetInt;->keys:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 43
    const/4 v1, 0x0

    .line 50
    :goto_1
    return v1

    .line 45
    :cond_1
    iget v2, p0, Lorg/eclipse/mat/collect/SetInt;->step:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    rem-int v0, v2, v3

    goto :goto_0

    .line 47
    :cond_2
    iget-object v2, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    aput-boolean v1, v2, v0

    .line 48
    iget-object v2, p0, Lorg/eclipse/mat/collect/SetInt;->keys:[I

    aput p1, v2, v0

    .line 49
    iget v2, p0, Lorg/eclipse/mat/collect/SetInt;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/mat/collect/SetInt;->size:I

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/collect/SetInt;->size:I

    .line 101
    iget v0, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    .line 102
    return-void
.end method

.method public contains(I)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 81
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    iget v2, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    rem-int v0, v1, v2

    .line 82
    .local v0, hash:I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lorg/eclipse/mat/collect/SetInt;->keys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 84
    const/4 v1, 0x1

    .line 88
    :goto_1
    return v1

    .line 86
    :cond_0
    iget v1, p0, Lorg/eclipse/mat/collect/SetInt;->step:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    rem-int v0, v1, v2

    goto :goto_0

    .line 88
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lorg/eclipse/mat/collect/SetInt;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Lorg/eclipse/mat/collect/IteratorInt;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lorg/eclipse/mat/collect/SetInt$1;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/collect/SetInt$1;-><init>(Lorg/eclipse/mat/collect/SetInt;)V

    return-object v0
.end method

.method public remove(I)Z
    .locals 7
    .parameter "key"

    .prologue
    const v6, 0x7fffffff

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 54
    and-int v4, p1, v6

    iget v5, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    rem-int v0, v4, v5

    .line 55
    .local v0, hash:I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_2

    .line 56
    iget-object v4, p0, Lorg/eclipse/mat/collect/SetInt;->keys:[I

    aget v4, v4, v0

    if-ne v4, p1, :cond_1

    .line 57
    iget-object v4, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    aput-boolean v3, v4, v0

    .line 58
    iget v4, p0, Lorg/eclipse/mat/collect/SetInt;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/eclipse/mat/collect/SetInt;->size:I

    .line 61
    iget v4, p0, Lorg/eclipse/mat/collect/SetInt;->step:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    rem-int v0, v4, v5

    .line 62
    :goto_1
    iget-object v4, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_3

    .line 63
    iget-object v4, p0, Lorg/eclipse/mat/collect/SetInt;->keys:[I

    aget p1, v4, v0

    .line 64
    iget-object v4, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    aput-boolean v3, v4, v0

    .line 65
    and-int v4, p1, v6

    iget v5, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    rem-int v1, v4, v5

    .line 66
    .local v1, newHash:I
    :goto_2
    iget-object v4, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    .line 67
    iget v4, p0, Lorg/eclipse/mat/collect/SetInt;->step:I

    add-int/2addr v4, v1

    iget v5, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    rem-int v1, v4, v5

    goto :goto_2

    .line 69
    :cond_0
    iget-object v4, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    aput-boolean v2, v4, v1

    .line 70
    iget-object v4, p0, Lorg/eclipse/mat/collect/SetInt;->keys:[I

    aput p1, v4, v1

    .line 71
    iget v4, p0, Lorg/eclipse/mat/collect/SetInt;->step:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    rem-int v0, v4, v5

    .line 72
    goto :goto_1

    .line 75
    .end local v1           #newHash:I
    :cond_1
    iget v4, p0, Lorg/eclipse/mat/collect/SetInt;->step:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/eclipse/mat/collect/SetInt;->capacity:I

    rem-int v0, v4, v5

    goto :goto_0

    :cond_2
    move v2, v3

    .line 77
    :cond_3
    return v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lorg/eclipse/mat/collect/SetInt;->size:I

    return v0
.end method

.method public toArray()[I
    .locals 5

    .prologue
    .line 126
    iget v4, p0, Lorg/eclipse/mat/collect/SetInt;->size:I

    new-array v0, v4, [I

    .line 127
    .local v0, array:[I
    const/4 v2, 0x0

    .line 128
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 129
    iget-object v4, p0, Lorg/eclipse/mat/collect/SetInt;->used:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    .line 130
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    iget-object v4, p0, Lorg/eclipse/mat/collect/SetInt;->keys:[I

    aget v4, v4, v1

    aput v4, v0, v2

    move v2, v3

    .line 128
    .end local v3           #j:I
    .restart local v2       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_1
    return-object v0
.end method
