.class abstract Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;
.super Ljava/lang/Object;
.source "IndexWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IndexWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "LongIndex"
.end annotation


# static fields
.field private static final DEPTH:I = 0xa


# instance fields
.field binarySearchCache:Lorg/eclipse/mat/collect/HashMapIntLong;

.field pageSize:I

.field pages:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    new-instance v0, Lorg/eclipse/mat/collect/HashMapIntLong;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/eclipse/mat/collect/HashMapIntLong;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->binarySearchCache:Lorg/eclipse/mat/collect/HashMapIntLong;

    .line 892
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 2
    .parameter "size"

    .prologue
    .line 894
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 889
    new-instance v0, Lorg/eclipse/mat/collect/HashMapIntLong;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/eclipse/mat/collect/HashMapIntLong;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->binarySearchCache:Lorg/eclipse/mat/collect/HashMapIntLong;

    .line 895
    const v0, 0x7a120

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->init(II)V

    .line 896
    return-void
.end method


# virtual methods
.method public get(I)J
    .locals 4
    .parameter "index"

    .prologue
    .line 905
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pageSize:I

    div-int v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->getPage(I)Lorg/eclipse/mat/collect/ArrayLongCompressed;

    move-result-object v0

    .line 906
    .local v0, array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pageSize:I

    rem-int v1, p1, v1

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/collect/ArrayLongCompressed;->get(I)J

    move-result-wide v2

    return-wide v2
.end method

.method public getNext(II)[J
    .locals 8
    .parameter "index"
    .parameter "length"

    .prologue
    .line 910
    new-array v0, p2, [J

    .line 911
    .local v0, answer:[J
    iget v6, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pageSize:I

    div-int v3, p1, v6

    .line 912
    .local v3, page:I
    iget v6, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pageSize:I

    rem-int v4, p1, v6

    .line 914
    .local v4, pageIndex:I
    invoke-virtual {p0, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->getPage(I)Lorg/eclipse/mat/collect/ArrayLongCompressed;

    move-result-object v1

    .line 915
    .local v1, array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    const/4 v2, 0x0

    .local v2, ii:I
    move v5, v4

    .end local v4           #pageIndex:I
    .local v5, pageIndex:I
    :goto_0
    if-ge v2, p2, :cond_1

    .line 916
    add-int/lit8 v4, v5, 0x1

    .end local v5           #pageIndex:I
    .restart local v4       #pageIndex:I
    invoke-virtual {v1, v5}, Lorg/eclipse/mat/collect/ArrayLongCompressed;->get(I)J

    move-result-wide v6

    aput-wide v6, v0, v2

    .line 917
    iget v6, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pageSize:I

    if-lt v4, v6, :cond_0

    .line 918
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->getPage(I)Lorg/eclipse/mat/collect/ArrayLongCompressed;

    move-result-object v1

    .line 919
    const/4 v4, 0x0

    .line 915
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #pageIndex:I
    .restart local v5       #pageIndex:I
    goto :goto_0

    .line 923
    :cond_1
    return-object v0
.end method

.method protected abstract getPage(I)Lorg/eclipse/mat/collect/ArrayLongCompressed;
.end method

.method protected init(II)V
    .locals 2
    .parameter "size"
    .parameter "pageSize"

    .prologue
    .line 899
    iput p1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->size:I

    .line 900
    iput p2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pageSize:I

    .line 901
    new-instance v0, Lorg/eclipse/mat/collect/HashMapIntObject;

    div-int v1, p1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pages:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 902
    return-void
.end method

.method public iterator()Lorg/eclipse/mat/collect/IteratorLong;
    .locals 1

    .prologue
    .line 985
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexIterator;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexIterator;-><init>(Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;)V

    return-object v0
.end method

.method public reverse(J)I
    .locals 13
    .parameter "value"

    .prologue
    .line 927
    const/4 v5, 0x0

    .line 928
    .local v5, low:I
    iget v11, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->size:I

    add-int/lit8 v4, v11, -0x1

    .line 930
    .local v4, high:I
    const/4 v1, 0x0

    .line 931
    .local v1, depth:I
    const/4 v10, -0x1

    .line 932
    .local v10, page:I
    const/4 v0, 0x0

    .local v0, array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    move v2, v1

    .line 934
    .end local v1           #depth:I
    .local v2, depth:I
    :goto_0
    if-gt v5, v4, :cond_4

    .line 935
    add-int v11, v5, v4

    shr-int/lit8 v6, v11, 0x1

    .line 939
    .local v6, mid:I
    add-int/lit8 v1, v2, 0x1

    .end local v2           #depth:I
    .restart local v1       #depth:I
    const/16 v11, 0xa

    if-ge v2, v11, :cond_1

    .line 941
    :try_start_0
    iget-object v11, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->binarySearchCache:Lorg/eclipse/mat/collect/HashMapIntLong;

    invoke-virtual {v11, v6}, Lorg/eclipse/mat/collect/HashMapIntLong;->get(I)J
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 957
    .local v8, midVal:J
    :goto_1
    cmp-long v11, v8, p1

    if-gez v11, :cond_3

    .line 958
    add-int/lit8 v5, v6, 0x1

    :goto_2
    move v2, v1

    .line 964
    .end local v1           #depth:I
    .restart local v2       #depth:I
    goto :goto_0

    .line 942
    .end local v2           #depth:I
    .end local v8           #midVal:J
    .restart local v1       #depth:I
    :catch_0
    move-exception v3

    .line 943
    .local v3, e:Ljava/util/NoSuchElementException;
    iget v11, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pageSize:I

    div-int v7, v6, v11

    .line 944
    .local v7, p:I
    if-eq v7, v10, :cond_0

    move v10, v7

    invoke-virtual {p0, v7}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->getPage(I)Lorg/eclipse/mat/collect/ArrayLongCompressed;

    move-result-object v0

    .line 946
    :cond_0
    iget v11, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pageSize:I

    rem-int v11, v6, v11

    invoke-virtual {v0, v11}, Lorg/eclipse/mat/collect/ArrayLongCompressed;->get(I)J

    move-result-wide v8

    .line 948
    .restart local v8       #midVal:J
    iget-object v11, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->binarySearchCache:Lorg/eclipse/mat/collect/HashMapIntLong;

    invoke-virtual {v11, v6, v8, v9}, Lorg/eclipse/mat/collect/HashMapIntLong;->put(IJ)Z

    goto :goto_1

    .line 951
    .end local v3           #e:Ljava/util/NoSuchElementException;
    .end local v7           #p:I
    .end local v8           #midVal:J
    :cond_1
    iget v11, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pageSize:I

    div-int v7, v6, v11

    .line 952
    .restart local v7       #p:I
    if-eq v7, v10, :cond_2

    move v10, v7

    invoke-virtual {p0, v7}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->getPage(I)Lorg/eclipse/mat/collect/ArrayLongCompressed;

    move-result-object v0

    .line 954
    :cond_2
    iget v11, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pageSize:I

    rem-int v11, v6, v11

    invoke-virtual {v0, v11}, Lorg/eclipse/mat/collect/ArrayLongCompressed;->get(I)J

    move-result-wide v8

    .restart local v8       #midVal:J
    goto :goto_1

    .line 959
    .end local v7           #p:I
    :cond_3
    cmp-long v11, v8, p1

    if-lez v11, :cond_5

    .line 960
    add-int/lit8 v4, v6, -0x1

    goto :goto_2

    .line 965
    .end local v1           #depth:I
    .end local v6           #mid:I
    .end local v8           #midVal:J
    .restart local v2       #depth:I
    :cond_4
    add-int/lit8 v11, v5, 0x1

    neg-int v6, v11

    move v1, v2

    .end local v2           #depth:I
    .restart local v1       #depth:I
    :cond_5
    return v6
.end method

.method public set(IJ)V
    .locals 2
    .parameter "index"
    .parameter "value"

    .prologue
    .line 969
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pageSize:I

    div-int v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->getPage(I)Lorg/eclipse/mat/collect/ArrayLongCompressed;

    move-result-object v0

    .line 970
    .local v0, array:Lorg/eclipse/mat/collect/ArrayLongCompressed;
    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pageSize:I

    rem-int v1, p1, v1

    invoke-virtual {v0, v1, p2, p3}, Lorg/eclipse/mat/collect/ArrayLongCompressed;->set(IJ)V

    .line 971
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 981
    iget v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->size:I

    return v0
.end method

.method public declared-synchronized unload()V
    .locals 3

    .prologue
    .line 976
    monitor-enter p0

    :try_start_0
    new-instance v0, Lorg/eclipse/mat/collect/HashMapIntObject;

    iget v1, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->size:I

    iget v2, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pageSize:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->pages:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 977
    new-instance v0, Lorg/eclipse/mat/collect/HashMapIntLong;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/eclipse/mat/collect/HashMapIntLong;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndex;->binarySearchCache:Lorg/eclipse/mat/collect/HashMapIntLong;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 978
    monitor-exit p0

    return-void

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
