.class public interface abstract Lorg/eclipse/mat/snapshot/IPathsFromGCRootsComputer;
.super Ljava/lang/Object;
.source "IPathsFromGCRootsComputer.java"


# virtual methods
.method public abstract getNextShortestPath()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getTree(Ljava/util/Collection;)Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<[I>;)",
            "Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;"
        }
    .end annotation
.end method
