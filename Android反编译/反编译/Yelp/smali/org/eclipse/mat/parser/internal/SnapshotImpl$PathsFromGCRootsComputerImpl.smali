.class Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;
.super Ljava/lang/Object;
.source "SnapshotImpl.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/IPathsFromGCRootsComputer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/internal/SnapshotImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PathsFromGCRootsComputerImpl"
.end annotation


# instance fields
.field currentId:I

.field currentPath:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

.field currentReferrers:[I

.field currentReferringThread:I

.field excludeInstances:Lorg/eclipse/mat/collect/BitField;

.field excludeMap:Ljava/util/Map;
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

.field fifo:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;",
            ">;"
        }
    .end annotation
.end field

.field foundPath:[I

.field inboundIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

.field lastReadReferrer:I

.field private nextState:I

.field objectId:I

.field referringThreads:[I

.field private state:I

.field final synthetic this$0:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

.field visited:Lorg/eclipse/mat/collect/BitField;


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/parser/internal/SnapshotImpl;ILjava/util/Map;)V
    .locals 3
    .parameter
    .parameter "objectId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1397
    .local p3, excludeMap:Ljava/util/Map;,"Ljava/util/Map<Lorg/eclipse/mat/snapshot/model/IClass;Ljava/util/Set<Ljava/lang/String;>;>;"
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->this$0:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1380
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->fifo:Ljava/util/LinkedList;

    .line 1381
    new-instance v0, Lorg/eclipse/mat/collect/BitField;

    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->this$0:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    #getter for: Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;
    invoke-static {v1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->access$100(Lorg/eclipse/mat/parser/internal/SnapshotImpl;)Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/index/IndexManager;->o2address()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/eclipse/mat/collect/BitField;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->visited:Lorg/eclipse/mat/collect/BitField;

    .line 1398
    iput p2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->objectId:I

    .line 1399
    iput-object p3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->excludeMap:Ljava/util/Map;

    .line 1400
    #getter for: Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;
    invoke-static {p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->access$100(Lorg/eclipse/mat/parser/internal/SnapshotImpl;)Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexManager;->inbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->inboundIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    .line 1402
    if-eqz p3, :cond_0

    .line 1403
    invoke-direct {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->initExcludeInstances()V

    .line 1406
    :cond_0
    iput p2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentId:I

    .line 1408
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->visited:Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {v0, p2}, Lorg/eclipse/mat/collect/BitField;->set(I)V

    .line 1409
    #getter for: Lorg/eclipse/mat/parser/internal/SnapshotImpl;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;
    invoke-static {p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->access$200(Lorg/eclipse/mat/parser/internal/SnapshotImpl;)Lorg/eclipse/mat/collect/HashMapIntObject;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1414
    :goto_0
    return-void

    .line 1412
    :cond_1
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->fifo:Ljava/util/LinkedList;

    new-instance v1, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;-><init>(ILorg/eclipse/mat/parser/internal/SnapshotImpl$Path;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getReferringTreads([Lorg/eclipse/mat/snapshot/model/GCRootInfo;)[I
    .locals 10
    .parameter "rootInfos"

    .prologue
    .line 1523
    new-instance v4, Lorg/eclipse/mat/collect/SetInt;

    invoke-direct {v4}, Lorg/eclipse/mat/collect/SetInt;-><init>()V

    .line 1524
    .local v4, threads:Lorg/eclipse/mat/collect/SetInt;
    move-object v0, p1

    .local v0, arr$:[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 1526
    .local v2, info:Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    invoke-virtual {v2}, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->getContextAddress()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->getObjectAddress()J

    move-result-wide v6

    invoke-virtual {v2}, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->getContextAddress()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 1527
    invoke-virtual {v2}, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->getContextId()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    .line 1524
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1530
    .end local v2           #info:Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    :cond_1
    invoke-virtual {v4}, Lorg/eclipse/mat/collect/SetInt;->toArray()[I

    move-result-object v5

    return-object v5
.end method

.method private initExcludeInstances()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1417
    new-instance v7, Lorg/eclipse/mat/collect/BitField;

    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->this$0:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    #getter for: Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;
    invoke-static {v8}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->access$100(Lorg/eclipse/mat/parser/internal/SnapshotImpl;)Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/index/IndexManager;->o2address()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v8

    invoke-interface {v8}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->size()I

    move-result v8

    invoke-direct {v7, v8}, Lorg/eclipse/mat/collect/BitField;-><init>(I)V

    iput-object v7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->excludeInstances:Lorg/eclipse/mat/collect/BitField;

    .line 1418
    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->excludeMap:Ljava/util/Map;

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

    .line 1419
    .local v1, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/model/IClass;->getObjectIds()[I

    move-result-object v6

    .line 1420
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

    .line 1421
    .local v5, objId:I
    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->excludeInstances:Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {v7, v5}, Lorg/eclipse/mat/collect/BitField;->set(I)V

    .line 1420
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1424
    .end local v0           #arr$:[I
    .end local v1           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #objId:I
    .end local v6           #objects:[I
    :cond_1
    return-void
.end method

.method private path2Int(Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;)[I
    .locals 4
    .parameter "p"

    .prologue
    .line 1557
    new-instance v2, Lorg/eclipse/mat/parser/internal/util/IntStack;

    invoke-direct {v2}, Lorg/eclipse/mat/parser/internal/util/IntStack;-><init>()V

    .line 1558
    .local v2, s:Lorg/eclipse/mat/parser/internal/util/IntStack;
    :goto_0
    if-eqz p1, :cond_0

    .line 1559
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;->getIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/mat/parser/internal/util/IntStack;->push(I)V

    .line 1560
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;->getNext()Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    move-result-object p1

    goto :goto_0

    .line 1562
    :cond_0
    invoke-virtual {v2}, Lorg/eclipse/mat/parser/internal/util/IntStack;->size()I

    move-result v3

    new-array v1, v3, [I

    .line 1563
    .local v1, res:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 1564
    invoke-virtual {v2}, Lorg/eclipse/mat/parser/internal/util/IntStack;->pop()I

    move-result v3

    aput v3, v1, v0

    .line 1563
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1566
    :cond_1
    return-object v1
.end method

.method private processCurrentReferrefs(I)[I
    .locals 12
    .parameter "fromIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v7, 0x0

    .line 1570
    const/4 v6, 0x0

    .line 1571
    .local v6, rootInfo:[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    move v1, p1

    .local v1, i:I
    :goto_0
    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferrers:[I

    array-length v8, v8

    if-ge v1, v8, :cond_3

    .line 1572
    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->this$0:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    #getter for: Lorg/eclipse/mat/parser/internal/SnapshotImpl;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;
    invoke-static {v8}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->access$200(Lorg/eclipse/mat/parser/internal/SnapshotImpl;)Lorg/eclipse/mat/collect/HashMapIntObject;

    move-result-object v8

    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferrers:[I

    aget v9, v9, v1

    invoke-virtual {v8, v9}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #rootInfo:[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    check-cast v6, [Lorg/eclipse/mat/snapshot/model/GCRootInfo;

    .line 1573
    .restart local v6       #rootInfo:[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    if-eqz v6, :cond_2

    .line 1574
    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->excludeMap:Ljava/util/Map;

    if-nez v8, :cond_1

    .line 1576
    iput v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->lastReadReferrer:I

    .line 1577
    new-instance v4, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferrers:[I

    aget v8, v8, v1

    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentPath:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    invoke-direct {v4, v8, v9}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;-><init>(ILorg/eclipse/mat/parser/internal/SnapshotImpl$Path;)V

    .line 1578
    .local v4, p:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;
    iput-object v7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->referringThreads:[I

    .line 1579
    iput v10, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->state:I

    .line 1580
    iput v11, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->nextState:I

    .line 1581
    invoke-direct {p0, v4}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->path2Int(Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;)[I

    move-result-object v7

    iput-object v7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->foundPath:[I

    .line 1582
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->getNextShortestPath()[I

    move-result-object v7

    .line 1610
    .end local v4           #p:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;
    :cond_0
    :goto_1
    return-object v7

    .line 1584
    :cond_1
    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferrers:[I

    aget v8, v8, v1

    iget v9, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentId:I

    invoke-direct {p0, v8, v9}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->refersOnlyThroughExcluded(II)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1586
    iput v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->lastReadReferrer:I

    .line 1587
    new-instance v4, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferrers:[I

    aget v8, v8, v1

    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentPath:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    invoke-direct {v4, v8, v9}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;-><init>(ILorg/eclipse/mat/parser/internal/SnapshotImpl$Path;)V

    .line 1588
    .restart local v4       #p:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;
    iput-object v7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->referringThreads:[I

    .line 1589
    iput v10, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->state:I

    .line 1590
    iput v11, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->nextState:I

    .line 1591
    invoke-direct {p0, v4}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->path2Int(Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;)[I

    move-result-object v7

    iput-object v7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->foundPath:[I

    .line 1592
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->getNextShortestPath()[I

    move-result-object v7

    goto :goto_1

    .line 1571
    .end local v4           #p:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1597
    :cond_3
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferrers:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_0

    aget v5, v0, v2

    .line 1598
    .local v5, referrer:I
    if-ltz v5, :cond_4

    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->visited:Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {v8, v5}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->this$0:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    #getter for: Lorg/eclipse/mat/parser/internal/SnapshotImpl;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;
    invoke-static {v8}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->access$200(Lorg/eclipse/mat/parser/internal/SnapshotImpl;)Lorg/eclipse/mat/collect/HashMapIntObject;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/eclipse/mat/collect/HashMapIntObject;->containsKey(I)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1599
    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->excludeMap:Ljava/util/Map;

    if-nez v8, :cond_5

    .line 1600
    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->fifo:Ljava/util/LinkedList;

    new-instance v9, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    iget-object v10, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentPath:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    invoke-direct {v9, v5, v10}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;-><init>(ILorg/eclipse/mat/parser/internal/SnapshotImpl$Path;)V

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1601
    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->visited:Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {v8, v5}, Lorg/eclipse/mat/collect/BitField;->set(I)V

    .line 1597
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1603
    :cond_5
    iget v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentId:I

    invoke-direct {p0, v5, v8}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->refersOnlyThroughExcluded(II)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1604
    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->fifo:Ljava/util/LinkedList;

    new-instance v9, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    iget-object v10, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentPath:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    invoke-direct {v9, v5, v10}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;-><init>(ILorg/eclipse/mat/parser/internal/SnapshotImpl$Path;)V

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1605
    iget-object v8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->visited:Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {v8, v5}, Lorg/eclipse/mat/collect/BitField;->set(I)V

    goto :goto_3
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

    .line 1428
    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->excludeInstances:Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {v9, p1}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1443
    :goto_0
    return v7

    .line 1430
    :cond_0
    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->this$0:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v9, p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v3

    .line 1431
    .local v3, referrerObject:Lorg/eclipse/mat/snapshot/model/IObject;
    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->excludeMap:Ljava/util/Map;

    invoke-interface {v3}, Lorg/eclipse/mat/snapshot/model/IObject;->getClazz()Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 1432
    .local v0, excludeFields:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    move v7, v8

    goto :goto_0

    .line 1434
    :cond_1
    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->this$0:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v9, p2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->mapIdToAddress(I)J

    move-result-wide v4

    .line 1436
    .local v4, referentAddr:J
    invoke-interface {v3}, Lorg/eclipse/mat/snapshot/model/IObject;->getOutboundReferences()Ljava/util/List;

    move-result-object v6

    .line 1437
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

    .line 1438
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

    .line 1443
    goto :goto_0
.end method


# virtual methods
.method public getNextShortestPath()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 1447
    iget v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->state:I

    packed-switch v2, :pswitch_data_0

    .line 1518
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/eclipse/mat/hprof/Messages;->SnapshotImpl_Error_UnrecognizedState:Lorg/eclipse/mat/hprof/Messages;

    iget-object v4, v4, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->state:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1454
    :pswitch_0
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->this$0:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    #getter for: Lorg/eclipse/mat/parser/internal/SnapshotImpl;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;
    invoke-static {v2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->access$200(Lorg/eclipse/mat/parser/internal/SnapshotImpl;)Lorg/eclipse/mat/collect/HashMapIntObject;

    move-result-object v2

    iget v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentId:I

    invoke-virtual {v2, v3}, Lorg/eclipse/mat/collect/HashMapIntObject;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1455
    iput-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->referringThreads:[I

    .line 1456
    const/4 v2, 0x2

    iput v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->state:I

    .line 1457
    iput v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->nextState:I

    .line 1458
    new-array v2, v4, [I

    iget v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentId:I

    aput v3, v2, v5

    iput-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->foundPath:[I

    .line 1459
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->getNextShortestPath()[I

    move-result-object v0

    .line 1514
    :cond_0
    :goto_0
    return-object v0

    .line 1461
    :cond_1
    const/4 v2, 0x3

    iput v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->state:I

    .line 1462
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->getNextShortestPath()[I

    move-result-object v0

    goto :goto_0

    :pswitch_1
    move-object v0, v1

    .line 1466
    goto :goto_0

    .line 1470
    :pswitch_2
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->referringThreads:[I

    if-nez v2, :cond_2

    .line 1471
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->this$0:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->foundPath:[I

    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->foundPath:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getGCRootInfo(I)[Lorg/eclipse/mat/snapshot/model/GCRootInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->getReferringTreads([Lorg/eclipse/mat/snapshot/model/GCRootInfo;)[I

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->referringThreads:[I

    .line 1472
    iput v5, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferringThread:I

    .line 1473
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->referringThreads:[I

    array-length v2, v2

    if-nez v2, :cond_2

    .line 1476
    iget v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->nextState:I

    iput v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->state:I

    .line 1477
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->foundPath:[I

    goto :goto_0

    .line 1480
    :cond_2
    iget v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferringThread:I

    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->referringThreads:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 1481
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->foundPath:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 1482
    .local v1, result:[I
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->foundPath:[I

    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->foundPath:[I

    array-length v3, v3

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1483
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->referringThreads:[I

    iget v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferringThread:I

    aget v3, v3, v4

    aput v3, v1, v2

    .line 1485
    iget v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferringThread:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferringThread:I

    move-object v0, v1

    .line 1486
    goto :goto_0

    .line 1488
    .end local v1           #result:[I
    :cond_3
    iget v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->nextState:I

    iput v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->state:I

    .line 1489
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->getNextShortestPath()[I

    move-result-object v0

    goto :goto_0

    .line 1497
    :pswitch_3
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferrers:[I

    if-eqz v2, :cond_4

    .line 1498
    iget v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->lastReadReferrer:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->processCurrentReferrefs(I)[I

    move-result-object v0

    .line 1499
    .local v0, res:[I
    if-nez v0, :cond_0

    .line 1503
    .end local v0           #res:[I
    :cond_4
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->fifo:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 1504
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->fifo:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    iput-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentPath:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    .line 1505
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->fifo:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1506
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentPath:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;->getIndex()I

    move-result v2

    iput v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentId:I

    .line 1507
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->inboundIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    iget v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentId:I

    invoke-interface {v2, v3}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferrers:[I

    .line 1509
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->currentReferrers:[I

    if-eqz v2, :cond_4

    .line 1510
    invoke-direct {p0, v5}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->processCurrentReferrefs(I)[I

    move-result-object v0

    .line 1511
    .restart local v0       #res:[I
    if-eqz v0, :cond_4

    goto/16 :goto_0

    .end local v0           #res:[I
    :cond_5
    move-object v0, v1

    .line 1514
    goto/16 :goto_0

    .line 1447
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getTree(Ljava/util/Collection;)Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[I>;)",
            "Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;"
        }
    .end annotation

    .prologue
    .line 1534
    .local p1, paths:Ljava/util/Collection;,"Ljava/util/Collection<[I>;"
    new-instance v6, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;

    iget v7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;->objectId:I

    invoke-direct {v6, v7}, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;-><init>(I)V

    .line 1535
    .local v6, rootBuilder:Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    .line 1536
    .local v5, path:[I
    move-object v2, v6

    .line 1542
    .local v2, current:Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;
    const/4 v4, 0x1

    .local v4, k:I
    :goto_0
    array-length v7, v5

    if-ge v4, v7, :cond_0

    .line 1543
    aget v1, v5, v4

    .line 1544
    .local v1, childId:I
    invoke-virtual {v2}, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->getObjectReferers()Ljava/util/HashMap;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;

    .line 1545
    .local v0, child:Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;
    if-nez v0, :cond_1

    .line 1546
    new-instance v0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;

    .end local v0           #child:Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;
    invoke-direct {v0, v1}, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;-><init>(I)V

    .line 1547
    .restart local v0       #child:Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;
    invoke-virtual {v2, v0}, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->addObjectReferer(Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;)V

    .line 1549
    :cond_1
    move-object v2, v0

    .line 1542
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1553
    .end local v0           #child:Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;
    .end local v1           #childId:I
    .end local v2           #current:Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;
    .end local v4           #k:I
    .end local v5           #path:[I
    :cond_2
    invoke-virtual {v6}, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->toPathsFromGCRootsTree()Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;

    move-result-object v7

    return-object v7
.end method
