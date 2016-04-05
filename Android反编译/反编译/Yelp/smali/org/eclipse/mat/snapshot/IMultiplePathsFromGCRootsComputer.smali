.class public interface abstract Lorg/eclipse/mat/snapshot/IMultiplePathsFromGCRootsComputer;
.super Ljava/lang/Object;
.source "IMultiplePathsFromGCRootsComputer.java"


# virtual methods
.method public abstract getAllPaths(Lorg/eclipse/mat/util/IProgressListener;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getPathsByGCRoot(Lorg/eclipse/mat/util/IProgressListener;)[Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method
