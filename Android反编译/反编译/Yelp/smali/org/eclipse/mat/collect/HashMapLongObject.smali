.class public final Lorg/eclipse/mat/collect/HashMapLongObject;
.super Ljava/lang/Object;
.source "HashMapLongObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/collect/HashMapLongObject$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private capacity:I

.field private keys:[J

.field private limit:I

.field private size:I

.field private step:I

.field private used:[Z

.field private values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/eclipse/mat/collect/HashMapLongObject;-><init>(I)V

    .line 39
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "initialCapacity"

    .prologue
    .line 41
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-direct {p0, p1}, Lorg/eclipse/mat/collect/HashMapLongObject;->init(I)V

    .line 43
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/mat/collect/HashMapLongObject;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    return v0
.end method

.method static synthetic access$100(Lorg/eclipse/mat/collect/HashMapLongObject;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/mat/collect/HashMapLongObject;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/mat/collect/HashMapLongObject;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method private hash(J)I
    .locals 3
    .parameter "key"

    .prologue
    .line 65
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    const-wide/32 v0, 0x7fffffff

    and-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private init(I)V
    .locals 4
    .parameter "initialCapacity"

    .prologue
    .line 244
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    invoke-static {p1}, Lorg/eclipse/mat/collect/PrimeFinder;->findNextPrime(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    .line 245
    const/4 v0, 0x1

    div-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Lorg/eclipse/mat/collect/PrimeFinder;->findPrevPrime(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->step:I

    .line 246
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->limit:I

    .line 247
    invoke-virtual {p0}, Lorg/eclipse/mat/collect/HashMapLongObject;->clear()V

    .line 248
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J

    .line 253
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;

    .line 254
    return-void
.end method

.method private resize(I)V
    .locals 10
    .parameter "newCapacity"

    .prologue
    .line 257
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    iget v5, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    .line 258
    .local v5, oldSize:I
    iget-object v6, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    .line 259
    .local v6, oldUsed:[Z
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J

    .line 260
    .local v4, oldKeys:[J
    iget-object v7, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;

    .line 261
    .local v7, oldValues:[Ljava/lang/Object;,"[TE;"
    invoke-direct {p0, p1}, Lorg/eclipse/mat/collect/HashMapLongObject;->init(I)V

    .line 264
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v6

    if-ge v1, v8, :cond_2

    .line 265
    aget-boolean v8, v6, v1

    if-eqz v8, :cond_1

    .line 266
    aget-wide v2, v4, v1

    .line 267
    .local v2, key:J
    invoke-direct {p0, v2, v3}, Lorg/eclipse/mat/collect/HashMapLongObject;->hash(J)I

    move-result v8

    iget v9, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v0, v8, v9

    .line 268
    .local v0, hash:I
    :goto_1
    iget-object v8, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    aget-boolean v8, v8, v0

    if-eqz v8, :cond_0

    .line 269
    iget v8, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->step:I

    add-int/2addr v8, v0

    iget v9, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v0, v8, v9

    goto :goto_1

    .line 271
    :cond_0
    iget-object v8, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    const/4 v9, 0x1

    aput-boolean v9, v8, v0

    .line 272
    iget-object v8, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J

    aput-wide v2, v8, v0

    .line 273
    iget-object v8, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;

    aget-object v9, v7, v1

    aput-object v9, v8, v0

    .line 264
    .end local v0           #hash:I
    .end local v2           #key:J
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 276
    :cond_2
    iput v5, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    .line 277
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 160
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    .line 161
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    .line 162
    return-void
.end method

.method public containsKey(J)Z
    .locals 5
    .parameter "key"

    .prologue
    .line 98
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/eclipse/mat/collect/HashMapLongObject;->hash(J)I

    move-result v1

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v0, v1, v2

    .line 99
    .local v0, hash:I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 101
    const/4 v1, 0x1

    .line 105
    :goto_1
    return v1

    .line 103
    :cond_0
    iget v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->step:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v0, v1, v2

    goto :goto_0

    .line 105
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
            "Lorg/eclipse/mat/collect/HashMapLongObject$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject$3;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/collect/HashMapLongObject$3;-><init>(Lorg/eclipse/mat/collect/HashMapLongObject;)V

    return-object v0
.end method

.method public get(J)Ljava/lang/Object;
    .locals 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 109
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/eclipse/mat/collect/HashMapLongObject;->hash(J)I

    move-result v1

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v0, v1, v2

    .line 110
    .local v0, hash:I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 116
    :goto_1
    return-object v1

    .line 114
    :cond_0
    iget v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->step:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v0, v1, v2

    goto :goto_0

    .line 116
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getAllKeys()[J
    .locals 6

    .prologue
    .line 120
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    iget v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    new-array v0, v4, [J

    .line 121
    .local v0, array:[J
    const/4 v2, 0x0

    .line 122
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 123
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    .line 124
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J

    aget-wide v4, v4, v1

    aput-wide v4, v0, v2

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

.method public getAllValues()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 131
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    iget v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    new-array v0, v4, [Ljava/lang/Object;

    .line 132
    .local v0, array:[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 133
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 134
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v0, v2

    move v2, v3

    .line 133
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 136
    :cond_1
    return-object v0
.end method

.method public getAllValues([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    array-length v3, p1

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    if-ge v3, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, [Ljava/lang/Object;

    .line 142
    :cond_0
    const/4 v1, 0x0

    .line 143
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 144
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, p1, v1

    move v1, v2

    .line 143
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 147
    :cond_2
    array-length v3, p1

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    if-le v3, v4, :cond_3

    iget v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    const/4 v4, 0x0

    aput-object v4, p1, v3

    .line 148
    :cond_3
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 156
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    invoke-virtual {p0}, Lorg/eclipse/mat/collect/HashMapLongObject;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keys()Lorg/eclipse/mat/collect/IteratorLong;
    .locals 1

    .prologue
    .line 165
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject$1;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/collect/HashMapLongObject$1;-><init>(Lorg/eclipse/mat/collect/HashMapLongObject;)V

    return-object v0
.end method

.method public put(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    iget v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    iget v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->limit:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/eclipse/mat/collect/HashMapLongObject;->resize(I)V

    .line 48
    :cond_0
    invoke-direct {p0, p1, p2}, Lorg/eclipse/mat/collect/HashMapLongObject;->hash(J)I

    move-result v2

    iget v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v0, v2, v3

    .line 49
    .local v0, hash:I
    :goto_0
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    .line 50
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J

    aget-wide v2, v2, v0

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    .line 51
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 52
    .local v1, oldValue:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;

    aput-object p3, v2, v0

    .line 61
    .end local v1           #oldValue:Ljava/lang/Object;,"TE;"
    :goto_1
    return-object v1

    .line 55
    :cond_1
    iget v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->step:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v0, v2, v3

    goto :goto_0

    .line 57
    :cond_2
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 58
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J

    aput-wide p1, v2, v0

    .line 59
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;

    aput-object p3, v2, v0

    .line 60
    iget v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    .line 61
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public remove(J)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    const/4 v6, 0x0

    .line 69
    invoke-direct {p0, p1, p2}, Lorg/eclipse/mat/collect/HashMapLongObject;->hash(J)I

    move-result v3

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v0, v3, v4

    .line 70
    .local v0, hash:I
    :goto_0
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_2

    .line 71
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J

    aget-wide v4, v3, v0

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    .line 72
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .line 73
    .local v2, oldValue:Ljava/lang/Object;,"TE;"
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    aput-boolean v6, v3, v0

    .line 74
    iget v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    .line 77
    iget v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->step:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v0, v3, v4

    .line 78
    :goto_1
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_3

    .line 79
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J

    aget-wide p1, v3, v0

    .line 80
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    aput-boolean v6, v3, v0

    .line 81
    invoke-direct {p0, p1, p2}, Lorg/eclipse/mat/collect/HashMapLongObject;->hash(J)I

    move-result v3

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v1, v3, v4

    .line 82
    .local v1, newHash:I
    :goto_2
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    .line 83
    iget v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->step:I

    add-int/2addr v3, v1

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v1, v3, v4

    goto :goto_2

    .line 85
    :cond_0
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    .line 86
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J

    aput-wide p1, v3, v1

    .line 87
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 88
    iget v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->step:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v0, v3, v4

    .line 89
    goto :goto_1

    .line 92
    .end local v1           #newHash:I
    .end local v2           #oldValue:Ljava/lang/Object;,"TE;"
    :cond_1
    iget v3, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->step:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->capacity:I

    rem-int v0, v3, v4

    goto :goto_0

    .line 94
    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 152
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject;->size:I

    return v0
.end method

.method public values()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 186
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<TE;>;"
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject$2;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/collect/HashMapLongObject$2;-><init>(Lorg/eclipse/mat/collect/HashMapLongObject;)V

    return-object v0
.end method
