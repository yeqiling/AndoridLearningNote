.class public final Lorg/eclipse/mat/collect/HashMapIntLong;
.super Ljava/lang/Object;
.source "HashMapIntLong.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/collect/HashMapIntLong$Entry;
    }
.end annotation


# static fields
.field private static noSuchElementException:Ljava/util/NoSuchElementException; = null

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private capacity:I

.field private keys:[I

.field private limit:I

.field private size:I

.field private step:I

.field private used:[Z

.field private values:[J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "This is static exception, there is no stack trace available. It is thrown by get() method."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/mat/collect/HashMapIntLong;->noSuchElementException:Ljava/util/NoSuchElementException;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/eclipse/mat/collect/HashMapIntLong;-><init>(I)V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "initialCapacity"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1}, Lorg/eclipse/mat/collect/HashMapIntLong;->init(I)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/mat/collect/HashMapIntLong;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->size:I

    return v0
.end method

.method static synthetic access$100(Lorg/eclipse/mat/collect/HashMapIntLong;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/mat/collect/HashMapIntLong;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->keys:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/mat/collect/HashMapIntLong;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->values:[J

    return-object v0
.end method

.method private init(I)V
    .locals 4
    .parameter "initialCapacity"

    .prologue
    .line 230
    invoke-static {p1}, Lorg/eclipse/mat/collect/PrimeFinder;->findNextPrime(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    .line 231
    const/4 v0, 0x1

    div-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Lorg/eclipse/mat/collect/PrimeFinder;->findPrevPrime(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->step:I

    .line 232
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->limit:I

    .line 233
    invoke-virtual {p0}, Lorg/eclipse/mat/collect/HashMapIntLong;->clear()V

    .line 234
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->keys:[I

    .line 235
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->values:[J

    .line 236
    return-void
.end method

.method private resize(I)V
    .locals 10
    .parameter "newCapacity"

    .prologue
    .line 239
    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->size:I

    .line 240
    .local v4, oldSize:I
    iget-object v5, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    .line 241
    .local v5, oldUsed:[Z
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->keys:[I

    .line 242
    .local v3, oldKeys:[I
    iget-object v6, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->values:[J

    .line 243
    .local v6, oldValues:[J
    invoke-direct {p0, p1}, Lorg/eclipse/mat/collect/HashMapIntLong;->init(I)V

    .line 245
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v5

    if-ge v1, v7, :cond_2

    .line 246
    aget-boolean v7, v5, v1

    if-eqz v7, :cond_1

    .line 247
    aget v2, v3, v1

    .line 248
    .local v2, key:I
    const v7, 0x7fffffff

    and-int/2addr v7, v2

    iget v8, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v0, v7, v8

    .line 249
    .local v0, hash:I
    :goto_1
    iget-object v7, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    aget-boolean v7, v7, v0

    if-eqz v7, :cond_0

    .line 250
    iget v7, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->step:I

    add-int/2addr v7, v0

    iget v8, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v0, v7, v8

    goto :goto_1

    .line 252
    :cond_0
    iget-object v7, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    const/4 v8, 0x1

    aput-boolean v8, v7, v0

    .line 253
    iget-object v7, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->keys:[I

    aput v2, v7, v0

    .line 254
    iget-object v7, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->values:[J

    aget-wide v8, v6, v1

    aput-wide v8, v7, v0

    .line 245
    .end local v0           #hash:I
    .end local v2           #key:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 257
    :cond_2
    iput v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->size:I

    .line 258
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->size:I

    .line 140
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    .line 141
    return-void
.end method

.method public containsKey(I)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 97
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v0, v1, v2

    .line 98
    .local v0, hash:I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->keys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 100
    const/4 v1, 0x1

    .line 104
    :goto_1
    return v1

    .line 102
    :cond_0
    iget v1, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->step:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v0, v1, v2

    goto :goto_0

    .line 104
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public entries()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/eclipse/mat/collect/HashMapIntLong$Entry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    new-instance v0, Lorg/eclipse/mat/collect/HashMapIntLong$3;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/collect/HashMapIntLong$3;-><init>(Lorg/eclipse/mat/collect/HashMapIntLong;)V

    return-object v0
.end method

.method public get(I)J
    .locals 4
    .parameter "key"

    .prologue
    .line 108
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v0, v1, v2

    .line 109
    .local v0, hash:I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->keys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 111
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->values:[J

    aget-wide v2, v1, v0

    return-wide v2

    .line 113
    :cond_0
    iget v1, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->step:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v0, v1, v2

    goto :goto_0

    .line 116
    :cond_1
    sget-object v1, Lorg/eclipse/mat/collect/HashMapIntLong;->noSuchElementException:Ljava/util/NoSuchElementException;

    throw v1
.end method

.method public getAllKeys()[I
    .locals 5

    .prologue
    .line 120
    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->size:I

    new-array v0, v4, [I

    .line 121
    .local v0, array:[I
    const/4 v2, 0x0

    .line 122
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 123
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    .line 124
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->keys:[I

    aget v4, v4, v1

    aput v4, v0, v2

    move v2, v3

    .line 122
    .end local v3           #j:I
    .restart local v2       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    return-object v0
.end method

.method public getAllValues()[J
    .locals 6

    .prologue
    .line 219
    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->size:I

    new-array v0, v4, [J

    .line 221
    .local v0, a:[J
    const/4 v2, 0x0

    .line 222
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->values:[J

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 223
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->values:[J

    aget-wide v4, v4, v1

    aput-wide v4, v0, v2

    move v2, v3

    .line 222
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 226
    :cond_1
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0}, Lorg/eclipse/mat/collect/HashMapIntLong;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keys()Lorg/eclipse/mat/collect/IteratorInt;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Lorg/eclipse/mat/collect/HashMapIntLong$1;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/collect/HashMapIntLong$1;-><init>(Lorg/eclipse/mat/collect/HashMapIntLong;)V

    return-object v0
.end method

.method public put(IJ)Z
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    .line 49
    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->size:I

    iget v3, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->limit:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/eclipse/mat/collect/HashMapIntLong;->resize(I)V

    .line 51
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, p1

    iget v3, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v0, v2, v3

    .line 52
    .local v0, hash:I
    :goto_0
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    .line 53
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->keys:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 54
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->values:[J

    aput-wide p2, v2, v0

    .line 64
    :goto_1
    return v1

    .line 57
    :cond_1
    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->step:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v0, v2, v3

    goto :goto_0

    .line 59
    :cond_2
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    aput-boolean v1, v2, v0

    .line 60
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->keys:[I

    aput p1, v1, v0

    .line 61
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->values:[J

    aput-wide p2, v1, v0

    .line 62
    iget v1, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->size:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->size:I

    .line 64
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public remove(I)Z
    .locals 9
    .parameter "key"

    .prologue
    const v8, 0x7fffffff

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 68
    and-int v4, p1, v8

    iget v5, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v0, v4, v5

    .line 69
    .local v0, hash:I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_2

    .line 70
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->keys:[I

    aget v4, v4, v0

    if-ne v4, p1, :cond_1

    .line 71
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    aput-boolean v3, v4, v0

    .line 72
    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->size:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->size:I

    .line 75
    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->step:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v0, v4, v5

    .line 76
    :goto_1
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_3

    .line 77
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->keys:[I

    aget p1, v4, v0

    .line 78
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    aput-boolean v3, v4, v0

    .line 79
    and-int v4, p1, v8

    iget v5, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v1, v4, v5

    .line 80
    .local v1, newHash:I
    :goto_2
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    .line 81
    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->step:I

    add-int/2addr v4, v1

    iget v5, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v1, v4, v5

    goto :goto_2

    .line 83
    :cond_0
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->used:[Z

    aput-boolean v2, v4, v1

    .line 84
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->keys:[I

    aput p1, v4, v1

    .line 85
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->values:[J

    iget-object v5, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->values:[J

    aget-wide v6, v5, v0

    aput-wide v6, v4, v1

    .line 86
    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->step:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v0, v4, v5

    .line 87
    goto :goto_1

    .line 90
    .end local v1           #newHash:I
    :cond_1
    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->step:I

    add-int/2addr v4, v0

    iget v5, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->capacity:I

    rem-int v0, v4, v5

    goto :goto_0

    :cond_2
    move v2, v3

    .line 93
    :cond_3
    return v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong;->size:I

    return v0
.end method

.method public values()Lorg/eclipse/mat/collect/IteratorLong;
    .locals 1

    .prologue
    .line 165
    new-instance v0, Lorg/eclipse/mat/collect/HashMapIntLong$2;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/collect/HashMapIntLong$2;-><init>(Lorg/eclipse/mat/collect/HashMapIntLong;)V

    return-object v0
.end method
