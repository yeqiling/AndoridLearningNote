.class Lorg/eclipse/mat/parser/internal/GarbageCleaner;
.super Ljava/lang/Object;
.source "GarbageCleaner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/parser/internal/GarbageCleaner$KeyWriterImpl;,
        Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIntIterator;,
        Lorg/eclipse/mat/parser/internal/GarbageCleaner$NewObjectIterator;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    return-void
.end method

.method public static clean(Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;Ljava/util/Map;Lorg/eclipse/mat/util/IProgressListener;)[I
    .locals 57
    .parameter "idx"
    .parameter "builder"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;",
            "Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/eclipse/mat/util/IProgressListener;",
            ")[I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    .local p2, arguments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v22, Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-direct/range {v22 .. v22}, Lorg/eclipse/mat/parser/index/IndexManager;-><init>()V

    .line 47
    .local v22, idxManager:Lorg/eclipse/mat/parser/index/IndexManager;
    :try_start_0
    sget-object v53, Lorg/eclipse/mat/hprof/Messages;->GarbageCleaner_RemovingUnreachableObjects:Lorg/eclipse/mat/hprof/Messages;

    const/16 v54, 0xb

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    move/from16 v2, v54

    invoke-interface {v0, v1, v2}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Lorg/eclipse/mat/hprof/Messages;I)V

    .line 48
    sget-object v53, Lorg/eclipse/mat/hprof/Messages;->GarbageCleaner_SearchingForUnreachableObjects:Lorg/eclipse/mat/hprof/Messages;

    move-object/from16 v0, v53

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    move-object/from16 v53, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->subTask(Ljava/lang/String;)V

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->identifiers:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-object/from16 v53, v0

    invoke-interface/range {v53 .. v53}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->size()I

    move-result v40

    .line 53
    .local v40, oldNoOfObjects:I
    move/from16 v0, v40

    new-array v0, v0, [Z

    move-object/from16 v43, v0

    .line 54
    .local v43, reachable:[Z
    const/16 v35, 0x0

    .line 55
    .local v35, newNoOfObjects:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->gcRoots:Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Lorg/eclipse/mat/collect/HashMapIntObject;->getAllKeys()[I

    move-result-object v37

    .line 57
    .local v37, newRoots:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->identifiers:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-object/from16 v21, v0

    .line 58
    .local v21, identifiers:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-object/from16 v42, v0

    .line 59
    .local v42, preOutbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->object2classId:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-object/from16 v39, v0

    .line 60
    .local v39, object2classId:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->classesById:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 66
    .local v14, classesById:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v53

    invoke-virtual/range {v53 .. v53}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v38

    .line 67
    .local v38, numProcessors:I
    new-instance v34, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;

    new-instance v53, Lorg/eclipse/mat/util/SilentProgressListener;

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/eclipse/mat/util/SilentProgressListener;-><init>(Lorg/eclipse/mat/util/IProgressListener;)V

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    move-object/from16 v2, v43

    move-object/from16 v3, v42

    move-object/from16 v4, v53

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;-><init>([I[ZLorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;Lorg/eclipse/mat/util/IProgressListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .local v34, marker:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;
    const/16 v53, 0x1

    move/from16 v0, v38

    move/from16 v1, v53

    if-le v0, v1, :cond_2

    .line 71
    :try_start_1
    move-object/from16 v0, v34

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->markMultiThreaded(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    move-object/from16 v7, v43

    .local v7, arr$:[Z
    :try_start_2
    array-length v0, v7

    move/from16 v32, v0

    .local v32, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v32

    if-ge v0, v1, :cond_3

    aget-boolean v10, v7, v19

    .line 80
    .local v10, b:Z
    if-eqz v10, :cond_0

    add-int/lit8 v35, v35, 0x1

    .line 79
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 72
    .end local v7           #arr$:[Z
    .end local v10           #b:Z
    .end local v19           #i$:I
    .end local v32           #len$:I
    :catch_0
    move-exception v17

    .line 73
    .local v17, e:Ljava/lang/InterruptedException;
    new-instance v26, Ljava/io/IOException;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, v26

    move-object/from16 v1, v53

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 74
    .local v26, ioe:Ljava/io/IOException;
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 75
    throw v26
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    .end local v14           #classesById:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    .end local v17           #e:Ljava/lang/InterruptedException;
    .end local v21           #identifiers:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    .end local v26           #ioe:Ljava/io/IOException;
    .end local v34           #marker:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;
    .end local v35           #newNoOfObjects:I
    .end local v37           #newRoots:[I
    .end local v38           #numProcessors:I
    .end local v39           #object2classId:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    .end local v40           #oldNoOfObjects:I
    .end local v42           #preOutbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    .end local v43           #reachable:[Z
    :catchall_0
    move-exception v53

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->delete()V

    .line 353
    if-eqz v22, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v54

    if-eqz v54, :cond_1

    invoke-virtual/range {v22 .. v22}, Lorg/eclipse/mat/parser/index/IndexManager;->delete()V

    :cond_1
    throw v53

    .line 83
    .restart local v14       #classesById:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    .restart local v21       #identifiers:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    .restart local v34       #marker:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;
    .restart local v35       #newNoOfObjects:I
    .restart local v37       #newRoots:[I
    .restart local v38       #numProcessors:I
    .restart local v39       #object2classId:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    .restart local v40       #oldNoOfObjects:I
    .restart local v42       #preOutbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    .restart local v43       #reachable:[Z
    :cond_2
    :try_start_3
    invoke-virtual/range {v34 .. v34}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->markSingleThreaded()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v35

    .line 89
    :cond_3
    const/16 v34, 0x0

    .line 95
    move/from16 v0, v35

    move/from16 v1, v40

    if-ge v0, v1, :cond_4

    .line 96
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v53

    const-string v54, "keep_unreachable_objects"

    invoke-virtual/range {v53 .. v54}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getProperty(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v50

    .line 97
    .local v50, un:Ljava/io/Serializable;
    move-object/from16 v0, v50

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v53, v0

    if-eqz v53, :cond_4

    .line 99
    check-cast v50, Ljava/lang/Integer;

    .end local v50           #un:Ljava/io/Serializable;
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v36

    .line 100
    .local v36, newRoot:I
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v35

    move/from16 v3, v36

    move-object/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lorg/eclipse/mat/parser/internal/GarbageCleaner;->markUnreachbleAsGCRoots(Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;[ZIILorg/eclipse/mat/util/IProgressListener;)V

    .line 101
    move/from16 v35, v40

    .line 109
    .end local v36           #newRoot:I
    :cond_4
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v53

    if-eqz v53, :cond_6

    new-instance v53, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v53 .. v53}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v53
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 84
    :catch_1
    move-exception v17

    .line 86
    .local v17, e:Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;
    const/16 v33, 0x0

    .line 351
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->delete()V

    .line 353
    if-eqz v22, :cond_5

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v53

    if-eqz v53, :cond_5

    invoke-virtual/range {v22 .. v22}, Lorg/eclipse/mat/parser/index/IndexManager;->delete()V

    .end local v17           #e:Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;
    :cond_5
    :goto_1
    return-object v33

    .line 110
    :cond_6
    const/16 v53, 0x1

    :try_start_5
    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 111
    sget-object v53, Lorg/eclipse/mat/hprof/Messages;->GarbageCleaner_ReIndexingObjects:Lorg/eclipse/mat/hprof/Messages;

    move-object/from16 v0, v53

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    move-object/from16 v53, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->subTask(Ljava/lang/String;)V

    .line 114
    move/from16 v0, v40

    new-array v0, v0, [I

    move-object/from16 v33, v0

    .line 115
    .local v33, map:[I
    move/from16 v0, v35

    new-array v0, v0, [J

    move-object/from16 v20, v0

    .line 117
    .local v20, id2a:[J
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v13, classes2remove:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->array2size:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-object/from16 v41, v0

    .line 121
    .local v41, preA2size:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    const/16 v23, 0x0

    .local v23, ii:I
    const/16 v29, 0x0

    .local v29, jj:I
    move/from16 v30, v29

    .end local v29           #jj:I
    .local v30, jj:I
    :goto_2
    move/from16 v0, v23

    move/from16 v1, v40

    if-ge v0, v1, :cond_a

    .line 122
    aget-boolean v53, v43, v23

    if-eqz v53, :cond_7

    .line 123
    aput v30, v33, v23

    .line 124
    add-int/lit8 v29, v30, 0x1

    .end local v30           #jj:I
    .restart local v29       #jj:I
    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->get(I)J

    move-result-wide v54

    aput-wide v54, v20, v30

    .line 121
    :goto_3
    add-int/lit8 v23, v23, 0x1

    move/from16 v30, v29

    .end local v29           #jj:I
    .restart local v30       #jj:I
    goto :goto_2

    .line 126
    :cond_7
    const/16 v53, -0x1

    aput v53, v33, v23

    .line 128
    move-object/from16 v0, v39

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v12

    .line 129
    .local v12, classId:I
    invoke-virtual {v14, v12}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 131
    .local v16, clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    move-object/from16 v0, v41

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v9

    .line 132
    .local v9, arraySize:I
    if-lez v9, :cond_8

    .line 133
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/eclipse/mat/parser/model/ClassImpl;->removeInstance(I)V

    move/from16 v29, v30

    .end local v30           #jj:I
    .restart local v29       #jj:I
    goto :goto_3

    .line 138
    .end local v29           #jj:I
    .restart local v30       #jj:I
    :cond_8
    move/from16 v0, v23

    invoke-virtual {v14, v0}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 140
    .local v11, c:Lorg/eclipse/mat/parser/model/ClassImpl;
    if-nez v11, :cond_9

    .line 141
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/parser/model/ClassImpl;->getHeapSizePerInstance()I

    move-result v53

    move-object/from16 v0, v16

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/model/ClassImpl;->removeInstance(I)V

    move/from16 v29, v30

    .end local v30           #jj:I
    .restart local v29       #jj:I
    goto :goto_3

    .line 143
    .end local v29           #jj:I
    .restart local v30       #jj:I
    :cond_9
    invoke-virtual {v11}, Lorg/eclipse/mat/parser/model/ClassImpl;->getUsedHeapSize()I

    move-result v53

    move-object/from16 v0, v16

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/model/ClassImpl;->removeInstance(I)V

    .line 144
    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move/from16 v29, v30

    .end local v30           #jj:I
    .restart local v29       #jj:I
    goto :goto_3

    .line 152
    .end local v9           #arraySize:I
    .end local v11           #c:Lorg/eclipse/mat/parser/model/ClassImpl;
    .end local v12           #classId:I
    .end local v16           #clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    .end local v29           #jj:I
    .restart local v30       #jj:I
    :cond_a
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_b
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_c

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 153
    .restart local v11       #c:Lorg/eclipse/mat/parser/model/ClassImpl;
    invoke-virtual {v11}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectId()I

    move-result v53

    move/from16 v0, v53

    invoke-virtual {v14, v0}, Lorg/eclipse/mat/collect/HashMapIntObject;->remove(I)Ljava/lang/Object;

    .line 155
    invoke-virtual {v11}, Lorg/eclipse/mat/parser/model/ClassImpl;->getSuperClassId()I

    move-result v53

    move/from16 v0, v53

    invoke-virtual {v14, v0}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 156
    .local v46, superclass:Lorg/eclipse/mat/parser/model/ClassImpl;
    if-eqz v46, :cond_b

    move-object/from16 v0, v46

    invoke-virtual {v0, v11}, Lorg/eclipse/mat/parser/model/ClassImpl;->removeSubClass(Lorg/eclipse/mat/parser/model/ClassImpl;)V

    goto :goto_4

    .line 159
    .end local v11           #c:Lorg/eclipse/mat/parser/model/ClassImpl;
    .end local v46           #superclass:Lorg/eclipse/mat/parser/model/ClassImpl;
    :cond_c
    const/16 v43, 0x0

    .line 161
    invoke-interface/range {v21 .. v21}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->close()V

    .line 162
    invoke-interface/range {v21 .. v21}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->delete()V

    .line 163
    const/16 v21, 0x0

    .line 165
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v53

    if-eqz v53, :cond_d

    new-instance v53, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v53 .. v53}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v53

    .line 166
    :cond_d
    const/16 v53, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 167
    sget-object v53, Lorg/eclipse/mat/hprof/Messages;->GarbageCleaner_ReIndexingClasses:Lorg/eclipse/mat/hprof/Messages;

    move-object/from16 v0, v53

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    move-object/from16 v53, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->subTask(Ljava/lang/String;)V

    .line 170
    new-instance v15, Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v14}, Lorg/eclipse/mat/collect/HashMapIntObject;->size()I

    move-result v53

    move/from16 v0, v53

    invoke-direct {v15, v0}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>(I)V

    .line 172
    .local v15, classesByNewId:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    invoke-virtual {v14}, Lorg/eclipse/mat/collect/HashMapIntObject;->values()Ljava/util/Iterator;

    move-result-object v28

    .local v28, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_f

    .line 173
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 174
    .restart local v16       #clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectId()I

    move-result v53

    aget v24, v33, v53

    .line 175
    .local v24, index:I
    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/model/ClassImpl;->setObjectId(I)V

    .line 177
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/parser/model/ClassImpl;->getSuperClassId()I

    move-result v53

    if-ltz v53, :cond_e

    .line 179
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/parser/model/ClassImpl;->getSuperClassId()I

    move-result v53

    aget v53, v33, v53

    move-object/from16 v0, v16

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/model/ClassImpl;->setSuperClassIndex(I)V

    .line 181
    :cond_e
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/parser/model/ClassImpl;->getClassLoaderId()I

    move-result v53

    aget v53, v33, v53

    move-object/from16 v0, v16

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/model/ClassImpl;->setClassLoaderIndex(I)V

    .line 183
    move/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v15, v0, v1}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 186
    .end local v16           #clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    .end local v24           #index:I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v53

    invoke-virtual {v15}, Lorg/eclipse/mat/collect/HashMapIntObject;->size()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setNumberOfClasses(I)V

    .line 188
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v53

    if-eqz v53, :cond_10

    new-instance v53, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v53 .. v53}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v53

    .line 189
    :cond_10
    const/16 v53, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 195
    sget-object v53, Lorg/eclipse/mat/parser/index/IndexManager$Index;->IDENTIFIER:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Lorg/eclipse/mat/parser/index/IndexManager$Index;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v25

    .line 196
    .local v25, indexFile:Ljava/io/File;
    sget-object v53, Lorg/eclipse/mat/hprof/Messages;->GarbageCleaner_Writing:Lorg/eclipse/mat/hprof/Messages;

    const/16 v54, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v56

    aput-object v56, v54, v55

    invoke-static/range {v53 .. v54}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->subTask(Ljava/lang/String;)V

    .line 198
    sget-object v53, Lorg/eclipse/mat/parser/index/IndexManager$Index;->IDENTIFIER:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    new-instance v54, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;

    invoke-direct/range {v54 .. v54}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;-><init>()V

    move-object/from16 v0, v54

    move-object/from16 v1, v25

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->writeTo(Ljava/io/File;[J)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v54

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/parser/index/IndexManager;->setReader(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V

    .line 201
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v53

    if-eqz v53, :cond_11

    new-instance v53, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v53 .. v53}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v53

    .line 202
    :cond_11
    const/16 v53, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 208
    sget-object v53, Lorg/eclipse/mat/parser/index/IndexManager$Index;->O2CLASS:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Lorg/eclipse/mat/parser/index/IndexManager$Index;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v25

    .line 209
    sget-object v53, Lorg/eclipse/mat/hprof/Messages;->GarbageCleaner_Writing:Lorg/eclipse/mat/hprof/Messages;

    const/16 v54, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v56

    aput-object v56, v54, v55

    invoke-static/range {v53 .. v54}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->subTask(Ljava/lang/String;)V

    .line 211
    sget-object v53, Lorg/eclipse/mat/parser/index/IndexManager$Index;->O2CLASS:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    new-instance v54, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-direct/range {v54 .. v54}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;-><init>()V

    new-instance v55, Lorg/eclipse/mat/parser/internal/GarbageCleaner$1;

    move-object/from16 v0, v55

    move-object/from16 v1, v33

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/mat/parser/internal/GarbageCleaner$1;-><init>([ILorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;)V

    move-object/from16 v0, v54

    move-object/from16 v1, v25

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->writeTo(Ljava/io/File;Lorg/eclipse/mat/collect/IteratorInt;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v54

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/parser/index/IndexManager;->setReader(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V

    .line 224
    invoke-interface/range {v39 .. v39}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->close()V

    .line 225
    invoke-interface/range {v39 .. v39}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->delete()V

    .line 226
    const/16 v39, 0x0

    .line 228
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v53

    if-eqz v53, :cond_12

    new-instance v53, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v53 .. v53}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v53

    .line 229
    :cond_12
    const/16 v53, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 235
    sget-object v53, Lorg/eclipse/mat/parser/index/IndexManager$Index;->A2SIZE:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Lorg/eclipse/mat/parser/index/IndexManager$Index;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v25

    .line 236
    sget-object v53, Lorg/eclipse/mat/hprof/Messages;->GarbageCleaner_Writing:Lorg/eclipse/mat/hprof/Messages;

    const/16 v54, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v56

    aput-object v56, v54, v55

    invoke-static/range {v53 .. v54}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->subTask(Ljava/lang/String;)V

    .line 239
    new-instance v8, Lorg/eclipse/mat/collect/BitField;

    move/from16 v0, v35

    invoke-direct {v8, v0}, Lorg/eclipse/mat/collect/BitField;-><init>(I)V

    .line 241
    .local v8, arrayObjects:Lorg/eclipse/mat/collect/BitField;
    sget-object v53, Lorg/eclipse/mat/parser/index/IndexManager$Index;->A2SIZE:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    new-instance v54, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-direct/range {v54 .. v54}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;-><init>()V

    new-instance v55, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;

    move-object/from16 v0, v55

    move-object/from16 v1, v41

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v8, v2}, Lorg/eclipse/mat/parser/internal/GarbageCleaner$2;-><init>(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;Lorg/eclipse/mat/collect/BitField;[I)V

    move-object/from16 v0, v54

    move-object/from16 v1, v25

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->writeTo(Ljava/io/File;Lorg/eclipse/mat/collect/IteratorInt;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v54

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/parser/index/IndexManager;->setReader(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V

    .line 258
    invoke-interface/range {v41 .. v41}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->close()V

    .line 259
    invoke-interface/range {v41 .. v41}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->delete()V

    .line 261
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v53

    if-eqz v53, :cond_13

    new-instance v53, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v53 .. v53}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v53

    .line 262
    :cond_13
    const/16 v53, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 268
    sget-object v53, Lorg/eclipse/mat/hprof/Messages;->GarbageCleaner_ReIndexingOutboundIndex:Lorg/eclipse/mat/hprof/Messages;

    move-object/from16 v0, v53

    iget-object v0, v0, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    move-object/from16 v53, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->subTask(Ljava/lang/String;)V

    .line 270
    new-instance v52, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;

    sget-object v53, Lorg/eclipse/mat/parser/index/IndexManager$Index;->OUTBOUND:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Lorg/eclipse/mat/parser/index/IndexManager$Index;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v53

    move-object/from16 v0, v52

    move/from16 v1, v35

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;-><init>(ILjava/io/File;)V

    .line 273
    .local v52, w_out:Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;
    new-instance v51, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;

    sget-object v53, Lorg/eclipse/mat/parser/index/IndexManager$Index;->INBOUND:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-object/from16 v54, v0

    invoke-virtual/range {v54 .. v54}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v54

    invoke-virtual/range {v53 .. v54}, Lorg/eclipse/mat/parser/index/IndexManager$Index;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v53

    move-object/from16 v0, v51

    move/from16 v1, v35

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;-><init>(ILjava/io/File;)V

    .line 276
    .local v51, w_in:Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;
    const/16 v23, 0x0

    .end local v30           #jj:I
    :goto_6
    move/from16 v0, v23

    move/from16 v1, v40

    if-ge v0, v1, :cond_17

    .line 277
    aget v31, v33, v23

    .line 278
    .local v31, k:I
    if-gez v31, :cond_14

    .line 276
    :goto_7
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 280
    :cond_14
    move-object/from16 v0, v42

    move/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v6

    .line 281
    .local v6, a:[I
    array-length v0, v6

    move/from16 v53, v0

    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v49, v0

    .line 282
    .local v49, tl:[I
    const/16 v29, 0x0

    .restart local v29       #jj:I
    :goto_8
    array-length v0, v6

    move/from16 v53, v0

    move/from16 v0, v29

    move/from16 v1, v53

    if-ge v0, v1, :cond_16

    .line 283
    aget v53, v6, v29

    aget v47, v33, v53

    .line 288
    .local v47, t:I
    aput v47, v49, v29

    .line 289
    if-nez v29, :cond_15

    const/16 v53, 0x1

    :goto_9
    move-object/from16 v0, v51

    move/from16 v1, v47

    move/from16 v2, v31

    move/from16 v3, v53

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->log(IIZ)V

    .line 282
    add-int/lit8 v29, v29, 0x1

    goto :goto_8

    .line 289
    :cond_15
    const/16 v53, 0x0

    goto :goto_9

    .line 292
    .end local v47           #t:I
    :cond_16
    move-object/from16 v0, v52

    move/from16 v1, v31

    move-object/from16 v2, v49

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;->log(I[I)V

    goto :goto_7

    .line 295
    .end local v6           #a:[I
    .end local v29           #jj:I
    .end local v31           #k:I
    .end local v49           #tl:[I
    :cond_17
    invoke-interface/range {v42 .. v42}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->close()V

    .line 296
    invoke-interface/range {v42 .. v42}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->delete()V

    .line 297
    const/16 v42, 0x0

    .line 299
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v53

    if-eqz v53, :cond_18

    .line 300
    invoke-virtual/range {v51 .. v51}, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->cancel()V

    .line 301
    invoke-virtual/range {v52 .. v52}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;->cancel()V

    .line 302
    new-instance v53, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v53 .. v53}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v53

    .line 304
    :cond_18
    const/16 v53, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 306
    sget-object v53, Lorg/eclipse/mat/hprof/Messages;->GarbageCleaner_Writing:Lorg/eclipse/mat/hprof/Messages;

    const/16 v54, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    invoke-virtual/range {v51 .. v51}, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->getIndexFile()Ljava/io/File;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v56

    aput-object v56, v54, v55

    invoke-static/range {v53 .. v54}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->subTask(Ljava/lang/String;)V

    .line 309
    sget-object v53, Lorg/eclipse/mat/parser/index/IndexManager$Index;->INBOUND:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    new-instance v54, Lorg/eclipse/mat/parser/internal/GarbageCleaner$KeyWriterImpl;

    move-object/from16 v0, v54

    invoke-direct {v0, v15}, Lorg/eclipse/mat/parser/internal/GarbageCleaner$KeyWriterImpl;-><init>(Lorg/eclipse/mat/collect/HashMapIntObject;)V

    move-object/from16 v0, v51

    move-object/from16 v1, p3

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->flush(Lorg/eclipse/mat/util/IProgressListener;Lorg/eclipse/mat/parser/index/IndexWriter$KeyWriter;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyObjectsIndex;

    move-result-object v54

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/parser/index/IndexManager;->setReader(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V

    .line 310
    const/16 v51, 0x0

    .line 311
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v53

    if-eqz v53, :cond_19

    .line 312
    invoke-virtual/range {v52 .. v52}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;->cancel()V

    .line 313
    new-instance v53, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v53 .. v53}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v53

    .line 316
    :cond_19
    const/16 v53, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 318
    sget-object v53, Lorg/eclipse/mat/hprof/Messages;->GarbageCleaner_Writing:Lorg/eclipse/mat/hprof/Messages;

    const/16 v54, 0x1

    move/from16 v0, v54

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v54, v0

    const/16 v55, 0x0

    invoke-virtual/range {v52 .. v52}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;->getIndexFile()Ljava/io/File;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v56

    aput-object v56, v54, v55

    invoke-static/range {v53 .. v54}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v53

    move-object/from16 v0, p3

    move-object/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->subTask(Ljava/lang/String;)V

    .line 321
    sget-object v53, Lorg/eclipse/mat/parser/index/IndexManager$Index;->OUTBOUND:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    invoke-virtual/range {v52 .. v52}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NSortedWriter;->flush()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v54

    move-object/from16 v0, v22

    move-object/from16 v1, v53

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/parser/index/IndexManager;->setReader(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V

    .line 322
    const/16 v52, 0x0

    .line 323
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v53

    if-eqz v53, :cond_1a

    new-instance v53, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v53 .. v53}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v53

    .line 324
    :cond_1a
    const/16 v53, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v53

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->gcRoots:Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lorg/eclipse/mat/parser/internal/GarbageCleaner;->fix(Lorg/eclipse/mat/collect/HashMapIntObject;[I)Lorg/eclipse/mat/collect/HashMapIntObject;

    move-result-object v44

    .line 328
    .local v44, roots:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v53

    invoke-virtual/range {v44 .. v44}, Lorg/eclipse/mat/collect/HashMapIntObject;->size()I

    move-result v54

    invoke-virtual/range {v53 .. v54}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setNumberOfGCRoots(I)V

    .line 331
    new-instance v45, Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-direct/range {v45 .. v45}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>()V

    .line 333
    .local v45, rootsPerThread:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->thread2objects2roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Lorg/eclipse/mat/collect/HashMapIntObject;->keys()Lorg/eclipse/mat/collect/IteratorInt;

    move-result-object v27

    .local v27, iter:Lorg/eclipse/mat/collect/IteratorInt;
    :cond_1b
    :goto_a
    invoke-interface/range {v27 .. v27}, Lorg/eclipse/mat/collect/IteratorInt;->hasNext()Z

    move-result v53

    if-eqz v53, :cond_1c

    .line 334
    invoke-interface/range {v27 .. v27}, Lorg/eclipse/mat/collect/IteratorInt;->next()I

    move-result v48

    .line 335
    .local v48, threadId:I
    aget v18, v33, v48

    .line 336
    .local v18, fixedThreadId:I
    if-ltz v18, :cond_1b

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->thread2objects2roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v0, v53

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lorg/eclipse/mat/parser/internal/GarbageCleaner;->fix(Lorg/eclipse/mat/collect/HashMapIntObject;[I)Lorg/eclipse/mat/collect/HashMapIntObject;

    move-result-object v53

    move-object/from16 v0, v45

    move/from16 v1, v18

    move-object/from16 v2, v53

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 342
    .end local v18           #fixedThreadId:I
    .end local v48           #threadId:I
    :cond_1c
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->setIndexManager(Lorg/eclipse/mat/parser/index/IndexManager;)V

    .line 343
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->setClassCache(Lorg/eclipse/mat/collect/HashMapIntObject;)V

    .line 344
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->setArrayObjects(Lorg/eclipse/mat/collect/BitField;)V

    .line 345
    move-object/from16 v0, p1

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->setRoots(Lorg/eclipse/mat/collect/HashMapIntObject;)V

    .line 346
    move-object/from16 v0, p1

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->setRootsPerThread(Lorg/eclipse/mat/collect/HashMapIntObject;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 351
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->delete()V

    .line 353
    if-eqz v22, :cond_5

    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v53

    if-eqz v53, :cond_5

    invoke-virtual/range {v22 .. v22}, Lorg/eclipse/mat/parser/index/IndexManager;->delete()V

    goto/16 :goto_1
.end method

.method private static fix(Lorg/eclipse/mat/collect/HashMapIntObject;[I)Lorg/eclipse/mat/collect/HashMapIntObject;
    .locals 10
    .parameter
    .parameter "map"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;[I)",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<[",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    .local p0, roots:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    new-instance v1, Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {p0}, Lorg/eclipse/mat/collect/HashMapIntObject;->size()I

    move-result v5

    invoke-direct {v1, v5}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>(I)V

    .line 360
    .local v1, answer:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    invoke-virtual {p0}, Lorg/eclipse/mat/collect/HashMapIntObject;->values()Ljava/util/Iterator;

    move-result-object v3

    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 361
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 362
    .local v4, r:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Lorg/eclipse/mat/parser/model/XGCRootInfo;

    .line 363
    .local v0, a:[Lorg/eclipse/mat/parser/model/XGCRootInfo;
    const/4 v2, 0x0

    .local v2, ii:I
    :goto_1
    array-length v5, v0

    if-ge v2, v5, :cond_1

    .line 364
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/mat/parser/model/XGCRootInfo;

    aput-object v5, v0, v2

    .line 365
    aget-object v5, v0, v2

    aget-object v6, v0, v2

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/model/XGCRootInfo;->getObjectId()I

    move-result v6

    aget v6, p1, v6

    invoke-virtual {v5, v6}, Lorg/eclipse/mat/parser/model/XGCRootInfo;->setObjectId(I)V

    .line 366
    aget-object v5, v0, v2

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/model/XGCRootInfo;->getContextAddress()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    aget-object v5, v0, v2

    aget-object v6, v0, v2

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/model/XGCRootInfo;->getContextId()I

    move-result v6

    aget v6, p1, v6

    invoke-virtual {v5, v6}, Lorg/eclipse/mat/parser/model/XGCRootInfo;->setContextId(I)V

    .line 363
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 369
    :cond_1
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/model/XGCRootInfo;->getObjectId()I

    move-result v5

    invoke-virtual {v1, v5, v0}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 371
    .end local v0           #a:[Lorg/eclipse/mat/parser/model/XGCRootInfo;
    .end local v2           #ii:I
    .end local v4           #r:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    :cond_2
    return-object v1
.end method

.method private static markUnreachbleAsGCRoots(Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;[ZIILorg/eclipse/mat/util/IProgressListener;)V
    .locals 24
    .parameter "idx"
    .parameter "reachable"
    .parameter "noReachableObjects"
    .parameter "extraRootType"
    .parameter "listener"

    .prologue
    .line 507
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    .line 508
    .local v18, noOfObjects:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->identifiers:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    .line 509
    .local v12, identifiers:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-object/from16 v21, v0

    .line 511
    .local v21, preOutbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    const/4 v6, 0x1

    new-array v0, v6, [I

    move-object/from16 v22, v0

    .line 512
    .local v22, root:[I
    new-instance v17, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;

    new-instance v6, Lorg/eclipse/mat/util/SilentProgressListener;

    move-object/from16 v0, p4

    invoke-direct {v6, v0}, Lorg/eclipse/mat/util/SilentProgressListener;-><init>(Lorg/eclipse/mat/util/IProgressListener;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, v21

    invoke-direct {v0, v1, v2, v3, v6}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;-><init>([I[ZLorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;Lorg/eclipse/mat/util/IProgressListener;)V

    .line 516
    .local v17, marker:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;
    move/from16 v0, v18

    new-array v14, v0, [Z

    .line 517
    .local v14, inbounds:[Z
    const/4 v13, 0x0

    .local v13, ii:I
    :goto_0
    move/from16 v0, v18

    if-ge v13, v0, :cond_1

    .line 518
    aget-boolean v6, p1, v13

    if-nez v6, :cond_0

    .line 522
    move-object/from16 v0, v21

    invoke-interface {v0, v13}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v4

    .local v4, arr$:[I
    array-length v15, v4

    .local v15, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    :goto_1
    if-ge v11, v15, :cond_0

    aget v19, v4, v11

    .line 523
    .local v19, out:I
    const/4 v6, 0x1

    aput-boolean v6, v14, v19

    .line 522
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 517
    .end local v4           #arr$:[I
    .end local v11           #i$:I
    .end local v15           #len$:I
    .end local v19           #out:I
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 527
    :cond_1
    const/16 v20, 0x0

    .local v20, pass:I
    :goto_2
    const/4 v6, 0x2

    move/from16 v0, v20

    if-ge v0, v6, :cond_5

    .line 530
    const/4 v13, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v13, v0, :cond_4

    move/from16 v0, p2

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 532
    aget-boolean v6, p1, v13

    if-nez v6, :cond_3

    const/4 v6, 0x1

    move/from16 v0, v20

    if-eq v0, v6, :cond_2

    aget-boolean v6, v14, v13

    if-nez v6, :cond_3

    .line 536
    :cond_2
    const/4 v6, 0x0

    aput v13, v22, v6

    .line 538
    new-instance v5, Lorg/eclipse/mat/parser/model/XGCRootInfo;

    invoke-interface {v12, v13}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->get(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    move/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lorg/eclipse/mat/parser/model/XGCRootInfo;-><init>(JJI)V

    .line 539
    .local v5, xgc:Lorg/eclipse/mat/parser/model/XGCRootInfo;
    invoke-virtual {v5, v13}, Lorg/eclipse/mat/parser/model/XGCRootInfo;->setObjectId(I)V

    .line 541
    new-instance v23, Ljava/util/ArrayList;

    const/4 v6, 0x1

    move-object/from16 v0, v23

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 542
    .local v23, xgcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->gcRoots:Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v0, v23

    invoke-virtual {v6, v13, v0}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 545
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->markSingleThreaded()I

    move-result v16

    .line 546
    .local v16, marked:I
    add-int p2, p2, v16

    .line 530
    .end local v5           #xgc:Lorg/eclipse/mat/parser/model/XGCRootInfo;
    .end local v16           #marked:I
    .end local v23           #xgcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 527
    :cond_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 552
    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->gcRoots:Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->setGcRoots(Lorg/eclipse/mat/collect/HashMapIntObject;)V

    .line 553
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->gcRoots:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v7}, Lorg/eclipse/mat/collect/HashMapIntObject;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setNumberOfGCRoots(I)V

    .line 554
    return-void
.end method
