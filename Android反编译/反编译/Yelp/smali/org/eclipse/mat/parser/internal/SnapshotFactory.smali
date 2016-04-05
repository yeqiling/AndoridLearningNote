.class public Lorg/eclipse/mat/parser/internal/SnapshotFactory;
.super Ljava/lang/Object;
.source "SnapshotFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;
    }
.end annotation


# instance fields
.field private snapshotCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/io/File;",
            "Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory;->snapshotCache:Ljava/util/Map;

    return-void
.end method

.method private deleteIndexFiles(Ljava/io/File;)V
    .locals 12
    .parameter "file"

    .prologue
    .line 174
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 175
    .local v1, directory:Ljava/io/File;
    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    .end local v1           #directory:Ljava/io/File;
    const-string v11, "."

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    .restart local v1       #directory:Ljava/io/File;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, filename:Ljava/lang/String;
    const/16 v11, 0x2e

    invoke-virtual {v3, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v10

    .line 180
    .local v10, p:I
    if-ltz v10, :cond_1

    const/4 v11, 0x0

    invoke-virtual {v3, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 181
    .local v5, fragment:Ljava/lang/String;
    :goto_0
    const-string v11, "\\.(.*\\.)?index$"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 182
    .local v7, indexPattern:Ljava/util/regex/Pattern;
    const-string v11, "\\.inbound\\.index.*\\.log$"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    .line 184
    .local v9, logPattern:Ljava/util/regex/Pattern;
    new-instance v11, Lorg/eclipse/mat/parser/internal/SnapshotFactory$1;

    invoke-direct {v11, p0, v5, v7, v9}, Lorg/eclipse/mat/parser/internal/SnapshotFactory$1;-><init>(Lorg/eclipse/mat/parser/internal/SnapshotFactory;Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/regex/Pattern;)V

    invoke-virtual {v1, v11}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 194
    .local v4, files:[Ljava/io/File;
    if-eqz v4, :cond_2

    .line 195
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v8, v0

    .local v8, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v8, :cond_2

    aget-object v2, v0, v6

    .line 196
    .local v2, f:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 195
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v0           #arr$:[Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v4           #files:[Ljava/io/File;
    .end local v5           #fragment:Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #indexPattern:Ljava/util/regex/Pattern;
    .end local v8           #len$:I
    .end local v9           #logPattern:Ljava/util/regex/Pattern;
    :cond_1
    move-object v5, v3

    .line 180
    goto :goto_0

    .line 198
    .restart local v4       #files:[Ljava/io/File;
    .restart local v5       #fragment:Ljava/lang/String;
    .restart local v7       #indexPattern:Ljava/util/regex/Pattern;
    .restart local v9       #logPattern:Ljava/util/regex/Pattern;
    :cond_2
    return-void
.end method

.method private parse(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;Lorg/eclipse/mat/util/IProgressListener;)Lorg/eclipse/mat/snapshot/ISnapshot;
    .locals 19
    .parameter "file"
    .parameter "prefix"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/eclipse/mat/util/IProgressListener;",
            ")",
            "Lorg/eclipse/mat/snapshot/ISnapshot;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 122
    .local p3, args:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;->matchParser(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 123
    .local v10, parsers:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-static {}, Lorg/eclipse/mat/parser/internal/util/ParserRegistry;->allParsers()Ljava/util/List;

    move-result-object v14

    invoke-interface {v10, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 125
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v4, errors:Ljava/util/List;,"Ljava/util/List<Ljava/io/IOException;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;

    .line 128
    .local v9, parser:Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;
    invoke-virtual {v9}, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->getIndexBuilder()Lorg/eclipse/mat/parser/IIndexBuilder;

    move-result-object v7

    .line 130
    .local v7, indexBuilder:Lorg/eclipse/mat/parser/IIndexBuilder;
    if-eqz v7, :cond_1

    .line 133
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v7, v0, v1}, Lorg/eclipse/mat/parser/IIndexBuilder;->init(Ljava/io/File;Ljava/lang/String;)V

    .line 135
    new-instance v13, Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-direct {v13}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;-><init>()V

    .line 136
    .local v13, snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setPath(Ljava/lang/String;)V

    .line 137
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setPrefix(Ljava/lang/String;)V

    .line 138
    const-string v14, "$heapFormat"

    invoke-virtual {v9}, Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    .line 139
    const-string v14, "keep_unreachable_objects"

    move-object/from16 v0, p3

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 141
    const-string v14, "keep_unreachable_objects"

    const/16 v15, 0x800

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    .line 144
    :cond_2
    new-instance v6, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;

    invoke-direct {v6, v13}, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;-><init>(Lorg/eclipse/mat/parser/model/XSnapshotInfo;)V

    .line 146
    .local v6, idx:Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;
    move-object/from16 v0, p4

    invoke-interface {v7, v6, v0}, Lorg/eclipse/mat/parser/IIndexBuilder;->fill(Lorg/eclipse/mat/parser/IPreliminaryIndex;Lorg/eclipse/mat/util/IProgressListener;)V

    .line 148
    new-instance v2, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v14

    invoke-direct {v2, v14}, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;-><init>(Lorg/eclipse/mat/parser/model/XSnapshotInfo;)V

    .line 150
    .local v2, builder:Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v6, v2, v0, v1}, Lorg/eclipse/mat/parser/internal/GarbageCleaner;->clean(Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;Ljava/util/Map;Lorg/eclipse/mat/util/IProgressListener;)[I

    move-result-object v11

    .line 152
    .local v11, purgedMapping:[I
    move-object/from16 v0, p4

    invoke-interface {v7, v11, v0}, Lorg/eclipse/mat/parser/IIndexBuilder;->clean([ILorg/eclipse/mat/util/IProgressListener;)V

    .line 154
    invoke-virtual {v2, v9}, Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;->create(Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;)Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    move-result-object v12

    .line 156
    .local v12, snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;
    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->calculateDominatorTree(Lorg/eclipse/mat/util/IProgressListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 158
    return-object v12

    .line 159
    .end local v2           #builder:Lorg/eclipse/mat/parser/internal/SnapshotImplBuilder;
    .end local v6           #idx:Lorg/eclipse/mat/parser/internal/PreliminaryIndexImpl;
    .end local v11           #purgedMapping:[I
    .end local v12           #snapshot:Lorg/eclipse/mat/parser/internal/SnapshotImpl;
    .end local v13           #snapshotInfo:Lorg/eclipse/mat/parser/model/XSnapshotInfo;
    :catch_0
    move-exception v8

    .line 160
    .local v8, ioe:Ljava/io/IOException;
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    invoke-interface {v7}, Lorg/eclipse/mat/parser/IIndexBuilder;->cancel()V

    goto :goto_0

    .line 162
    .end local v8           #ioe:Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 163
    .local v3, e:Ljava/lang/Exception;
    invoke-interface {v7}, Lorg/eclipse/mat/parser/IIndexBuilder;->cancel()V

    .line 165
    invoke-static {v3}, Lorg/eclipse/mat/SnapshotException;->rethrow(Ljava/lang/Throwable;)Lorg/eclipse/mat/SnapshotException;

    move-result-object v14

    throw v14

    .line 169
    .end local v3           #e:Ljava/lang/Exception;
    .end local v7           #indexBuilder:Lorg/eclipse/mat/parser/IIndexBuilder;
    .end local v9           #parser:Lorg/eclipse/mat/parser/internal/util/ParserRegistry$Parser;
    :cond_3
    new-instance v14, Lorg/eclipse/mat/SnapshotException;

    sget-object v15, Lorg/eclipse/mat/hprof/Messages;->SnapshotFactoryImpl_Error_NoParserRegistered:Lorg/eclipse/mat/hprof/Messages;

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/String;)V

    throw v14
.end method


# virtual methods
.method public declared-synchronized dispose(Lorg/eclipse/mat/snapshot/ISnapshot;)V
    .locals 4
    .parameter "snapshot"

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory;->snapshotCache:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;

    .line 84
    .local v0, entry:Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;
    #getter for: Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->snapshot:Ljava/lang/ref/WeakReference;
    invoke-static {v0}, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->access$000(Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/snapshot/ISnapshot;

    .line 85
    .local v2, s:Lorg/eclipse/mat/snapshot/ISnapshot;
    if-nez v2, :cond_1

    .line 86
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 81
    .end local v0           #entry:Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;
    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;>;"
    .end local v2           #s:Lorg/eclipse/mat/snapshot/ISnapshot;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 87
    .restart local v0       #entry:Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;
    .restart local v1       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;>;"
    .restart local v2       #s:Lorg/eclipse/mat/snapshot/ISnapshot;
    :cond_1
    if-ne v2, p1, :cond_0

    .line 88
    :try_start_1
    invoke-static {v0}, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->access$110(Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;)I

    .line 89
    #getter for: Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->usageCount:I
    invoke-static {v0}, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->access$100(Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;)I

    move-result v3

    if-nez v3, :cond_2

    .line 90
    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/ISnapshot;->dispose()V

    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v0           #entry:Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;
    .end local v2           #s:Lorg/eclipse/mat/snapshot/ISnapshot;
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 98
    :cond_3
    if-eqz p1, :cond_2

    :try_start_2
    invoke-interface {p1}, Lorg/eclipse/mat/snapshot/ISnapshot;->dispose()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public openSnapshot(Ljava/io/File;Ljava/util/Map;Lorg/eclipse/mat/util/IProgressListener;)Lorg/eclipse/mat/snapshot/ISnapshot;
    .locals 8
    .parameter "file"
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/eclipse/mat/util/IProgressListener;",
            ")",
            "Lorg/eclipse/mat/snapshot/ISnapshot;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 51
    .local p2, args:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 54
    .local v0, answer:Lorg/eclipse/mat/snapshot/ISnapshot;
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory;->snapshotCache:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;

    .line 55
    .local v2, entry:Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;
    if-eqz v2, :cond_0

    .line 56
    #getter for: Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->snapshot:Ljava/lang/ref/WeakReference;
    invoke-static {v2}, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->access$000(Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #answer:Lorg/eclipse/mat/snapshot/ISnapshot;
    check-cast v0, Lorg/eclipse/mat/snapshot/ISnapshot;

    .line 58
    .restart local v0       #answer:Lorg/eclipse/mat/snapshot/ISnapshot;
    if-eqz v0, :cond_0

    .line 59
    invoke-static {v2}, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;->access$108(Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;)I

    move-object v1, v0

    .line 76
    .end local v0           #answer:Lorg/eclipse/mat/snapshot/ISnapshot;
    .local v1, answer:Lorg/eclipse/mat/snapshot/ISnapshot;
    :goto_0
    return-object v1

    .line 64
    .end local v1           #answer:Lorg/eclipse/mat/snapshot/ISnapshot;
    .restart local v0       #answer:Lorg/eclipse/mat/snapshot/ISnapshot;
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, name:Ljava/lang/String;
    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 67
    .local v4, p:I
    if-ltz v4, :cond_1

    const/4 v6, 0x0

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, prefix:Ljava/lang/String;
    :goto_1
    invoke-direct {p0, p1}, Lorg/eclipse/mat/parser/internal/SnapshotFactory;->deleteIndexFiles(Ljava/io/File;)V

    .line 70
    invoke-direct {p0, p1, v5, p2, p3}, Lorg/eclipse/mat/parser/internal/SnapshotFactory;->parse(Ljava/io/File;Ljava/lang/String;Ljava/util/Map;Lorg/eclipse/mat/util/IProgressListener;)Lorg/eclipse/mat/snapshot/ISnapshot;

    move-result-object v0

    .line 72
    new-instance v2, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;

    .end local v2           #entry:Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;
    const/4 v6, 0x1

    invoke-direct {v2, v6, v0}, Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;-><init>(ILorg/eclipse/mat/snapshot/ISnapshot;)V

    .line 74
    .restart local v2       #entry:Lorg/eclipse/mat/parser/internal/SnapshotFactory$SnapshotEntry;
    iget-object v6, p0, Lorg/eclipse/mat/parser/internal/SnapshotFactory;->snapshotCache:Ljava/util/Map;

    invoke-interface {v6, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 76
    .end local v0           #answer:Lorg/eclipse/mat/snapshot/ISnapshot;
    .restart local v1       #answer:Lorg/eclipse/mat/snapshot/ISnapshot;
    goto :goto_0

    .line 67
    .end local v1           #answer:Lorg/eclipse/mat/snapshot/ISnapshot;
    .end local v5           #prefix:Ljava/lang/String;
    .restart local v0       #answer:Lorg/eclipse/mat/snapshot/ISnapshot;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
