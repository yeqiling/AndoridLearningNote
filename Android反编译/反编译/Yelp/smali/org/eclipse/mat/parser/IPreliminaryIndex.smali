.class public interface abstract Lorg/eclipse/mat/parser/IPreliminaryIndex;
.super Ljava/lang/Object;
.source "IPreliminaryIndex.java"


# virtual methods
.method public abstract getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;
.end method

.method public abstract setArray2size(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)V
.end method

.method public abstract setClassesById(Lorg/eclipse/mat/collect/HashMapIntObject;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/parser/model/ClassImpl;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setGcRoots(Lorg/eclipse/mat/collect/HashMapIntObject;)V
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
.end method

.method public abstract setIdentifiers(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;)V
.end method

.method public abstract setObject2classId(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)V
.end method

.method public abstract setOutbound(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;)V
.end method

.method public abstract setThread2objects2roots(Lorg/eclipse/mat/collect/HashMapIntObject;)V
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
.end method
