.class public Lorg/eclipse/mat/parser/model/ClassLoaderImpl;
.super Lorg/eclipse/mat/parser/model/InstanceImpl;
.source "ClassLoaderImpl.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/model/IClassLoader;


# static fields
.field public static final NO_LABEL:Ljava/lang/String; = "__none__"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private volatile transient definedClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJLorg/eclipse/mat/parser/model/ClassImpl;Ljava/util/List;)V
    .locals 2
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
    .line 39
    .local p5, fields:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/Field;>;"
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/mat/parser/model/InstanceImpl;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;Ljava/util/List;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->definedClasses:Ljava/util/List;

    .line 40
    return-void
.end method

.method public static final doGetDefinedClasses(Lorg/eclipse/mat/snapshot/ISnapshot;I)Ljava/util/List;
    .locals 4
    .parameter "dump"
    .parameter "classLoaderId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/snapshot/ISnapshot;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    invoke-interface {p0}, Lorg/eclipse/mat/snapshot/ISnapshot;->getClasses()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 84
    .local v1, clasz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/model/IClass;->getClassLoaderId()I

    move-result v3

    if-ne v3, p1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86
    .end local v1           #clasz:Lorg/eclipse/mat/snapshot/model/IClass;
    :cond_1
    return-object v0
.end method

.method public static final doGetRetainedHeapSizeOfObjects(Lorg/eclipse/mat/snapshot/ISnapshot;IZZLorg/eclipse/mat/util/IProgressListener;)J
    .locals 10
    .parameter "dump"
    .parameter "classLoaderId"
    .parameter "calculateIfNotAvailable"
    .parameter "calculateMinRetainedSize"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 92
    move-object v8, p0

    check-cast v8, Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getRetainedSizeCache()Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;

    move-result-object v8

    invoke-virtual {v8, p1}, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->get(I)J

    move-result-wide v0

    .line 94
    .local v0, answer:J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gtz v8, :cond_0

    if-nez p2, :cond_1

    .line 122
    .end local v0           #answer:J
    .end local p0
    :cond_0
    :goto_0
    return-wide v0

    .line 96
    .restart local v0       #answer:J
    .restart local p0
    :cond_1
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-gez v8, :cond_2

    if-nez p3, :cond_0

    .line 98
    :cond_2
    if-nez p4, :cond_3

    new-instance p4, Lorg/eclipse/mat/util/VoidProgressListener;

    .end local p4
    invoke-direct {p4}, Lorg/eclipse/mat/util/VoidProgressListener;-><init>()V

    .line 100
    .restart local p4
    :cond_3
    new-instance v4, Lorg/eclipse/mat/collect/ArrayInt;

    invoke-direct {v4}, Lorg/eclipse/mat/collect/ArrayInt;-><init>()V

    .line 101
    .local v4, objectIds:Lorg/eclipse/mat/collect/ArrayInt;
    invoke-virtual {v4, p1}, Lorg/eclipse/mat/collect/ArrayInt;->add(I)V

    .line 102
    invoke-static {p0, p1}, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->doGetDefinedClasses(Lorg/eclipse/mat/snapshot/ISnapshot;I)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 103
    .local v2, clasz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v2}, Lorg/eclipse/mat/snapshot/model/IClass;->getObjectId()I

    move-result v8

    invoke-virtual {v4, v8}, Lorg/eclipse/mat/collect/ArrayInt;->add(I)V

    .line 104
    invoke-interface {v2}, Lorg/eclipse/mat/snapshot/model/IClass;->getObjectIds()[I

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/eclipse/mat/collect/ArrayInt;->addAll([I)V

    goto :goto_1

    .line 108
    .end local v2           #clasz:Lorg/eclipse/mat/snapshot/model/IClass;
    :cond_4
    const-wide/16 v6, 0x0

    .line 110
    .local v6, retainedSize:J
    if-nez p3, :cond_8

    .line 111
    invoke-virtual {v4}, Lorg/eclipse/mat/collect/ArrayInt;->toArray()[I

    move-result-object v8

    invoke-interface {p0, v8, p4}, Lorg/eclipse/mat/snapshot/ISnapshot;->getRetainedSet([ILorg/eclipse/mat/util/IProgressListener;)[I

    move-result-object v5

    .line 112
    .local v5, retainedSet:[I
    invoke-interface {p4}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v8

    if-eqz v8, :cond_5

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 113
    :cond_5
    invoke-interface {p0, v5}, Lorg/eclipse/mat/snapshot/ISnapshot;->getHeapSize([I)J

    move-result-wide v6

    .line 119
    .end local v5           #retainedSet:[I
    :cond_6
    if-eqz p3, :cond_7

    neg-long v6, v6

    .line 121
    :cond_7
    check-cast p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    .end local p0
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getRetainedSizeCache()Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;

    move-result-object v8

    invoke-virtual {v8, p1, v6, v7}, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->put(IJ)V

    move-wide v0, v6

    .line 122
    goto :goto_0

    .line 115
    .restart local p0
    :cond_8
    invoke-virtual {v4}, Lorg/eclipse/mat/collect/ArrayInt;->toArray()[I

    move-result-object v8

    invoke-interface {p0, v8, p4}, Lorg/eclipse/mat/snapshot/ISnapshot;->getMinRetainedSize([ILorg/eclipse/mat/util/IProgressListener;)J

    move-result-wide v6

    .line 116
    invoke-interface {p4}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v8

    if-eqz v8, :cond_6

    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getClassSpecificName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 52
    iget-object v1, p0, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->getObjectId()I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getClassLoaderLabel(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, label:Ljava/lang/String;
    const-string v1, "__none__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    invoke-static {p0}, Lorg/eclipse/mat/snapshot/registry/ClassSpecificNameResolverRegistry;->resolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;

    move-result-object v0

    .line 56
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->getObjectId()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->setClassLoaderLabel(ILjava/lang/String;)V

    .line 59
    :cond_0
    return-object v0
.end method

.method public getDefinedClasses()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->definedClasses:Ljava/util/List;

    .line 64
    .local v0, result:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    if-nez v0, :cond_1

    .line 65
    monitor-enter p0

    .line 66
    if-nez v0, :cond_0

    .line 67
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->getObjectId()I

    move-result v2

    invoke-static {v1, v2}, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->doGetDefinedClasses(Lorg/eclipse/mat/snapshot/ISnapshot;I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->definedClasses:Ljava/util/List;

    .line 69
    :cond_0
    monitor-exit p0

    .line 71
    :cond_1
    return-object v0

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRetainedHeapSizeOfObjects(ZZLorg/eclipse/mat/util/IProgressListener;)J
    .locals 2
    .parameter "calculateIfNotAvailable"
    .parameter "calculateMinRetainedSize"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->getObjectId()I

    move-result v1

    invoke-static {v0, v1, p1, p2, p3}, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->doGetRetainedHeapSizeOfObjects(Lorg/eclipse/mat/snapshot/ISnapshot;IZZLorg/eclipse/mat/util/IProgressListener;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected declared-synchronized readFully()V
    .locals 4

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->getObjectAddress()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;->setFields(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_0
    monitor-exit p0

    return-void

    .line 47
    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/eclipse/mat/parser/model/InstanceImpl;->readFully()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
