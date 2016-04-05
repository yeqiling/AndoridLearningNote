.class public Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;
.super Ljava/lang/Object;
.source "MultiplePathsFromGCRootsRecord.java"


# instance fields
.field final level:I

.field final objectId:I

.field paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field referencedRetainedSize:J

.field referencedSize:J

.field final snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;


# direct methods
.method public constructor <init>(IILorg/eclipse/mat/snapshot/ISnapshot;)V
    .locals 2
    .parameter "objectId"
    .parameter "level"
    .parameter "snapshot"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->referencedSize:J

    .line 56
    iput p2, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->level:I

    .line 57
    iput p1, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->objectId:I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->paths:Ljava/util/List;

    .line 59
    iput-object p3, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    .line 60
    return-void
.end method

.method public static getComparatorByNumberOfReferencedObjects()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord$1;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord$1;-><init>()V

    return-object v0
.end method

.method public static getComparatorByReferencedHeapSize()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord$2;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord$2;-><init>()V

    return-object v0
.end method

.method public static getComparatorByReferencedRetainedSize()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord$3;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord$3;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addPath([I)V
    .locals 1
    .parameter "path"

    .prologue
    .line 97
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->level:I

    return v0
.end method

.method public getObjectId()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->objectId:I

    return v0
.end method

.method public getPaths()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->paths:Ljava/util/List;

    return-object v0
.end method

.method public getReferencedHeapSize()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 156
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->referencedSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    invoke-virtual {p0}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->getReferencedObjects()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/mat/snapshot/ISnapshot;->getHeapSize([I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->referencedSize:J

    .line 159
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->referencedSize:J

    return-wide v0
.end method

.method public getReferencedObjects()[I
    .locals 6

    .prologue
    .line 138
    iget-object v5, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->paths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 140
    .local v4, result:[I
    const/4 v0, 0x0

    .line 141
    .local v0, i:I
    iget-object v5, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->paths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 142
    .local v3, path:[I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    const/4 v5, 0x0

    aget v5, v3, v5

    aput v5, v4, v0

    move v0, v1

    .line 143
    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 145
    .end local v3           #path:[I
    :cond_0
    return-object v4
.end method

.method public getReferencedRetainedSize()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->referencedRetainedSize:J

    return-wide v0
.end method

.method public nextLevel()[Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;
    .locals 7

    .prologue
    .line 73
    iget v5, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->level:I

    add-int/lit8 v1, v5, 0x1

    .line 74
    .local v1, new_level:I
    new-instance v2, Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-direct {v2}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>()V

    .line 76
    .local v2, nextLevelRecords:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;>;"
    iget-object v5, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->paths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 77
    .local v3, path:[I
    if-eqz v3, :cond_0

    array-length v5, v3

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    if-ltz v5, :cond_0

    .line 78
    array-length v5, v3

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    invoke-virtual {v2, v5}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;

    .line 80
    .local v4, record:Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;
    if-nez v4, :cond_1

    .line 81
    new-instance v4, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;

    .end local v4           #record:Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;
    array-length v5, v3

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    iget-object v6, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    invoke-direct {v4, v5, v1, v6}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;-><init>(IILorg/eclipse/mat/snapshot/ISnapshot;)V

    .line 83
    .restart local v4       #record:Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;
    array-length v5, v3

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    aget v5, v3, v5

    invoke-virtual {v2, v5, v4}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_1
    invoke-virtual {v4, v3}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->addPath([I)V

    goto :goto_0

    .line 89
    .end local v3           #path:[I
    .end local v4           #record:Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;
    :cond_2
    const/4 v5, 0x0

    new-array v5, v5, [Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;

    invoke-virtual {v2, v5}, Lorg/eclipse/mat/collect/HashMapIntObject;->getAllValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;

    return-object v5
.end method

.method public setReferencedRetainedSize(J)V
    .locals 1
    .parameter "referencedRetainedSize"

    .prologue
    .line 45
    iput-wide p1, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->referencedRetainedSize:J

    .line 46
    return-void
.end method
