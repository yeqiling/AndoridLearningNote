.class public abstract Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;
.super Ljava/lang/Object;
.source "ObjectCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final lfus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry",
            "<TE;>;>;>;"
        }
    .end annotation
.end field

.field private lowestNonEmptyLfu:I

.field private final map:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private maxLfuBuckets:I

.field private maxSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .parameter "maxSize"

    .prologue
    .local p0, this:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache<TE;>;"
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->maxLfuBuckets:I

    .line 31
    iput v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lowestNonEmptyLfu:I

    .line 34
    iput p1, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->maxSize:I

    .line 35
    new-instance v0, Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-direct {v0, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->map:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lfus:Ljava/util/List;

    .line 37
    div-int/lit8 v0, p1, 0x3

    iput v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->maxLfuBuckets:I

    .line 38
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 58
    .local p0, this:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->map:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v0}, Lorg/eclipse/mat/collect/HashMapIntObject;->clear()V

    .line 59
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lfus:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized doInsert(Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, this:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache<TE;>;"
    .local p1, e:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;"
    monitor-enter p0

    :try_start_0
    iget v1, p1, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;->numUsages:I

    invoke-virtual {p0, v1}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lfu(I)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 66
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->map:Lorg/eclipse/mat/collect/HashMapIntObject;

    iget v2, p1, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;->key:I

    invoke-virtual {v1, v2, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;

    .line 67
    .local v0, p:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<*>;"
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lowestNonEmptyLfu:I

    .line 69
    if-eqz v0, :cond_0

    iget v1, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;->numUsages:I

    invoke-virtual {p0, v1}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lfu(I)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_0
    monitor-exit p0

    return-void

    .line 65
    .end local v0           #p:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<*>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 3
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache<TE;>;"
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->map:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v1, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;

    .line 42
    .local v0, e:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;"
    if-eqz v0, :cond_1

    .line 43
    invoke-virtual {p0, v0}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->revalueEntry(Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;)V

    .line 54
    :cond_0
    iget-object v1, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;->object:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    .line 45
    :cond_1
    :try_start_1
    new-instance v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;

    .end local v0           #e:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;"
    invoke-direct {v0}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;-><init>()V

    .line 46
    .restart local v0       #e:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;"
    invoke-virtual {p0, p1}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->load(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;->object:Ljava/lang/Object;

    .line 47
    iput p1, v0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;->key:I

    .line 49
    invoke-virtual {p0, v0}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->doInsert(Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;)V

    .line 51
    :goto_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->map:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v1}, Lorg/eclipse/mat/collect/HashMapIntObject;->size()I

    move-result v1

    iget v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->maxSize:I

    if-le v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->removeLeastValuableNode()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    .end local v0           #e:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected getLowestNonEmptyLfu()Ljava/util/LinkedList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache<TE;>;"
    const/4 v1, 0x0

    .line 94
    .local v1, lfu:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;>;"
    iget v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lowestNonEmptyLfu:I

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lfus:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 95
    invoke-virtual {p0, v0}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lfu(I)Ljava/util/LinkedList;

    move-result-object v1

    .line 97
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    iput v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lowestNonEmptyLfu:I

    move-object v2, v1

    .line 102
    .end local v1           #lfu:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;>;"
    .local v2, lfu:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;>;"
    :goto_1
    return-object v2

    .line 94
    .end local v2           #lfu:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;>;"
    .restart local v1       #lfu:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;>;"
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v2, v1

    .line 102
    .end local v1           #lfu:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;>;"
    .restart local v2       #lfu:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;>;"
    goto :goto_1
.end method

.method protected final lfu(I)Ljava/util/LinkedList;
    .locals 3
    .parameter "numUsageIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/LinkedList",
            "<",
            "Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, this:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache<TE;>;"
    iget v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->maxLfuBuckets:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 75
    .local v1, lfuIndex:I
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lfus:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 76
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 77
    .local v0, lfu:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;>;"
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lfus:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 80
    .end local v0           #lfu:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;>;"
    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lfus:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    move-object v0, v2

    goto :goto_0
.end method

.method protected abstract load(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method protected removeLeastValuableNode()V
    .locals 4

    .prologue
    .line 106
    .local p0, this:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache<TE;>;"
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->getLowestNonEmptyLfu()Ljava/util/LinkedList;

    move-result-object v0

    .line 107
    .local v0, lfu:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;>;"
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;

    .line 108
    .local v1, lln:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<*>;"
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->map:Lorg/eclipse/mat/collect/HashMapIntObject;

    iget v3, v1, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;->key:I

    invoke-virtual {v2, v3}, Lorg/eclipse/mat/collect/HashMapIntObject;->remove(I)Ljava/lang/Object;

    .line 109
    return-void
.end method

.method protected revalueEntry(Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache<TE;>;"
    .local p1, entry:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;,"Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;"
    iget v2, p1, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;->numUsages:I

    invoke-virtual {p0, v2}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lfu(I)Ljava/util/LinkedList;

    move-result-object v0

    .line 86
    .local v0, currBucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;>;"
    iget v2, p1, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;->numUsages:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry;->numUsages:I

    invoke-virtual {p0, v2}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->lfu(I)Ljava/util/LinkedList;

    move-result-object v1

    .line 88
    .local v1, nextBucket:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache$Entry<TE;>;>;"
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 90
    return-void
.end method
