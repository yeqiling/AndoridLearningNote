.class public Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;
.super Ljava/lang/Object;
.source "SnapshotImplBuilder.java"


# instance fields
.field arrayObjects:Lorg/eclipse/mat/collect/BitField;

.field classCache:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/parser/model/ClassImpl;",
            ">;"
        }
    .end annotation
.end field

.field classCacheByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;>;"
        }
    .end annotation
.end field

.field indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

.field private roots:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<[",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rootsPerThread:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<[",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/parser/model/XSnapshotInfo;)V
    .locals 0
    .parameter "snapshotInfo"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    .line 42
    return-void
.end method


# virtual methods
.method public create(Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;)Lorg/eclipse/mat/parser/internal/SnapshotImpl;
    .locals 7
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->getObjectReader()Lorg/eclipse/mat/parser/IObjectReader;

    move-result-object v1

    .line 82
    .local v1, heapObjectReader:Lorg/eclipse/mat/parser/IObjectReader;
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->rootsPerThread:Lorg/eclipse/mat/collect/HashMapIntObject;

    iget-object v5, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->arrayObjects:Lorg/eclipse/mat/collect/BitField;

    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-static/range {v0 .. v6}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->create(Lorg/eclipse/mat/parser/model/XSnapshotInfo;Lorg/eclipse/mat/parser/IObjectReader;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/BitField;Lorg/eclipse/mat/parser/index/IndexManager;)Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    move-result-object v0

    return-object v0
.end method

.method public getClassCache()Lorg/eclipse/mat/collect/HashMapIntObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/parser/model/ClassImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    return-object v0
.end method

.method public getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    return-object v0
.end method

.method public getRoots()Lorg/eclipse/mat/collect/HashMapIntObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<[",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    return-object v0
.end method

.method public getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    return-object v0
.end method

.method public setArrayObjects(Lorg/eclipse/mat/collect/BitField;)V
    .locals 0
    .parameter "arrayObjects"

    .prologue
    .line 77
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->arrayObjects:Lorg/eclipse/mat/collect/BitField;

    .line 78
    return-void
.end method

.method public setClassCache(Lorg/eclipse/mat/collect/HashMapIntObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/parser/model/ClassImpl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, classCache:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 58
    return-void
.end method

.method public setIndexManager(Lorg/eclipse/mat/parser/index/IndexManager;)V
    .locals 0
    .parameter "indexManager"

    .prologue
    .line 49
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    .line 50
    return-void
.end method

.method public setRoots(Lorg/eclipse/mat/collect/HashMapIntObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<[",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, roots:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 66
    return-void
.end method

.method public setRootsPerThread(Lorg/eclipse/mat/collect/HashMapIntObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<[",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, rootsPerThread:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->rootsPerThread:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 74
    return-void
.end method
