.class public final Lorg/eclipse/mat/parser/internal/SnapshotImpl;
.super Ljava/lang/Object;
.source "SnapshotImpl.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/ISnapshot;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/parser/internal/SnapshotImpl$1;,
        Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;,
        Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;,
        Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;
    }
.end annotation


# instance fields
.field private arrayObjects:Lorg/eclipse/mat/collect/BitField;

.field private classCache:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/parser/model/ClassImpl;",
            ">;"
        }
    .end annotation
.end field

.field private classCacheByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;>;"
        }
    .end annotation
.end field

.field private dominatorTreeCalculated:Z

.field private heapObjectReader:Lorg/eclipse/mat/parser/IObjectReader;

.field private indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

.field private loaderLabels:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private objectCache:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IObject;",
            ">;"
        }
    .end annotation
.end field

.field private parsedThreads:Z

.field private retainedSizeCache:Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;

.field private roots:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<[",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rootsPerThread:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<[",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

.field threadId2stack:Lorg/eclipse/mat/collect/HashMapIntObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IThreadStack;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/eclipse/mat/parser/model/XSnapshotInfo;Lorg/eclipse/mat/parser/IObjectReader;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/BitField;Lorg/eclipse/mat/parser/index/IndexManager;)V
    .locals 6
    .parameter "snapshotInfo"
    .parameter "heapObjectReader"
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter "arrayObjects"
    .parameter "indexManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/parser/model/XSnapshotInfo;",
            "Lorg/eclipse/mat/parser/IObjectReader;",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/parser/model/ClassImpl;",
            ">;",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<[",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<[",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/eclipse/mat/collect/BitField;",
            "Lorg/eclipse/mat/parser/index/IndexManager;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, classCache:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    .local p4, roots:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    .local p5, rootsPerThread:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    .local p6, loaderLabels:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-boolean v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->parsedThreads:Z

    .line 127
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    .line 128
    iput-object p2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->heapObjectReader:Lorg/eclipse/mat/parser/IObjectReader;

    .line 129
    iput-object p3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 130
    iput-object p4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 131
    iput-object p5, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->rootsPerThread:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 132
    iput-object p6, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->loaderLabels:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 133
    iput-object p7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->arrayObjects:Lorg/eclipse/mat/collect/BitField;

    .line 134
    iput-object p8, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    .line 137
    new-instance v4, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;

    invoke-direct {v4, p1}, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;-><init>(Lorg/eclipse/mat/parser/model/XSnapshotInfo;)V

    iput-object v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->retainedSizeCache:Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;

    .line 139
    new-instance v4, Ljava/util/HashMap;

    iget-object v5, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v5}, Lorg/eclipse/mat/collect/HashMapIntObject;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCacheByName:Ljava/util/Map;

    .line 140
    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v4}, Lorg/eclipse/mat/collect/HashMapIntObject;->values()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 141
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 142
    .local v0, clasz:Lorg/eclipse/mat/parser/model/ClassImpl;
    invoke-virtual {v0, p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->setSnapshot(Lorg/eclipse/mat/snapshot/ISnapshot;)V

    .line 144
    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCacheByName:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 145
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    if-nez v2, :cond_0

    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCacheByName:Ljava/util/Map;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getName()Ljava/lang/String;

    move-result-object v5

    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 149
    .end local v0           #clasz:Lorg/eclipse/mat/parser/model/ClassImpl;
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    :cond_1
    invoke-virtual {p8}, Lorg/eclipse/mat/parser/index/IndexManager;->dominated()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p8}, Lorg/eclipse/mat/parser/index/IndexManager;->o2retained()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p8}, Lorg/eclipse/mat/parser/index/IndexManager;->dominator()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v4

    if-eqz v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->dominatorTreeCalculated:Z

    .line 153
    new-instance v3, Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$HeapObjectCache;-><init>(Lorg/eclipse/mat/parser/internal/SnapshotImpl;ILorg/eclipse/mat/parser/internal/SnapshotImpl$1;)V

    iput-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->objectCache:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;

    .line 155
    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->heapObjectReader:Lorg/eclipse/mat/parser/IObjectReader;

    invoke-interface {v3, p0}, Lorg/eclipse/mat/parser/IObjectReader;->open(Lorg/eclipse/mat/snapshot/ISnapshot;)V

    .line 160
    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/mat/parser/internal/SnapshotImpl;)Lorg/eclipse/mat/parser/index/IndexManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/mat/parser/internal/SnapshotImpl;)Lorg/eclipse/mat/collect/HashMapIntObject;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/mat/parser/internal/SnapshotImpl;)Lorg/eclipse/mat/parser/IObjectReader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->heapObjectReader:Lorg/eclipse/mat/parser/IObjectReader;

    return-object v0
.end method

.method private calculateLoaderLabels()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v15, Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-direct {v15}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->loaderLabels:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 164
    const-wide/16 v16, 0x0

    .line 166
    .local v16, usedHeapSize:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v15}, Lorg/eclipse/mat/parser/index/IndexManager;->o2address()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v15

    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    invoke-interface {v15, v0, v1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->reverse(J)I

    move-result v14

    .line 168
    .local v14, systemClassLoaderId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v15}, Lorg/eclipse/mat/collect/HashMapIntObject;->getAllValues()[Ljava/lang/Object;

    move-result-object v5

    .line 169
    .local v5, classes:[Ljava/lang/Object;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v15, v5

    if-ge v8, v15, :cond_3

    .line 170
    aget-object v6, v5, v8

    check-cast v6, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 171
    .local v6, clasz:Lorg/eclipse/mat/parser/model/ClassImpl;
    invoke-virtual {v6}, Lorg/eclipse/mat/parser/model/ClassImpl;->getTotalSize()J

    move-result-wide v18

    add-long v16, v16, v18

    .line 173
    invoke-virtual {v6}, Lorg/eclipse/mat/parser/model/ClassImpl;->getClassLoaderId()I

    move-result v4

    .line 174
    .local v4, classLoaderId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->loaderLabels:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v15, v4}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 175
    .local v11, label:Ljava/lang/String;
    if-eqz v11, :cond_0

    .line 169
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 177
    :cond_0
    if-ne v4, v14, :cond_2

    .line 178
    const-string v11, "<system class loader>"

    .line 185
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->loaderLabels:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v15, v4, v11}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 180
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v3

    .line 181
    .local v3, classLoader:Lorg/eclipse/mat/snapshot/model/IObject;
    invoke-interface {v3}, Lorg/eclipse/mat/snapshot/model/IObject;->getClassSpecificName()Ljava/lang/String;

    move-result-object v11

    .line 182
    if-nez v11, :cond_1

    const-string v11, "__none__"

    goto :goto_2

    .line 190
    .end local v3           #classLoader:Lorg/eclipse/mat/snapshot/model/IObject;
    .end local v4           #classLoaderId:I
    .end local v6           #clasz:Lorg/eclipse/mat/parser/model/ClassImpl;
    .end local v11           #label:Ljava/lang/String;
    :cond_3
    const-string v15, "java.lang.ClassLoader"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getClassesByName(Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v13

    .line 191
    .local v13, loaderClasses:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    if-eqz v13, :cond_8

    .line 192
    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 193
    .local v7, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v7}, Lorg/eclipse/mat/snapshot/model/IClass;->getObjectIds()[I

    move-result-object v2

    .local v2, arr$:[I
    array-length v12, v2

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v12, :cond_4

    aget v4, v2, v10

    .line 194
    .restart local v4       #classLoaderId:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->loaderLabels:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v15, v4}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 195
    .restart local v11       #label:Ljava/lang/String;
    if-eqz v11, :cond_5

    .line 193
    :goto_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 197
    :cond_5
    if-ne v4, v14, :cond_7

    .line 198
    const-string v11, "<system class loader>"

    .line 205
    :cond_6
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->loaderLabels:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v15, v4, v11}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 200
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v3

    .line 201
    .restart local v3       #classLoader:Lorg/eclipse/mat/snapshot/model/IObject;
    invoke-interface {v3}, Lorg/eclipse/mat/snapshot/model/IObject;->getClassSpecificName()Ljava/lang/String;

    move-result-object v11

    .line 202
    if-nez v11, :cond_6

    const-string v11, "__none__"

    goto :goto_5

    .line 210
    .end local v2           #arr$:[I
    .end local v3           #classLoader:Lorg/eclipse/mat/snapshot/model/IObject;
    .end local v4           #classLoaderId:I
    .end local v7           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v10           #i$:I
    .end local v11           #label:Ljava/lang/String;
    .end local v12           #len$:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-virtual/range {v15 .. v17}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setUsedHeapSize(J)V

    .line 213
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/eclipse/mat/parser/index/IndexManager;->idx:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setNumberOfObjects(I)V

    .line 214
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->loaderLabels:Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/mat/collect/HashMapIntObject;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setNumberOfClassLoaders(I)V

    .line 215
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/mat/collect/HashMapIntObject;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setNumberOfGCRoots(I)V

    .line 216
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/mat/collect/HashMapIntObject;->size()I

    move-result v18

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setNumberOfClasses(I)V

    .line 223
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->objectCache:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;

    invoke-virtual {v15}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->clear()V

    .line 224
    return-void
.end method

.method public static create(Lorg/eclipse/mat/parser/model/XSnapshotInfo;Lorg/eclipse/mat/parser/IObjectReader;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/BitField;Lorg/eclipse/mat/parser/index/IndexManager;)Lorg/eclipse/mat/parser/internal/SnapshotImpl;
    .locals 9
    .parameter "snapshotInfo"
    .parameter "heapObjectReader"
    .parameter
    .parameter
    .parameter
    .parameter "arrayObjects"
    .parameter "indexManager"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/parser/model/XSnapshotInfo;",
            "Lorg/eclipse/mat/parser/IObjectReader;",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/parser/model/ClassImpl;",
            ">;",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<[",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<[",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;",
            "Lorg/eclipse/mat/collect/BitField;",
            "Lorg/eclipse/mat/parser/index/IndexManager;",
            ")",
            "Lorg/eclipse/mat/parser/internal/SnapshotImpl;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 82
    .local p2, classCache:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    .local p3, roots:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    .local p4, rootsPerThread:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/collect/HashMapIntObject<[Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    new-instance v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    move-object v8, p6

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;-><init>(Lorg/eclipse/mat/parser/model/XSnapshotInfo;Lorg/eclipse/mat/parser/IObjectReader;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/HashMapIntObject;Lorg/eclipse/mat/collect/BitField;Lorg/eclipse/mat/parser/index/IndexManager;)V

    .line 85
    .local v0, answer:Lorg/eclipse/mat/parser/internal/SnapshotImpl;
    invoke-direct {v0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->calculateLoaderLabels()V

    .line 86
    return-object v0
.end method

.method private dfs2(Lorg/eclipse/mat/collect/BitField;Lorg/eclipse/mat/collect/BitField;[Ljava/lang/String;)I
    .locals 22
    .parameter "bits"
    .parameter "exclude"
    .parameter "fieldNames"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1262
    const/4 v6, 0x0

    .line 1264
    .local v6, count:I
    new-instance v9, Ljava/util/HashSet;

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-direct {v9, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 1265
    .local v9, fieldNamesSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_0

    .line 1266
    aget-object v19, p3, v10

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1265
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1269
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/mat/parser/index/IndexManager;->outbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v15

    .line 1271
    .local v15, outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    new-instance v18, Lorg/eclipse/mat/parser/internal/util/IntStack;

    invoke-direct/range {v18 .. v18}, Lorg/eclipse/mat/parser/internal/util/IntStack;-><init>()V

    .line 1273
    .local v18, stack:Lorg/eclipse/mat/parser/internal/util/IntStack;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/mat/collect/HashMapIntObject;->keys()Lorg/eclipse/mat/collect/IteratorInt;

    move-result-object v8

    .local v8, en:Lorg/eclipse/mat/collect/IteratorInt;
    :goto_1
    invoke-interface {v8}, Lorg/eclipse/mat/collect/IteratorInt;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1274
    invoke-interface {v8}, Lorg/eclipse/mat/collect/IteratorInt;->next()I

    move-result v10

    .line 1275
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/eclipse/mat/parser/internal/util/IntStack;->push(I)V

    .line 1276
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lorg/eclipse/mat/collect/BitField;->set(I)V

    .line 1277
    add-int/lit8 v6, v6, 0x1

    .line 1278
    goto :goto_1

    .line 1282
    :cond_1
    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/mat/parser/internal/util/IntStack;->size()I

    move-result v19

    if-lez v19, :cond_6

    .line 1283
    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/mat/parser/internal/util/IntStack;->pop()I

    move-result v7

    .line 1284
    .local v7, current:I
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1287
    invoke-interface {v15, v7}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v2

    .local v2, arr$:[I
    array-length v13, v2

    .local v13, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .local v12, i$:I
    :goto_2
    if-ge v12, v13, :cond_1

    aget v3, v2, v12

    .line 1289
    .local v3, child:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v14

    .line 1290
    .local v14, obj:Lorg/eclipse/mat/snapshot/model/IObject;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->mapIdToAddress(I)J

    move-result-wide v4

    .line 1292
    .local v4, childAddress:J
    invoke-interface {v14}, Lorg/eclipse/mat/snapshot/model/IObject;->getOutboundReferences()Ljava/util/List;

    move-result-object v17

    .line 1293
    .local v17, refs:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/NamedReference;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .end local v12           #i$:I
    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/eclipse/mat/snapshot/model/NamedReference;

    .line 1298
    .local v16, reference:Lorg/eclipse/mat/snapshot/model/NamedReference;
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v19

    if-nez v19, :cond_2

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/snapshot/model/NamedReference;->getObjectAddress()J

    move-result-wide v20

    cmp-long v19, v20, v4

    if-nez v19, :cond_2

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/snapshot/model/NamedReference;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_2

    .line 1301
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/eclipse/mat/parser/internal/util/IntStack;->push(I)V

    .line 1302
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/eclipse/mat/collect/BitField;->set(I)V

    .line 1303
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1287
    .end local v16           #reference:Lorg/eclipse/mat/snapshot/model/NamedReference;
    :cond_3
    add-int/lit8 v11, v12, 0x1

    .local v11, i$:I
    move v12, v11

    .end local v11           #i$:I
    .restart local v12       #i$:I
    goto :goto_2

    .line 1308
    .end local v2           #arr$:[I
    .end local v3           #child:I
    .end local v4           #childAddress:J
    .end local v12           #i$:I
    .end local v13           #len$:I
    .end local v14           #obj:Lorg/eclipse/mat/snapshot/model/IObject;
    .end local v17           #refs:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/NamedReference;>;"
    :cond_4
    invoke-interface {v15, v7}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v2

    .restart local v2       #arr$:[I
    array-length v13, v2

    .restart local v13       #len$:I
    const/4 v11, 0x0

    .restart local v11       #i$:I
    :goto_4
    if-ge v11, v13, :cond_1

    aget v3, v2, v11

    .line 1309
    .restart local v3       #child:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v19

    if-nez v19, :cond_5

    .line 1310
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lorg/eclipse/mat/parser/internal/util/IntStack;->push(I)V

    .line 1311
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lorg/eclipse/mat/collect/BitField;->set(I)V

    .line 1312
    add-int/lit8 v6, v6, 0x1

    .line 1308
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 1318
    .end local v2           #arr$:[I
    .end local v3           #child:I
    .end local v7           #current:I
    .end local v11           #i$:I
    .end local v13           #len$:I
    :cond_6
    return v6
.end method

.method private getRetainedSetMultiThreaded([IILorg/eclipse/mat/util/IProgressListener;)[I
    .locals 14
    .parameter "objectIds"
    .parameter "availableProcessors"
    .parameter "progressMonitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 475
    array-length v12, p1

    if-nez v12, :cond_0

    .line 476
    const/4 v12, 0x0

    new-array v12, v12, [I

    .line 537
    :goto_0
    return-object v12

    .line 483
    :cond_0
    array-length v12, p1

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 484
    const/4 v12, 0x0

    aget v12, p1, v12

    invoke-direct {p0, v12}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSingleObjectRetainedSet(I)[I

    move-result-object v12

    goto :goto_0

    .line 487
    :cond_1
    iget-object v12, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-virtual {v12}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v8

    .line 489
    .local v8, numberOfObjects:I
    if-nez p3, :cond_2

    new-instance p3, Lorg/eclipse/mat/util/VoidProgressListener;

    .end local p3
    invoke-direct/range {p3 .. p3}, Lorg/eclipse/mat/util/VoidProgressListener;-><init>()V

    .line 492
    .restart local p3
    :cond_2
    new-array v10, v8, [Z

    .line 499
    .local v10, reachable:[Z
    move-object v1, p1

    .local v1, arr$:[I
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget v9, v1, v5

    .line 500
    .local v9, objId:I
    const/4 v12, 0x1

    aput-boolean v12, v10, v9

    .line 499
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 508
    .end local v9           #objId:I
    :cond_3
    iget-object v12, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v12}, Lorg/eclipse/mat/collect/HashMapIntObject;->getAllKeys()[I

    move-result-object v3

    .line 509
    .local v3, gcRoots:[I
    new-instance v7, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;

    iget-object v12, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v12}, Lorg/eclipse/mat/parser/index/IndexManager;->outbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-direct {v7, v3, v10, v12, v0}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;-><init>([I[ZLorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;Lorg/eclipse/mat/util/IProgressListener;)V

    .line 512
    .local v7, marker:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;
    :try_start_0
    move/from16 v0, p2

    invoke-virtual {v7, v0}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->markMultiThreaded(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    move-object v1, p1

    array-length v6, v1

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v6, :cond_4

    aget v9, v1, v5

    .line 522
    .restart local v9       #objId:I
    const/4 v12, 0x0

    aput-boolean v12, v10, v9

    .line 521
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 513
    .end local v9           #objId:I
    :catch_0
    move-exception v2

    .line 514
    .local v2, e:Ljava/lang/InterruptedException;
    new-instance v12, Lorg/eclipse/mat/SnapshotException;

    invoke-direct {v12, v2}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/Throwable;)V

    throw v12

    .line 529
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_4
    new-instance v11, Lorg/eclipse/mat/collect/ArrayIntBig;

    invoke-direct {v11}, Lorg/eclipse/mat/collect/ArrayIntBig;-><init>()V

    .line 532
    .local v11, retained:Lorg/eclipse/mat/collect/ArrayIntBig;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_3
    if-ge v4, v8, :cond_6

    .line 533
    aget-boolean v12, v10, v4

    if-nez v12, :cond_5

    .line 534
    invoke-virtual {v11, v4}, Lorg/eclipse/mat/collect/ArrayIntBig;->add(I)V

    .line 532
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 537
    :cond_6
    invoke-virtual {v11}, Lorg/eclipse/mat/collect/ArrayIntBig;->toArray()[I

    move-result-object v12

    goto :goto_0
.end method

.method private getSingleObjectRetainedSet(I)[I
    .locals 9
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1322
    new-instance v6, Lorg/eclipse/mat/collect/ArrayIntBig;

    invoke-direct {v6}, Lorg/eclipse/mat/collect/ArrayIntBig;-><init>()V

    .line 1323
    .local v6, result:Lorg/eclipse/mat/collect/ArrayIntBig;
    new-instance v7, Lorg/eclipse/mat/parser/internal/util/IntStack;

    invoke-direct {v7}, Lorg/eclipse/mat/parser/internal/util/IntStack;-><init>()V

    .line 1325
    .local v7, stack:Lorg/eclipse/mat/parser/internal/util/IntStack;
    invoke-virtual {v7, p1}, Lorg/eclipse/mat/parser/internal/util/IntStack;->push(I)V

    .line 1329
    :cond_0
    invoke-virtual {v7}, Lorg/eclipse/mat/parser/internal/util/IntStack;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 1330
    invoke-virtual {v7}, Lorg/eclipse/mat/parser/internal/util/IntStack;->pop()I

    move-result v1

    .line 1331
    .local v1, current:I
    invoke-virtual {v6, v1}, Lorg/eclipse/mat/collect/ArrayIntBig;->add(I)V

    .line 1333
    invoke-virtual {p0, v1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getImmediateDominatedIds(I)[I

    move-result-object v5

    .line 1334
    .local v5, next:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, v0, v3

    .line 1335
    .local v2, i:I
    invoke-virtual {v7, v2}, Lorg/eclipse/mat/parser/internal/util/IntStack;->push(I)V

    .line 1334
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1339
    .end local v0           #arr$:[I
    .end local v1           #current:I
    .end local v2           #i:I
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #next:[I
    :cond_1
    invoke-virtual {v6}, Lorg/eclipse/mat/collect/ArrayIntBig;->toArray()[I

    move-result-object v8

    return-object v8
.end method

.method private getTopAncestorsWithBooleanCache([ILorg/eclipse/mat/util/IProgressListener;)[I
    .locals 24
    .parameter "objectIds"
    .parameter "listener"

    .prologue
    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v22

    move/from16 v0, v22

    new-array v11, v0, [Z

    .line 883
    .local v11, negativeCache:[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v22

    move/from16 v0, v22

    new-array v15, v0, [Z

    .line 884
    .local v15, positiveCache:[Z
    move-object/from16 v4, p1

    .local v4, arr$:[I
    array-length v10, v4

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v10, :cond_0

    aget v7, v4, v8

    .line 885
    .local v7, i:I
    const/16 v22, 0x1

    aput-boolean v22, v15, v7

    .line 884
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 891
    .end local v7           #i:I
    :cond_0
    new-instance v16, Lorg/eclipse/mat/collect/ArrayInt;

    invoke-direct/range {v16 .. v16}, Lorg/eclipse/mat/collect/ArrayInt;-><init>()V

    .line 897
    .local v16, result:Lorg/eclipse/mat/collect/ArrayInt;
    const/16 v20, 0x0

    .line 898
    .local v20, tempSize:I
    const/16 v19, 0x2800

    .line 899
    .local v19, tempCapacity:I
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 901
    .local v18, temp:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/eclipse/mat/parser/index/IndexManager;->dominator()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v6

    .line 903
    .local v6, dominatorIdx:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    const/4 v9, 0x0

    .line 904
    .local v9, iterations:I
    move-object/from16 v4, p1

    array-length v10, v4

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v10, :cond_7

    aget v14, v4, v8

    .line 905
    .local v14, objectId:I
    add-int/lit8 v9, v9, 0x1

    .line 906
    const v22, 0xffff

    and-int v22, v22, v9

    if-nez v22, :cond_1

    .line 907
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v22

    if-eqz v22, :cond_1

    .line 908
    new-instance v22, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v22 .. v22}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v22

    .line 912
    :cond_1
    invoke-interface {v6, v14}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v22

    add-int/lit8 v5, v22, -0x2

    .line 913
    .local v5, dominatorId:I
    const/16 v17, 0x1

    .local v17, save:Z
    move/from16 v21, v20

    .line 920
    .end local v20           #tempSize:I
    .local v21, tempSize:I
    :goto_2
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v5, v0, :cond_8

    .line 922
    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 923
    shl-int/lit8 v13, v19, 0x1

    .line 924
    .local v13, newCapacity:I
    new-array v12, v13, [I

    .line 925
    .local v12, newArr:[I
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 926
    move-object/from16 v18, v12

    .line 927
    move/from16 v19, v13

    .line 929
    .end local v12           #newArr:[I
    .end local v13           #newCapacity:I
    :cond_2
    add-int/lit8 v20, v21, 0x1

    .end local v21           #tempSize:I
    .restart local v20       #tempSize:I
    aput v5, v18, v21

    .line 933
    aget-boolean v22, v15, v5

    if-eqz v22, :cond_3

    .line 934
    const/16 v17, 0x0

    .line 936
    :goto_3
    if-lez v20, :cond_4

    .line 938
    add-int/lit8 v20, v20, -0x1

    aget v22, v18, v20

    const/16 v23, 0x1

    aput-boolean v23, v15, v22

    goto :goto_3

    .line 945
    :cond_3
    aget-boolean v22, v11, v5

    if-eqz v22, :cond_5

    .line 951
    :cond_4
    :goto_4
    if-eqz v17, :cond_6

    .line 952
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/eclipse/mat/collect/ArrayInt;->add(I)V

    .line 953
    :goto_5
    if-lez v20, :cond_6

    .line 955
    add-int/lit8 v20, v20, -0x1

    aget v22, v18, v20

    const/16 v23, 0x1

    aput-boolean v23, v11, v22

    goto :goto_5

    .line 949
    :cond_5
    invoke-interface {v6, v5}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v22

    add-int/lit8 v5, v22, -0x2

    move/from16 v21, v20

    .end local v20           #tempSize:I
    .restart local v21       #tempSize:I
    goto :goto_2

    .line 904
    .end local v21           #tempSize:I
    .restart local v20       #tempSize:I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 960
    .end local v5           #dominatorId:I
    .end local v14           #objectId:I
    .end local v17           #save:Z
    :cond_7
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/collect/ArrayInt;->toArray()[I

    move-result-object v22

    return-object v22

    .end local v20           #tempSize:I
    .restart local v5       #dominatorId:I
    .restart local v14       #objectId:I
    .restart local v17       #save:Z
    .restart local v21       #tempSize:I
    :cond_8
    move/from16 v20, v21

    .end local v21           #tempSize:I
    .restart local v20       #tempSize:I
    goto :goto_4
.end method

.method private isDominatorTreeCalculated()Z
    .locals 1

    .prologue
    .line 964
    iget-boolean v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->dominatorTreeCalculated:Z

    return v0
.end method


# virtual methods
.method public calculateDominatorTree(Lorg/eclipse/mat/util/IProgressListener;)V
    .locals 2
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;
        }
    .end annotation

    .prologue
    .line 970
    :try_start_0
    invoke-static {p0, p1}, Lorg/eclipse/mat/parser/internal/DominatorTree;->calculate(Lorg/eclipse/mat/parser/internal/SnapshotImpl;Lorg/eclipse/mat/util/IProgressListener;)V

    .line 971
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/index/IndexManager;->dominated()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/index/IndexManager;->o2retained()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/index/IndexManager;->dominator()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->dominatorTreeCalculated:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    return-void

    .line 971
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/eclipse/mat/SnapshotException;

    invoke-direct {v1, v0}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public dispose()V
    .locals 3

    .prologue
    .line 1204
    const/4 v1, 0x0

    .line 1207
    .local v1, error:Ljava/io/IOException;
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->heapObjectReader:Lorg/eclipse/mat/parser/IObjectReader;

    invoke-interface {v2}, Lorg/eclipse/mat/parser/IObjectReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1213
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/index/IndexManager;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1218
    :goto_1
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->retainedSizeCache:Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->close()V

    .line 1220
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, e1:Ljava/io/IOException;
    move-object v1, v0

    goto :goto_0

    .line 1214
    .end local v0           #e1:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1215
    .restart local v0       #e1:Ljava/io/IOException;
    move-object v1, v0

    goto :goto_1

    .line 1221
    .end local v0           #e1:Ljava/io/IOException;
    :cond_0
    return-void
.end method

.method public getClassLoaderLabel(I)Ljava/lang/String;
    .locals 1
    .parameter "objectId"

    .prologue
    .line 1248
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->loaderLabels:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v0, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getClassOf(I)Lorg/eclipse/mat/snapshot/model/IClass;
    .locals 1
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1109
    invoke-virtual {p0, p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->isClass(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1110
    invoke-virtual {p0, p1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/mat/snapshot/model/IObject;->getClazz()Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v0

    .line 1112
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexManager;->o2class()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/IClass;

    goto :goto_0
.end method

.method public getClasses()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
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
    .line 241
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v1}, Lorg/eclipse/mat/collect/HashMapIntObject;->size()I

    move-result v1

    new-array v1, v1, [Lorg/eclipse/mat/snapshot/model/IClass;

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/collect/HashMapIntObject;->getAllValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getClassesByName(Ljava/lang/String;Z)Ljava/util/Collection;
    .locals 5
    .parameter "name"
    .parameter "includeSubClasses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Collection",
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
    .line 246
    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCacheByName:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 247
    .local v3, list:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    if-nez v3, :cond_1

    const/4 v0, 0x0

    .line 256
    :cond_0
    :goto_0
    return-object v0

    .line 249
    :cond_1
    if-nez p2, :cond_2

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 252
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 253
    .local v0, answer:Ljava/util/Set;,"Ljava/util/Set<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 254
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 255
    .local v1, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/model/IClass;->getAllSubclasses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1
.end method

.method public getClassesByName(Ljava/util/regex/Pattern;Z)Ljava/util/Collection;
    .locals 5
    .parameter "namePattern"
    .parameter "includeSubClasses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/regex/Pattern;",
            "Z)",
            "Ljava/util/Collection",
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
    .line 261
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 262
    .local v3, result:Ljava/util/Set;,"Ljava/util/Set<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    iget-object v4, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v4}, Lorg/eclipse/mat/collect/HashMapIntObject;->getAllValues()[Ljava/lang/Object;

    move-result-object v0

    .line 263
    .local v0, classes:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_1

    .line 264
    aget-object v1, v0, v2

    check-cast v1, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 265
    .local v1, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/model/IClass;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 266
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 267
    if-eqz p2, :cond_0

    .line 268
    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/model/IClass;->getAllSubclasses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 263
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 272
    .end local v1           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    :cond_1
    return-object v3
.end method

.method public getDominatorsOf([ILjava/util/regex/Pattern;Lorg/eclipse/mat/util/IProgressListener;)Lorg/eclipse/mat/snapshot/DominatorsSummary;
    .locals 20
    .parameter "objectIds"
    .parameter "excludePattern"
    .parameter "progressListener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 995
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->isDominatorTreeCalculated()Z

    move-result v18

    if-nez v18, :cond_0

    .line 996
    new-instance v18, Lorg/eclipse/mat/SnapshotException;

    sget-object v19, Lorg/eclipse/mat/hprof/Messages;->SnapshotImpl_Error_DomTreeNotAvailable:Lorg/eclipse/mat/hprof/Messages;

    invoke-direct/range {v18 .. v19}, Lorg/eclipse/mat/SnapshotException;-><init>(Lorg/eclipse/mat/hprof/Messages;)V

    throw v18

    .line 999
    :cond_0
    if-nez p3, :cond_1

    new-instance p3, Lorg/eclipse/mat/util/VoidProgressListener;

    .end local p3
    invoke-direct/range {p3 .. p3}, Lorg/eclipse/mat/util/VoidProgressListener;-><init>()V

    .line 1001
    .restart local p3
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/mat/parser/index/IndexManager;->dominator()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v8

    .line 1002
    .local v8, dominatorIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/mat/parser/index/IndexManager;->o2class()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v14

    .line 1004
    .local v14, o2classIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    new-instance v10, Lorg/eclipse/mat/collect/SetInt;

    invoke-direct {v10}, Lorg/eclipse/mat/collect/SetInt;-><init>()V

    .line 1005
    .local v10, excludeSet:Lorg/eclipse/mat/collect/SetInt;
    new-instance v12, Lorg/eclipse/mat/collect/SetInt;

    invoke-direct {v12}, Lorg/eclipse/mat/collect/SetInt;-><init>()V

    .line 1007
    .local v12, includeSet:Lorg/eclipse/mat/collect/SetInt;
    sget-object v18, Lorg/eclipse/mat/hprof/Messages;->SnapshotImpl_RetrievingDominators:Lorg/eclipse/mat/hprof/Messages;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    div-int/lit8 v19, v19, 0xa

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Lorg/eclipse/mat/hprof/Messages;I)V

    .line 1009
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1011
    .local v13, map:Ljava/util/Map;,"Ljava/util/Map<Lorg/eclipse/mat/snapshot/model/IClass;Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;>;"
    const/4 v11, 0x0

    .local v11, ii:I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_10

    .line 1012
    aget v15, p1, v11

    .line 1019
    .local v15, objectId:I
    invoke-interface {v8, v15}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v18

    add-int/lit8 v7, v18, -0x2

    .line 1020
    .local v7, dominatorId:I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_2

    .line 1021
    const/4 v4, 0x0

    .line 1022
    .local v4, clasz:Lorg/eclipse/mat/snapshot/model/IClass;
    const-string v6, "<ROOT>"

    .line 1023
    .local v6, domClassName:Ljava/lang/String;
    const/4 v5, -0x1

    .line 1030
    .local v5, domClassId:I
    :goto_1
    if-eqz p2, :cond_8

    if-ltz v7, :cond_8

    .line 1031
    const/4 v9, 0x1

    .line 1032
    .local v9, exclude:Z
    :goto_2
    if-eqz v9, :cond_8

    .line 1033
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1034
    new-instance v18, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v18 .. v18}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v18

    .line 1025
    .end local v4           #clasz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v5           #domClassId:I
    .end local v6           #domClassName:Ljava/lang/String;
    .end local v9           #exclude:Z
    :cond_2
    invoke-interface {v14, v7}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v5

    .line 1026
    .restart local v5       #domClassId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 1027
    .restart local v4       #clasz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v4}, Lorg/eclipse/mat/snapshot/model/IClass;->getName()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #domClassName:Ljava/lang/String;
    goto :goto_1

    .line 1038
    .restart local v9       #exclude:Z
    :cond_3
    invoke-virtual {v10, v5}, Lorg/eclipse/mat/collect/SetInt;->contains(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1040
    invoke-interface {v8, v7}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v18

    add-int/lit8 v7, v18, -0x2

    .line 1041
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_4

    .line 1042
    const/4 v4, 0x0

    .line 1043
    const-string v6, "<ROOT>"

    .line 1044
    const/4 v5, -0x1

    goto :goto_2

    .line 1046
    :cond_4
    invoke-interface {v14, v7}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v5

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #clasz:Lorg/eclipse/mat/snapshot/model/IClass;
    check-cast v4, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 1048
    .restart local v4       #clasz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v4}, Lorg/eclipse/mat/snapshot/model/IClass;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1052
    :cond_5
    invoke-virtual {v12, v5}, Lorg/eclipse/mat/collect/SetInt;->contains(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1053
    const/4 v9, 0x0

    goto :goto_2

    .line 1057
    :cond_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/regex/Matcher;->matches()Z

    move-result v18

    if-eqz v18, :cond_7

    if-ltz v7, :cond_7

    .line 1060
    invoke-virtual {v10, v5}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    goto :goto_2

    .line 1062
    :cond_7
    invoke-virtual {v12, v5}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    .line 1063
    const/4 v9, 0x0

    goto :goto_2

    .line 1069
    .end local v9           #exclude:Z
    :cond_8
    invoke-interface {v13, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    .line 1070
    .local v16, record:Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    if-nez v16, :cond_a

    .line 1071
    new-instance v16, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    .end local v16           #record:Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    invoke-direct/range {v16 .. v16}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;-><init>()V

    .line 1072
    .restart local v16       #record:Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    move-object/from16 v0, v16

    invoke-interface {v13, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1073
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->setClassName(Ljava/lang/String;)V

    .line 1074
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->setClassId(I)V

    .line 1075
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_9

    if-nez v4, :cond_d

    :cond_9
    const/16 v18, -0x1

    :goto_3
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->setClassloaderId(I)V

    .line 1078
    :cond_a
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->addDominator(I)Z

    move-result v18

    if-eqz v18, :cond_b

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v7, v0, :cond_b

    .line 1079
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getHeapSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->addDominatorNetSize(J)V

    .line 1081
    :cond_b
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->addDominated(I)Z

    move-result v18

    if-eqz v18, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getHeapSize(I)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->addDominatedNetSize(J)V

    .line 1083
    :cond_c
    rem-int/lit8 v18, v11, 0xa

    if-nez v18, :cond_f

    .line 1084
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v18

    if-eqz v18, :cond_e

    new-instance v18, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v18 .. v18}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v18

    .line 1075
    :cond_d
    invoke-interface {v4}, Lorg/eclipse/mat/snapshot/model/IClass;->getClassLoaderId()I

    move-result v18

    goto :goto_3

    .line 1085
    :cond_e
    const/16 v18, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 1011
    :cond_f
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1089
    .end local v4           #clasz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v5           #domClassId:I
    .end local v6           #domClassName:Ljava/lang/String;
    .end local v7           #dominatorId:I
    .end local v15           #objectId:I
    .end local v16           #record:Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    :cond_10
    invoke-interface {v13}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v18

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    .line 1092
    .local v17, records:[Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->done()V

    .line 1094
    new-instance v18, Lorg/eclipse/mat/snapshot/DominatorsSummary;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/mat/snapshot/DominatorsSummary;-><init>([Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;Lorg/eclipse/mat/snapshot/ISnapshot;)V

    return-object v18
.end method

.method public getGCRootInfo(I)[Lorg/eclipse/mat/snapshot/model/GCRootInfo;
    .locals 1
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1105
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v0, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/mat/snapshot/model/GCRootInfo;

    return-object v0
.end method

.method public getGCRoots()[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 235
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v0}, Lorg/eclipse/mat/collect/HashMapIntObject;->getAllKeys()[I

    move-result-object v0

    return-object v0
.end method

.method public getHeapObjectReader()Lorg/eclipse/mat/parser/IObjectReader;
    .locals 1

    .prologue
    .line 1619
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->heapObjectReader:Lorg/eclipse/mat/parser/IObjectReader;

    return-object v0
.end method

.method public getHeapSize(I)I
    .locals 3
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1121
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->arrayObjects:Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {v1, p1}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1122
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/index/IndexManager;->a2size()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v1

    .line 1132
    :goto_0
    return v1

    .line 1124
    :cond_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v1, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 1126
    .local v0, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    if-eqz v0, :cond_1

    .line 1128
    invoke-interface {v0}, Lorg/eclipse/mat/snapshot/model/IClass;->getUsedHeapSize()I

    move-result v1

    goto :goto_0

    .line 1131
    :cond_1
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v2}, Lorg/eclipse/mat/parser/index/IndexManager;->o2class()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    check-cast v0, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 1132
    .restart local v0       #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v0}, Lorg/eclipse/mat/snapshot/model/IClass;->getHeapSizePerInstance()I

    move-result v1

    goto :goto_0
.end method

.method public getHeapSize([I)J
    .locals 12
    .parameter "objectIds"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1138
    const-wide/16 v8, 0x0

    .line 1139
    .local v8, total:J
    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v7}, Lorg/eclipse/mat/parser/index/IndexManager;->o2class()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v5

    .line 1140
    .local v5, o2class:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v7}, Lorg/eclipse/mat/parser/index/IndexManager;->a2size()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v0

    .line 1141
    .local v0, a2size:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    move-object v1, p1

    .local v1, arr$:[I
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget v6, v1, v3

    .line 1142
    .local v6, objectId:I
    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->arrayObjects:Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {v7, v6}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1145
    invoke-interface {v0, v6}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v8, v10

    .line 1141
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1147
    :cond_0
    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v7, v6}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 1149
    .local v2, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    if-eqz v2, :cond_1

    .line 1151
    invoke-interface {v2}, Lorg/eclipse/mat/snapshot/model/IClass;->getUsedHeapSize()I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v8, v10

    goto :goto_1

    .line 1154
    :cond_1
    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-interface {v5, v6}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v10

    invoke-virtual {v7, v10}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    check-cast v2, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 1155
    .restart local v2       #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v2}, Lorg/eclipse/mat/snapshot/model/IClass;->getHeapSizePerInstance()I

    move-result v7

    int-to-long v10, v7

    add-long/2addr v8, v10

    goto :goto_1

    .line 1159
    .end local v2           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v6           #objectId:I
    :cond_2
    return-wide v8
.end method

.method public getImmediateDominatedIds(I)[I
    .locals 2
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 980
    invoke-direct {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->isDominatorTreeCalculated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 981
    new-instance v0, Lorg/eclipse/mat/SnapshotException;

    sget-object v1, Lorg/eclipse/mat/hprof/Messages;->SnapshotImpl_Error_DomTreeNotAvailable:Lorg/eclipse/mat/hprof/Messages;

    invoke-direct {v0, v1}, Lorg/eclipse/mat/SnapshotException;-><init>(Lorg/eclipse/mat/hprof/Messages;)V

    throw v0

    .line 983
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexManager;->dominated()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v0, v1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getImmediateDominatorId(I)I
    .locals 2
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-direct {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->isDominatorTreeCalculated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    new-instance v0, Lorg/eclipse/mat/SnapshotException;

    sget-object v1, Lorg/eclipse/mat/hprof/Messages;->SnapshotImpl_Error_DomTreeNotAvailable:Lorg/eclipse/mat/hprof/Messages;

    invoke-direct {v0, v1}, Lorg/eclipse/mat/SnapshotException;-><init>(Lorg/eclipse/mat/hprof/Messages;)V

    throw v0

    .line 990
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexManager;->dominator()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    return v0
.end method

.method public getInboundRefererIds(I)[I
    .locals 1
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexManager;->inbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getInboundRefererIds([ILorg/eclipse/mat/util/IProgressListener;)[I
    .locals 11
    .parameter "objectIds"
    .parameter "progressMonitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 338
    if-nez p2, :cond_0

    new-instance p2, Lorg/eclipse/mat/util/VoidProgressListener;

    .end local p2
    invoke-direct {p2}, Lorg/eclipse/mat/util/VoidProgressListener;-><init>()V

    .line 340
    .restart local p2
    :cond_0
    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v9}, Lorg/eclipse/mat/parser/index/IndexManager;->inbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v4

    .line 342
    .local v4, inbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    new-instance v8, Lorg/eclipse/mat/collect/SetInt;

    invoke-direct {v8}, Lorg/eclipse/mat/collect/SetInt;-><init>()V

    .line 343
    .local v8, result:Lorg/eclipse/mat/collect/SetInt;
    sget-object v9, Lorg/eclipse/mat/hprof/Messages;->SnapshotImpl_ReadingInboundReferrers:Lorg/eclipse/mat/hprof/Messages;

    array-length v10, p1

    div-int/lit8 v10, v10, 0x64

    invoke-interface {p2, v9, v10}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Lorg/eclipse/mat/hprof/Messages;I)V

    .line 346
    const/4 v3, 0x0

    .local v3, ii:I
    :goto_0
    array-length v9, p1

    if-ge v3, v9, :cond_4

    .line 347
    aget v9, p1, v3

    invoke-interface {v4, v9}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v7

    .line 348
    .local v7, referees:[I
    move-object v0, v7

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget v6, v0, v2

    .line 349
    .local v6, refereeId:I
    invoke-virtual {v8, v6}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 351
    .end local v6           #refereeId:I
    :cond_1
    rem-int/lit8 v9, v3, 0x64

    if-nez v9, :cond_3

    .line 352
    invoke-interface {p2}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v1, 0x0

    .line 364
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v7           #referees:[I
    :goto_2
    return-object v1

    .line 353
    .restart local v0       #arr$:[I
    .restart local v2       #i$:I
    .restart local v5       #len$:I
    .restart local v7       #referees:[I
    :cond_2
    const/4 v9, 0x1

    invoke-interface {p2, v9}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 346
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 357
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v5           #len$:I
    .end local v7           #referees:[I
    :cond_4
    invoke-virtual {v8}, Lorg/eclipse/mat/collect/SetInt;->toArray()[I

    move-result-object v1

    .line 362
    .local v1, endResult:[I
    invoke-interface {p2}, Lorg/eclipse/mat/util/IProgressListener;->done()V

    goto :goto_2
.end method

.method public getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;
    .locals 1

    .prologue
    .line 1615
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    return-object v0
.end method

.method public getMinRetainedSet([ILorg/eclipse/mat/util/IProgressListener;)[I
    .locals 34
    .parameter "objectIds"
    .parameter "progressMonitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 649
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_0

    .line 650
    const/16 v32, 0x0

    aget v32, p1, v32

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSingleObjectRetainedSet(I)[I

    move-result-object v32

    .line 763
    :goto_0
    return-object v32

    .line 653
    :cond_0
    new-instance v23, Lorg/eclipse/mat/collect/SetInt;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    move-object/from16 v0, v23

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/eclipse/mat/collect/SetInt;-><init>(I)V

    .line 654
    .local v23, retainedSet:Lorg/eclipse/mat/collect/SetInt;
    move-object/from16 v5, p1

    .local v5, arr$:[I
    array-length v0, v5

    move/from16 v16, v0

    .local v16, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    aget v12, v5, v13

    .line 655
    .local v12, i:I
    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    .line 654
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 662
    .end local v12           #i:I
    :cond_1
    new-instance v18, Lorg/eclipse/mat/collect/SetInt;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    mul-int/lit8 v32, v32, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v32

    invoke-direct {v0, v1}, Lorg/eclipse/mat/collect/SetInt;-><init>(I)V

    .line 668
    .local v18, negativeCache:Lorg/eclipse/mat/collect/SetInt;
    const/16 v30, 0x0

    .line 669
    .local v30, tempSize:I
    const/16 v29, 0x2800

    .line 670
    .local v29, tempCapacity:I
    move/from16 v0, v29

    new-array v0, v0, [I

    move-object/from16 v28, v0

    .line 672
    .local v28, temp:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/eclipse/mat/parser/index/IndexManager;->dominator()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v11

    .line 673
    .local v11, dominatorIdx:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Lorg/eclipse/mat/parser/index/IndexManager;->dominated()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v9

    .line 675
    .local v9, dominated:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    const/16 v25, 0x0

    .line 676
    .local v25, size:I
    const/16 v7, 0x2800

    .line 677
    .local v7, capacity:I
    new-array v0, v7, [I

    move-object/from16 v27, v0

    .line 679
    .local v27, stack:[I
    const/4 v15, 0x0

    .line 680
    .local v15, iterations:I
    move-object/from16 v5, p1

    array-length v0, v5

    move/from16 v16, v0

    const/4 v13, 0x0

    move v14, v13

    .end local v13           #i$:I
    .local v14, i$:I
    move/from16 v26, v25

    .end local v5           #arr$:[I
    .end local v16           #len$:I
    .end local v25           #size:I
    .local v26, size:I
    :goto_2
    move/from16 v0, v16

    if-ge v14, v0, :cond_b

    aget v22, v5, v14

    .line 682
    .local v22, objectId:I
    add-int/lit8 v15, v15, 0x1

    .line 683
    const v32, 0xffff

    and-int v32, v32, v15

    if-nez v32, :cond_2

    .line 684
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v32

    if-eqz v32, :cond_2

    .line 685
    new-instance v32, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v32 .. v32}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v32

    .line 689
    :cond_2
    move/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v32

    add-int/lit8 v10, v32, -0x2

    .line 690
    .local v10, dominatorId:I
    const/16 v24, 0x1

    .local v24, save:Z
    move/from16 v31, v30

    .line 697
    .end local v30           #tempSize:I
    .local v31, tempSize:I
    :goto_3
    const/16 v32, -0x1

    move/from16 v0, v32

    if-le v10, v0, :cond_c

    .line 699
    move/from16 v0, v31

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 700
    shl-int/lit8 v20, v29, 0x1

    .line 701
    .local v20, newCapacity:I
    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 702
    .local v19, newArr:[I
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v32

    move-object/from16 v2, v19

    move/from16 v3, v33

    move/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 703
    move-object/from16 v28, v19

    .line 704
    move/from16 v29, v20

    .line 706
    .end local v19           #newArr:[I
    .end local v20           #newCapacity:I
    :cond_3
    add-int/lit8 v30, v31, 0x1

    .end local v31           #tempSize:I
    .restart local v30       #tempSize:I
    aput v10, v28, v31

    .line 711
    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Lorg/eclipse/mat/collect/SetInt;->contains(I)Z

    move-result v32

    if-eqz v32, :cond_5

    .line 712
    const/16 v24, 0x0

    .line 724
    :cond_4
    :goto_4
    if-eqz v24, :cond_9

    .line 727
    :goto_5
    if-lez v30, :cond_6

    .line 729
    add-int/lit8 v30, v30, -0x1

    aget v32, v28, v30

    move-object/from16 v0, v18

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    goto :goto_5

    .line 718
    :cond_5
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lorg/eclipse/mat/collect/SetInt;->contains(I)Z

    move-result v32

    if-nez v32, :cond_4

    .line 722
    invoke-interface {v11, v10}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v32

    add-int/lit8 v10, v32, -0x2

    move/from16 v31, v30

    .end local v30           #tempSize:I
    .restart local v31       #tempSize:I
    goto :goto_3

    .line 738
    .end local v31           #tempSize:I
    .restart local v30       #tempSize:I
    :cond_6
    add-int/lit8 v25, v26, 0x1

    .end local v26           #size:I
    .restart local v25       #size:I
    aput v22, v27, v26

    .line 742
    .end local v14           #i$:I
    :goto_6
    if-lez v25, :cond_a

    .line 744
    add-int/lit8 v25, v25, -0x1

    aget v8, v27, v25

    .line 745
    .local v8, current:I
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    .line 747
    add-int/lit8 v32, v8, 0x1

    move/from16 v0, v32

    invoke-interface {v9, v0}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v21

    .line 748
    .local v21, next:[I
    move-object/from16 v6, v21

    .local v6, arr$:[I
    array-length v0, v6

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v13, 0x0

    .restart local v13       #i$:I
    move/from16 v26, v25

    .end local v25           #size:I
    .restart local v26       #size:I
    :goto_7
    move/from16 v0, v17

    if-ge v13, v0, :cond_8

    aget v12, v6, v13

    .line 750
    .restart local v12       #i:I
    move/from16 v0, v26

    if-ne v0, v7, :cond_7

    .line 751
    shl-int/lit8 v20, v7, 0x1

    .line 752
    .restart local v20       #newCapacity:I
    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v19, v0

    .line 753
    .restart local v19       #newArr:[I
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    move-object/from16 v2, v19

    move/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 754
    move-object/from16 v27, v19

    .line 755
    move/from16 v7, v20

    .line 757
    .end local v19           #newArr:[I
    .end local v20           #newCapacity:I
    :cond_7
    add-int/lit8 v25, v26, 0x1

    .end local v26           #size:I
    .restart local v25       #size:I
    aput v12, v27, v26

    .line 748
    add-int/lit8 v13, v13, 0x1

    move/from16 v26, v25

    .end local v25           #size:I
    .restart local v26       #size:I
    goto :goto_7

    .end local v12           #i:I
    :cond_8
    move/from16 v25, v26

    .line 759
    .end local v26           #size:I
    .restart local v25       #size:I
    goto :goto_6

    .end local v6           #arr$:[I
    .end local v8           #current:I
    .end local v13           #i$:I
    .end local v17           #len$:I
    .end local v21           #next:[I
    .end local v25           #size:I
    .restart local v14       #i$:I
    .restart local v26       #size:I
    :cond_9
    move/from16 v25, v26

    .line 680
    .end local v14           #i$:I
    .end local v26           #size:I
    .restart local v25       #size:I
    :cond_a
    add-int/lit8 v13, v14, 0x1

    .restart local v13       #i$:I
    move v14, v13

    .end local v13           #i$:I
    .restart local v14       #i$:I
    move/from16 v26, v25

    .end local v25           #size:I
    .restart local v26       #size:I
    goto/16 :goto_2

    .line 763
    .end local v10           #dominatorId:I
    .end local v22           #objectId:I
    .end local v24           #save:Z
    :cond_b
    invoke-virtual/range {v23 .. v23}, Lorg/eclipse/mat/collect/SetInt;->toArray()[I

    move-result-object v32

    goto/16 :goto_0

    .end local v30           #tempSize:I
    .restart local v10       #dominatorId:I
    .restart local v22       #objectId:I
    .restart local v24       #save:Z
    .restart local v31       #tempSize:I
    :cond_c
    move/from16 v30, v31

    .end local v31           #tempSize:I
    .restart local v30       #tempSize:I
    goto/16 :goto_4
.end method

.method public getMinRetainedSize([ILorg/eclipse/mat/util/IProgressListener;)J
    .locals 10
    .parameter "objectIds"
    .parameter "progressMonitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 628
    array-length v7, p1

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 629
    const/4 v7, 0x0

    aget v7, p1, v7

    invoke-virtual {p0, v7}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getRetainedHeapSize(I)J

    move-result-wide v4

    .line 644
    :cond_0
    :goto_0
    return-wide v4

    .line 631
    :cond_1
    array-length v7, p1

    if-nez v7, :cond_2

    .line 632
    const-wide/16 v4, 0x0

    goto :goto_0

    .line 639
    :cond_2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getTopAncestorsInDominatorTree([ILorg/eclipse/mat/util/IProgressListener;)[I

    move-result-object v6

    .line 640
    .local v6, topAncestors:[I
    const-wide/16 v4, 0x0

    .line 641
    .local v4, result:J
    move-object v0, v6

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_0

    aget v3, v0, v1

    .line 642
    .local v3, topAncestorId:I
    invoke-virtual {p0, v3}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getRetainedHeapSize(I)J

    move-result-wide v8

    add-long/2addr v4, v8

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getMultiplePathsFromGCRoots([ILjava/util/Map;)Lorg/eclipse/mat/snapshot/IMultiplePathsFromGCRootsComputer;
    .locals 1
    .parameter "objectIds"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/Map",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/eclipse/mat/snapshot/IMultiplePathsFromGCRootsComputer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 402
    .local p2, excludeList:Ljava/util/Map;,"Ljava/util/Map<Lorg/eclipse/mat/snapshot/model/IClass;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v0, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;

    invoke-direct {v0, p1, p2, p0}, Lorg/eclipse/mat/parser/internal/snapshot/MultiplePathsFromGCRootsComputerImpl;-><init>([ILjava/util/Map;Lorg/eclipse/mat/parser/internal/SnapshotImpl;)V

    return-object v0
.end method

.method public getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;
    .locals 2
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1098
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v1, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 1099
    .local v0, answer:Lorg/eclipse/mat/snapshot/model/IObject;
    if-eqz v0, :cond_0

    .line 1101
    .end local v0           #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    :goto_0
    return-object v0

    .restart local v0       #answer:Lorg/eclipse/mat/snapshot/model/IObject;
    :cond_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->objectCache:Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;

    invoke-virtual {v1, p1}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/snapshot/model/IObject;

    move-object v0, v1

    goto :goto_0
.end method

.method public getOutboundReferentIds(I)[I
    .locals 1
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexManager;->outbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getOutboundReferentIds([ILorg/eclipse/mat/util/IProgressListener;)[I
    .locals 11
    .parameter "objectIds"
    .parameter "progressMonitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 369
    if-nez p2, :cond_0

    new-instance p2, Lorg/eclipse/mat/util/VoidProgressListener;

    .end local p2
    invoke-direct {p2}, Lorg/eclipse/mat/util/VoidProgressListener;-><init>()V

    .line 371
    .restart local p2
    :cond_0
    iget-object v9, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v9}, Lorg/eclipse/mat/parser/index/IndexManager;->outbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v5

    .line 373
    .local v5, outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    new-instance v8, Lorg/eclipse/mat/collect/SetInt;

    invoke-direct {v8}, Lorg/eclipse/mat/collect/SetInt;-><init>()V

    .line 374
    .local v8, result:Lorg/eclipse/mat/collect/SetInt;
    sget-object v9, Lorg/eclipse/mat/hprof/Messages;->SnapshotImpl_ReadingOutboundReferrers:Lorg/eclipse/mat/hprof/Messages;

    array-length v10, p1

    div-int/lit8 v10, v10, 0x64

    invoke-interface {p2, v9, v10}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Lorg/eclipse/mat/hprof/Messages;I)V

    .line 377
    const/4 v3, 0x0

    .local v3, ii:I
    :goto_0
    array-length v9, p1

    if-ge v3, v9, :cond_4

    .line 378
    aget v9, p1, v3

    invoke-interface {v5, v9}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;->get(I)[I

    move-result-object v7

    .line 379
    .local v7, referees:[I
    move-object v0, v7

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_1

    aget v6, v0, v2

    .line 380
    .local v6, refereeId:I
    invoke-virtual {v8, v6}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    .line 379
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 382
    .end local v6           #refereeId:I
    :cond_1
    rem-int/lit8 v9, v3, 0x64

    if-nez v9, :cond_3

    .line 383
    invoke-interface {p2}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v1, 0x0

    .line 392
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v7           #referees:[I
    :goto_2
    return-object v1

    .line 384
    .restart local v0       #arr$:[I
    .restart local v2       #i$:I
    .restart local v4       #len$:I
    .restart local v7       #referees:[I
    :cond_2
    const/4 v9, 0x1

    invoke-interface {p2, v9}, Lorg/eclipse/mat/util/IProgressListener;->worked(I)V

    .line 377
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 388
    .end local v0           #arr$:[I
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v7           #referees:[I
    :cond_4
    invoke-virtual {v8}, Lorg/eclipse/mat/collect/SetInt;->toArray()[I

    move-result-object v1

    .line 390
    .local v1, endResult:[I
    invoke-interface {p2}, Lorg/eclipse/mat/util/IProgressListener;->done()V

    goto :goto_2
.end method

.method public getPathsFromGCRoots(ILjava/util/Map;)Lorg/eclipse/mat/snapshot/IPathsFromGCRootsComputer;
    .locals 1
    .parameter "objectId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lorg/eclipse/mat/snapshot/IPathsFromGCRootsComputer;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 397
    .local p2, excludeList:Ljava/util/Map;,"Ljava/util/Map<Lorg/eclipse/mat/snapshot/model/IClass;Ljava/util/Set<Ljava/lang/String;>;>;"
    new-instance v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;

    invoke-direct {v0, p0, p1, p2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl$PathsFromGCRootsComputerImpl;-><init>(Lorg/eclipse/mat/parser/internal/SnapshotImpl;ILjava/util/Map;)V

    return-object v0
.end method

.method public getRetainedHeapSize(I)J
    .locals 2
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1163
    invoke-direct {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->isDominatorTreeCalculated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1164
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexManager;->o2retained()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->get(I)J

    move-result-wide v0

    .line 1166
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRetainedSet([ILorg/eclipse/mat/util/IProgressListener;)[I
    .locals 2
    .parameter "objectIds"
    .parameter "progressMonitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 542
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    .line 543
    .local v0, availableProcessors:I
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 544
    invoke-direct {p0, p1, v0, p2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getRetainedSetMultiThreaded([IILorg/eclipse/mat/util/IProgressListener;)[I

    move-result-object v1

    .line 546
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getRetainedSetSingleThreaded([ILorg/eclipse/mat/util/IProgressListener;)[I

    move-result-object v1

    goto :goto_0
.end method

.method public getRetainedSet([I[Ljava/lang/String;Lorg/eclipse/mat/util/IProgressListener;)[I
    .locals 13
    .parameter "objectIds"
    .parameter "fieldNames"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 552
    array-length v12, p1

    if-nez v12, :cond_1

    .line 553
    const/4 v12, 0x0

    new-array v11, v12, [I

    .line 578
    :cond_0
    :goto_0
    return-object v11

    .line 556
    :cond_1
    iget-object v12, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v12}, Lorg/eclipse/mat/parser/index/IndexManager;->o2address()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v12

    invoke-interface {v12}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->size()I

    move-result v8

    .line 558
    .local v8, numberOfObjects:I
    if-nez p3, :cond_2

    new-instance p3, Lorg/eclipse/mat/util/VoidProgressListener;

    .end local p3
    invoke-direct/range {p3 .. p3}, Lorg/eclipse/mat/util/VoidProgressListener;-><init>()V

    .line 560
    .restart local p3
    :cond_2
    new-instance v3, Lorg/eclipse/mat/collect/BitField;

    invoke-direct {v3, v8}, Lorg/eclipse/mat/collect/BitField;-><init>(I)V

    .line 561
    .local v3, initialSet:Lorg/eclipse/mat/collect/BitField;
    move-object v0, p1

    .local v0, arr$:[I
    array-length v6, v0

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v6, :cond_3

    aget v9, v0, v2

    .line 562
    .local v9, objId:I
    invoke-virtual {v3, v9}, Lorg/eclipse/mat/collect/BitField;->set(I)V

    .line 561
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 564
    .end local v9           #objId:I
    :cond_3
    invoke-interface/range {p3 .. p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v12

    if-eqz v12, :cond_4

    const/4 v11, 0x0

    goto :goto_0

    .line 566
    :cond_4
    new-instance v10, Lorg/eclipse/mat/collect/BitField;

    invoke-direct {v10, v8}, Lorg/eclipse/mat/collect/BitField;-><init>(I)V

    .line 568
    .local v10, reachable:Lorg/eclipse/mat/collect/BitField;
    invoke-direct {p0, v10, v3, p2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->dfs2(Lorg/eclipse/mat/collect/BitField;Lorg/eclipse/mat/collect/BitField;[Ljava/lang/String;)I

    move-result v7

    .line 570
    .local v7, markedObjects:I
    sub-int v12, v8, v7

    new-array v11, v12, [I

    .line 571
    .local v11, retained:[I
    const/4 v4, 0x0

    .line 572
    .local v4, j:I
    const/4 v1, 0x0

    .local v1, i:I
    move v5, v4

    .end local v4           #j:I
    .local v5, j:I
    :goto_2
    if-ge v1, v8, :cond_0

    .line 573
    invoke-virtual {v10, v1}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v12

    if-nez v12, :cond_5

    .line 574
    add-int/lit8 v4, v5, 0x1

    .end local v5           #j:I
    .restart local v4       #j:I
    aput v1, v11, v5

    .line 572
    :goto_3
    add-int/lit8 v1, v1, 0x1

    move v5, v4

    .end local v4           #j:I
    .restart local v5       #j:I
    goto :goto_2

    :cond_5
    move v4, v5

    .end local v5           #j:I
    .restart local v4       #j:I
    goto :goto_3
.end method

.method public getRetainedSet([I[Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;Lorg/eclipse/mat/util/IProgressListener;)[I
    .locals 15
    .parameter "objectIds"
    .parameter "excludedReferences"
    .parameter "progressMonitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v12

    invoke-virtual {v12}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v12

    new-array v2, v12, [Z

    .line 590
    .local v2, firstPass:[Z
    move-object/from16 v1, p1

    .local v1, arr$:[I
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget v8, v1, v4

    .line 591
    .local v8, objId:I
    const/4 v12, 0x1

    aput-boolean v12, v2, v8

    .line 590
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 593
    .end local v8           #objId:I
    :cond_0
    new-instance v6, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getGCRoots()[I

    move-result-object v12

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v13

    iget-object v13, v13, Lorg/eclipse/mat/parser/index/IndexManager;->outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    new-instance v14, Lorg/eclipse/mat/util/VoidProgressListener;

    invoke-direct {v14}, Lorg/eclipse/mat/util/VoidProgressListener;-><init>()V

    invoke-direct {v6, v12, v2, v13, v14}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;-><init>([I[ZLorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;Lorg/eclipse/mat/util/IProgressListener;)V

    .line 595
    .local v6, marker:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;
    move-object/from16 v0, p2

    invoke-virtual {v6, v0, p0}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->markSingleThreaded([Lorg/eclipse/mat/snapshot/ExcludedReferencesDescriptor;Lorg/eclipse/mat/snapshot/ISnapshot;)I

    .line 598
    move-object/from16 v1, p1

    array-length v5, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_1

    aget v8, v1, v4

    .line 599
    .restart local v8       #objId:I
    const/4 v12, 0x0

    aput-boolean v12, v2, v8

    .line 598
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 606
    .end local v8           #objId:I
    :cond_1
    array-length v12, v2

    new-array v11, v12, [Z

    .line 607
    .local v11, secondPass:[Z
    const/4 v12, 0x0

    const/4 v13, 0x0

    array-length v14, v2

    invoke-static {v2, v12, v11, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    new-instance v10, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v12

    iget-object v12, v12, Lorg/eclipse/mat/parser/index/IndexManager;->outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    new-instance v13, Lorg/eclipse/mat/util/VoidProgressListener;

    invoke-direct {v13}, Lorg/eclipse/mat/util/VoidProgressListener;-><init>()V

    move-object/from16 v0, p1

    invoke-direct {v10, v0, v11, v12, v13}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;-><init>([I[ZLorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;Lorg/eclipse/mat/util/IProgressListener;)V

    .line 611
    .local v10, secondMarker:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;
    invoke-virtual {v10}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->markSingleThreaded()I

    .line 616
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v12

    invoke-virtual {v12}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v7

    .line 617
    .local v7, numObjects:I
    new-instance v9, Lorg/eclipse/mat/collect/ArrayIntBig;

    invoke-direct {v9}, Lorg/eclipse/mat/collect/ArrayIntBig;-><init>()V

    .line 618
    .local v9, retainedSet:Lorg/eclipse/mat/collect/ArrayIntBig;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v7, :cond_3

    .line 619
    aget-boolean v12, v2, v3

    if-nez v12, :cond_2

    aget-boolean v12, v11, v3

    if-eqz v12, :cond_2

    .line 620
    invoke-virtual {v9, v3}, Lorg/eclipse/mat/collect/ArrayIntBig;->add(I)V

    .line 618
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 623
    :cond_3
    invoke-virtual {v9}, Lorg/eclipse/mat/collect/ArrayIntBig;->toArray()[I

    move-result-object v12

    return-object v12
.end method

.method getRetainedSetSingleThreaded([ILorg/eclipse/mat/util/IProgressListener;)[I
    .locals 16
    .parameter "objectIds"
    .parameter "progressMonitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 408
    move-object/from16 v0, p1

    array-length v14, v0

    if-nez v14, :cond_1

    .line 409
    const/4 v14, 0x0

    new-array v13, v14, [I

    .line 469
    :cond_0
    :goto_0
    return-object v13

    .line 416
    :cond_1
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    .line 417
    const/4 v14, 0x0

    aget v14, p1, v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSingleObjectRetainedSet(I)[I

    move-result-object v13

    goto :goto_0

    .line 420
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-virtual {v14}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getNumberOfObjects()I

    move-result v10

    .line 422
    .local v10, numberOfObjects:I
    if-nez p2, :cond_3

    new-instance p2, Lorg/eclipse/mat/util/VoidProgressListener;

    .end local p2
    invoke-direct/range {p2 .. p2}, Lorg/eclipse/mat/util/VoidProgressListener;-><init>()V

    .line 425
    .restart local p2
    :cond_3
    new-array v12, v10, [Z

    .line 432
    .local v12, reachable:[Z
    move-object/from16 v1, p1

    .local v1, arr$:[I
    array-length v7, v1

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v7, :cond_4

    aget v11, v1, v4

    .line 433
    .local v11, objId:I
    const/4 v14, 0x1

    aput-boolean v14, v12, v11

    .line 432
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 441
    .end local v11           #objId:I
    :cond_4
    new-instance v8, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v14}, Lorg/eclipse/mat/collect/HashMapIntObject;->getAllKeys()[I

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v15}, Lorg/eclipse/mat/parser/index/IndexManager;->outbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-direct {v8, v14, v12, v15, v0}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;-><init>([I[ZLorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;Lorg/eclipse/mat/util/IProgressListener;)V

    .line 445
    .local v8, marker:Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;
    :try_start_0
    invoke-virtual {v8}, Lorg/eclipse/mat/parser/internal/snapshot/ObjectMarker;->markSingleThreaded()I
    :try_end_0
    .catch Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 452
    .local v9, numReached:I
    sub-int v14, v10, v9

    new-array v13, v14, [I

    .line 458
    .local v13, retained:[I
    move-object/from16 v1, p1

    array-length v7, v1

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v7, :cond_5

    aget v11, v1, v4

    .line 459
    .restart local v11       #objId:I
    const/4 v14, 0x0

    aput-boolean v14, v12, v11

    .line 458
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 446
    .end local v9           #numReached:I
    .end local v11           #objId:I
    .end local v13           #retained:[I
    :catch_0
    move-exception v2

    .line 448
    .local v2, e:Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;
    const/4 v13, 0x0

    goto :goto_0

    .line 463
    .end local v2           #e:Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;
    .restart local v9       #numReached:I
    .restart local v13       #retained:[I
    :cond_5
    const/4 v5, 0x0

    .line 464
    .local v5, j:I
    const/4 v3, 0x0

    .local v3, i:I
    move v6, v5

    .end local v5           #j:I
    .local v6, j:I
    :goto_3
    if-ge v3, v10, :cond_0

    .line 465
    aget-boolean v14, v12, v3

    if-nez v14, :cond_6

    .line 466
    add-int/lit8 v5, v6, 0x1

    .end local v6           #j:I
    .restart local v5       #j:I
    aput v3, v13, v6

    .line 464
    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5           #j:I
    .restart local v6       #j:I
    goto :goto_3

    :cond_6
    move v5, v6

    .end local v6           #j:I
    .restart local v5       #j:I
    goto :goto_4
.end method

.method public getRetainedSizeCache()Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;
    .locals 1

    .prologue
    .line 1623
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->retainedSizeCache:Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;

    return-object v0
.end method

.method public getRootsPerThread()Lorg/eclipse/mat/collect/HashMapIntObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<[",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1627
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->rootsPerThread:Lorg/eclipse/mat/collect/HashMapIntObject;

    return-object v0
.end method

.method public getSnapshotAddons(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1638
    .local p1, addon:Ljava/lang/Class;,"Ljava/lang/Class<TA;>;"
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->heapObjectReader:Lorg/eclipse/mat/parser/IObjectReader;

    invoke-interface {v0, p1}, Lorg/eclipse/mat/parser/IObjectReader;->getAddon(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    return-object v0
.end method

.method public bridge synthetic getSnapshotInfo()Lorg/eclipse/mat/snapshot/SnapshotInfo;
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v0

    return-object v0
.end method

.method public getThreadStack(I)Lorg/eclipse/mat/snapshot/model/IThreadStack;
    .locals 1
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1643
    iget-boolean v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->parsedThreads:Z

    if-nez v0, :cond_0

    .line 1644
    invoke-static {p0}, Lorg/eclipse/mat/parser/internal/ThreadStackHelper;->loadThreadsData(Lorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/collect/HashMapIntObject;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->threadId2stack:Lorg/eclipse/mat/collect/HashMapIntObject;

    .line 1645
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->parsedThreads:Z

    .line 1648
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->threadId2stack:Lorg/eclipse/mat/collect/HashMapIntObject;

    if-eqz v0, :cond_1

    .line 1649
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->threadId2stack:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v0, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/IThreadStack;

    .line 1651
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopAncestorsInDominatorTree([ILorg/eclipse/mat/util/IProgressListener;)[I
    .locals 24
    .parameter "objectIds"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 768
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->isDominatorTreeCalculated()Z

    move-result v22

    if-nez v22, :cond_0

    .line 769
    new-instance v22, Lorg/eclipse/mat/SnapshotException;

    sget-object v23, Lorg/eclipse/mat/hprof/Messages;->SnapshotImpl_Error_DomTreeNotAvailable:Lorg/eclipse/mat/hprof/Messages;

    invoke-direct/range {v22 .. v23}, Lorg/eclipse/mat/SnapshotException;-><init>(Lorg/eclipse/mat/hprof/Messages;)V

    throw v22

    .line 772
    :cond_0
    if-nez p2, :cond_1

    new-instance p2, Lorg/eclipse/mat/util/VoidProgressListener;

    .end local p2
    invoke-direct/range {p2 .. p2}, Lorg/eclipse/mat/util/VoidProgressListener;-><init>()V

    .line 780
    .restart local p2
    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    const v23, 0xf4240

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_2

    invoke-direct/range {p0 .. p2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getTopAncestorsWithBooleanCache([ILorg/eclipse/mat/util/IProgressListener;)[I

    move-result-object v22

    .line 869
    :goto_0
    return-object v22

    .line 786
    :cond_2
    new-instance v11, Lorg/eclipse/mat/collect/SetInt;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-direct {v11, v0}, Lorg/eclipse/mat/collect/SetInt;-><init>(I)V

    .line 792
    .local v11, negativeCache:Lorg/eclipse/mat/collect/SetInt;
    new-instance v15, Lorg/eclipse/mat/collect/SetInt;

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v22, v0

    mul-int/lit8 v22, v22, 0x2

    move/from16 v0, v22

    invoke-direct {v15, v0}, Lorg/eclipse/mat/collect/SetInt;-><init>(I)V

    .line 793
    .local v15, positiveCache:Lorg/eclipse/mat/collect/SetInt;
    move-object/from16 v4, p1

    .local v4, arr$:[I
    array-length v10, v4

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v10, :cond_3

    aget v7, v4, v8

    .line 794
    .local v7, i:I
    invoke-virtual {v15, v7}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    .line 793
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 800
    .end local v7           #i:I
    :cond_3
    new-instance v16, Lorg/eclipse/mat/collect/ArrayInt;

    invoke-direct/range {v16 .. v16}, Lorg/eclipse/mat/collect/ArrayInt;-><init>()V

    .line 806
    .local v16, result:Lorg/eclipse/mat/collect/ArrayInt;
    const/16 v20, 0x0

    .line 807
    .local v20, tempSize:I
    const/16 v19, 0x2800

    .line 808
    .local v19, tempCapacity:I
    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 810
    .local v18, temp:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lorg/eclipse/mat/parser/index/IndexManager;->dominator()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v6

    .line 812
    .local v6, dominatorIdx:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    const/4 v9, 0x0

    .line 813
    .local v9, iterations:I
    move-object/from16 v4, p1

    array-length v10, v4

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v10, :cond_a

    aget v14, v4, v8

    .line 814
    .local v14, objectId:I
    add-int/lit8 v9, v9, 0x1

    .line 815
    const v22, 0xffff

    and-int v22, v22, v9

    if-nez v22, :cond_4

    .line 816
    invoke-interface/range {p2 .. p2}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v22

    if-eqz v22, :cond_4

    .line 817
    new-instance v22, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct/range {v22 .. v22}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v22

    .line 821
    :cond_4
    invoke-interface {v6, v14}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v22

    add-int/lit8 v5, v22, -0x2

    .line 822
    .local v5, dominatorId:I
    const/16 v17, 0x1

    .local v17, save:Z
    move/from16 v21, v20

    .line 829
    .end local v20           #tempSize:I
    .local v21, tempSize:I
    :goto_3
    const/16 v22, -0x1

    move/from16 v0, v22

    if-le v5, v0, :cond_b

    .line 831
    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 832
    shl-int/lit8 v13, v19, 0x1

    .line 833
    .local v13, newCapacity:I
    new-array v12, v13, [I

    .line 834
    .local v12, newArr:[I
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v19

    invoke-static {v0, v1, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 835
    move-object/from16 v18, v12

    .line 836
    move/from16 v19, v13

    .line 838
    .end local v12           #newArr:[I
    .end local v13           #newCapacity:I
    :cond_5
    add-int/lit8 v20, v21, 0x1

    .end local v21           #tempSize:I
    .restart local v20       #tempSize:I
    aput v5, v18, v21

    .line 842
    invoke-virtual {v15, v5}, Lorg/eclipse/mat/collect/SetInt;->contains(I)Z

    move-result v22

    if-eqz v22, :cond_6

    .line 843
    const/16 v17, 0x0

    .line 845
    :goto_4
    if-lez v20, :cond_7

    .line 847
    add-int/lit8 v20, v20, -0x1

    aget v22, v18, v20

    move/from16 v0, v22

    invoke-virtual {v15, v0}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    goto :goto_4

    .line 854
    :cond_6
    invoke-virtual {v11, v5}, Lorg/eclipse/mat/collect/SetInt;->contains(I)Z

    move-result v22

    if-eqz v22, :cond_8

    .line 860
    :cond_7
    :goto_5
    if-eqz v17, :cond_9

    .line 861
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Lorg/eclipse/mat/collect/ArrayInt;->add(I)V

    .line 862
    :goto_6
    if-lez v20, :cond_9

    .line 864
    add-int/lit8 v20, v20, -0x1

    aget v22, v18, v20

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Lorg/eclipse/mat/collect/SetInt;->add(I)Z

    goto :goto_6

    .line 858
    :cond_8
    invoke-interface {v6, v5}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v22

    add-int/lit8 v5, v22, -0x2

    move/from16 v21, v20

    .end local v20           #tempSize:I
    .restart local v21       #tempSize:I
    goto :goto_3

    .line 813
    .end local v21           #tempSize:I
    .restart local v20       #tempSize:I
    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 869
    .end local v5           #dominatorId:I
    .end local v14           #objectId:I
    .end local v17           #save:Z
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/mat/collect/ArrayInt;->toArray()[I

    move-result-object v22

    goto/16 :goto_0

    .end local v20           #tempSize:I
    .restart local v5       #dominatorId:I
    .restart local v14       #objectId:I
    .restart local v17       #save:Z
    .restart local v21       #tempSize:I
    :cond_b
    move/from16 v20, v21

    .end local v21           #tempSize:I
    .restart local v20       #tempSize:I
    goto :goto_5
.end method

.method public isArray(I)Z
    .locals 4
    .parameter "objectId"

    .prologue
    const/4 v1, 0x0

    .line 1171
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->arrayObjects:Lorg/eclipse/mat/collect/BitField;

    invoke-virtual {v2, p1}, Lorg/eclipse/mat/collect/BitField;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1173
    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/index/IndexManager;->o2class()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 1174
    .local v0, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v0}, Lorg/eclipse/mat/snapshot/model/IClass;->isArrayType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1175
    const/4 v1, 0x1

    .line 1180
    .end local v0           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    :cond_0
    return v1
.end method

.method public isClass(I)Z
    .locals 1
    .parameter "objectId"

    .prologue
    .line 1184
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v0, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->containsKey(I)Z

    move-result v0

    return v0
.end method

.method public isClassLoader(I)Z
    .locals 1
    .parameter "objectId"

    .prologue
    .line 1244
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->loaderLabels:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v0, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->containsKey(I)Z

    move-result v0

    return v0
.end method

.method public isGCRoot(I)Z
    .locals 1
    .parameter "objectId"

    .prologue
    .line 1188
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->roots:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v0, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->containsKey(I)Z

    move-result v0

    return v0
.end method

.method public mapAddressToId(J)I
    .locals 7
    .parameter "objectAddress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1192
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/index/IndexManager;->o2address()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->reverse(J)I

    move-result v0

    .line 1193
    .local v0, objectId:I
    if-gez v0, :cond_0

    .line 1194
    new-instance v1, Lorg/eclipse/mat/SnapshotException;

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->SnapshotImpl_Error_ObjectNotFound:Lorg/eclipse/mat/hprof/Messages;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1200
    :cond_0
    return v0
.end method

.method public mapIdToAddress(I)J
    .locals 2
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 1117
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->indexManager:Lorg/eclipse/mat/parser/index/IndexManager;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexManager;->o2address()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public resolveClassHierarchy(I)Ljava/util/List;
    .locals 5
    .parameter "classIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1228
    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v3, p1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 1229
    .local v1, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 1239
    :cond_0
    :goto_0
    return-object v0

    .line 1231
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1232
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1233
    :goto_1
    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/model/IClass;->hasSuperClass()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1234
    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->classCache:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-interface {v1}, Lorg/eclipse/mat/snapshot/model/IClass;->getSuperClassId()I

    move-result v4

    invoke-virtual {v3, v4}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    check-cast v1, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 1235
    .restart local v1       #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    if-nez v1, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 1236
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public setClassLoaderLabel(ILjava/lang/String;)V
    .locals 3
    .parameter "objectId"
    .parameter "label"

    .prologue
    .line 1252
    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->SnapshotImpl_Label:Lorg/eclipse/mat/hprof/Messages;

    iget-object v2, v2, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1254
    :cond_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->loaderLabels:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1255
    .local v0, old:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1256
    new-instance v1, Ljava/lang/RuntimeException;

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->SnapshotImpl_Error_ReplacingNonExistentClassLoader:Lorg/eclipse/mat/hprof/Messages;

    iget-object v2, v2, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1259
    :cond_1
    return-void
.end method
