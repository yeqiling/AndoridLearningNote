.class public Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;
.super Ljava/lang/Object;
.source "MultiplePathsFromGCRootsClassRecord.java"


# instance fields
.field private clazz:Lorg/eclipse/mat/snapshot/model/IClass;

.field private distinctObjects:Lorg/eclipse/mat/collect/SetInt;

.field private fromRoots:Z

.field private level:I

.field private paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field private referencedSize:J

.field private snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/snapshot/model/IClass;IZLorg/eclipse/mat/snapshot/ISnapshot;)V
    .locals 2
    .parameter "clazz"
    .parameter "level"
    .parameter "fromRoots"
    .parameter "snapshot"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->paths:Ljava/util/List;

    .line 28
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->referencedSize:J

    .line 34
    iput-object p1, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->clazz:Lorg/eclipse/mat/snapshot/model/IClass;

    .line 35
    iput p2, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->level:I

    .line 36
    iput-boolean p3, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->fromRoots:Z

    .line 37
    iput-object p4, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->paths:Ljava/util/List;

    return-object v0
.end method

.method public static getComparatorByNumberOfReferencedObjects()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord$1;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord$1;-><init>()V

    return-object v0
.end method

.method public static getComparatorByReferencedHeapSize()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord$2;

    invoke-direct {v0}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord$2;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addPath([I)V
    .locals 1
    .parameter "path"

    .prologue
    .line 71
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->paths:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    return-void
.end method

.method public getClazz()Lorg/eclipse/mat/snapshot/model/IClass;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->clazz:Lorg/eclipse/mat/snapshot/model/IClass;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->paths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDistinctCount()I
    .locals 5

    .prologue
    .line 95
    iget-object v3, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->distinctObjects:Lorg/eclipse/mat/collect/SetInt;

    if-nez v3, :cond_1

    .line 97
    new-instance v3, Lorg/eclipse/mat/collect/SetInt;

    invoke-direct {v3}, Lorg/eclipse/mat/collect/SetInt;-><init>()V

    iput-object v3, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->distinctObjects:Lorg/eclipse/mat/collect/SetInt;

    .line 98
    iget-object v3, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->paths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 99
    .local v2, path:[I
    iget-boolean v3, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->fromRoots:Z

    if-eqz v3, :cond_0

    array-length v3, v2

    iget v4, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->level:I

    sub-int/2addr v3, v4

    add-int/lit8 v1, v3, -0x1

    .line 100
    .local v1, index:I
    :goto_1
    iget-object v3, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->distinctObjects:Lorg/eclipse/mat/collect/SetInt;

    aget v4, v2, v1

    invoke-virtual {v3, v4}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    goto :goto_0

    .line 99
    .end local v1           #index:I
    :cond_0
    iget v1, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->level:I

    goto :goto_1

    .line 103
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #path:[I
    :cond_1
    iget-object v3, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->distinctObjects:Lorg/eclipse/mat/collect/SetInt;

    invoke-virtual {v3}, Lorg/eclipse/mat/collect/SetInt;->size()I

    move-result v3

    return v3
.end method

.method public getLevel()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->level:I

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
    .line 81
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->paths:Ljava/util/List;

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
    .line 114
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->referencedSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    invoke-virtual {p0}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->getReferencedObjects()[I

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/mat/snapshot/ISnapshot;->getHeapSize([I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->referencedSize:J

    .line 117
    :cond_0
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->referencedSize:J

    return-wide v0
.end method

.method public getReferencedObjects()[I
    .locals 6

    .prologue
    .line 127
    iget-object v5, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->paths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 129
    .local v4, result:[I
    const/4 v0, 0x0

    .line 130
    .local v0, i:I
    iget-object v5, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->paths:Ljava/util/List;

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

    .line 131
    .local v3, path:[I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    const/4 v5, 0x0

    aget v5, v3, v5

    aput v5, v4, v0

    move v0, v1

    .line 132
    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_0

    .line 134
    .end local v3           #path:[I
    :cond_0
    return-object v4
.end method

.method public isFromRoots()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->fromRoots:Z

    return v0
.end method

.method public nextLevel()[Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 41
    iget v7, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->level:I

    add-int/lit8 v3, v7, 0x1

    .line 42
    .local v3, nextLevel:I
    if-gez v3, :cond_0

    const/4 v7, 0x0

    .line 63
    :goto_0
    return-object v7

    .line 44
    :cond_0
    new-instance v4, Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-direct {v4}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>()V

    .line 46
    .local v4, nextLevelRecords:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;>;"
    iget-object v7, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->paths:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 47
    .local v5, path:[I
    if-eqz v5, :cond_1

    .line 48
    iget-boolean v7, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->fromRoots:Z

    if-eqz v7, :cond_3

    array-length v7, v5

    sub-int/2addr v7, v3

    add-int/lit8 v2, v7, -0x1

    .line 50
    .local v2, newIndex:I
    :goto_2
    if-ltz v2, :cond_1

    array-length v7, v5

    if-ge v2, v7, :cond_1

    .line 53
    iget-object v7, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    aget v8, v5, v2

    invoke-interface {v7, v8}, Lorg/eclipse/mat/snapshot/ISnapshot;->getClassOf(I)Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v0

    .line 54
    .local v0, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v0}, Lorg/eclipse/mat/snapshot/model/IClass;->getObjectId()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;

    .line 55
    .local v6, record:Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;
    if-nez v6, :cond_2

    .line 56
    new-instance v6, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;

    .end local v6           #record:Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;
    iget-boolean v7, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->fromRoots:Z

    iget-object v8, p0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    invoke-direct {v6, v0, v3, v7, v8}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;-><init>(Lorg/eclipse/mat/snapshot/model/IClass;IZLorg/eclipse/mat/snapshot/ISnapshot;)V

    .line 57
    .restart local v6       #record:Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;
    invoke-interface {v0}, Lorg/eclipse/mat/snapshot/model/IClass;->getObjectId()I

    move-result v7

    invoke-virtual {v4, v7, v6}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_2
    invoke-virtual {v6, v5}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->addPath([I)V

    goto :goto_1

    .end local v0           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v2           #newIndex:I
    .end local v6           #record:Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;
    :cond_3
    move v2, v3

    .line 48
    goto :goto_2

    .line 63
    .end local v5           #path:[I
    :cond_4
    const/4 v7, 0x0

    new-array v7, v7, [Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;

    invoke-virtual {v4, v7}, Lorg/eclipse/mat/collect/HashMapIntObject;->getAllValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;

    goto :goto_0
.end method
