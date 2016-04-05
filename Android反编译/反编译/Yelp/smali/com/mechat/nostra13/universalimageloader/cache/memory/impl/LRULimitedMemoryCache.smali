.class public Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;
.super Lcom/mechat/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;
.source "LRULimitedMemoryCache.java"


# static fields
.field private static final INITIAL_CAPACITY:I = 0xa

.field private static final LOAD_FACTOR:F = 1.1f


# instance fields
.field private final lruCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "maxSize"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;-><init>(I)V

    .line 46
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    const v2, 0x3f8ccccd

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    .line 51
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 78
    invoke-super {p0}, Lcom/mechat/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->clear()V

    .line 79
    return-void
.end method

.method protected createReference(Landroid/graphics/Bitmap;)Ljava/lang/ref/Reference;
    .locals 1
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/lang/ref/Reference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "key"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-super {p0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected getSize(Landroid/graphics/Bitmap;)I
    .locals 2
    .parameter "value"

    .prologue
    .line 83
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/mechat/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const/4 v0, 0x1

    .line 59
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "key"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-super {p0, p1}, Lcom/mechat/nostra13/universalimageloader/cache/memory/LimitedMemoryCache;->remove(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected removeNext()Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 88
    const/4 v3, 0x0

    .line 89
    .local v3, mostLongUsedValue:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    monitor-enter v5

    .line 90
    :try_start_0
    iget-object v4, p0, Lcom/mechat/nostra13/universalimageloader/cache/memory/impl/LRULimitedMemoryCache;->lruCache:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 91
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 93
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v3, v0

    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 89
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;"
    :cond_0
    monitor-exit v5

    .line 97
    return-object v3

    .line 89
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/graphics/Bitmap;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
