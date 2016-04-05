.class final Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;
.super Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;
.source "SnapshotImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/internal/SnapshotImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeapObjectCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache",
        "<",
        "Lorg/eclipse/mat/snapshot/model/IObject;",
        ">;"
    }
.end annotation


# instance fields
.field snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;


# direct methods
.method private constructor <init>(Lorg/eclipse/mat/parser/internal/SnapshotImpl;I)V
    .locals 0
    .parameter "snapshot"
    .parameter "maxSize"

    .prologue
    .line 1662
    invoke-direct {p0, p2}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;-><init>(I)V

    .line 1663
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    .line 1664
    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/mat/parser/internal/SnapshotImpl;ILorg/eclipse/mat/parser/internal/SnapshotImpl$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1658
    invoke-direct {p0, p1, p2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;-><init>(Lorg/eclipse/mat/parser/internal/SnapshotImpl;I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic load(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1658
    invoke-virtual {p0, p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;->load(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v0

    return-object v0
.end method

.method protected load(I)Lorg/eclipse/mat/snapshot/model/IObject;
    .locals 10
    .parameter "objectId"

    .prologue
    .line 1668
    const/4 v8, 0x0

    .line 1670
    .local v8, answer:Lorg/eclipse/mat/snapshot/model/IObject;
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v3, p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->isArray(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1671
    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    #getter for: Lorg/eclipse/mat/parser/internal/SnapshotImpl;->heapObjectReader:Lorg/eclipse/mat/parser/IObjectReader;
    invoke-static {v3}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->access$300(Lorg/eclipse/mat/parser/internal/SnapshotImpl;)Lorg/eclipse/mat/parser/IObjectReader;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-interface {v3, p1, v4}, Lorg/eclipse/mat/parser/IObjectReader;->read(ILorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IObject;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1682
    .end local v8           #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    .local v2, answer:Lorg/eclipse/mat/snapshot/model/IObject;
    :goto_0
    :try_start_1
    move-object v0, v2

    check-cast v0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;

    move-object v3, v0

    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v3, v4}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->setSnapshot(Lorg/eclipse/mat/snapshot/ISnapshot;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1684
    return-object v2

    .line 1673
    .end local v2           #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    .restart local v8       #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    #getter for: Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;
    invoke-static {v4}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->access$100(Lorg/eclipse/mat/parser/internal/SnapshotImpl;)Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/index/IndexManager;->o2class()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v4

    invoke-interface {v4, p1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v6

    check-cast v6, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 1675
    .local v6, classImpl:Lorg/eclipse/mat/parser/model/ClassImpl;
    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v3, p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->isClassLoader(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1676
    new-instance v2, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;

    const-wide/high16 v4, -0x8000

    const/4 v7, 0x0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;Ljava/util/List;)V

    .end local v8           #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    .restart local v2       #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    goto :goto_0

    .line 1678
    .end local v2           #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    .restart local v8       #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    :cond_1
    new-instance v2, Lorg/eclipse/mat/parser/model/InstanceImpl;

    const-wide/high16 v4, -0x8000

    const/4 v7, 0x0

    move v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/mat/parser/model/InstanceImpl;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v8           #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    .restart local v2       #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    goto :goto_0

    .line 1685
    .end local v2           #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    .end local v6           #classImpl:Lorg/eclipse/mat/parser/model/ClassImpl;
    .restart local v8       #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    :catch_0
    move-exception v9

    move-object v2, v8

    .line 1686
    .end local v8           #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    .restart local v2       #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    .local v9, e:Ljava/io/IOException;
    :goto_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1687
    .end local v2           #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    .end local v9           #e:Ljava/io/IOException;
    .restart local v8       #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    :catch_1
    move-exception v9

    move-object v2, v8

    .line 1688
    .end local v8           #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    .restart local v2       #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    .local v9, e:Lorg/eclipse/mat/SnapshotException;
    :goto_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1687
    .end local v9           #e:Lorg/eclipse/mat/SnapshotException;
    :catch_2
    move-exception v9

    goto :goto_2

    .line 1685
    :catch_3
    move-exception v9

    goto :goto_1
.end method
