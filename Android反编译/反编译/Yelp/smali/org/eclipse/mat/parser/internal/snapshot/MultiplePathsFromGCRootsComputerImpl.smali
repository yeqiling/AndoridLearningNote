.class public Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;
.super Ljava/lang/Object;
.source "MultiplePathsFromGCRootsComputerImpl.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/IMultiplePathsFromGCRootsComputer;


# static fields
.field private static final NOT_VISITED:I = -0x2

.field private static final NO_PARENT:I = -0x1


# instance fields
.field private excludeInstances:Lorg/eclipse/mat/collect/BitField;

.field private excludeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field objectIds:[I

.field outboundIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

.field paths:[Ljava/lang/Object;

.field private pathsCalculated:Z

.field snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;


# direct methods
.method public constructor <init>([ILjava/util/Map;Lorg/eclipse/mat/parser/internal/SnapshotImpl;)V
    .locals 1
    .parameter "objectIds"
    .parameter
    .parameter "snapshot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Map",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lorg/eclipse/mat/parser/internal/SnapshotImpl;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 52
    .local p2, excludeMap:Ljava/util/Map;,"Ljava/util/Map<Lorg/eclipse/mat/snapshot/model/IClass;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p3, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    .line 54
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->objectIds:[I

    .line 55
    iput-object p2, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->excludeMap:Ljava/util/Map;

    .line 56
    invoke-virtual {p3}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v0

    iget-object v0, v0, Lorg/eclipse/mat/parser/index/IndexManager;->outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->outboundIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    .line 58
    if-eqz p2, :cond_0

    .line 59
    invoke-direct {p0}, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->initExcludeInstances()V

    .line 61
    :cond_0
    return-void
.end method

.method private bfs(Lorg/eclipse/mat/util/IProgressListener;)[I
    .locals 22
    .parameter "progressListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v12

    .line 155
    .local v12, numObjects:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->excludeMap:Ljava/util/Map;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    const/16 v18, 0x1

    .line 159
    .local v18, skipReferences:Z
    :goto_0
    new-array v15, v12, [I

    .line 160
    .local v15, parent:[I
    const/16 v20, -0x2

    move/from16 v0, v20

    invoke-static {v15, v0}, Ljava/util/Arrays;->fill([II)V

    .line 163
    new-array v0, v12, [Z

    move-object/from16 v19, v0

    .line 165
    .local v19, toBeChecked:[Z
    const/4 v5, 0x0

    .line 167
    .local v5, count:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->objectIds:[I

    .local v3, arr$:[I
    array-length v11, v3

    .local v11, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_1
    if-ge v10, v11, :cond_2

    aget v9, v3, v10

    .line 168
    .local v9, i:I
    aget-boolean v20, v19, v9

    if-nez v20, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 169
    :cond_0
    const/16 v20, 0x1

    aput-boolean v20, v19, v9

    .line 167
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 155
    .end local v3           #arr$:[I
    .end local v5           #count:I
    .end local v9           #i:I
    .end local v10           #i$:I
    .end local v11           #len$:I
    .end local v15           #parent:[I
    .end local v18           #skipReferences:Z
    .end local v19           #toBeChecked:[Z
    :cond_1
    const/16 v18, 0x0

    goto :goto_0

    .line 173
    .restart local v3       #arr$:[I
    .restart local v5       #count:I
    .restart local v10       #i$:I
    .restart local v11       #len$:I
    .restart local v15       #parent:[I
    .restart local v18       #skipReferences:Z
    .restart local v19       #toBeChecked:[Z
    :cond_2
    new-instance v7, Lorg/eclipse/mat/collect/QueueInt;

    div-int/lit8 v20, v12, 0x8

    move/from16 v0, v20

    invoke-direct {v7, v0}, Lorg/eclipse/mat/collect/QueueInt;-><init>(I)V

    .line 176
    .local v7, fifo:Lorg/eclipse/mat/collect/QueueInt;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getGCRoots()[I

    move-result-object v8

    .line 177
    .local v8, gcRoots:[I
    move-object v3, v8

    array-length v11, v3

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v11, :cond_3

    aget v17, v3, v10

    .line 178
    .local v17, root:I
    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/eclipse/mat/collect/QueueInt;->put(I)V

    .line 179
    const/16 v20, -0x1

    aput v20, v15, v17

    .line 177
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 183
    .end local v17           #root:I
    :cond_3
    const/4 v6, 0x0

    .line 184
    .local v6, countVisitedObjects:I
    const/16 v20, 0xa

    div-int/lit8 v21, v12, 0x64

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 186
    .local v16, reportFrequency:I
    sget-object v20, Lorg/eclipse/mat/hprof/Messages;->MultiplePathsFromGCRootsComputerImpl_FindingPaths:Lorg/eclipse/mat/hprof/Messages;

    const/16 v21, 0x64

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-interface {v0, v1, v2}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Lorg/eclipse/mat/hprof/Messages;I)V

    .line 189
    :cond_4
    :goto_3
    invoke-virtual {v7}, Lorg/eclipse/mat/collect/QueueInt;->size()I

    move-result v20

    if-lez v20, :cond_a

    if-lez v5, :cond_a

    .line 190
    invoke-virtual {v7}, Lorg/eclipse/mat/collect/QueueInt;->get()I

    move-result v13

    .line 193
    .local v13, objectId:I
    aget-boolean v20, v19, v13

    if-eqz v20, :cond_5

    .line 194
    add-int/lit8 v5, v5, -0x1

    .line 198
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->outboundIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v13}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v14

    .line 199
    .local v14, outbound:[I
    move-object v3, v14

    array-length v11, v3

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v11, :cond_8

    aget v4, v3, v10

    .line 200
    .local v4, child:I
    aget v20, v15, v4

    const/16 v21, -0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 201
    if-eqz v18, :cond_7

    .line 202
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->refersOnlyThroughExcluded(II)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 199
    :cond_6
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 204
    :cond_7
    aput v13, v15, v4

    .line 205
    invoke-virtual {v7, v4}, Lorg/eclipse/mat/collect/QueueInt;->put(I)V

    goto :goto_5

    .line 209
    .end local v4           #child:I
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 210
    rem-int v20, v6, v16

    if-nez v20, :cond_4

    .line 211
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v20

    if-eqz v20, :cond_9

    new-instance v20, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v20 .. v20}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v20

    .line 212
    :cond_9
    const/16 v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    goto :goto_3

    .line 215
    .end local v13           #objectId:I
    .end local v14           #outbound:[I
    :cond_a
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/mat/util/IProgressListener;->done()V

    .line 216
    return-object v15
.end method

.method private computePaths(Lorg/eclipse/mat/util/IProgressListener;)V
    .locals 5
    .parameter "progressListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 74
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v3, pathsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[I>;"
    invoke-direct {p0, p1}, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->bfs(Lorg/eclipse/mat/util/IProgressListener;)[I

    move-result-object v1

    .line 80
    .local v1, parent:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->objectIds:[I

    array-length v4, v4

    if-ge v0, v4, :cond_1

    .line 81
    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->objectIds:[I

    aget v4, v4, v0

    invoke-direct {p0, v4, v1}, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->getPathFromBFS(I[I)[I

    move-result-object v2

    .line 87
    .local v2, path:[I
    if-eqz v2, :cond_0

    .line 88
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v2           #path:[I
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->pathsCalculated:Z

    .line 93
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->paths:[Ljava/lang/Object;

    .line 94
    return-void
.end method

.method private getPathFromBFS(I[I)[I
    .locals 3
    .parameter "objectId"
    .parameter "parent"

    .prologue
    .line 234
    aget v1, p2, p1

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 242
    :goto_0
    return-object v1

    .line 236
    :cond_0
    new-instance v0, Lorg/eclipse/mat/collect/ArrayInt;

    invoke-direct {v0}, Lorg/eclipse/mat/collect/ArrayInt;-><init>()V

    .line 237
    .local v0, path:Lorg/eclipse/mat/collect/ArrayInt;
    :goto_1
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 238
    invoke-virtual {v0, p1}, Lorg/eclipse/mat/collect/ArrayInt;->add(I)V

    .line 239
    aget p1, p2, p1

    goto :goto_1

    .line 242
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/mat/collect/ArrayInt;->toArray()[I

    move-result-object v1

    goto :goto_0
.end method

.method private initExcludeInstances()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 64
    new-instance v7, Lorg/eclipse/mat/collect/BitField;

    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/index/IndexManager;->o2address()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v8

    invoke-interface {v8}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->size()I

    move-result v8

    invoke-direct {v7, v8}, Lorg/eclipse/mat/collect/BitField;-><init>(I)V

    iput-object v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->excludeInstances:Lorg/eclipse/mat/collect/BitField;

    .line 65
    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->excludeMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 66
    .local v1, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/model/IClass;->getObjectIds()[I

    move-result-object v6

    .line 67
    .local v6, objects:[I
    move-object v0, v6

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v5, v0, v3

    .line 68
    .local v5, objId:I
    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->excludeInstances:Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {v7, v5}, Lorg/eclipse/mat/collect/BitField;->set(I)V

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v0           #arr$:[I
    .end local v1           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #objId:I
    .end local v6           #objects:[I
    :cond_1
    return-void
.end method

.method private refersOnlyThroughExcluded(II)Z
    .locals 12
    .parameter "referrerId"
    .parameter "referentId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 134
    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->excludeInstances:Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {v9, p1}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 149
    :goto_0
    return v7

    .line 136
    :cond_0
    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v9, p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v3

    .line 137
    .local v3, referrerObject:Lorg/eclipse/mat/snapshot/model/IObject;
    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->excludeMap:Ljava/util/Map;

    invoke-interface {v3}, Lorg/eclipse/mat/snapshot/model/IObject;->getClazz()Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 138
    .local v0, excludeFields:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    move v7, v8

    goto :goto_0

    .line 140
    :cond_1
    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v9, p2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->mapIdToAddress(I)J

    move-result-wide v4

    .line 142
    .local v4, referentAddr:J
    invoke-interface {v3}, Lorg/eclipse/mat/snapshot/model/IObject;->getOutboundReferences()Ljava/util/List;

    move-result-object v6

    .line 143
    .local v6, refs:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/NamedReference;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/snapshot/model/NamedReference;

    .line 144
    .local v2, reference:Lorg/eclipse/mat/snapshot/model/NamedReference;
    invoke-virtual {v2}, Lorg/eclipse/mat/snapshot/model/NamedReference;->getObjectAddress()J

    move-result-wide v10

    cmp-long v9, v4, v10

    if-nez v9, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/mat/snapshot/model/NamedReference;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    .end local v2           #reference:Lorg/eclipse/mat/snapshot/model/NamedReference;
    :cond_3
    move v7, v8

    .line 149
    goto :goto_0
.end method


# virtual methods
.method public getAllPaths(Lorg/eclipse/mat/util/IProgressListener;)[Ljava/lang/Object;
    .locals 1
    .parameter "progressListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 111
    iget-boolean v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->pathsCalculated:Z

    if-nez v0, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->computePaths(Lorg/eclipse/mat/util/IProgressListener;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->paths:[Ljava/lang/Object;

    return-object v0
.end method

.method public getPathsByGCRoot(Lorg/eclipse/mat/util/IProgressListener;)[Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;
    .locals 4
    .parameter "progressListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 98
    iget-boolean v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->pathsCalculated:Z

    if-nez v2, :cond_0

    .line 99
    invoke-direct {p0, p1}, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->computePaths(Lorg/eclipse/mat/util/IProgressListener;)V

    .line 102
    :cond_0
    new-instance v0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-direct {v0, v3, v3, v2}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;-><init>(IILorg/eclipse/mat/snapshot/ISnapshot;)V

    .line 103
    .local v0, dummy:Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->paths:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 104
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->paths:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, [I

    check-cast v2, [I

    invoke-virtual {v0, v2}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->addPath([I)V

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->nextLevel()[Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;

    move-result-object v2

    return-object v2
.end method

.method public getPathsGroupedByClass(ZLorg/eclipse/mat/util/IProgressListener;)[Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;
    .locals 5
    .parameter "startFromTheGCRoots"
    .parameter "progressListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 119
    iget-boolean v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->pathsCalculated:Z

    if-nez v2, :cond_0

    .line 120
    invoke-direct {p0, p2}, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->computePaths(Lorg/eclipse/mat/util/IProgressListener;)V

    .line 123
    :cond_0
    new-instance v0, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-direct {v0, v2, v3, p1, v4}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;-><init>(Lorg/eclipse/mat/snapshot/model/IClass;IZLorg/eclipse/mat/snapshot/ISnapshot;)V

    .line 125
    .local v0, dummy:Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->paths:[Ljava/lang/Object;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 126
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;->paths:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, [I

    check-cast v2, [I

    invoke-virtual {v0, v2}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->addPath([I)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->nextLevel()[Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;

    move-result-object v2

    return-object v2
.end method
