.class public interface abstract Lorg/eclipse/mat/snapshot/model/IClassLoader;
.super Ljava/lang/Object;
.source "IClassLoader.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/model/IInstance;


# virtual methods
.method public abstract getDefinedClasses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
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

.method public abstract getRetainedHeapSizeOfObjects(ZZLorg/eclipse/mat/util/IProgressListener;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method
