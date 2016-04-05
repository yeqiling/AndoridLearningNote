.class public Lorg/eclipse/mat/snapshot/model/ObjectReference;
.super Ljava/lang/Object;
.source "ObjectReference.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private address:J

.field private transient snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/snapshot/ISnapshot;J)V
    .locals 0
    .parameter "snapshot"
    .parameter "address"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/eclipse/mat/snapshot/model/ObjectReference;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    .line 30
    iput-wide p2, p0, Lorg/eclipse/mat/snapshot/model/ObjectReference;->address:J

    .line 31
    return-void
.end method


# virtual methods
.method public getObject()Lorg/eclipse/mat/snapshot/model/IObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/model/ObjectReference;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    invoke-virtual {p0}, Lorg/eclipse/mat/snapshot/model/ObjectReference;->getObjectId()I

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/mat/snapshot/ISnapshot;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v0

    return-object v0
.end method

.method public getObjectAddress()J
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/model/ObjectReference;->address:J

    return-wide v0
.end method

.method public getObjectId()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/model/ObjectReference;->snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;

    iget-wide v2, p0, Lorg/eclipse/mat/snapshot/model/ObjectReference;->address:J

    invoke-interface {v0, v2, v3}, Lorg/eclipse/mat/snapshot/ISnapshot;->mapAddressToId(J)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lorg/eclipse/mat/snapshot/model/ObjectReference;->address:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
