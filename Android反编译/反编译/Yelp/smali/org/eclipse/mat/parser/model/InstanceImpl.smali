.class public Lorg/eclipse/mat/parser/model/InstanceImpl;
.super Lorg/eclipse/mat/parser/model/AbstractObjectImpl;
.source "InstanceImpl.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/model/IInstance;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private volatile fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/Field;",
            ">;"
        }
    .end annotation
.end field

.field private volatile name2field:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/mat/snapshot/model/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJLorg/eclipse/mat/parser/model/ClassImpl;Ljava/util/List;)V
    .locals 0
    .parameter "objectId"
    .parameter "address"
    .parameter "clazz"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lorg/eclipse/mat/parser/model/ClassImpl;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p5, fields:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/Field;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;)V

    .line 43
    iput-object p5, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->fields:Ljava/util/List;

    .line 44
    return-void
.end method


# virtual methods
.method public getField(Ljava/lang/String;)Lorg/eclipse/mat/snapshot/model/Field;
    .locals 1
    .parameter "name"

    .prologue
    .line 83
    invoke-virtual {p0, p1}, Lorg/eclipse/mat/parser/model/InstanceImpl;->internalGetField(Ljava/lang/String;)Lorg/eclipse/mat/snapshot/model/Field;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->fields:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/InstanceImpl;->readFully()V

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->fields:Ljava/util/List;

    return-object v0
.end method

.method public getObjectAddress()J
    .locals 6

    .prologue
    .line 48
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getObjectAddress()J

    move-result-wide v0

    .line 50
    .local v0, address:J
    const-wide/high16 v4, -0x8000

    cmp-long v3, v0, v4

    if-nez v3, :cond_0

    .line 51
    iget-object v3, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/InstanceImpl;->getObjectId()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->mapIdToAddress(I)J

    move-result-wide v0

    .line 52
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/mat/parser/model/InstanceImpl;->setObjectAddress(J)V
    :try_end_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :cond_0
    return-wide v0

    .line 56
    .end local v0           #address:J
    :catch_0
    move-exception v2

    .line 57
    .local v2, e:Lorg/eclipse/mat/SnapshotException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getObjectId()I
    .locals 6

    .prologue
    .line 63
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->getObjectId()I

    move-result v1

    .line 65
    .local v1, objectId:I
    if-gez v1, :cond_0

    .line 66
    iget-object v2, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/InstanceImpl;->getObjectAddress()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->mapAddressToId(J)I

    move-result v1

    .line 67
    invoke-virtual {p0, v1}, Lorg/eclipse/mat/parser/model/InstanceImpl;->setObjectId(I)V
    :try_end_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :cond_0
    return v1

    .line 71
    .end local v1           #objectId:I
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Lorg/eclipse/mat/SnapshotException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getOutboundReferences()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/NamedReference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v11, list:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/NamedReference;>;"
    new-instance v3, Lorg/eclipse/mat/snapshot/model/PseudoReference;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/parser/model/InstanceImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/parser/model/InstanceImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v16

    const-string v5, "<class>"

    move-wide/from16 v0, v16

    invoke-direct {v3, v4, v0, v1, v5}, Lorg/eclipse/mat/snapshot/model/PseudoReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/model/InstanceImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getRootsPerThread()Lorg/eclipse/mat/collect/HashMapIntObject;

    move-result-object v14

    .line 152
    .local v14, threadToLocalVars:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    if-eqz v14, :cond_0

    .line 153
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/parser/model/InstanceImpl;->getObjectId()I

    move-result v3

    invoke-virtual {v14, v3}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 154
    .local v12, localVars:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    if-eqz v12, :cond_0

    .line 155
    invoke-virtual {v12}, Lorg/eclipse/mat/collect/HashMapIntObject;->keys()Lorg/eclipse/mat/collect/IteratorInt;

    move-result-object v13

    .line 156
    .local v13, localsIds:Lorg/eclipse/mat/collect/IteratorInt;
    :goto_0
    invoke-interface {v13}, Lorg/eclipse/mat/collect/IteratorInt;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 157
    invoke-interface {v13}, Lorg/eclipse/mat/collect/IteratorInt;->next()I

    move-result v7

    .line 158
    .local v7, localId:I
    invoke-virtual {v12, v7}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/eclipse/mat/snapshot/model/GCRootInfo;

    .line 159
    .local v8, rootInfo:[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    new-instance v2, Lorg/eclipse/mat/snapshot/model/ThreadToLocalReference;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/model/InstanceImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    const/4 v4, 0x0

    aget-object v4, v8, v4

    invoke-virtual {v4}, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->getObjectAddress()J

    move-result-wide v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "<"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->getTypeSetAsString([Lorg/eclipse/mat/snapshot/model/GCRootInfo;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v15, ">"

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v2 .. v8}, Lorg/eclipse/mat/snapshot/model/ThreadToLocalReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;I[Lorg/eclipse/mat/snapshot/model/GCRootInfo;)V

    .line 162
    .local v2, ref:Lorg/eclipse/mat/snapshot/model/ThreadToLocalReference;
    invoke-interface {v11, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v2           #ref:Lorg/eclipse/mat/snapshot/model/ThreadToLocalReference;
    .end local v7           #localId:I
    .end local v8           #rootInfo:[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    .end local v12           #localVars:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    .end local v13           #localsIds:Lorg/eclipse/mat/collect/IteratorInt;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/parser/model/InstanceImpl;->getFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/mat/snapshot/model/Field;

    .line 168
    .local v9, field:Lorg/eclipse/mat/snapshot/model/Field;
    invoke-virtual {v9}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    if-eqz v3, :cond_1

    .line 169
    invoke-virtual {v9}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    .line 170
    .local v2, ref:Lorg/eclipse/mat/snapshot/model/ObjectReference;
    new-instance v3, Lorg/eclipse/mat/snapshot/model/NamedReference;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/parser/model/InstanceImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v2}, Lorg/eclipse/mat/snapshot/model/ObjectReference;->getObjectAddress()J

    move-result-wide v16

    invoke-virtual {v9}, Lorg/eclipse/mat/snapshot/model/Field;->getName()Ljava/lang/String;

    move-result-object v5

    move-wide/from16 v0, v16

    invoke-direct {v3, v4, v0, v1, v5}, Lorg/eclipse/mat/snapshot/model/NamedReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    .end local v2           #ref:Lorg/eclipse/mat/snapshot/model/ObjectReference;
    .end local v9           #field:Lorg/eclipse/mat/snapshot/model/Field;
    :cond_2
    return-object v11
.end method

.method public getReferences()Lorg/eclipse/mat/collect/ArrayLong;
    .locals 12

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/InstanceImpl;->getFields()Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, fields:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/Field;>;"
    new-instance v3, Lorg/eclipse/mat/collect/ArrayLong;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v3, v10}, Lorg/eclipse/mat/collect/ArrayLong;-><init>(I)V

    .line 119
    .local v3, list:Lorg/eclipse/mat/collect/ArrayLong;
    iget-object v10, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v10}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 121
    iget-object v10, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v10}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getRootsPerThread()Lorg/eclipse/mat/collect/HashMapIntObject;

    move-result-object v9

    .line 123
    .local v9, threadToLocalVars:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    if-eqz v9, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/InstanceImpl;->getObjectId()I

    move-result v10

    invoke-virtual {v9, v10}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 125
    .local v5, localVars:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    if-eqz v5, :cond_0

    .line 126
    invoke-virtual {v5}, Lorg/eclipse/mat/collect/HashMapIntObject;->keys()Lorg/eclipse/mat/collect/IteratorInt;

    move-result-object v6

    .line 127
    .local v6, localsIds:Lorg/eclipse/mat/collect/IteratorInt;
    :goto_0
    invoke-interface {v6}, Lorg/eclipse/mat/collect/IteratorInt;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 128
    invoke-interface {v6}, Lorg/eclipse/mat/collect/IteratorInt;->next()I

    move-result v4

    .line 129
    .local v4, localId:I
    invoke-virtual {v5, v4}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/eclipse/mat/snapshot/model/GCRootInfo;

    .line 130
    .local v8, rootInfo:[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    const/4 v10, 0x0

    aget-object v10, v8, v10

    invoke-virtual {v10}, Lorg/eclipse/mat/snapshot/model/GCRootInfo;->getObjectAddress()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    goto :goto_0

    .line 135
    .end local v4           #localId:I
    .end local v5           #localVars:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    .end local v6           #localsIds:Lorg/eclipse/mat/collect/IteratorInt;
    .end local v8           #rootInfo:[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/Field;

    .line 136
    .local v0, field:Lorg/eclipse/mat/snapshot/model/Field;
    invoke-virtual {v0}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    if-eqz v10, :cond_1

    .line 137
    invoke-virtual {v0}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    .line 138
    .local v7, ref:Lorg/eclipse/mat/snapshot/model/ObjectReference;
    invoke-virtual {v7}, Lorg/eclipse/mat/snapshot/model/ObjectReference;->getObjectAddress()J

    move-result-wide v10

    invoke-virtual {v3, v10, v11}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    goto :goto_1

    .line 142
    .end local v0           #field:Lorg/eclipse/mat/snapshot/model/Field;
    .end local v7           #ref:Lorg/eclipse/mat/snapshot/model/ObjectReference;
    :cond_2
    return-object v3
.end method

.method public getUsedHeapSize()I
    .locals 3

    .prologue
    .line 109
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/InstanceImpl;->getSnapshot()Lorg/eclipse/mat/snapshot/ISnapshot;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/InstanceImpl;->getObjectId()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/eclipse/mat/snapshot/ISnapshot;->getHeapSize(I)I
    :try_end_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 111
    :goto_0
    return v1

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Lorg/eclipse/mat/SnapshotException;
    iget-object v1, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getHeapSizePerInstance()I

    move-result v1

    goto :goto_0
.end method

.method protected internalGetField(Ljava/lang/String;)Lorg/eclipse/mat/snapshot/model/Field;
    .locals 5
    .parameter "name"

    .prologue
    .line 178
    iget-object v4, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->name2field:Ljava/util/Map;

    if-nez v4, :cond_1

    .line 179
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/InstanceImpl;->getFields()Ljava/util/List;

    move-result-object v1

    .line 180
    .local v1, fields:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/Field;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 181
    .local v3, n2f:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/mat/snapshot/model/Field;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/Field;

    .line 182
    .local v0, f:Lorg/eclipse/mat/snapshot/model/Field;
    invoke-virtual {v0}, Lorg/eclipse/mat/snapshot/model/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 185
    .end local v0           #f:Lorg/eclipse/mat/snapshot/model/Field;
    :cond_0
    iput-object v3, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->name2field:Ljava/util/Map;

    .line 188
    .end local v1           #fields:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/Field;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #n2f:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/mat/snapshot/model/Field;>;"
    :cond_1
    iget-object v4, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->name2field:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/mat/snapshot/model/Field;

    return-object v4
.end method

.method protected declared-synchronized readFully()V
    .locals 6

    .prologue
    .line 92
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->fields:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 105
    :goto_0
    monitor-exit p0

    return-void

    .line 95
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/InstanceImpl;->getObjectId()I

    move-result v2

    .line 97
    .local v2, objectId:I
    iget-object v3, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getHeapObjectReader()Lorg/eclipse/mat/parser/IObjectReader;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-interface {v3, v2, v4}, Lorg/eclipse/mat/parser/IObjectReader;->read(ILorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/parser/model/InstanceImpl;

    .line 98
    .local v1, fullCopy:Lorg/eclipse/mat/parser/model/InstanceImpl;
    invoke-virtual {v1}, Lorg/eclipse/mat/parser/model/InstanceImpl;->getObjectAddress()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lorg/eclipse/mat/parser/model/InstanceImpl;->setObjectAddress(J)V

    .line 99
    iget-object v3, v1, Lorg/eclipse/mat/parser/model/InstanceImpl;->fields:Ljava/util/List;

    iput-object v3, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->fields:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 100
    .end local v1           #fullCopy:Lorg/eclipse/mat/parser/model/InstanceImpl;
    .end local v2           #objectId:I
    :catch_0
    move-exception v0

    .line 101
    .local v0, e:Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 92
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 102
    :catch_1
    move-exception v0

    .line 103
    .local v0, e:Lorg/eclipse/mat/SnapshotException;
    :try_start_3
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected setFields(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/Field;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, fields:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/Field;>;"
    iput-object p1, p0, Lorg/eclipse/mat/parser/model/InstanceImpl;->fields:Ljava/util/List;

    .line 88
    return-void
.end method
