.class public Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;
.super Ljava/lang/Object;
.source "ObjectMarker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;
    }
.end annotation


# instance fields
.field bits:[Z

.field outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

.field progressListener:Lorg/eclipse/mat/util/IProgressListener;

.field roots:[I


# direct methods
.method public constructor <init>([I[ZLorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;Lorg/eclipse/mat/util/IProgressListener;)V
    .locals 0
    .parameter "roots"
    .parameter "bits"
    .parameter "outbound"
    .parameter "progressListener"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->roots:[I

    .line 37
    iput-object p2, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->bits:[Z

    .line 38
    iput-object p3, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    .line 39
    iput-object p4, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    .line 40
    return-void
.end method

.method private refersOnlyThroughExcluded(II[Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;Lorg/eclipse/mat/collect/BitField;Lorg/eclipse/mat/snapshot/ISnapshot;)Z
    .locals 14
    .parameter "referrerId"
    .parameter "referentId"
    .parameter "excludeSets"
    .parameter "excludeObjectsBF"
    .parameter "snapshot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 280
    move-object/from16 v0, p4

    invoke-virtual {v0, p1}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, 0x0

    .line 301
    :goto_0
    return v12

    .line 282
    :cond_0
    move-object/from16 v0, p5

    invoke-interface {v0, p1}, Lorg/eclipse/mat/snapshot/ISnapshot;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v7

    .line 283
    .local v7, referrerObject:Lorg/eclipse/mat/snapshot/model/IObject;
    const/4 v3, 0x0

    .line 284
    .local v3, excludeFields:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v2, p3

    .local v2, arr$:[Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v11, v2, v4

    .line 285
    .local v11, set:Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;
    invoke-virtual {v11, p1}, Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;->contains(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 286
    invoke-virtual {v11}, Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;->getFields()Ljava/util/Set;

    move-result-object v3

    .line 290
    .end local v11           #set:Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;
    :cond_1
    if-nez v3, :cond_3

    const/4 v12, 0x1

    goto :goto_0

    .line 284
    .restart local v11       #set:Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 292
    .end local v11           #set:Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;
    :cond_3
    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-interface {v0, v1}, Lorg/eclipse/mat/snapshot/ISnapshot;->mapIdToAddress(I)J

    move-result-wide v8

    .line 294
    .local v8, referentAddr:J
    invoke-interface {v7}, Lorg/eclipse/mat/snapshot/model/IObject;->getOutboundReferences()Ljava/util/List;

    move-result-object v10

    .line 295
    .local v10, refs:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/NamedReference;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/mat/snapshot/model/NamedReference;

    .line 296
    .local v6, reference:Lorg/eclipse/mat/snapshot/model/NamedReference;
    invoke-virtual {v6}, Lorg/eclipse/mat/snapshot/model/NamedReference;->getObjectAddress()J

    move-result-wide v12

    cmp-long v12, v8, v12

    if-nez v12, :cond_4

    invoke-virtual {v6}, Lorg/eclipse/mat/snapshot/model/NamedReference;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 298
    const/4 v12, 0x0

    goto :goto_0

    .line 301
    .end local v6           #reference:Lorg/eclipse/mat/snapshot/model/NamedReference;
    :cond_5
    const/4 v12, 0x1

    goto :goto_0
.end method


# virtual methods
.method public markMultiThreaded(I)V
    .locals 13
    .parameter "numberOfThreads"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 184
    new-instance v7, Lorg/eclipse/mat/parser/internal/util/IntStack;

    iget-object v10, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->roots:[I

    array-length v10, v10

    invoke-direct {v7, v10}, Lorg/eclipse/mat/parser/internal/util/IntStack;-><init>(I)V

    .line 186
    .local v7, rootsStack:Lorg/eclipse/mat/parser/internal/util/IntStack;
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->roots:[I

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget v6, v0, v4

    .line 187
    .local v6, rootId:I
    iget-object v10, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->bits:[Z

    aget-boolean v10, v10, v6

    if-nez v10, :cond_0

    .line 188
    invoke-virtual {v7, v6}, Lorg/eclipse/mat/parser/internal/util/IntStack;->push(I)V

    .line 189
    iget-object v10, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->bits:[Z

    const/4 v11, 0x1

    aput-boolean v11, v10, v6

    .line 186
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 193
    .end local v6           #rootId:I
    :cond_1
    iget-object v10, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    sget-object v11, Lorg/eclipse/mat/hprof/Messages;->ObjectMarker_CalculateRetainedSize:Lorg/eclipse/mat/hprof/Messages;

    invoke-virtual {v7}, Lorg/eclipse/mat/parser/internal/util/IntStack;->size()I

    move-result v12

    invoke-interface {v10, v11, v12}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Lorg/eclipse/mat/hprof/Messages;I)V

    .line 197
    new-array v2, p1, [Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;

    .line 198
    .local v2, dfsthreads:[Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;
    new-array v9, p1, [Ljava/lang/Thread;

    .line 200
    .local v9, threads:[Ljava/lang/Thread;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, p1, :cond_2

    .line 201
    new-instance v1, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;

    invoke-direct {v1, p0, v7}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;-><init>(Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;Lorg/eclipse/mat/parser/internal/util/IntStack;)V

    .line 202
    .local v1, dfsthread:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;
    aput-object v1, v2, v3

    .line 203
    new-instance v8, Ljava/lang/Thread;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ObjectMarkerThread-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v1, v10}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 204
    .local v8, thread:Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 205
    aput-object v8, v9, v3

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 209
    .end local v1           #dfsthread:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker$DfsThread;
    .end local v8           #thread:Ljava/lang/Thread;
    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, p1, :cond_3

    .line 210
    aget-object v10, v9, v3

    invoke-virtual {v10}, Ljava/lang/Thread;->join()V

    .line 209
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 213
    :cond_3
    iget-object v10, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v10}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 216
    :goto_3
    return-void

    .line 215
    :cond_4
    iget-object v10, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v10}, Lorg/eclipse/mat/util/IProgressListener;->done()V

    goto :goto_3
.end method

.method public markSingleThreaded()I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v2, 0x0

    .line 44
    .local v2, count:I
    const/4 v10, 0x0

    .line 45
    .local v10, size:I
    const/16 v12, 0x2800

    new-array v4, v12, [I

    .line 46
    .local v4, data:[I
    const/4 v9, 0x0

    .line 48
    .local v9, rootsToProcess:I
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->roots:[I

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v11, v10

    .end local v10           #size:I
    .local v11, size:I
    :goto_0
    if-ge v5, v6, :cond_1

    aget v8, v0, v5

    .line 49
    .local v8, rootId:I
    iget-object v12, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->bits:[Z

    aget-boolean v12, v12, v8

    if-nez v12, :cond_7

    .line 51
    array-length v12, v4

    if-ne v11, v12, :cond_0

    .line 52
    array-length v12, v4

    shl-int/lit8 v12, v12, 0x1

    new-array v7, v12, [I

    .line 53
    .local v7, newArr:[I
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v4

    invoke-static {v4, v12, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 54
    move-object v4, v7

    .line 56
    .end local v7           #newArr:[I
    :cond_0
    add-int/lit8 v10, v11, 0x1

    .end local v11           #size:I
    .restart local v10       #size:I
    aput v8, v4, v11

    .line 59
    iget-object v12, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->bits:[Z

    const/4 v13, 0x1

    aput-boolean v13, v12, v8

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 62
    add-int/lit8 v9, v9, 0x1

    .line 48
    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v11, v10

    .end local v10           #size:I
    .restart local v11       #size:I
    goto :goto_0

    .line 66
    .end local v8           #rootId:I
    :cond_1
    iget-object v12, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    sget-object v13, Lorg/eclipse/mat/hprof/Messages;->ObjectMarker_CalculateRetainedSize:Lorg/eclipse/mat/hprof/Messages;

    invoke-interface {v12, v13, v9}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Lorg/eclipse/mat/hprof/Messages;I)V

    move v10, v11

    .line 70
    .end local v11           #size:I
    .restart local v10       #size:I
    :goto_2
    if-lez v10, :cond_5

    .line 72
    add-int/lit8 v10, v10, -0x1

    aget v3, v4, v10

    .line 74
    .local v3, current:I
    if-gt v10, v9, :cond_2

    .line 75
    add-int/lit8 v9, v9, -0x1

    .line 76
    iget-object v12, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    const/4 v13, 0x1

    invoke-interface {v12, v13}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 77
    iget-object v12, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v12}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v12, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v12}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v12

    .line 80
    :cond_2
    iget-object v12, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    invoke-interface {v12, v3}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v0

    array-length v6, v0

    const/4 v5, 0x0

    move v11, v10

    .end local v10           #size:I
    .restart local v11       #size:I
    :goto_3
    if-ge v5, v6, :cond_4

    aget v1, v0, v5

    .line 81
    .local v1, child:I
    iget-object v12, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->bits:[Z

    aget-boolean v12, v12, v1

    if-nez v12, :cond_6

    .line 84
    array-length v12, v4

    if-ne v11, v12, :cond_3

    .line 85
    array-length v12, v4

    shl-int/lit8 v12, v12, 0x1

    new-array v7, v12, [I

    .line 86
    .restart local v7       #newArr:[I
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v4

    invoke-static {v4, v12, v7, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    move-object v4, v7

    .line 89
    .end local v7           #newArr:[I
    :cond_3
    add-int/lit8 v10, v11, 0x1

    .end local v11           #size:I
    .restart local v10       #size:I
    aput v1, v4, v11

    .line 92
    iget-object v12, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->bits:[Z

    const/4 v13, 0x1

    aput-boolean v13, v12, v1

    .line 93
    add-int/lit8 v2, v2, 0x1

    .line 80
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v11, v10

    .end local v10           #size:I
    .restart local v11       #size:I
    goto :goto_3

    .end local v1           #child:I
    :cond_4
    move v10, v11

    .end local v11           #size:I
    .restart local v10       #size:I
    goto :goto_2

    .line 98
    .end local v3           #current:I
    :cond_5
    iget-object v12, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v12}, Lorg/eclipse/mat/util/IProgressListener;->done()V

    .line 100
    return v2

    .end local v10           #size:I
    .restart local v1       #child:I
    .restart local v3       #current:I
    .restart local v11       #size:I
    :cond_6
    move v10, v11

    .end local v11           #size:I
    .restart local v10       #size:I
    goto :goto_4

    .end local v1           #child:I
    .end local v3           #current:I
    .end local v10           #size:I
    .restart local v8       #rootId:I
    .restart local v11       #size:I
    :cond_7
    move v10, v11

    .end local v11           #size:I
    .restart local v10       #size:I
    goto :goto_1
.end method

.method public markSingleThreaded([Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;Lorg/eclipse/mat/snapshot/ISnapshot;)I
    .locals 23
    .parameter "excludeSets"
    .parameter "snapshot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 108
    new-instance v6, Lorg/eclipse/mat/collect/BitField;

    invoke-interface/range {p2 .. p2}, Lorg/eclipse/mat/snapshot/ISnapshot;->getSnapshotInfo()Lorg/eclipse/mat/snapshot/SnapshotInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/mat/snapshot/SnapshotInfo;->getNumberOfObjects()I

    move-result v2

    invoke-direct {v6, v2}, Lorg/eclipse/mat/collect/BitField;-><init>(I)V

    .line 109
    .local v6, excludeObjectsBF:Lorg/eclipse/mat/collect/BitField;
    move-object/from16 v8, p1

    .local v8, arr$:[Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;
    array-length v15, v8

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    move v13, v12

    .end local v8           #arr$:[Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;
    .end local v12           #i$:I
    .end local v15           #len$:I
    .local v13, i$:I
    :goto_0
    if-ge v13, v15, :cond_1

    aget-object v20, v8, v13

    .line 110
    .local v20, set:Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;
    invoke-virtual/range {v20 .. v20}, Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;->getObjectIds()[I

    move-result-object v9

    .local v9, arr$:[I
    array-length v0, v9

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_0

    aget v14, v9, v12

    .line 111
    .local v14, k:I
    invoke-virtual {v6, v14}, Lorg/eclipse/mat/collect/BitField;->set(I)V

    .line 110
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 109
    .end local v14           #k:I
    :cond_0
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    .end local v12           #i$:I
    .restart local v13       #i$:I
    goto :goto_0

    .line 115
    .end local v9           #arr$:[I
    .end local v16           #len$:I
    .end local v20           #set:Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;
    :cond_1
    const/4 v10, 0x0

    .line 116
    .local v10, count:I
    const/16 v19, 0x0

    .line 119
    .local v19, rootsToProcess:I
    const/16 v21, 0x0

    .line 120
    .local v21, size:I
    const/16 v2, 0x2800

    new-array v11, v2, [I

    .line 123
    .local v11, data:[I
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->roots:[I

    .local v8, arr$:[I
    array-length v15, v8

    .restart local v15       #len$:I
    const/4 v12, 0x0

    .end local v13           #i$:I
    .restart local v12       #i$:I
    move/from16 v22, v21

    .end local v21           #size:I
    .local v22, size:I
    :goto_2
    if-ge v12, v15, :cond_3

    aget v18, v8, v12

    .line 124
    .local v18, rootId:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->bits:[Z

    aget-boolean v2, v2, v18

    if-nez v2, :cond_9

    .line 126
    array-length v2, v11

    move/from16 v0, v22

    if-ne v0, v2, :cond_2

    .line 127
    array-length v2, v11

    shl-int/lit8 v2, v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 128
    .local v17, newArr:[I
    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v7, v11

    move-object/from16 v0, v17

    invoke-static {v11, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    move-object/from16 v11, v17

    .line 131
    .end local v17           #newArr:[I
    :cond_2
    add-int/lit8 v21, v22, 0x1

    .end local v22           #size:I
    .restart local v21       #size:I
    aput v18, v11, v22

    .line 134
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->bits:[Z

    const/4 v5, 0x1

    aput-boolean v5, v2, v18

    .line 135
    add-int/lit8 v10, v10, 0x1

    .line 137
    add-int/lit8 v19, v19, 0x1

    .line 123
    :goto_3
    add-int/lit8 v12, v12, 0x1

    move/from16 v22, v21

    .end local v21           #size:I
    .restart local v22       #size:I
    goto :goto_2

    .line 142
    .end local v18           #rootId:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    sget-object v5, Lorg/eclipse/mat/hprof/Messages;->ObjectMarker_CalculateRetainedSize:Lorg/eclipse/mat/hprof/Messages;

    move/from16 v0, v19

    invoke-interface {v2, v5, v0}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Lorg/eclipse/mat/hprof/Messages;I)V

    move/from16 v21, v22

    .line 146
    .end local v22           #size:I
    .restart local v21       #size:I
    :goto_4
    if-lez v21, :cond_7

    .line 149
    add-int/lit8 v21, v21, -0x1

    aget v3, v11, v21

    .line 152
    .local v3, current:I
    move/from16 v0, v21

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 153
    add-int/lit8 v19, v19, -0x1

    .line 154
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    const/4 v5, 0x1

    invoke-interface {v2, v5}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v2}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v2}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v2

    .line 158
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    invoke-interface {v2, v3}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v8

    array-length v15, v8

    const/4 v12, 0x0

    move/from16 v22, v21

    .end local v21           #size:I
    .restart local v22       #size:I
    :goto_5
    if-ge v12, v15, :cond_6

    aget v4, v8, v12

    .line 159
    .local v4, child:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->bits:[Z

    aget-boolean v2, v2, v4

    if-nez v2, :cond_8

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    .line 161
    invoke-direct/range {v2 .. v7}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->refersOnlyThroughExcluded(II[Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;Lorg/eclipse/mat/collect/BitField;Lorg/eclipse/mat/snapshot/ISnapshot;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 163
    array-length v2, v11

    move/from16 v0, v22

    if-ne v0, v2, :cond_5

    .line 164
    array-length v2, v11

    shl-int/lit8 v2, v2, 0x1

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 165
    .restart local v17       #newArr:[I
    const/4 v2, 0x0

    const/4 v5, 0x0

    array-length v7, v11

    move-object/from16 v0, v17

    invoke-static {v11, v2, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 166
    move-object/from16 v11, v17

    .line 168
    .end local v17           #newArr:[I
    :cond_5
    add-int/lit8 v21, v22, 0x1

    .end local v22           #size:I
    .restart local v21       #size:I
    aput v4, v11, v22

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->bits:[Z

    const/4 v5, 0x1

    aput-boolean v5, v2, v4

    .line 172
    add-int/lit8 v10, v10, 0x1

    .line 158
    :goto_6
    add-int/lit8 v12, v12, 0x1

    move/from16 v22, v21

    .end local v21           #size:I
    .restart local v22       #size:I
    goto :goto_5

    .end local v4           #child:I
    :cond_6
    move/from16 v21, v22

    .end local v22           #size:I
    .restart local v21       #size:I
    goto :goto_4

    .line 178
    .end local v3           #current:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->progressListener:Lorg/eclipse/mat/util/IProgressListener;

    invoke-interface {v2}, Lorg/eclipse/mat/util/IProgressListener;->done()V

    .line 180
    return v10

    .end local v21           #size:I
    .restart local v3       #current:I
    .restart local v4       #child:I
    .restart local v22       #size:I
    :cond_8
    move/from16 v21, v22

    .end local v22           #size:I
    .restart local v21       #size:I
    goto :goto_6

    .end local v3           #current:I
    .end local v4           #child:I
    .end local v21           #size:I
    .restart local v18       #rootId:I
    .restart local v22       #size:I
    :cond_9
    move/from16 v21, v22

    .end local v22           #size:I
    .restart local v21       #size:I
    goto/16 :goto_3
.end method
