.class public Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;
.super Ljava/lang/Object;
.source "DominatorTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlatDominatorTree"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;
    }
.end annotation


# static fields
.field private static final TEMP_ARR_LENGTH:I = 0xf4240


# instance fields
.field dom:[I

.field dump:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

.field elements:[I

.field tempIntArray:[I

.field tempLongArray:[J

.field final synthetic this$0:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;

.field ts:[J


# direct methods
.method constructor <init>(Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;Lorg/eclipse/mat/parser/internal/SnapshotImpl;[I[II)V
    .locals 2
    .parameter
    .parameter "dump"
    .parameter "dom"
    .parameter "elements"
    .parameter "root"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v1, 0xf4240

    .line 378
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->this$0:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 374
    new-array v0, v1, [J

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->tempLongArray:[J

    .line 375
    new-array v0, v1, [I

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->tempIntArray:[I

    .line 379
    iput-object p2, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dump:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    .line 380
    iput-object p3, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dom:[I

    .line 381
    iput-object p4, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->elements:[I

    .line 382
    array-length v0, p3

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->ts:[J

    .line 383
    invoke-virtual {p0, p5}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->calculateTotalSizesIterative(I)V

    .line 384
    return-void
.end method


# virtual methods
.method public calculateTotalSizesIterative(I)V
    .locals 22
    .parameter "e"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 459
    new-instance v11, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dump:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v15}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v15

    invoke-virtual {v15}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dump:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getUsedHeapSize()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lorg/eclipse/mat/parser/index/IndexWriter;->mostSignificantBit(J)I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v11, v15, v0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;-><init>(II)V

    .line 463
    .local v11, retained:Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;
    const/16 v2, 0x800

    .line 464
    .local v2, capacity:I
    const/4 v12, 0x0

    .line 465
    .local v12, size:I
    new-array v13, v2, [I

    .line 466
    .local v13, stack:[I
    new-array v14, v2, [Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;

    .line 468
    .local v14, succStack:[Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;
    move/from16 v4, p1

    .line 469
    .local v4, currentEntry:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->getSuccessorsEnum(I)Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;

    move-result-object v5

    .line 470
    .local v5, currentSucc:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;
    aput v4, v13, v12

    .line 471
    aput-object v5, v14, v12

    .line 472
    add-int/lit8 v12, v12, 0x1

    .line 474
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->this$0:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;

    iget-object v15, v15, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->monitor:Lorg/eclipse/mat/util/SimpleMonitor;

    invoke-virtual {v15}, Lorg/eclipse/mat/util/SimpleMonitor;->nextMonitor()Lorg/eclipse/mat/util/IProgressListener;

    move-result-object v10

    .line 475
    .local v10, progressListener:Lorg/eclipse/mat/util/IProgressListener;
    sget-object v15, Lorg/eclipse/mat/hprof/Messages;->DominatorTree_CalculateRetainedSizes:Lorg/eclipse/mat/hprof/Messages;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dump:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v16

    move/from16 v0, v16

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v10, v15, v0}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Lorg/eclipse/mat/hprof/Messages;I)V

    .line 477
    const/4 v3, 0x0

    .line 479
    .local v3, counter:I
    :cond_0
    :goto_0
    if-lez v12, :cond_6

    .line 480
    add-int/lit8 v15, v12, -0x1

    aget v4, v13, v15

    .line 481
    add-int/lit8 v15, v12, -0x1

    aget-object v5, v14, v15

    .line 483
    invoke-virtual {v5}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 484
    invoke-virtual {v5}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->nextElement()I

    move-result v9

    .line 485
    .local v9, nextChild:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->getSuccessorsEnum(I)Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;

    move-result-object v5

    .line 487
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->ts:[J

    add-int/lit8 v18, v9, 0x2

    if-gez v9, :cond_2

    const-wide/16 v16, 0x0

    :goto_1
    aput-wide v16, v15, v18

    .line 489
    if-ne v12, v2, :cond_1

    .line 490
    shl-int/lit8 v7, v2, 0x1

    .line 491
    .local v7, newCapacity:I
    new-array v6, v7, [I

    .line 492
    .local v6, newArr:[I
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v15, v6, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    move-object v13, v6

    .line 496
    new-array v8, v7, [Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;

    .line 497
    .local v8, newSuccessorsArr:[Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;
    const/4 v15, 0x0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v14, v15, v8, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 498
    move-object v14, v8

    .line 499
    move v2, v7

    .line 501
    .end local v6           #newArr:[I
    .end local v7           #newCapacity:I
    .end local v8           #newSuccessorsArr:[Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;
    :cond_1
    aput v9, v13, v12

    .line 502
    aput-object v5, v14, v12

    .line 503
    add-int/lit8 v12, v12, 0x1

    .line 504
    goto :goto_0

    .line 487
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->this$0:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getHeapSize(I)I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    goto :goto_1

    .line 505
    .end local v9           #nextChild:I
    :cond_3
    add-int/lit8 v12, v12, -0x1

    .line 507
    if-lez v12, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->ts:[J

    add-int/lit8 v16, v12, -0x1

    aget v16, v13, v16

    add-int/lit8 v16, v16, 0x2

    aget-wide v18, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->ts:[J

    move-object/from16 v17, v0

    add-int/lit8 v20, v4, 0x2

    aget-wide v20, v17, v20

    add-long v18, v18, v20

    aput-wide v18, v15, v16

    .line 509
    :cond_4
    if-ltz v4, :cond_0

    .line 510
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->ts:[J

    add-int/lit8 v16, v4, 0x2

    aget-wide v16, v15, v16

    move-wide/from16 v0, v16

    invoke-virtual {v11, v4, v0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->set(IJ)V

    .line 511
    add-int/lit8 v3, v3, 0x1

    rem-int/lit16 v15, v3, 0x3e8

    if-nez v15, :cond_0

    .line 512
    invoke-interface {v10}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v15

    if-eqz v15, :cond_5

    .line 513
    new-instance v15, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v15}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v15

    .line 515
    :cond_5
    const/4 v15, 0x1

    invoke-interface {v10, v15}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    goto/16 :goto_0

    .line 521
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dump:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v15}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v15

    sget-object v16, Lorg/eclipse/mat/parser/index/IndexManager$Index;->O2RETAINED:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    sget-object v17, Lorg/eclipse/mat/parser/index/IndexManager$Index;->O2RETAINED:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dump:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/mat/parser/index/IndexManager$Index;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->writeTo(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lorg/eclipse/mat/parser/index/IndexManager;->setReader(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V

    .line 524
    const/4 v11, 0x0

    .line 526
    invoke-interface {v10}, Lorg/eclipse/mat/util/IProgressListener;->done()V

    .line 527
    return-void
.end method

.method public getSuccessorsArr(I)[I
    .locals 7
    .parameter "parentId"

    .prologue
    const/4 v6, 0x0

    .line 391
    add-int/lit8 p1, p1, 0x2

    .line 394
    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dom:[I

    invoke-static {v4, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    .line 395
    .local v1, j:I
    if-gez v1, :cond_0

    new-array v3, v6, [I

    .line 407
    :goto_0
    return-object v3

    .line 397
    :cond_0
    move v0, v1

    .line 398
    .local v0, i:I
    :goto_1
    const/4 v4, 0x1

    if-le v0, v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dom:[I

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    if-ne v4, p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 401
    :cond_1
    :goto_2
    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dom:[I

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dom:[I

    aget v4, v4, v1

    if-ne v4, p1, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 403
    :cond_2
    sub-int v2, v1, v0

    .line 404
    .local v2, length:I
    new-array v3, v2, [I

    .line 405
    .local v3, result:[I
    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->elements:[I

    invoke-static {v4, v0, v3, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public getSuccessorsEnum(I)Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;
    .locals 1
    .parameter "i"

    .prologue
    .line 387
    new-instance v0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;-><init>(Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;I)V

    return-object v0
.end method

.method public sortByTotalSize([I)V
    .locals 6
    .parameter "objectIds"

    .prologue
    .line 411
    array-length v1, p1

    .line 414
    .local v1, length:I
    new-array v2, v1, [J

    .line 415
    .local v2, totalSizes:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 416
    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->ts:[J

    aget v4, p1, v0

    add-int/lit8 v4, v4, 0x2

    aget-wide v4, v3, v4

    aput-wide v4, v2, v0

    .line 415
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 420
    :cond_0
    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 421
    array-length v3, v2

    const v4, 0xf4240

    if-le v3, v4, :cond_2

    .line 422
    invoke-static {v2, p1}, Lorg/eclipse/mat/collect/ArrayUtils;->sortDesc([J[I)V

    .line 427
    :cond_1
    :goto_1
    return-void

    .line 424
    :cond_2
    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->tempLongArray:[J

    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->tempIntArray:[I

    invoke-static {v2, p1, v3, v4}, Lorg/eclipse/mat/collect/ArrayUtils;->sortDesc([J[I[J[I)V

    goto :goto_1
.end method
