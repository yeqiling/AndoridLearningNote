.class public final Lcom/squareup/leakcanary/HeapAnalyzer;
.super Ljava/lang/Object;
.source "HeapAnalyzer.java"


# static fields
.field private static final ANONYMOUS_CLASS_NAME_PATTERN:Ljava/lang/String; = "^.+\\$\\d+$"

.field private static final TAG:Ljava/lang/String; = "HeapAnalyzer"


# instance fields
.field private final baseExcludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

.field private final excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;


# direct methods
.method public constructor <init>(Lcom/squareup/leakcanary/ExcludedRefs;)V
    .locals 1
    .parameter "excludedRefs"

    .prologue
    .line 71
    new-instance v0, Lcom/squareup/leakcanary/ExcludedRefs$Builder;

    invoke-direct {v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/squareup/leakcanary/ExcludedRefs$Builder;->build()Lcom/squareup/leakcanary/ExcludedRefs;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/squareup/leakcanary/HeapAnalyzer;-><init>(Lcom/squareup/leakcanary/ExcludedRefs;Lcom/squareup/leakcanary/ExcludedRefs;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/squareup/leakcanary/ExcludedRefs;Lcom/squareup/leakcanary/ExcludedRefs;)V
    .locals 0
    .parameter "baseExcludedRefs"
    .parameter "excludedRefs"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/squareup/leakcanary/HeapAnalyzer;->baseExcludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 76
    iput-object p2, p0, Lcom/squareup/leakcanary/HeapAnalyzer;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 77
    return-void
.end method

.method private buildClassExcludeMap(Lorg/eclipse/mat/snapshot/ISnapshot;Ljava/util/Map;)Ljava/util/Map;
    .locals 7
    .parameter "snapshot"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/snapshot/ISnapshot;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 180
    .local p2, excludeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 181
    .local v0, classExcludeMap:Ljava/util/Map;,"Ljava/util/Map<Lorg/eclipse/mat/snapshot/model/IClass;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 182
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-interface {p1, v5, v6}, Lorg/eclipse/mat/snapshot/ISnapshot;->getClassesByName(Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v4

    .line 183
    .local v4, refClasses:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 184
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 185
    .local v3, refClass:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 188
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v3           #refClass:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v4           #refClasses:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    :cond_1
    return-object v0
.end method

.method private buildLeakElement(Lorg/eclipse/mat/snapshot/model/IObject;Lorg/eclipse/mat/snapshot/model/IObject;Lcom/squareup/leakcanary/ExcludedRefs;)Lcom/squareup/leakcanary/LeakTraceElement;
    .locals 30
    .parameter "held"
    .parameter "holder"
    .parameter "excludedRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 277
    const/4 v4, 0x0

    .line 278
    .local v4, type:Lcom/squareup/leakcanary/LeakTraceElement$Type;
    const/4 v3, 0x0

    .line 279
    .local v3, referenceName:Ljava/lang/String;
    invoke-direct/range {p0 .. p3}, Lcom/squareup/leakcanary/HeapAnalyzer;->findHeldInHolder(Lorg/eclipse/mat/snapshot/model/IObject;Lorg/eclipse/mat/snapshot/model/IObject;Lcom/squareup/leakcanary/ExcludedRefs;)Lorg/eclipse/mat/snapshot/model/NamedReference;

    move-result-object v16

    .line 280
    .local v16, holdingRef:Lorg/eclipse/mat/snapshot/model/NamedReference;
    if-eqz v16, :cond_0

    .line 281
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/snapshot/model/NamedReference;->getName()Ljava/lang/String;

    move-result-object v3

    .line 282
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/eclipse/mat/snapshot/model/IClass;

    if-eqz v2, :cond_1

    .line 283
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Type;->STATIC_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    .line 293
    :cond_0
    :goto_0
    const/4 v7, 0x0

    .line 294
    .local v7, extra:Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 295
    .local v8, fields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/eclipse/mat/snapshot/model/IClass;

    if-eqz v2, :cond_3

    move-object/from16 v14, p2

    .line 296
    check-cast v14, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 297
    .local v14, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->CLASS:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 298
    .local v5, holderType:Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    invoke-interface {v14}, Lorg/eclipse/mat/snapshot/model/IClass;->getName()Ljava/lang/String;

    move-result-object v6

    .line 299
    .local v6, className:Ljava/lang/String;
    invoke-interface {v14}, Lorg/eclipse/mat/snapshot/model/IClass;->getStaticFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/eclipse/mat/snapshot/model/Field;

    .line 300
    .local v26, staticField:Lorg/eclipse/mat/snapshot/model/Field;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "static "

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->fieldToString(Lorg/eclipse/mat/snapshot/model/Field;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 284
    .end local v5           #holderType:Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v6           #className:Ljava/lang/String;
    .end local v7           #extra:Ljava/lang/String;
    .end local v8           #fields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v14           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v26           #staticField:Lorg/eclipse/mat/snapshot/model/Field;
    :cond_1
    move-object/from16 v0, v16

    instance-of v2, v0, Lorg/eclipse/mat/snapshot/model/ThreadToLocalReference;

    if-eqz v2, :cond_2

    .line 285
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Type;->LOCAL:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    goto :goto_0

    .line 287
    :cond_2
    sget-object v4, Lcom/squareup/leakcanary/LeakTraceElement$Type;->INSTANCE_FIELD:Lcom/squareup/leakcanary/LeakTraceElement$Type;

    goto :goto_0

    .line 302
    .restart local v7       #extra:Ljava/lang/String;
    .restart local v8       #fields:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/eclipse/mat/snapshot/model/IArray;

    if-eqz v2, :cond_5

    .line 303
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->ARRAY:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 304
    .restart local v5       #holderType:Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/mat/snapshot/model/IObject;->getClazz()Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v14

    .line 305
    .restart local v14       #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v14}, Lorg/eclipse/mat/snapshot/model/IClass;->getName()Ljava/lang/String;

    move-result-object v6

    .line 306
    .restart local v6       #className:Ljava/lang/String;
    move-object/from16 v0, p2

    instance-of v2, v0, Lorg/eclipse/mat/snapshot/model/IObjectArray;

    if-eqz v2, :cond_8

    move-object/from16 v13, p2

    .line 307
    check-cast v13, Lorg/eclipse/mat/snapshot/model/IObjectArray;

    .line 308
    .local v13, array:Lorg/eclipse/mat/snapshot/model/IObjectArray;
    const/16 v17, 0x0

    .line 309
    .local v17, i:I
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/mat/snapshot/model/IObject;->getSnapshot()Lorg/eclipse/mat/snapshot/ISnapshot;

    move-result-object v25

    .line 310
    .local v25, snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;
    invoke-interface {v13}, Lorg/eclipse/mat/snapshot/model/IObjectArray;->getReferenceArray()[J

    move-result-object v12

    .local v12, arr$:[J
    array-length v0, v12

    move/from16 v21, v0

    .local v21, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_8

    aget-wide v10, v12, v18

    .line 311
    .local v10, address:J
    const-wide/16 v28, 0x0

    cmp-long v2, v10, v28

    if-nez v2, :cond_4

    .line 312
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "["

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v28, "] = null"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    :goto_3
    add-int/lit8 v17, v17, 0x1

    .line 310
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 314
    :cond_4
    move-object/from16 v0, v25

    invoke-interface {v0, v10, v11}, Lorg/eclipse/mat/snapshot/ISnapshot;->mapAddressToId(J)I

    move-result v23

    .line 315
    .local v23, objectId:I
    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/eclipse/mat/snapshot/ISnapshot;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v22

    .line 316
    .local v22, object:Lorg/eclipse/mat/snapshot/model/IObject;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "["

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v28, "] = "

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .end local v5           #holderType:Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v6           #className:Ljava/lang/String;
    .end local v10           #address:J
    .end local v12           #arr$:[J
    .end local v13           #array:Lorg/eclipse/mat/snapshot/model/IObjectArray;
    .end local v14           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v17           #i:I
    .end local v18           #i$:I
    .end local v21           #len$:I
    .end local v22           #object:Lorg/eclipse/mat/snapshot/model/IObject;
    .end local v23           #objectId:I
    .end local v25           #snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;
    :cond_5
    move-object/from16 v20, p2

    .line 322
    check-cast v20, Lorg/eclipse/mat/snapshot/model/IInstance;

    .line 323
    .local v20, instance:Lorg/eclipse/mat/snapshot/model/IInstance;
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/mat/snapshot/model/IObject;->getClazz()Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v14

    .line 324
    .restart local v14       #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v14}, Lorg/eclipse/mat/snapshot/model/IClass;->getStaticFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/eclipse/mat/snapshot/model/Field;

    .line 325
    .restart local v26       #staticField:Lorg/eclipse/mat/snapshot/model/Field;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "static "

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->fieldToString(Lorg/eclipse/mat/snapshot/model/Field;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 327
    .end local v26           #staticField:Lorg/eclipse/mat/snapshot/model/Field;
    :cond_6
    invoke-interface/range {v20 .. v20}, Lorg/eclipse/mat/snapshot/model/IInstance;->getFields()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_5
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/eclipse/mat/snapshot/model/Field;

    .line 328
    .local v15, field:Lorg/eclipse/mat/snapshot/model/Field;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/squareup/leakcanary/HeapAnalyzer;->fieldToString(Lorg/eclipse/mat/snapshot/model/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 330
    .end local v15           #field:Lorg/eclipse/mat/snapshot/model/Field;
    :cond_7
    invoke-interface {v14}, Lorg/eclipse/mat/snapshot/model/IClass;->getName()Ljava/lang/String;

    move-result-object v6

    .line 331
    .restart local v6       #className:Ljava/lang/String;
    const-class v2, Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v14, v2}, Lorg/eclipse/mat/snapshot/model/IClass;->doesExtend(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 332
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->THREAD:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 333
    .restart local v5       #holderType:Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/squareup/leakcanary/HeapAnalyzer;->getThreadName(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;

    move-result-object v27

    .line 334
    .local v27, threadName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "(named \'"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v28, "\')"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 357
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v20           #instance:Lorg/eclipse/mat/snapshot/model/IInstance;
    .end local v27           #threadName:Ljava/lang/String;
    :cond_8
    :goto_6
    new-instance v2, Lcom/squareup/leakcanary/LeakTraceElement;

    invoke-direct/range {v2 .. v8}, Lcom/squareup/leakcanary/LeakTraceElement;-><init>(Ljava/lang/String;Lcom/squareup/leakcanary/LeakTraceElement$Type;Lcom/squareup/leakcanary/LeakTraceElement$Holder;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-object v2

    .line 335
    .end local v5           #holderType:Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v20       #instance:Lorg/eclipse/mat/snapshot/model/IInstance;
    :cond_9
    const-string v2, "^.+\\$\\d+$"

    invoke-virtual {v6, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 336
    invoke-interface {v14}, Lorg/eclipse/mat/snapshot/model/IClass;->getSuperClass()Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/mat/snapshot/model/IClass;->getName()Ljava/lang/String;

    move-result-object v24

    .line 337
    .local v24, parentClassName:Ljava/lang/String;
    const-class v2, Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 338
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 343
    .restart local v5       #holderType:Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    :try_start_0
    invoke-interface {v14}, Lorg/eclipse/mat/snapshot/model/IClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    .line 344
    .local v9, actualClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v9}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v2

    const/16 v28, 0x0

    aget-object v19, v2, v28

    .line 345
    .local v19, implementedInterface:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "(anonymous class implements "

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v28, ")"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_6

    .line 349
    .end local v5           #holderType:Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v9           #actualClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v19           #implementedInterface:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_a
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .line 351
    .restart local v5       #holderType:Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "(anonymous class extends "

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v28, ")"

    move-object/from16 v0, v28

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    .line 354
    .end local v5           #holderType:Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    .end local v24           #parentClassName:Ljava/lang/String;
    :cond_b
    sget-object v5, Lcom/squareup/leakcanary/LeakTraceElement$Holder;->OBJECT:Lcom/squareup/leakcanary/LeakTraceElement$Holder;

    .restart local v5       #holderType:Lcom/squareup/leakcanary/LeakTraceElement$Holder;
    goto :goto_6

    .line 346
    .restart local v24       #parentClassName:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_6
.end method

.method private buildLeakTrace(Lorg/eclipse/mat/snapshot/ISnapshot;Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;Lcom/squareup/leakcanary/ExcludedRefs;)Lcom/squareup/leakcanary/LeakTrace;
    .locals 6
    .parameter "snapshot"
    .parameter "tree"
    .parameter "excludedRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v1, elements:Ljava/util/List;,"Ljava/util/List<Lcom/squareup/leakcanary/LeakTraceElement;>;"
    const/4 v2, 0x0

    .line 265
    .local v2, held:Lorg/eclipse/mat/snapshot/model/IObject;
    :goto_0
    if-eqz p2, :cond_1

    .line 266
    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;->getOwnId()I

    move-result v4

    invoke-interface {p1, v4}, Lorg/eclipse/mat/snapshot/ISnapshot;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v3

    .line 267
    .local v3, holder:Lorg/eclipse/mat/snapshot/model/IObject;
    invoke-direct {p0, v2, v3, p3}, Lcom/squareup/leakcanary/HeapAnalyzer;->buildLeakElement(Lorg/eclipse/mat/snapshot/model/IObject;Lorg/eclipse/mat/snapshot/model/IObject;Lcom/squareup/leakcanary/ExcludedRefs;)Lcom/squareup/leakcanary/LeakTraceElement;

    move-result-object v4

    invoke-interface {v1, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 268
    move-object v2, v3

    .line 269
    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;->getObjectIds()[I

    move-result-object v0

    .line 270
    .local v0, branchIds:[I
    array-length v4, v0

    if-lez v4, :cond_0

    aget v4, v0, v5

    invoke-virtual {p2, v4}, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;->getBranch(I)Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;

    move-result-object p2

    .line 271
    :goto_1
    goto :goto_0

    .line 270
    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    .line 272
    .end local v0           #branchIds:[I
    .end local v3           #holder:Lorg/eclipse/mat/snapshot/model/IObject;
    :cond_1
    new-instance v4, Lcom/squareup/leakcanary/LeakTrace;

    invoke-direct {v4, v1}, Lcom/squareup/leakcanary/LeakTrace;-><init>(Ljava/util/List;)V

    return-object v4
.end method

.method private cleanup(Ljava/io/File;Lorg/eclipse/mat/snapshot/ISnapshot;)V
    .locals 10
    .parameter "heapDumpFile"
    .parameter "snapshot"

    .prologue
    .line 369
    if-eqz p2, :cond_0

    .line 370
    invoke-interface {p2}, Lorg/eclipse/mat/snapshot/ISnapshot;->dispose()V

    .line 372
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 373
    .local v2, heapDumpFileName:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    const-string v9, ".hprof"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 375
    .local v5, prefix:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    new-instance v8, Lcom/squareup/leakcanary/HeapAnalyzer$1;

    invoke-direct {v8, p0, v5, v2}, Lcom/squareup/leakcanary/HeapAnalyzer$1;-><init>(Lcom/squareup/leakcanary/HeapAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v6

    .line 381
    .local v6, toRemove:[Ljava/io/File;
    if-eqz v6, :cond_1

    .line 382
    move-object v0, v6

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 383
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 382
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 386
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    const-string v7, "HeapAnalyzer"

    const-string v8, "Could not find HAHA files to cleanup."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_2
    return-void
.end method

.method private fieldToString(Lorg/eclipse/mat/snapshot/model/Field;)Ljava/lang/String;
    .locals 3
    .parameter "field"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p1}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 362
    .local v0, value:Ljava/lang/Object;
    instance-of v1, v0, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    if-eqz v1, :cond_0

    .line 363
    check-cast v0, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    .end local v0           #value:Ljava/lang/Object;
    invoke-virtual {v0}, Lorg/eclipse/mat/snapshot/model/ObjectReference;->getObject()Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v0

    .line 365
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/eclipse/mat/snapshot/model/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private findHeldInHolder(Lorg/eclipse/mat/snapshot/model/IObject;Lorg/eclipse/mat/snapshot/model/IObject;Lcom/squareup/leakcanary/ExcludedRefs;)Lorg/eclipse/mat/snapshot/model/NamedReference;
    .locals 6
    .parameter "held"
    .parameter "holder"
    .parameter "excludedRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 247
    if-nez p1, :cond_1

    move-object v1, v3

    .line 257
    :cond_0
    :goto_0
    return-object v1

    .line 250
    :cond_1
    iget-object v4, p3, Lcom/squareup/leakcanary/ExcludedRefs;->excludeFieldMap:Ljava/util/Map;

    invoke-interface {p2}, Lorg/eclipse/mat/snapshot/model/IObject;->getClazz()Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/mat/snapshot/model/IClass;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 251
    .local v0, excludedFields:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p2}, Lorg/eclipse/mat/snapshot/model/IObject;->getOutboundReferences()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/snapshot/model/NamedReference;

    .line 252
    .local v1, holdingRef:Lorg/eclipse/mat/snapshot/model/NamedReference;
    invoke-virtual {v1}, Lorg/eclipse/mat/snapshot/model/NamedReference;->getObjectId()I

    move-result v4

    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/model/IObject;->getObjectId()I

    move-result v5

    if-ne v4, v5, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lorg/eclipse/mat/snapshot/model/NamedReference;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_0

    .end local v1           #holdingRef:Lorg/eclipse/mat/snapshot/model/NamedReference;
    :cond_3
    move-object v1, v3

    .line 257
    goto :goto_0
.end method

.method private findLeakTrace(JLorg/eclipse/mat/snapshot/ISnapshot;Lorg/eclipse/mat/snapshot/model/IObject;Ljava/lang/String;Z)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 7
    .parameter "analysisStartNanoTime"
    .parameter "snapshot"
    .parameter "leakingRef"
    .parameter "className"
    .parameter "excludingKnownLeaks"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 122
    if-eqz p6, :cond_0

    iget-object v0, p0, Lcom/squareup/leakcanary/HeapAnalyzer;->excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    .line 124
    .local v0, excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;
    :goto_0
    invoke-direct {p0, p3, p4, v0}, Lcom/squareup/leakcanary/HeapAnalyzer;->shortestPathToGcRoots(Lorg/eclipse/mat/snapshot/ISnapshot;Lorg/eclipse/mat/snapshot/model/IObject;Lcom/squareup/leakcanary/ExcludedRefs;)Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;

    move-result-object v1

    .line 127
    .local v1, gcRootsTree:Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;
    if-nez v1, :cond_1

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/squareup/leakcanary/AnalysisResult;->noLeak(J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v3

    .line 133
    :goto_1
    return-object v3

    .line 122
    .end local v0           #excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;
    .end local v1           #gcRootsTree:Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;
    :cond_0
    iget-object v0, p0, Lcom/squareup/leakcanary/HeapAnalyzer;->baseExcludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;

    goto :goto_0

    .line 131
    .restart local v0       #excludedRefs:Lcom/squareup/leakcanary/ExcludedRefs;
    .restart local v1       #gcRootsTree:Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;
    :cond_1
    invoke-direct {p0, p3, v1, v0}, Lcom/squareup/leakcanary/HeapAnalyzer;->buildLeakTrace(Lorg/eclipse/mat/snapshot/ISnapshot;Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;Lcom/squareup/leakcanary/ExcludedRefs;)Lcom/squareup/leakcanary/LeakTrace;

    move-result-object v2

    .line 133
    .local v2, leakTrace:Lcom/squareup/leakcanary/LeakTrace;
    if-nez p6, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v4

    invoke-static {v3, p5, v2, v4, v5}, Lcom/squareup/leakcanary/AnalysisResult;->leakDetected(ZLjava/lang/String;Lcom/squareup/leakcanary/LeakTrace;J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2
.end method

.method private findLeakingReference(Ljava/lang/String;Lorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IObject;
    .locals 12
    .parameter "key"
    .parameter "snapshot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 144
    const-class v9, Lcom/squareup/leakcanary/KeyedWeakReference;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {p2, v9, v10}, Lorg/eclipse/mat/snapshot/ISnapshot;->getClassesByName(Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v5

    .line 147
    .local v5, refClasses:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_0

    .line 148
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Expecting one class for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-class v11, Lcom/squareup/leakcanary/KeyedWeakReference;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 152
    :cond_0
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 154
    .local v4, refClass:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v4}, Lorg/eclipse/mat/snapshot/model/IClass;->getObjectIds()[I

    move-result-object v8

    .line 156
    .local v8, weakRefInstanceIds:[I
    move-object v0, v8

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget v7, v0, v1

    .line 157
    .local v7, weakRefInstanceId:I
    invoke-interface {p2, v7}, Lorg/eclipse/mat/snapshot/ISnapshot;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v6

    .line 158
    .local v6, weakRef:Lorg/eclipse/mat/snapshot/model/IObject;
    const-string v9, "key"

    invoke-interface {v6, v9}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/mat/snapshot/model/IObject;

    const/16 v10, 0x64

    invoke-static {v9, v10}, Lorg/eclipse/mat/snapshot/model/PrettyPrinter;->objectAsString(Lorg/eclipse/mat/snapshot/model/IObject;I)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, keyCandidate:Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 161
    const-string v9, "referent"

    invoke-interface {v6, v9}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/mat/snapshot/model/IObject;

    return-object v9

    .line 156
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v2           #keyCandidate:Ljava/lang/String;
    .end local v6           #weakRef:Lorg/eclipse/mat/snapshot/model/IObject;
    .end local v7           #weakRefInstanceId:I
    :cond_2
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Could not find weak reference with key "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method private getThreadName(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    .locals 2
    .parameter "thread"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 242
    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/IObject;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Lorg/eclipse/mat/snapshot/model/PrettyPrinter;->objectAsString(Lorg/eclipse/mat/snapshot/model/IObject;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private openSnapshot(Ljava/io/File;)Lorg/eclipse/mat/snapshot/ISnapshot;
    .locals 4
    .parameter "heapDumpFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 137
    new-instance v1, Lorg/eclipse/mat/parser/internal/SnapshotFactory;

    invoke-direct {v1}, Lorg/eclipse/mat/parser/internal/SnapshotFactory;-><init>()V

    .line 138
    .local v1, factory:Lorg/eclipse/mat/parser/internal/SnapshotFactory;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 139
    .local v0, args:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/eclipse/mat/util/VoidProgressListener;

    invoke-direct {v2}, Lorg/eclipse/mat/util/VoidProgressListener;-><init>()V

    .line 140
    .local v2, listener:Lorg/eclipse/mat/util/VoidProgressListener;
    invoke-virtual {v1, p1, v0, v2}, Lorg/eclipse/mat/parser/internal/SnapshotFactory;->openSnapshot(Ljava/io/File;Ljava/util/Map;Lorg/eclipse/mat/util/IProgressListener;)Lorg/eclipse/mat/snapshot/ISnapshot;

    move-result-object v3

    return-object v3
.end method

.method private shortestPathToGcRoots(Lorg/eclipse/mat/snapshot/ISnapshot;Lorg/eclipse/mat/snapshot/model/IObject;Lcom/squareup/leakcanary/ExcludedRefs;)Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;
    .locals 3
    .parameter "snapshot"
    .parameter "leakingRef"
    .parameter "excludedRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v2, p3, Lcom/squareup/leakcanary/ExcludedRefs;->excludeFieldMap:Ljava/util/Map;

    invoke-direct {p0, p1, v2}, Lcom/squareup/leakcanary/HeapAnalyzer;->buildClassExcludeMap(Lorg/eclipse/mat/snapshot/ISnapshot;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 172
    .local v0, excludeMap:Ljava/util/Map;,"Ljava/util/Map<Lorg/eclipse/mat/snapshot/model/IClass;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-interface {p2}, Lorg/eclipse/mat/snapshot/model/IObject;->getObjectId()I

    move-result v2

    invoke-interface {p1, v2, v0}, Lorg/eclipse/mat/snapshot/ISnapshot;->getPathsFromGCRoots(ILjava/util/Map;)Lorg/eclipse/mat/snapshot/IPathsFromGCRootsComputer;

    move-result-object v1

    .line 175
    .local v1, pathComputer:Lorg/eclipse/mat/snapshot/IPathsFromGCRootsComputer;
    invoke-direct {p0, p1, v1, p3}, Lcom/squareup/leakcanary/HeapAnalyzer;->shortestValidPath(Lorg/eclipse/mat/snapshot/ISnapshot;Lorg/eclipse/mat/snapshot/IPathsFromGCRootsComputer;Lcom/squareup/leakcanary/ExcludedRefs;)Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;

    move-result-object v2

    return-object v2
.end method

.method private shortestValidPath(Lorg/eclipse/mat/snapshot/ISnapshot;Lorg/eclipse/mat/snapshot/IPathsFromGCRootsComputer;Lcom/squareup/leakcanary/ExcludedRefs;)Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;
    .locals 4
    .parameter "snapshot"
    .parameter "pathComputer"
    .parameter "excludedRefs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 194
    iget-object v3, p3, Lcom/squareup/leakcanary/ExcludedRefs;->excludeStaticFieldMap:Ljava/util/Map;

    invoke-direct {p0, p1, v3}, Lcom/squareup/leakcanary/HeapAnalyzer;->buildClassExcludeMap(Lorg/eclipse/mat/snapshot/ISnapshot;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 199
    .local v0, excludedStaticFields:Ljava/util/Map;,"Ljava/util/Map<Lorg/eclipse/mat/snapshot/model/IClass;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_0
    invoke-interface {p2}, Lorg/eclipse/mat/snapshot/IPathsFromGCRootsComputer;->getNextShortestPath()[I

    move-result-object v1

    .local v1, shortestPath:[I
    if-eqz v1, :cond_1

    .line 200
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/eclipse/mat/snapshot/IPathsFromGCRootsComputer;->getTree(Ljava/util/Collection;)Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;

    move-result-object v2

    .line 201
    .local v2, tree:Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;
    invoke-direct {p0, p1, v2, v0, p3}, Lcom/squareup/leakcanary/HeapAnalyzer;->validPath(Lorg/eclipse/mat/snapshot/ISnapshot;Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;Ljava/util/Map;Lcom/squareup/leakcanary/ExcludedRefs;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    .end local v2           #tree:Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private since(J)J
    .locals 5
    .parameter "analysisStartNanoTime"

    .prologue
    .line 391
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private validPath(Lorg/eclipse/mat/snapshot/ISnapshot;Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;Ljava/util/Map;Lcom/squareup/leakcanary/ExcludedRefs;)Z
    .locals 10
    .parameter "snapshot"
    .parameter "tree"
    .parameter
    .parameter "excludedRefs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/snapshot/ISnapshot;",
            "Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;",
            "Ljava/util/Map",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/squareup/leakcanary/ExcludedRefs;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .local p3, excludedStaticFields:Ljava/util/Map;,"Ljava/util/Map<Lorg/eclipse/mat/snapshot/model/IClass;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 212
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p4, Lcom/squareup/leakcanary/ExcludedRefs;->excludedThreads:Ljava/util/Set;

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 238
    :cond_0
    :goto_0
    return v6

    .line 216
    :cond_1
    const/4 v3, 0x0

    .line 217
    .local v3, held:Lorg/eclipse/mat/snapshot/model/IObject;
    :goto_1
    if-eqz p2, :cond_0

    .line 218
    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;->getOwnId()I

    move-result v8

    invoke-interface {p1, v8}, Lorg/eclipse/mat/snapshot/ISnapshot;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v4

    .line 220
    .local v4, holder:Lorg/eclipse/mat/snapshot/model/IObject;
    instance-of v8, v4, Lorg/eclipse/mat/snapshot/model/IClass;

    if-eqz v8, :cond_2

    move-object v1, v4

    .line 221
    check-cast v1, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 222
    .local v1, childClass:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 223
    .local v2, childClassExcludedFields:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_3

    .line 224
    invoke-direct {p0, v3, v4, p4}, Lcom/squareup/leakcanary/HeapAnalyzer;->findHeldInHolder(Lorg/eclipse/mat/snapshot/model/IObject;Lorg/eclipse/mat/snapshot/model/IObject;Lcom/squareup/leakcanary/ExcludedRefs;)Lorg/eclipse/mat/snapshot/model/NamedReference;

    move-result-object v5

    .line 225
    .local v5, ref:Lorg/eclipse/mat/snapshot/model/NamedReference;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lorg/eclipse/mat/snapshot/model/NamedReference;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v6, v7

    .line 226
    goto :goto_0

    .line 229
    .end local v1           #childClass:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v2           #childClassExcludedFields:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #ref:Lorg/eclipse/mat/snapshot/model/NamedReference;
    :cond_2
    invoke-interface {v4}, Lorg/eclipse/mat/snapshot/model/IObject;->getClazz()Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v8

    const-class v9, Ljava/lang/Thread;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/eclipse/mat/snapshot/model/IClass;->doesExtend(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 230
    iget-object v8, p4, Lcom/squareup/leakcanary/ExcludedRefs;->excludedThreads:Ljava/util/Set;

    invoke-direct {p0, v4}, Lcom/squareup/leakcanary/HeapAnalyzer;->getThreadName(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v6, v7

    .line 231
    goto :goto_0

    .line 234
    :cond_3
    move-object v3, v4

    .line 235
    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;->getObjectIds()[I

    move-result-object v0

    .line 236
    .local v0, branchIds:[I
    array-length v8, v0

    if-lez v8, :cond_4

    aget v8, v0, v7

    invoke-virtual {p2, v8}, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;->getBranch(I)Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;

    move-result-object p2

    .line 237
    :goto_2
    goto :goto_1

    .line 236
    :cond_4
    const/4 p2, 0x0

    goto :goto_2
.end method


# virtual methods
.method public checkForLeak(Ljava/io/File;Ljava/lang/String;)Lcom/squareup/leakcanary/AnalysisResult;
    .locals 12
    .parameter "heapDumpFile"
    .parameter "referenceKey"

    .prologue
    .line 84
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 86
    .local v2, analysisStartNanoTime:J
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 87
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "File does not exist: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .local v8, exception:Ljava/lang/Exception;
    invoke-direct {p0, v2, v3}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v10

    invoke-static {v8, v10, v11}, Lcom/squareup/leakcanary/AnalysisResult;->failure(Ljava/lang/Exception;J)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v9

    .line 115
    .end local v8           #exception:Ljava/lang/Exception;
    :goto_0
    return-object v9

    .line 91
    :cond_0
    const/4 v4, 0x0

    .line 93
    .local v4, snapshot:Lorg/eclipse/mat/snapshot/ISnapshot;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/squareup/leakcanary/HeapAnalyzer;->openSnapshot(Ljava/io/File;)Lorg/eclipse/mat/snapshot/ISnapshot;

    move-result-object v4

    .line 95
    invoke-direct {p0, p2, v4}, Lcom/squareup/leakcanary/HeapAnalyzer;->findLeakingReference(Ljava/lang/String;Lorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v5

    .line 98
    .local v5, leakingRef:Lorg/eclipse/mat/snapshot/model/IObject;
    if-nez v5, :cond_1

    .line 99
    invoke-direct {p0, v2, v3}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/squareup/leakcanary/AnalysisResult;->noLeak(J)Lcom/squareup/leakcanary/AnalysisResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 115
    invoke-direct {p0, p1, v4}, Lcom/squareup/leakcanary/HeapAnalyzer;->cleanup(Ljava/io/File;Lorg/eclipse/mat/snapshot/ISnapshot;)V

    goto :goto_0

    .line 102
    :cond_1
    :try_start_1
    invoke-interface {v5}, Lorg/eclipse/mat/snapshot/model/IObject;->getClazz()Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/model/IClass;->getName()Ljava/lang/String;

    move-result-object v6

    .line 104
    .local v6, className:Ljava/lang/String;
    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/squareup/leakcanary/HeapAnalyzer;->findLeakTrace(JLorg/eclipse/mat/snapshot/ISnapshot;Lorg/eclipse/mat/snapshot/model/IObject;Ljava/lang/String;Z)Lcom/squareup/leakcanary/AnalysisResult;

    move-result-object v9

    .line 107
    .local v9, result:Lcom/squareup/leakcanary/AnalysisResult;
    iget-boolean v1, v9, Lcom/squareup/leakcanary/AnalysisResult;->leakFound:Z

    if-nez v1, :cond_2

    .line 108
    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/squareup/leakcanary/HeapAnalyzer;->findLeakTrace(JLorg/eclipse/mat/snapshot/ISnapshot;Lorg/eclipse/mat/snapshot/model/IObject;Ljava/lang/String;Z)Lcom/squareup/leakcanary/AnalysisResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 115
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/squareup/leakcanary/HeapAnalyzer;->cleanup(Ljava/io/File;Lorg/eclipse/mat/snapshot/ISnapshot;)V

    goto :goto_0

    .line 112
    .end local v5           #leakingRef:Lorg/eclipse/mat/snapshot/model/IObject;
    .end local v6           #className:Ljava/lang/String;
    .end local v9           #result:Lcom/squareup/leakcanary/AnalysisResult;
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-direct {p0, v2, v3}, Lcom/squareup/leakcanary/HeapAnalyzer;->since(J)J

    move-result-wide v10

    invoke-static {v0, v10, v11}, Lcom/squareup/leakcanary/AnalysisResult;->failure(Ljava/lang/Exception;J)Lcom/squareup/leakcanary/AnalysisResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    .line 115
    invoke-direct {p0, p1, v4}, Lcom/squareup/leakcanary/HeapAnalyzer;->cleanup(Ljava/io/File;Lorg/eclipse/mat/snapshot/ISnapshot;)V

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    invoke-direct {p0, p1, v4}, Lcom/squareup/leakcanary/HeapAnalyzer;->cleanup(Ljava/io/File;Lorg/eclipse/mat/snapshot/ISnapshot;)V

    throw v1
.end method
