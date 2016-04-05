.class public Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;
.super Ljava/lang/Object;
.source "IndexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InboundWriter"
.end annotation


# instance fields
.field bitLength:I

.field indexFile:Ljava/io/File;

.field pageSize:I

.field segmentSizes:[I

.field segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

.field size:I


# direct methods
.method public constructor <init>(ILjava/io/File;)V
    .locals 3
    .parameter "size"
    .parameter "indexFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 593
    iput p1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->size:I

    .line 594
    iput-object p2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->indexFile:Ljava/io/File;

    .line 596
    const v2, 0x7a120

    div-int v2, p1, v2

    add-int/lit8 v0, v2, 0x1

    .line 598
    .local v0, requiredSegments:I
    const/4 v1, 0x1

    .line 599
    .local v1, segments:I
    :goto_0
    if-ge v1, v0, :cond_0

    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 601
    :cond_0
    invoke-static {p1}, Lorg/eclipse/mat/parser/index/IndexWriter;->mostSignificantBit(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->bitLength:I

    .line 602
    div-int v2, p1, v1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->pageSize:I

    .line 603
    new-array v2, v1, [Lorg/eclipse/mat/parser/io/BitOutputStream;

    iput-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    .line 604
    new-array v2, v1, [I

    iput-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segmentSizes:[I

    .line 605
    return-void
.end method

.method private processObject(Lorg/eclipse/mat/parser/index/IndexWriter$KeyWriter;[ILorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;I[III)V
    .locals 6
    .parameter "keyWriter"
    .parameter "header"
    .parameter "body"
    .parameter "objectId"
    .parameter "refIndex"
    .parameter "fromIndex"
    .parameter "toIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-static {p5, p6, p7}, Ljava/util/Arrays;->sort([III)V

    .line 733
    move v1, p6

    .line 735
    .local v1, endPseudo:I
    sub-int v3, p7, p6

    const v4, 0x186a0

    if-le v3, v4, :cond_5

    .line 736
    new-instance v0, Lorg/eclipse/mat/collect/BitField;

    iget v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->size:I

    invoke-direct {v0, v3}, Lorg/eclipse/mat/collect/BitField;-><init>(I)V

    .line 738
    .local v0, duplicates:Lorg/eclipse/mat/collect/BitField;
    move v2, p6

    .line 740
    .local v2, jj:I
    :goto_0
    if-ge v2, p7, :cond_0

    .line 742
    aget v3, p5, v2

    if-ltz v3, :cond_3

    .line 753
    :cond_0
    :goto_1
    if-ge v2, p7, :cond_b

    .line 755
    if-eq v2, p6, :cond_1

    add-int/lit8 v3, v2, -0x1

    aget v3, p5, v3

    aget v4, p5, v2

    if-eq v3, v4, :cond_2

    :cond_1
    aget v3, p5, v2

    invoke-virtual {v0, v3}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 757
    aget v3, p5, v2

    invoke-virtual {p3, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->add(I)V

    .line 753
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 744
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 745
    aget v3, p5, v2

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    aput v3, p5, v2

    .line 747
    aget v3, p5, v2

    invoke-virtual {v0, v3}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 748
    aget v3, p5, v2

    invoke-virtual {p3, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->add(I)V

    .line 749
    aget v3, p5, v2

    invoke-virtual {v0, v3}, Lorg/eclipse/mat/collect/BitField;->set(I)V

    .line 740
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 761
    .end local v0           #duplicates:Lorg/eclipse/mat/collect/BitField;
    .end local v2           #jj:I
    :cond_5
    new-instance v0, Lorg/eclipse/mat/collect/SetInt;

    sub-int v3, p7, p6

    invoke-direct {v0, v3}, Lorg/eclipse/mat/collect/SetInt;-><init>(I)V

    .line 763
    .local v0, duplicates:Lorg/eclipse/mat/collect/SetInt;
    move v2, p6

    .line 765
    .restart local v2       #jj:I
    :goto_2
    if-ge v2, p7, :cond_6

    .line 767
    aget v3, p5, v2

    if-ltz v3, :cond_9

    .line 775
    :cond_6
    :goto_3
    if-ge v2, p7, :cond_b

    .line 777
    if-eq v2, p6, :cond_7

    add-int/lit8 v3, v2, -0x1

    aget v3, p5, v3

    aget v4, p5, v2

    if-eq v3, v4, :cond_8

    :cond_7
    aget v3, p5, v2

    invoke-virtual {v0, v3}, Lorg/eclipse/mat/collect/SetInt;->contains(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 779
    aget v3, p5, v2

    invoke-virtual {p3, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->add(I)V

    .line 775
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 769
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 770
    aget v3, p5, v2

    neg-int v3, v3

    add-int/lit8 v3, v3, -0x1

    aput v3, p5, v2

    .line 772
    aget v3, p5, v2

    invoke-virtual {v0, v3}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    move-result v3

    if-eqz v3, :cond_a

    aget v3, p5, v2

    invoke-virtual {p3, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->add(I)V

    .line 765
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 784
    .end local v0           #duplicates:Lorg/eclipse/mat/collect/SetInt;
    :cond_b
    if-le v1, p6, :cond_c

    .line 785
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aget v5, p2, p4

    add-int/lit8 v5, v5, -0x1

    aput v5, v3, v4

    const/4 v4, 0x1

    sub-int v5, v1, p6

    aput v5, v3, v4

    invoke-interface {p1, p4, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$KeyWriter;->storeKey(ILjava/io/Serializable;)V

    .line 787
    :cond_c
    return-void
.end method

.method private processSegment(Lorg/eclipse/mat/util/IProgressListener;Lorg/eclipse/mat/parser/index/IndexWriter$KeyWriter;[ILorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;[I[I)V
    .locals 8
    .parameter "monitor"
    .parameter "keyWriter"
    .parameter "header"
    .parameter "body"
    .parameter "objIndex"
    .parameter "refIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    invoke-static {p5, p6}, Lorg/eclipse/mat/collect/ArrayUtils;->sort([I[I)V

    .line 707
    const/4 v6, 0x0

    .line 708
    .local v6, start:I
    const/4 v4, -0x1

    .line 710
    .local v4, previous:I
    const/4 v7, 0x0

    .local v7, ii:I
    :goto_0
    array-length v0, p5

    if-gt v7, v0, :cond_4

    .line 711
    if-nez v7, :cond_1

    .line 712
    move v6, v7

    .line 713
    aget v4, p5, v7

    .line 710
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 714
    :cond_1
    array-length v0, p5

    if-eq v7, v0, :cond_2

    aget v0, p5, v7

    if-eq v4, v0, :cond_0

    .line 715
    :cond_2
    invoke-interface {p1}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v0}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v0

    .line 717
    :cond_3
    invoke-virtual {p4}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    aput v0, p3, v4

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v5, p6

    .line 719
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->processObject(Lorg/eclipse/mat/parser/index/IndexWriter$KeyWriter;[ILorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;I[III)V

    .line 721
    array-length v0, p5

    if-ge v7, v0, :cond_0

    .line 722
    aget v4, p5, v7

    .line 723
    move v6, v7

    goto :goto_1

    .line 727
    :cond_4
    return-void
.end method


# virtual methods
.method public declared-synchronized cancel()V
    .locals 4

    .prologue
    .line 791
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->close()V

    .line 793
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    if-eqz v1, :cond_0

    .line 794
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 795
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->indexFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 794
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 800
    .end local v0           #ii:I
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->indexFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 802
    :goto_1
    monitor-exit p0

    return-void

    .line 798
    :catch_0
    move-exception v1

    .line 800
    :try_start_2
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->indexFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 791
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 800
    :catchall_1
    move-exception v1

    :try_start_3
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->indexFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public declared-synchronized close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 805
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    if-eqz v1, :cond_1

    .line 806
    const/4 v0, 0x0

    .local v0, ii:I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 807
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/io/BitOutputStream;->flush()V

    .line 809
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/io/BitOutputStream;->close()V

    .line 810
    iget-object v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    const/4 v2, 0x0

    aput-object v2, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 814
    .end local v0           #ii:I
    :cond_1
    monitor-exit p0

    return-void

    .line 805
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public flush(Lorg/eclipse/mat/util/IProgressListener;Lorg/eclipse/mat/parser/index/IndexWriter$KeyWriter;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyObjectsIndex;
    .locals 19
    .parameter "monitor"
    .parameter "keyWriter"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 624
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->close()V

    .line 626
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->size:I

    new-array v5, v2, [I

    .line 628
    .local v5, header:[I
    new-instance v13, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->indexFile:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/high16 v4, 0x4

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    invoke-direct {v13, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 631
    .local v13, index:Ljava/io/DataOutputStream;
    const/16 v17, 0x0

    .line 634
    .local v17, segmentIn:Lorg/eclipse/mat/parser/io/BitInputStream;
    :try_start_0
    new-instance v6, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-direct {v6}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;-><init>()V

    .line 635
    .local v6, body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;
    const-wide/16 v2, 0x0

    invoke-virtual {v6, v13, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->openStream(Ljava/io/DataOutputStream;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 637
    const/4 v15, 0x0

    .local v15, segment:I
    move-object/from16 v18, v17

    .end local v17           #segmentIn:Lorg/eclipse/mat/parser/io/BitInputStream;
    .local v18, segmentIn:Ljava/lang/Object;
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    array-length v2, v2

    if-ge v15, v2, :cond_9

    .line 638
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v2}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 687
    :catchall_0
    move-exception v2

    move-object/from16 v17, v18

    .line 688
    .end local v6           #body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;
    .end local v15           #segment:I
    .end local v18           #segmentIn:Ljava/lang/Object;
    .restart local v17       #segmentIn:Lorg/eclipse/mat/parser/io/BitInputStream;
    :goto_1
    if-eqz v13, :cond_0

    :try_start_2
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 693
    :cond_0
    :goto_2
    if-eqz v17, :cond_1

    :try_start_3
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/mat/parser/io/BitInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 697
    :cond_1
    :goto_3
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->cancel()V

    :cond_2
    throw v2

    .line 640
    .end local v17           #segmentIn:Lorg/eclipse/mat/parser/io/BitInputStream;
    .restart local v6       #body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;
    .restart local v15       #segment:I
    .restart local v18       #segmentIn:Ljava/lang/Object;
    :cond_3
    :try_start_4
    new-instance v16, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->indexFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 642
    .local v16, segmentFile:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v17, v18

    .line 637
    .end local v18           #segmentIn:Ljava/lang/Object;
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v18, v17

    .restart local v18       #segmentIn:Ljava/lang/Object;
    goto :goto_0

    .line 645
    :cond_4
    new-instance v17, Lorg/eclipse/mat/parser/io/BitInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Lorg/eclipse/mat/parser/io/BitInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 647
    .restart local v17       #segmentIn:Lorg/eclipse/mat/parser/io/BitInputStream;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segmentSizes:[I

    .end local v18           #segmentIn:Ljava/lang/Object;
    aget v2, v2, v15

    new-array v7, v2, [I

    .line 648
    .local v7, objIndex:[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segmentSizes:[I

    aget v2, v2, v15

    new-array v8, v2, [I

    .line 650
    .local v8, refIndex:[I
    const/4 v12, 0x0

    .local v12, ii:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segmentSizes:[I

    aget v2, v2, v15

    if-ge v12, v2, :cond_7

    .line 652
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/mat/parser/io/BitInputStream;->readBit()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    const/4 v14, 0x1

    .line 654
    .local v14, isPseudo:Z
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->bitLength:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/eclipse/mat/parser/io/BitInputStream;->readInt(I)I

    move-result v2

    aput v2, v7, v12

    .line 655
    move-object/from16 v0, p0

    iget v2, v0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->bitLength:I

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lorg/eclipse/mat/parser/io/BitInputStream;->readInt(I)I

    move-result v2

    aput v2, v8, v12

    .line 657
    if-eqz v14, :cond_5

    aget v2, v8, v12

    rsub-int/lit8 v2, v2, -0x1

    aput v2, v8, v12

    .line 650
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 652
    .end local v14           #isPseudo:Z
    :cond_6
    const/4 v14, 0x0

    goto :goto_6

    .line 660
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/mat/parser/io/BitInputStream;->close()V

    .line 661
    const/16 v17, 0x0

    .line 663
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_8

    new-instance v2, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v2}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v2

    .line 687
    .end local v6           #body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;
    .end local v7           #objIndex:[I
    .end local v8           #refIndex:[I
    .end local v12           #ii:I
    .end local v15           #segment:I
    .end local v16           #segmentFile:Ljava/io/File;
    :catchall_1
    move-exception v2

    goto/16 :goto_1

    .line 666
    .restart local v6       #body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;
    .restart local v7       #objIndex:[I
    .restart local v8       #refIndex:[I
    .restart local v12       #ii:I
    .restart local v15       #segment:I
    .restart local v16       #segmentFile:Ljava/io/File;
    :cond_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->delete()Z

    .line 667
    const/16 v16, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 669
    invoke-direct/range {v2 .. v8}, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->processSegment(Lorg/eclipse/mat/util/IProgressListener;Lorg/eclipse/mat/parser/index/IndexWriter$KeyWriter;[ILorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;[I[I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_4

    .line 673
    .end local v7           #objIndex:[I
    .end local v8           #refIndex:[I
    .end local v12           #ii:I
    .end local v16           #segmentFile:Ljava/io/File;
    .end local v17           #segmentIn:Lorg/eclipse/mat/parser/io/BitInputStream;
    .restart local v18       #segmentIn:Ljava/lang/Object;
    :cond_9
    :try_start_6
    invoke-virtual {v6}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->closeStream()J

    move-result-wide v10

    .line 674
    .local v10, divider:J
    new-instance v2, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;

    invoke-direct {v2}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;-><init>()V

    invoke-virtual {v2, v13, v10, v11, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->writeTo(Ljava/io/DataOutputStream;J[I)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v9

    .line 677
    .local v9, headerIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    invoke-virtual {v13, v10, v11}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 679
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->flush()V

    .line 680
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V

    .line 682
    const/4 v13, 0x0

    .line 685
    new-instance v2, Lorg/eclipse/mat/parser/index/IndexReader$InboundReader;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->indexFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;->getReader(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IndexReader$IntIndexReader;

    move-result-object v4

    invoke-direct {v2, v3, v9, v4}, Lorg/eclipse/mat/parser/index/IndexReader$InboundReader;-><init>(Ljava/io/File;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 688
    if-eqz v13, :cond_a

    :try_start_7
    invoke-virtual {v13}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 693
    :cond_a
    :goto_7
    if-eqz v18, :cond_b

    :try_start_8
    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/mat/parser/io/BitInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    .line 697
    :cond_b
    :goto_8
    invoke-interface/range {p1 .. p1}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->cancel()V

    :cond_c
    return-object v2

    .line 689
    :catch_0
    move-exception v3

    goto :goto_7

    .line 694
    :catch_1
    move-exception v3

    goto :goto_8

    .line 689
    .end local v6           #body:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexStreamer;
    .end local v9           #headerIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    .end local v10           #divider:J
    .end local v15           #segment:I
    .end local v18           #segmentIn:Ljava/lang/Object;
    .restart local v17       #segmentIn:Lorg/eclipse/mat/parser/io/BitInputStream;
    :catch_2
    move-exception v3

    goto/16 :goto_2

    .line 694
    :catch_3
    move-exception v3

    goto/16 :goto_3
.end method

.method public getIndexFile()Ljava/io/File;
    .locals 1

    .prologue
    .line 817
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->indexFile:Ljava/io/File;

    return-object v0
.end method

.method public log(IIZ)V
    .locals 5
    .parameter "objectIndex"
    .parameter "refIndex"
    .parameter "isPseudo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 608
    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->pageSize:I

    div-int v0, p1, v2

    .line 609
    .local v0, segment:I
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 610
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->indexFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".log"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 612
    .local v1, segmentFile:Ljava/io/File;
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    new-instance v3, Lorg/eclipse/mat/parser/io/BitOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Lorg/eclipse/mat/parser/io/BitOutputStream;-><init>(Ljava/io/OutputStream;)V

    aput-object v3, v2, v0

    .line 615
    .end local v1           #segmentFile:Ljava/io/File;
    :cond_0
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    aget-object v3, v2, v0

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Lorg/eclipse/mat/parser/io/BitOutputStream;->writeBit(I)I

    .line 616
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    aget-object v2, v2, v0

    iget v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->bitLength:I

    invoke-virtual {v2, p1, v3}, Lorg/eclipse/mat/parser/io/BitOutputStream;->writeInt(II)I

    .line 617
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segments:[Lorg/eclipse/mat/parser/io/BitOutputStream;

    aget-object v2, v2, v0

    iget v3, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->bitLength:I

    invoke-virtual {v2, p2, v3}, Lorg/eclipse/mat/parser/io/BitOutputStream;->writeInt(II)I

    .line 619
    iget-object v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$InboundWriter;->segmentSizes:[I

    aget v3, v2, v0

    add-int/lit8 v3, v3, 0x1

    aput v3, v2, v0

    .line 620
    return-void

    .line 615
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
