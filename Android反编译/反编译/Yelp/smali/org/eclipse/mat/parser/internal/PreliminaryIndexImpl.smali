.class Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;
.super Ljava/lang/Object;
.source "PreliminaryIndexImpl.java"

# interfaces
.implements Lorg/eclipse/mat/parser/IPreliminaryIndex;


# instance fields
.field array2size:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

.field classesById:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/parser/model/ClassImpl;",
            ">;"
        }
    .end annotation
.end field

.field gcRoots:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field identifiers:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

.field object2classId:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

.field outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

.field snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

.field thread2objects2roots:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/parser/model/XSnapshotInfo;)V
    .locals 1
    .parameter "snapshotInfo"

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    .line 37
    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->identifiers:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    .line 40
    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->object2classId:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    .line 43
    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->array2size:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    .line 46
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    .line 47
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    return-object v0
.end method

.method public setArray2size(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)V
    .locals 0
    .parameter "array2size"

    .prologue
    .line 79
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->array2size:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    .line 80
    return-void
.end method

.method public setClassesById(Lorg/eclipse/mat/collect/HashMapIntObject;)V
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
    .line 54
    .local p1, classesById:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->classesById:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 55
    return-void
.end method

.method public setGcRoots(Lorg/eclipse/mat/collect/HashMapIntObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, gcRoots:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->gcRoots:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 59
    return-void
.end method

.method public setIdentifiers(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;)V
    .locals 0
    .parameter "identifiers"

    .prologue
    .line 71
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->identifiers:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    .line 72
    return-void
.end method

.method public setObject2classId(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)V
    .locals 0
    .parameter "object2classId"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->object2classId:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    .line 76
    return-void
.end method

.method public setOutbound(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;)V
    .locals 0
    .parameter "outbound"

    .prologue
    .line 67
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    .line 68
    return-void
.end method

.method public setThread2objects2roots(Lorg/eclipse/mat/collect/HashMapIntObject;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p1, thread2objects2roots:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/collect/HashMapIntObject<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;>;"
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->thread2objects2roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 64
    return-void
.end method
