.class Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;
.super Ljava/lang/Object;
.source "DominatorTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/internal/DominatorTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Calculator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;
    }
.end annotation


# static fields
.field private static ROOT_VALUE:I

.field private static ROOT_VALUE_ARR:[I


# instance fields
.field private anchestor:[I

.field bucket:[I

.field private dom:[I

.field gcRootsArray:[I

.field private gcRootsSet:Lorg/eclipse/mat/collect/BitField;

.field inboundIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

.field private label:[I

.field monitor:Lorg/eclipse/mat/util/SimpleMonitor;

.field private n:I

.field outboundIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

.field private parent:[I

.field private r:I

.field private semi:[I

.field snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

.field private vertex:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const/4 v0, -0x1

    sput v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->ROOT_VALUE:I

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->ROOT_VALUE:I

    aput v2, v0, v1

    sput-object v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->ROOT_VALUE_ARR:[I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/mat/parser/internal/SnapshotImpl;Lorg/eclipse/mat/util/IProgressListener;)V
    .locals 9
    .parameter "snapshot"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    .line 62
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/index/IndexManager;->inbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->inboundIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    .line 63
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/index/IndexManager;->outbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->outboundIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    .line 64
    new-instance v6, Lorg/eclipse/mat/util/SimpleMonitor;

    sget-object v7, Lorg/eclipse/mat/hprof/Messages;->DominatorTree_CalculatingDominatorTree:Lorg/eclipse/mat/hprof/Messages;

    iget-object v7, v7, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    const/4 v8, 0x5

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-direct {v6, v7, p2, v8}, Lorg/eclipse/mat/util/SimpleMonitor;-><init>(Ljava/lang/String;Lorg/eclipse/mat/util/IProgressListener;[I)V

    iput-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->monitor:Lorg/eclipse/mat/util/SimpleMonitor;

    .line 69
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getGCRoots()[I

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->gcRootsArray:[I

    .line 70
    new-instance v6, Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v7

    invoke-direct {v6, v7}, Lorg/eclipse/mat/collect/BitField;-><init>(I)V

    iput-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->gcRootsSet:Lorg/eclipse/mat/collect/BitField;

    .line 71
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->gcRootsArray:[I

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget v3, v0, v2

    .line 72
    .local v3, id:I
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->gcRootsSet:Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {v6, v3}, Lorg/eclipse/mat/collect/BitField;->set(I)V

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    .end local v3           #id:I
    :cond_0
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v5

    .line 77
    .local v5, manager:Lorg/eclipse/mat/parser/index/IndexManager;
    :try_start_0
    invoke-virtual {v5}, Lorg/eclipse/mat/parser/index/IndexManager;->a2size()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->unload()V

    .line 78
    invoke-virtual {v5}, Lorg/eclipse/mat/parser/index/IndexManager;->o2address()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->unload()V

    .line 79
    invoke-virtual {v5}, Lorg/eclipse/mat/parser/index/IndexManager;->o2class()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->unload()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v6

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    .line 85
    const/4 v6, 0x1

    iput v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->r:I

    .line 87
    iget v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I

    .line 88
    iget v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->parent:[I

    .line 89
    iget v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->anchestor:[I

    .line 90
    iget v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->vertex:[I

    .line 91
    iget v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->label:[I

    .line 92
    iget v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    .line 93
    iget v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    add-int/lit8 v6, v6, 0x1

    new-array v6, v6, [I

    iput-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->bucket:[I

    .line 95
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->bucket:[I

    const/4 v7, -0x1

    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    .line 96
    return-void

    .line 80
    :catch_0
    move-exception v1

    .line 81
    .local v1, e:Ljava/io/IOException;
    new-instance v6, Lorg/eclipse/mat/SnapshotException;

    invoke-direct {v6, v1}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 64
    nop

    :array_0
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I

    return-object v0
.end method

.method private compress(I)V
    .locals 4
    .parameter "v"

    .prologue
    .line 306
    new-instance v0, Lorg/eclipse/mat/parser/internal/util/IntStack;

    invoke-direct {v0}, Lorg/eclipse/mat/parser/internal/util/IntStack;-><init>()V

    .line 307
    .local v0, stack:Lorg/eclipse/mat/parser/internal/util/IntStack;
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->anchestor:[I

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->anchestor:[I

    aget v2, v2, p1

    aget v1, v1, v2

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v0, p1}, Lorg/eclipse/mat/parser/internal/util/IntStack;->push(I)V

    .line 312
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->anchestor:[I

    aget p1, v1, p1

    goto :goto_0

    .line 314
    :cond_0
    :goto_1
    invoke-virtual {v0}, Lorg/eclipse/mat/parser/internal/util/IntStack;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 315
    invoke-virtual {v0}, Lorg/eclipse/mat/parser/internal/util/IntStack;->pop()I

    move-result p1

    .line 316
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->label:[I

    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->anchestor:[I

    aget v3, v3, p1

    aget v2, v2, v3

    aget v1, v1, v2

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->label:[I

    aget v3, v3, p1

    aget v2, v2, v3

    if-ge v1, v2, :cond_1

    .line 317
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->label:[I

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->label:[I

    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->anchestor:[I

    aget v3, v3, p1

    aget v2, v2, v3

    aput v2, v1, p1

    .line 319
    :cond_1
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->anchestor:[I

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->anchestor:[I

    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->anchestor:[I

    aget v3, v3, p1

    aget v2, v2, v3

    aput v2, v1, p1

    goto :goto_1

    .line 321
    :cond_2
    return-void
.end method

.method private dfs(I)V
    .locals 17
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 200
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->monitor:Lorg/eclipse/mat/util/SimpleMonitor;

    invoke-virtual {v15}, Lorg/eclipse/mat/util/SimpleMonitor;->nextMonitor()Lorg/eclipse/mat/util/IProgressListener;

    move-result-object v9

    .line 201
    .local v9, progressListener:Lorg/eclipse/mat/util/IProgressListener;
    sget-object v15, Lorg/eclipse/mat/hprof/Messages;->DominatorTree_DepthFirstSearch:Lorg/eclipse/mat/hprof/Messages;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v16

    shr-int/lit8 v16, v16, 0x10

    move/from16 v0, v16

    invoke-interface {v9, v15, v0}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Lorg/eclipse/mat/hprof/Messages;I)V

    .line 209
    const/16 v1, 0x800

    .line 210
    .local v1, capacity:I
    const/4 v10, 0x0

    .line 211
    .local v10, size:I
    new-array v2, v1, [I

    .line 212
    .local v2, currentElementStack:[I
    new-array v5, v1, [I

    .line 213
    .local v5, currentSuccessorStack:[I
    new-array v12, v1, [Ljava/lang/Object;

    .line 215
    .local v12, successorsStack:[Ljava/lang/Object;
    move/from16 v13, p1

    .line 216
    .local v13, v:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->gcRootsArray:[I

    .line 217
    .local v11, successors:[I
    const/4 v3, 0x0

    .line 220
    .local v3, currentSuccessor:I
    aput p1, v2, v10

    .line 221
    aput-object v11, v12, v10

    .line 222
    aput v3, v5, v10

    .line 223
    add-int/lit8 v10, v10, 0x1

    .line 225
    :goto_0
    if-lez v10, :cond_5

    .line 226
    add-int/lit8 v15, v10, -0x1

    aget v13, v2, v15

    .line 227
    add-int/lit8 v15, v10, -0x1

    aget-object v15, v12, v15

    check-cast v15, [I

    move-object v11, v15

    check-cast v11, [I

    .line 228
    add-int/lit8 v15, v10, -0x1

    aget v3, v5, v15

    .line 230
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    aget v15, v15, v13

    if-nez v15, :cond_0

    .line 231
    move-object/from16 v0, p0

    iget v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    .line 232
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    move/from16 v16, v0

    aput v16, v15, v13

    .line 233
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->vertex:[I

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    move/from16 v16, v0

    aput v13, v15, v16

    .line 234
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->label:[I

    aput v13, v15, v13

    .line 235
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->anchestor:[I

    const/16 v16, 0x0

    aput v16, v15, v13

    .line 238
    :cond_0
    array-length v15, v11

    if-ge v3, v15, :cond_4

    .line 239
    add-int/lit8 v4, v3, 0x1

    .end local v3           #currentSuccessor:I
    .local v4, currentSuccessor:I
    aget v15, v11, v3

    add-int/lit8 v14, v15, 0x2

    .line 240
    .local v14, w:I
    add-int/lit8 v15, v10, -0x1

    aput v4, v5, v15

    .line 245
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    aget v15, v15, v14

    if-nez v15, :cond_3

    .line 246
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->parent:[I

    aput v13, v15, v14

    .line 247
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->outboundIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    add-int/lit8 v16, v14, -0x2

    invoke-interface/range {v15 .. v16}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v11

    .line 252
    if-ne v10, v1, :cond_1

    .line 253
    shl-int/lit8 v7, v1, 0x1

    .line 255
    .local v7, newCapacity:I
    new-array v6, v7, [I

    .line 256
    .local v6, newArr:[I
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v2, v15, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    move-object v2, v6

    .line 260
    new-array v6, v7, [I

    .line 261
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v5, v15, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 262
    move-object v5, v6

    .line 265
    new-array v8, v7, [Ljava/lang/Object;

    .line 266
    .local v8, newSuccessorsArr:[Ljava/lang/Object;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v15, v8, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 267
    move-object v12, v8

    .line 269
    move v1, v7

    .line 271
    .end local v6           #newArr:[I
    .end local v7           #newCapacity:I
    .end local v8           #newSuccessorsArr:[Ljava/lang/Object;
    :cond_1
    aput v14, v2, v10

    .line 272
    aput-object v11, v12, v10

    .line 273
    const/4 v15, 0x0

    aput v15, v5, v10

    .line 274
    add-int/lit8 v10, v10, 0x1

    .line 278
    move-object/from16 v0, p0

    iget v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    const v16, 0xffff

    and-int v15, v15, v16

    if-nez v15, :cond_3

    .line 279
    invoke-interface {v9}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 280
    new-instance v15, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v15}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v15

    .line 282
    :cond_2
    const/4 v15, 0x1

    invoke-interface {v9, v15}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    :cond_3
    move v3, v4

    .line 285
    .end local v4           #currentSuccessor:I
    .restart local v3       #currentSuccessor:I
    goto/16 :goto_0

    .line 287
    .end local v14           #w:I
    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto/16 :goto_0

    .line 291
    :cond_5
    invoke-interface {v9}, Lorg/eclipse/mat/util/IProgressListener;->done()V

    .line 292
    return-void
.end method

.method private eval(I)I
    .locals 1
    .parameter "v"

    .prologue
    .line 324
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->anchestor:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 328
    .end local p1
    :goto_0
    return p1

    .line 327
    .restart local p1
    :cond_0
    invoke-direct {p0, p1}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->compress(I)V

    .line 328
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->label:[I

    aget p1, v0, p1

    goto :goto_0
.end method

.method private getPredecessors(I)[I
    .locals 1
    .parameter "v"

    .prologue
    .line 296
    add-int/lit8 p1, p1, -0x2

    .line 298
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->gcRootsSet:Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {v0, p1}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    sget-object v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->ROOT_VALUE_ARR:[I

    .line 301
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->inboundIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    invoke-interface {v0, p1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v0

    goto :goto_0
.end method

.method private link(II)V
    .locals 1
    .parameter "v"
    .parameter "w"

    .prologue
    .line 333
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->anchestor:[I

    aput p1, v0, p2

    .line 334
    return-void
.end method

.method private writeIndexFiles(Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;)V
    .locals 8
    .parameter "tree"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    new-instance v4, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;

    iget-object v5, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    sget-object v6, Lorg/eclipse/mat/parser/index/IndexManager$Index;->DOMINATED:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v7}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v7

    invoke-virtual {v7}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/mat/parser/index/IndexManager$Index;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;-><init>(ILjava/io/File;)V

    .line 341
    .local v4, writer:Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;
    iget-object v5, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v1

    .line 343
    .local v1, numberOfObjects:I
    iget-object v5, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->monitor:Lorg/eclipse/mat/util/SimpleMonitor;

    invoke-virtual {v5}, Lorg/eclipse/mat/util/SimpleMonitor;->nextMonitor()Lorg/eclipse/mat/util/IProgressListener;

    move-result-object v2

    .line 344
    .local v2, progressListener:Lorg/eclipse/mat/util/IProgressListener;
    sget-object v5, Lorg/eclipse/mat/hprof/Messages;->DominatorTree_CreateDominatorsIndexFile:Lorg/eclipse/mat/hprof/Messages;

    div-int/lit16 v6, v1, 0x3e8

    invoke-interface {v2, v5, v6}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Lorg/eclipse/mat/hprof/Messages;I)V

    .line 347
    const/4 v0, -0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 348
    invoke-virtual {p1, v0}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->getSuccessorsArr(I)[I

    move-result-object v3

    .line 349
    .local v3, successors:[I
    invoke-virtual {p1, v3}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->sortByTotalSize([I)V

    .line 350
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->log(I[I)V

    .line 352
    rem-int/lit16 v5, v0, 0x3e8

    if-nez v5, :cond_1

    .line 353
    invoke-interface {v2}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    new-instance v5, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v5}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v5

    .line 356
    :cond_0
    const/4 v5, 0x1

    invoke-interface {v2, v5}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 347
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    .end local v3           #successors:[I
    :cond_2
    iget-object v5, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v5

    sget-object v6, Lorg/eclipse/mat/parser/index/IndexManager$Index;->DOMINATED:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->flush()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/mat/parser/index/IndexManager;->setReader(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V

    .line 362
    invoke-interface {v2}, Lorg/eclipse/mat/util/IProgressListener;->done()V

    .line 363
    return-void
.end method


# virtual methods
.method public compute()V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;,
            Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->monitor:Lorg/eclipse/mat/util/SimpleMonitor;

    invoke-virtual {v2}, Lorg/eclipse/mat/util/SimpleMonitor;->nextMonitor()Lorg/eclipse/mat/util/IProgressListener;

    move-result-object v12

    .line 101
    .local v12, progressListener0:Lorg/eclipse/mat/util/IProgressListener;
    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->DominatorTree_DominatorTreeCalculation:Lorg/eclipse/mat/hprof/Messages;

    const/4 v3, 0x3

    invoke-interface {v12, v2, v3}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Lorg/eclipse/mat/hprof/Messages;I)V

    .line 103
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    .line 104
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->r:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dfs(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/index/IndexManager;->outbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->unload()V

    .line 108
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->monitor:Lorg/eclipse/mat/util/SimpleMonitor;

    invoke-virtual {v2}, Lorg/eclipse/mat/util/SimpleMonitor;->nextMonitor()Lorg/eclipse/mat/util/IProgressListener;

    move-result-object v11

    .line 109
    .local v11, progressListener:Lorg/eclipse/mat/util/IProgressListener;
    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->DominatorTree_ComputingDominators:Lorg/eclipse/mat/hprof/Messages;

    iget-object v2, v2, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    div-int/lit16 v3, v3, 0x3e8

    invoke-interface {v11, v2, v3}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Ljava/lang/String;I)V

    .line 111
    move-object/from16 v0, p0

    iget v8, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    .local v8, i:I
    :goto_0
    const/4 v2, 0x2

    if-lt v8, v2, :cond_7

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->vertex:[I

    aget v15, v2, v8

    .line 113
    .local v15, w:I
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->getPredecessors(I)[I

    move-result-object v7

    .local v7, arr$:[I
    array-length v10, v7

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_2

    aget v14, v7, v9

    .line 114
    .local v14, v:I
    add-int/lit8 v14, v14, 0x2

    .line 115
    if-gez v14, :cond_1

    .line 113
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 116
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->eval(I)I

    move-result v13

    .line 117
    .local v13, u:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    aget v2, v2, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    aget v3, v3, v15

    if-ge v2, v3, :cond_0

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    aget v3, v3, v13

    aput v3, v2, v15

    goto :goto_2

    .line 123
    .end local v13           #u:I
    .end local v14           #v:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->bucket:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->bucket:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->vertex:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    aget v6, v6, v15

    aget v4, v4, v6

    aget v3, v3, v4

    aput v3, v2, v15

    .line 124
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->bucket:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->vertex:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    aget v4, v4, v15

    aget v3, v3, v4

    aput v15, v2, v3

    .line 126
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->parent:[I

    aget v2, v2, v15

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v15}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->link(II)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->bucket:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->parent:[I

    aget v3, v3, v15

    aget v14, v2, v3

    .line 129
    .restart local v14       #v:I
    :goto_3
    const/4 v2, -0x1

    if-eq v14, v2, :cond_4

    .line 130
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->eval(I)I

    move-result v13

    .line 131
    .restart local v13       #u:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    aget v2, v2, v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    aget v3, v3, v14

    if-ge v2, v3, :cond_3

    .line 132
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I

    aput v13, v2, v14

    .line 136
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->bucket:[I

    aget v14, v2, v14

    .line 137
    goto :goto_3

    .line 134
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->parent:[I

    aget v3, v3, v15

    aput v3, v2, v14

    goto :goto_4

    .line 138
    .end local v13           #u:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->bucket:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->parent:[I

    aget v3, v3, v15

    const/4 v4, -0x1

    aput v4, v2, v3

    .line 140
    rem-int/lit16 v2, v8, 0x3e8

    if-nez v2, :cond_6

    .line 141
    invoke-interface {v11}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 142
    new-instance v2, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v2}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v2

    .line 144
    :cond_5
    const/4 v2, 0x1

    invoke-interface {v11, v2}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 111
    :cond_6
    add-int/lit8 v8, v8, -0x1

    goto/16 :goto_0

    .line 148
    .end local v7           #arr$:[I
    .end local v9           #i$:I
    .end local v10           #len$:I
    .end local v14           #v:I
    .end local v15           #w:I
    :cond_7
    const/4 v8, 0x2

    :goto_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->n:I

    if-gt v8, v2, :cond_9

    .line 149
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->vertex:[I

    aget v15, v2, v8

    .line 150
    .restart local v15       #w:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I

    aget v2, v2, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->vertex:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    aget v4, v4, v15

    aget v3, v3, v4

    if-eq v2, v3, :cond_8

    .line 151
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I

    aget v4, v4, v15

    aget v3, v3, v4

    aput v3, v2, v15

    .line 148
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 154
    .end local v15           #w:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->r:I

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 156
    invoke-interface {v11}, Lorg/eclipse/mat/util/IProgressListener;->done()V

    .line 158
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->bucket:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->semi:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->label:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->vertex:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->anchestor:[I

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->parent:[I

    .line 159
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/index/IndexManager;->inbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->unload()V

    .line 161
    invoke-interface {v12}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_a

    new-instance v2, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v2}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v2

    .line 165
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v2

    sget-object v3, Lorg/eclipse/mat/parser/index/IndexManager$Index;->DOMINATOR:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    new-instance v4, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-direct {v4}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;-><init>()V

    sget-object v6, Lorg/eclipse/mat/parser/index/IndexManager$Index;->DOMINATOR:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Lorg/eclipse/mat/parser/index/IndexManager$Index;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    new-instance v16, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$1;

    invoke-direct/range {v16 .. v17}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$1;-><init>(Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v6, v0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->writeTo(Ljava/io/File;Lorg/eclipse/mat/collect/IteratorInt;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/mat/parser/index/IndexManager;->setReader(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    new-array v5, v2, [I

    .line 181
    .local v5, objectIds:[I
    const/4 v8, 0x0

    :goto_6
    array-length v2, v5

    if-ge v8, v2, :cond_b

    .line 182
    add-int/lit8 v2, v8, -0x2

    aput v2, v5, v8

    .line 181
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 184
    :cond_b
    const/4 v2, 0x0

    const/4 v3, -0x2

    aput v3, v5, v2

    .line 185
    const/4 v2, 0x1

    sget v3, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->ROOT_VALUE:I

    aput v3, v5, v2

    .line 186
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I

    array-length v4, v4

    add-int/lit8 v4, v4, -0x2

    invoke-static {v2, v5, v3, v4}, Lorg/eclipse/mat/collect/ArrayUtils;->sort([I[III)V

    .line 189
    const/4 v2, 0x1

    invoke-interface {v12, v2}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 191
    new-instance v1, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I

    sget v6, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->ROOT_VALUE:I

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;-><init>(Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;Lorg/eclipse/mat/parser/internal/SnapshotImpl;[I[II)V

    .line 193
    .local v1, tree:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;
    invoke-interface {v12}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_c

    new-instance v2, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v2}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v2

    .line 195
    :cond_c
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->writeIndexFiles(Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;)V

    .line 196
    invoke-interface {v12}, Lorg/eclipse/mat/util/IProgressListener;->done()V

    .line 197
    return-void
.end method
