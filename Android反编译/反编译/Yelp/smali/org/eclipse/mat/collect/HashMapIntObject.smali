.class public final Lorg/eclipse/mat/collect/HashMapIntObject;
.super Ljava/lang/Object;
.source "HashMapIntObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/collect/HashMapIntObject$Entry;
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
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private capacity:I

.field private transient keys:[I

.field private limit:I

.field private size:I

.field private step:I

.field private transient used:[Z

.field private transient values:[Ljava/lang/Object;
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
    .line 41
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>(I)V

    .line 42
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .parameter "initialCapacity"

    .prologue
    .line 44
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-direct {p0, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->init(I)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/mat/collect/HashMapIntObject;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    return v0
.end method

.method static synthetic access$100(Lorg/eclipse/mat/collect/HashMapIntObject;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/mat/collect/HashMapIntObject;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/mat/collect/HashMapIntObject;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    return-object v0
.end method

.method private init(I)V
    .locals 4
    .parameter "initialCapacity"

    .prologue
    .line 243
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    invoke-static {p1}, Lorg/eclipse/mat/collect/PrimeFinder;->findNextPrime(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    .line 244
    const/4 v0, 0x1

    div-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Lorg/eclipse/mat/collect/PrimeFinder;->findPrevPrime(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->step:I

    .line 245
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe8

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->limit:I

    .line 246
    invoke-virtual {p0}, Lorg/eclipse/mat/collect/HashMapIntObject;->clear()V

    .line 247
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    .line 252
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    .line 253
    return-void
.end method

.method private putQuick(ILjava/lang/Object;)V
    .locals 3
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v0, v1, v2

    .line 304
    .local v0, hash:I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 305
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 306
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 314
    :goto_1
    return-void

    .line 309
    :cond_0
    iget v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->step:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v0, v1, v2

    goto :goto_0

    .line 311
    :cond_1
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 312
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    aput p1, v1, v0

    .line 313
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 289
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 292
    const/4 v1, 0x1

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    div-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lorg/eclipse/mat/collect/PrimeFinder;->findPrevPrime(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->step:I

    .line 294
    iget v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    .line 295
    iget v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    .line 296
    iget v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    new-array v1, v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    .line 298
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    iget v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    if-ge v0, v1, :cond_0

    .line 299
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/eclipse/mat/collect/HashMapIntObject;->putQuick(ILjava/lang/Object;)V

    .line 298
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method

.method private resize(I)V
    .locals 9
    .parameter "newCapacity"

    .prologue
    .line 256
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    .line 257
    .local v4, oldSize:I
    iget-object v5, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    .line 258
    .local v5, oldUsed:[Z
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    .line 259
    .local v3, oldKeys:[I
    iget-object v6, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    .line 260
    .local v6, oldValues:[Ljava/lang/Object;,"[TE;"
    invoke-direct {p0, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->init(I)V

    .line 262
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v5

    if-ge v1, v7, :cond_2

    .line 263
    aget-boolean v7, v5, v1

    if-eqz v7, :cond_1

    .line 264
    aget v2, v3, v1

    .line 265
    .local v2, key:I
    const v7, 0x7fffffff

    and-int/2addr v7, v2

    iget v8, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v0, v7, v8

    .line 266
    .local v0, hash:I
    :goto_1
    iget-object v7, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aget-boolean v7, v7, v0

    if-eqz v7, :cond_0

    .line 267
    iget v7, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->step:I

    add-int/2addr v7, v0

    iget v8, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v0, v7, v8

    goto :goto_1

    .line 269
    :cond_0
    iget-object v7, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    const/4 v8, 0x1

    aput-boolean v8, v7, v0

    .line 270
    iget-object v7, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    aput v2, v7, v0

    .line 271
    iget-object v7, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    aget-object v8, v6, v1

    aput-object v8, v7, v0

    .line 262
    .end local v0           #hash:I
    .end local v2           #key:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_2
    iput v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    .line 275
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 278
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 279
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 280
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 282
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 159
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    .line 160
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    .line 161
    return-void
.end method

.method public containsKey(I)Z
    .locals 3
    .parameter "key"

    .prologue
    .line 97
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v0, v1, v2

    .line 98
    .local v0, hash:I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 100
    const/4 v1, 0x1

    .line 104
    :goto_1
    return v1

    .line 102
    :cond_0
    iget v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->step:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

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
            "Lorg/eclipse/mat/collect/HashMapIntObject$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    new-instance v0, Lorg/eclipse/mat/collect/HashMapIntObject$3;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/collect/HashMapIntObject$3;-><init>(Lorg/eclipse/mat/collect/HashMapIntObject;)V

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    const v1, 0x7fffffff

    and-int/2addr v1, p1

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v0, v1, v2

    .line 109
    .local v0, hash:I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 111
    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 115
    :goto_1
    return-object v1

    .line 113
    :cond_0
    iget v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->step:I

    add-int/2addr v1, v0

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v0, v1, v2

    goto :goto_0

    .line 115
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getAllKeys()[I
    .locals 5

    .prologue
    .line 119
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    new-array v0, v4, [I

    .line 120
    .local v0, array:[I
    const/4 v2, 0x0

    .line 121
    .local v2, j:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 122
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    .line 123
    add-int/lit8 v3, v2, 0x1

    .end local v2           #j:I
    .local v3, j:I
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    aget v4, v4, v1

    aput v4, v0, v2

    move v2, v3

    .line 121
    .end local v3           #j:I
    .restart local v2       #j:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    return-object v0
.end method

.method public getAllValues()[Ljava/lang/Object;
    .locals 5

    .prologue
    .line 130
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    new-array v0, v4, [Ljava/lang/Object;

    .line 131
    .local v0, array:[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 132
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 133
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_0

    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v0, v2

    move v2, v3

    .line 132
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
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
    .line 139
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    array-length v3, p1

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    if-ge v3, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object p1, v3

    check-cast p1, [Ljava/lang/Object;

    .line 141
    :cond_0
    const/4 v1, 0x0

    .line 142
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 143
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_1

    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    aget-object v3, v3, v0

    aput-object v3, p1, v1

    move v1, v2

    .line 142
    .end local v2           #index:I
    .restart local v1       #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_2
    array-length v3, p1

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    if-le v3, v4, :cond_3

    iget v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    const/4 v4, 0x0

    aput-object v4, p1, v3

    .line 147
    :cond_3
    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 155
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    invoke-virtual {p0}, Lorg/eclipse/mat/collect/HashMapIntObject;->size()I

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
    .line 164
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    new-instance v0, Lorg/eclipse/mat/collect/HashMapIntObject$1;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/collect/HashMapIntObject$1;-><init>(Lorg/eclipse/mat/collect/HashMapIntObject;)V

    return-object v0
.end method

.method public put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    iget v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->limit:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    shl-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/eclipse/mat/collect/HashMapIntObject;->resize(I)V

    .line 51
    :cond_0
    const v2, 0x7fffffff

    and-int/2addr v2, p1

    iget v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v0, v2, v3

    .line 52
    .local v0, hash:I
    :goto_0
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_2

    .line 53
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 54
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 55
    .local v1, oldValue:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 64
    .end local v1           #oldValue:Ljava/lang/Object;,"TE;"
    :goto_1
    return-object v1

    .line 58
    :cond_1
    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->step:I

    add-int/2addr v2, v0

    iget v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v0, v2, v3

    goto :goto_0

    .line 60
    :cond_2
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, v0

    .line 61
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    aput p1, v2, v0

    .line 62
    iget-object v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 63
    iget v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    .line 64
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 7
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    const v6, 0x7fffffff

    const/4 v5, 0x0

    .line 68
    and-int v3, p1, v6

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v0, v3, v4

    .line 69
    .local v0, hash:I
    :goto_0
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_2

    .line 70
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_1

    .line 71
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    aget-object v2, v3, v0

    .line 72
    .local v2, oldValue:Ljava/lang/Object;,"TE;"
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aput-boolean v5, v3, v0

    .line 73
    iget v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

    .line 76
    iget v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->step:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v0, v3, v4

    .line 77
    :goto_1
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_3

    .line 78
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    aget p1, v3, v0

    .line 79
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aput-boolean v5, v3, v0

    .line 80
    and-int v3, p1, v6

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v1, v3, v4

    .line 81
    .local v1, newHash:I
    :goto_2
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    .line 82
    iget v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->step:I

    add-int/2addr v3, v1

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v1, v3, v4

    goto :goto_2

    .line 84
    :cond_0
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v1

    .line 85
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I

    aput p1, v3, v1

    .line 86
    iget-object v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    iget-object v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;

    aget-object v4, v4, v0

    aput-object v4, v3, v1

    .line 87
    iget v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->step:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v0, v3, v4

    .line 88
    goto :goto_1

    .line 91
    .end local v1           #newHash:I
    .end local v2           #oldValue:Ljava/lang/Object;,"TE;"
    :cond_1
    iget v3, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->step:I

    add-int/2addr v3, v0

    iget v4, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->capacity:I

    rem-int v0, v3, v4

    goto :goto_0

    .line 93
    :cond_2
    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method

.method public size()I
    .locals 1

    .prologue
    .line 151
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject;->size:I

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
    .line 185
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<TE;>;"
    new-instance v0, Lorg/eclipse/mat/collect/HashMapIntObject$2;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/collect/HashMapIntObject$2;-><init>(Lorg/eclipse/mat/collect/HashMapIntObject;)V

    return-object v0
.end method
