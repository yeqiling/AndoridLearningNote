.class public interface abstract Lorg/eclipse/mat/snapshot/ISnapshot;
.super Ljava/lang/Object;
.source "ISnapshot.java"


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getClassOf(I)Lorg/eclipse/mat/snapshot/model/IClass;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getClasses()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getClassesByName(Ljava/lang/String;Z)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getClassesByName(Ljava/util/regex/Pattern;Z)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Z)",
            "Ljava/util/Collection",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getDominatorsOf([ILjava/util/regex/Pattern;Lorg/eclipse/mat/util/IProgressListener;)Lorg/eclipse/mat/snapshot/DominatorsSummary;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getGCRootInfo(I)[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getGCRoots()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getHeapSize(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getHeapSize([I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getImmediateDominatedIds(I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getImmediateDominatorId(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getInboundRefererIds(I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getInboundRefererIds([ILorg/eclipse/mat/util/IProgressListener;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getMinRetainedSet([ILorg/eclipse/mat/util/IProgressListener;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getMinRetainedSize([ILorg/eclipse/mat/util/IProgressListener;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getMultiplePathsFromGCRoots([ILjava/util/Map;)Lorg/eclipse/mat/snapshot/IMultiplePathsFromGCRootsComputer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Map",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/eclipse/mat/snapshot/IMultiplePathsFromGCRootsComputer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getOutboundReferentIds(I)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getOutboundReferentIds([ILorg/eclipse/mat/util/IProgressListener;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getPathsFromGCRoots(ILjava/util/Map;)Lorg/eclipse/mat/snapshot/IPathsFromGCRootsComputer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/eclipse/mat/snapshot/IPathsFromGCRootsComputer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getRetainedHeapSize(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getRetainedSet([ILorg/eclipse/mat/util/IProgressListener;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getRetainedSet([I[Ljava/lang/String;Lorg/eclipse/mat/util/IProgressListener;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getRetainedSet([I[Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;Lorg/eclipse/mat/util/IProgressListener;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getSnapshotAddons(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getSnapshotInfo()Lorg/eclipse/mat/snapshot/SnapshotInfo;
.end method

.method public abstract getThreadStack(I)Lorg/eclipse/mat/snapshot/model/IThreadStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getTopAncestorsInDominatorTree([ILorg/eclipse/mat/util/IProgressListener;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract isArray(I)Z
.end method

.method public abstract isClass(I)Z
.end method

.method public abstract isClassLoader(I)Z
.end method

.method public abstract isGCRoot(I)Z
.end method

.method public abstract mapAddressToId(J)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract mapIdToAddress(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method
