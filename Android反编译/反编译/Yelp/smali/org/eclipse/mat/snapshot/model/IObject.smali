.class public interface abstract Lorg/eclipse/mat/snapshot/model/IObject;
.super Ljava/lang/Object;
.source "IObject.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/snapshot/model/IObject$Type;
    }
.end annotation


# virtual methods
.method public abstract getClassSpecificName()Ljava/lang/String;
.end method

.method public abstract getClazz()Lorg/eclipse/mat/snapshot/model/IClass;
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getGCRootInfo()[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getObjectAddress()J
.end method

.method public abstract getObjectId()I
.end method

.method public abstract getOutboundReferences()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/NamedReference;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRetainedHeapSize()J
.end method

.method public abstract getSnapshot()Lorg/eclipse/mat/snapshot/ISnapshot;
.end method

.method public abstract getTechnicalName()Ljava/lang/String;
.end method

.method public abstract getUsedHeapSize()I
.end method

.method public abstract resolveValue(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method
