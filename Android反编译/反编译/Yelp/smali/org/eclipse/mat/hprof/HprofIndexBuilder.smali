.class public Lorg/eclipse/mat/hprof/HprofIndexBuilder;
.super Ljava/lang/Object;
.source "HprofIndexBuilder.java"

# interfaces
.implements Lorg/eclipse/mat/parser/IIndexBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/hprof/HprofIndexBuilder$1;,
        Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;
    }
.end annotation


# instance fields
.field private enhancers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/hprof/extension/IParsingEnhancer;",
            ">;"
        }
    .end annotation
.end field

.field private file:Ljava/io/File;

.field private id2position:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->id2position:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->id2position:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    invoke-interface {v0}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->id2position:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    invoke-interface {v0}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->delete()V

    .line 130
    :cond_0
    return-void

    .line 125
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public clean([ILorg/eclipse/mat/util/IProgressListener;)V
    .locals 7
    .parameter "purgedMapping"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 100
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->prefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "o2hprof.index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, indexFile:Ljava/io/File;
    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->HprofIndexBuilder_Writing:Lorg/eclipse/mat/hprof/Messages;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lorg/eclipse/mat/util/IProgressListener;->subTask(Ljava/lang/String;)V

    .line 104
    new-instance v2, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;

    invoke-direct {v2}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;-><init>()V

    new-instance v3, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;

    iget-object v4, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->id2position:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    invoke-direct {v3, v4, p1, v6}, Lorg/eclipse/mat/hprof/HprofIndexBuilder$IndexIterator;-><init>(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;[ILorg/eclipse/mat/hprof/HprofIndexBuilder$1;)V

    invoke-virtual {v2, v0, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexStreamer;->writeTo(Ljava/io/File;Lorg/eclipse/mat/collect/IteratorLong;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v1

    .line 108
    .local v1, newIndex:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    :try_start_0
    invoke-interface {v1}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->id2position:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    invoke-interface {v2}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 117
    :goto_1
    iget-object v2, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->id2position:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    invoke-interface {v2}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;->delete()V

    .line 118
    iput-object v6, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->id2position:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    .line 119
    return-void

    .line 109
    :catch_0
    move-exception v2

    goto :goto_0

    .line 114
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public fill(Lorg/eclipse/mat/parser/IPreliminaryIndex;Lorg/eclipse/mat/util/IProgressListener;)V
    .locals 12
    .parameter "preliminary"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    new-instance v4, Lorg/eclipse/mat/util/SimpleMonitor;

    sget-object v7, Lorg/eclipse/mat/hprof/Messages;->HprofIndexBuilder_Parsing:Lorg/eclipse/mat/hprof/Messages;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    invoke-direct {v4, v7, p2, v8}, Lorg/eclipse/mat/util/SimpleMonitor;-><init>(Ljava/lang/String;Lorg/eclipse/mat/util/IProgressListener;[I)V

    .line 56
    .local v4, monitor:Lorg/eclipse/mat/util/SimpleMonitor;
    sget-object v7, Lorg/eclipse/mat/hprof/Messages;->HprofIndexBuilder_Parsing:Lorg/eclipse/mat/hprof/Messages;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0xbb8

    invoke-interface {p2, v7, v8}, Lorg/eclipse/mat/util/IProgressListener;->beginTask(Ljava/lang/String;I)V

    .line 59
    new-instance v1, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;

    invoke-direct {v1}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;-><init>()V

    .line 60
    .local v1, handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;
    invoke-interface {p1}, Lorg/eclipse/mat/parser/IPreliminaryIndex;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->beforePass1(Lorg/eclipse/mat/parser/model/XSnapshotInfo;)V

    .line 62
    invoke-virtual {v4}, Lorg/eclipse/mat/util/SimpleMonitor;->nextMonitor()Lorg/eclipse/mat/util/IProgressListener;

    move-result-object v3

    check-cast v3, Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    .line 63
    .local v3, mon:Lorg/eclipse/mat/util/SimpleMonitor$Listener;
    sget-object v7, Lorg/eclipse/mat/hprof/Messages;->HprofIndexBuilder_Scanning:Lorg/eclipse/mat/hprof/Messages;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v3, v7, v8}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->beginTask(Ljava/lang/String;I)V

    .line 65
    new-instance v5, Lorg/eclipse/mat/hprof/Pass1Parser;

    invoke-direct {v5, v1, v3}, Lorg/eclipse/mat/hprof/Pass1Parser;-><init>(Lorg/eclipse/mat/hprof/IHprofParserHandler;Lorg/eclipse/mat/util/SimpleMonitor$Listener;)V

    .line 66
    .local v5, pass1:Lorg/eclipse/mat/hprof/Pass1Parser;
    iget-object v7, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->file:Ljava/io/File;

    invoke-virtual {v5, v7}, Lorg/eclipse/mat/hprof/Pass1Parser;->read(Ljava/io/File;)V

    .line 68
    invoke-interface {p2}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v7}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v7

    .line 70
    :cond_0
    invoke-virtual {v3}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->done()V

    .line 72
    invoke-interface {v1, p2}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->beforePass2(Lorg/eclipse/mat/util/IProgressListener;)V

    .line 74
    invoke-virtual {v4}, Lorg/eclipse/mat/util/SimpleMonitor;->nextMonitor()Lorg/eclipse/mat/util/IProgressListener;

    move-result-object v3

    .end local v3           #mon:Lorg/eclipse/mat/util/SimpleMonitor$Listener;
    check-cast v3, Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    .line 75
    .restart local v3       #mon:Lorg/eclipse/mat/util/SimpleMonitor$Listener;
    sget-object v7, Lorg/eclipse/mat/hprof/Messages;->HprofIndexBuilder_ExtractingObjects:Lorg/eclipse/mat/hprof/Messages;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    long-to-int v8, v8

    invoke-virtual {v3, v7, v8}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->beginTask(Ljava/lang/String;I)V

    .line 79
    new-instance v6, Lorg/eclipse/mat/hprof/Pass2Parser;

    invoke-direct {v6, v1, v3}, Lorg/eclipse/mat/hprof/Pass2Parser;-><init>(Lorg/eclipse/mat/hprof/IHprofParserHandler;Lorg/eclipse/mat/util/SimpleMonitor$Listener;)V

    .line 80
    .local v6, pass2:Lorg/eclipse/mat/hprof/Pass2Parser;
    iget-object v7, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->file:Ljava/io/File;

    invoke-virtual {v6, v7}, Lorg/eclipse/mat/hprof/Pass2Parser;->read(Ljava/io/File;)V

    .line 82
    invoke-interface {p2}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_1

    new-instance v7, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v7}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v7

    .line 84
    :cond_1
    invoke-virtual {v3}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->done()V

    .line 86
    invoke-interface {p2}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v7}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v7

    .line 88
    :cond_2
    iget-object v7, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->enhancers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/hprof/extension/IParsingEnhancer;

    .line 89
    .local v0, enhancer:Lorg/eclipse/mat/hprof/extension/IParsingEnhancer;
    invoke-interface {v1}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    move-result-object v7

    invoke-interface {v0, v7}, Lorg/eclipse/mat/hprof/extension/IParsingEnhancer;->onParsingCompleted(Lorg/eclipse/mat/snapshot/SnapshotInfo;)V

    goto :goto_0

    .line 91
    .end local v0           #enhancer:Lorg/eclipse/mat/hprof/extension/IParsingEnhancer;
    :cond_3
    invoke-interface {v1, p1}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->fillIn(Lorg/eclipse/mat/parser/IPreliminaryIndex;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v7

    iput-object v7, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->id2position:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    .line 92
    return-void

    .line 53
    :array_0
    .array-data 0x4
        0xf4t 0x1t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
    .end array-data
.end method

.method public init(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .parameter "prefix"

    .prologue
    .line 37
    iput-object p1, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->file:Ljava/io/File;

    .line 38
    iput-object p2, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->prefix:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/HprofIndexBuilder;->enhancers:Ljava/util/List;

    .line 49
    return-void
.end method
