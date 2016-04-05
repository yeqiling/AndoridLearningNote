.class public abstract Lorg/eclipse/mat/parser/model/AbstractObjectImpl;
.super Ljava/lang/Object;
.source "AbstractObjectImpl.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/model/IObject;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2206cfb4e78fe50cL


# instance fields
.field private address:J

.field protected classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

.field private objectId:I

.field protected transient source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;


# direct methods
.method public constructor <init>(IJLorg/eclipse/mat/parser/model/ClassImpl;)V
    .locals 0
    .parameter "objectId"
    .parameter "address"
    .parameter "classInstance"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput p1, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->objectId:I

    .line 42
    iput-wide p2, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->address:J

    .line 43
    iput-object p4, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 44
    return-void
.end method

.method protected static alignUpTo8(I)I
    .locals 2
    .parameter "n"

    .prologue
    .line 207
    rem-int/lit8 v0, p0, 0x8

    if-nez v0, :cond_0

    .end local p0
    :goto_0
    return p0

    .restart local p0
    :cond_0
    add-int/lit8 v0, p0, 0x8

    rem-int/lit8 v1, p0, 0x8

    sub-int p0, v0, v1

    goto :goto_0
.end method

.method public static getComparatorForClassSpecificName()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/eclipse/mat/parser/model/AbstractObjectImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getComparatorForTechnicalName()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/eclipse/mat/parser/model/AbstractObjectImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getComparatorForUsedHeapSize()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lorg/eclipse/mat/parser/model/AbstractObjectImpl;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected appendFields(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 4
    .parameter "buf"

    .prologue
    .line 108
    const-string v0, "id=0x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getObjectAddress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 182
    instance-of v0, p1, Lorg/eclipse/mat/snapshot/model/IObject;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->objectId:I

    check-cast p1, Lorg/eclipse/mat/snapshot/model/IObject;

    .end local p1
    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/model/IObject;->getObjectId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getClassAddress()J
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v0

    return-wide v0
.end method

.method public getClassId()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectId()I

    move-result v0

    return v0
.end method

.method public getClassSpecificName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    invoke-static {p0}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->resolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClazz()Lorg/eclipse/mat/parser/model/ClassImpl;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    return-object v0
.end method

.method public bridge synthetic getClazz()Lorg/eclipse/mat/snapshot/model/IClass;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getClazz()Lorg/eclipse/mat/parser/model/ClassImpl;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x100

    .line 124
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getClassSpecificName()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, label:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getTechnicalName()Ljava/lang/String;

    move-result-object v2

    .line 136
    :goto_0
    return-object v2

    .line 128
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getTechnicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    .local v1, s:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, v4, :cond_1

    .line 131
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 133
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getGCRootInfo()[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 178
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getObjectId()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getGCRootInfo(I)[Lorg/eclipse/mat/snapshot/model/GCRootInfo;

    move-result-object v0

    return-object v0
.end method

.method public getObjectAddress()J
    .locals 2

    .prologue
    .line 47
    iget-wide v0, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->address:J

    return-wide v0
.end method

.method public getObjectId()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->objectId:I

    return v0
.end method

.method public abstract getReferences()Lorg/eclipse/mat/collect/ArrayLong;
.end method

.method public getRetainedHeapSize()J
    .locals 4

    .prologue
    .line 90
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getObjectId()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getRetainedHeapSize(I)J
    :try_end_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, e:Lorg/eclipse/mat/SnapshotException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSnapshot()Lorg/eclipse/mat/snapshot/ISnapshot;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    return-object v0
.end method

.method public getTechnicalName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 117
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getClazz()Lorg/eclipse/mat/parser/model/ClassImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v1, " @ 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getObjectAddress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getUsedHeapSize()I
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->objectId:I

    return v0
.end method

.method protected abstract internalGetField(Ljava/lang/String;)Lorg/eclipse/mat/snapshot/model/Field;
.end method

.method public final resolveValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 13
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x3

    const/4 v12, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 143
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 144
    .local v5, p:I
    if-gez v5, :cond_1

    move-object v3, p1

    .line 145
    .local v3, n:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0, v3}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->internalGetField(Ljava/lang/String;)Lorg/eclipse/mat/snapshot/model/Field;

    move-result-object v1

    .line 146
    .local v1, f:Lorg/eclipse/mat/snapshot/model/Field;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_2

    .line 172
    :cond_0
    :goto_1
    return-object v0

    .line 144
    .end local v1           #f:Lorg/eclipse/mat/snapshot/model/Field;
    .end local v3           #n:Ljava/lang/String;
    :cond_1
    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 147
    .restart local v1       #f:Lorg/eclipse/mat/snapshot/model/Field;
    .restart local v3       #n:Ljava/lang/String;
    :cond_2
    if-gez v5, :cond_3

    .line 148
    invoke-virtual {v1}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 149
    .local v0, answer:Ljava/lang/Object;
    instance-of v7, v0, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    if-eqz v7, :cond_0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    .end local v0           #answer:Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/eclipse/mat/snapshot/model/ObjectReference;->getObject()Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v0

    .local v0, answer:Lorg/eclipse/mat/snapshot/model/IObject;
    goto :goto_1

    .line 153
    .end local v0           #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    if-nez v7, :cond_4

    .line 154
    sget-object v7, Lorg/eclipse/mat/hprof/Messages;->AbstractObjectImpl_Error_FieldIsNotReference:Lorg/eclipse/mat/hprof/Messages;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getTechnicalName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    add-int/lit8 v9, v5, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, msg:Ljava/lang/String;
    new-instance v7, Lorg/eclipse/mat/SnapshotException;

    invoke-direct {v7, v2}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 161
    .end local v2           #msg:Ljava/lang/String;
    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    .line 162
    .local v6, ref:Lorg/eclipse/mat/snapshot/model/ObjectReference;
    if-eqz v6, :cond_0

    .line 164
    invoke-virtual {v6}, Lorg/eclipse/mat/snapshot/model/ObjectReference;->getObjectId()I

    move-result v4

    .line 165
    .local v4, objectId:I
    if-gez v4, :cond_5

    .line 166
    sget-object v7, Lorg/eclipse/mat/hprof/Messages;->AbstractObjectImpl_Error_FieldContainsIllegalReference:Lorg/eclipse/mat/hprof/Messages;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v3, v8, v9

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getTechnicalName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-virtual {v6}, Lorg/eclipse/mat/snapshot/model/ObjectReference;->getObjectAddress()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-static {v7, v8}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2       #msg:Ljava/lang/String;
    new-instance v7, Lorg/eclipse/mat/SnapshotException;

    invoke-direct {v7, v2}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 172
    .end local v2           #msg:Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v7, v4}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {p1, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1
.end method

.method public setClassInstance(Lorg/eclipse/mat/parser/model/ClassImpl;)V
    .locals 0
    .parameter "classInstance"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 76
    return-void
.end method

.method public setObjectAddress(J)V
    .locals 1
    .parameter "address"

    .prologue
    .line 55
    iput-wide p1, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->address:J

    .line 56
    return-void
.end method

.method public setObjectId(I)V
    .locals 0
    .parameter "objectId"

    .prologue
    .line 59
    iput p1, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->objectId:I

    .line 60
    return-void
.end method

.method public setSnapshot(Lorg/eclipse/mat/snapshot/ISnapshot;)V
    .locals 0
    .parameter "dump"

    .prologue
    .line 79
    check-cast p1, Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    .end local p1
    iput-object p1, p0, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 100
    .local v0, s:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getClazz()Lorg/eclipse/mat/parser/model/ClassImpl;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 102
    invoke-virtual {p0, v0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->appendFields(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 103
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
