.class public Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;
.super Ljava/lang/Object;
.source "RetainedSizeCache.java"


# instance fields
.field private filename:Ljava/lang/String;

.field private id2size:Lorg/eclipse/mat/collect/HashMapIntLong;

.field private isDirty:Z


# direct methods
.method public constructor <init>(Lorg/eclipse/mat/parser/model/XSnapshotInfo;)V
    .locals 2
    .parameter "snapshotInfo"

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->isDirty:Z

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "i2sv2.index"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->filename:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->readId2Size(Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method private doRead(Ljava/io/File;Z)V
    .locals 10
    .parameter "file"
    .parameter "readOldFormat"

    .prologue
    .line 76
    const/4 v2, 0x0

    .line 77
    .local v2, in:Ljava/io/DataInputStream;
    const/4 v0, 0x0

    .line 80
    .local v0, delete:Z
    :try_start_0
    new-instance v5, Lorg/eclipse/mat/collect/HashMapIntLong;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v8, v8

    div-int/lit8 v8, v8, 0x8

    invoke-direct {v5, v8}, Lorg/eclipse/mat/collect/HashMapIntLong;-><init>(I)V

    iput-object v5, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->id2size:Lorg/eclipse/mat/collect/HashMapIntLong;

    .line 82
    new-instance v3, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7

    .line 84
    .end local v2           #in:Ljava/io/DataInputStream;
    .local v3, in:Ljava/io/DataInputStream;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->available()I

    move-result v5

    if-lez v5, :cond_3

    .line 85
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 86
    .local v4, key:I
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v6

    .line 87
    .local v6, value:J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    if-eqz p2, :cond_0

    const-wide v8, -0x7fffffffffffffffL

    sub-long v8, v6, v8

    neg-long v6, v8

    .line 88
    :cond_0
    iget-object v5, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->id2size:Lorg/eclipse/mat/collect/HashMapIntLong;

    invoke-virtual {v5, v4, v6, v7}, Lorg/eclipse/mat/collect/HashMapIntLong;->put(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 90
    .end local v4           #key:I
    .end local v6           #value:J
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 91
    .end local v3           #in:Ljava/io/DataInputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :goto_1
    :try_start_2
    const-class v5, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v9, Lorg/eclipse/mat/hprof/Messages;->RetainedSizeCache_ErrorReadingRetainedSizes:Lorg/eclipse/mat/hprof/Messages;

    iget-object v9, v9, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-virtual {v5, v8, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    iget-object v5, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->id2size:Lorg/eclipse/mat/collect/HashMapIntLong;

    invoke-virtual {v5}, Lorg/eclipse/mat/collect/HashMapIntLong;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 96
    const/4 v0, 0x1

    .line 99
    if-eqz v2, :cond_1

    .line 100
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 106
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 107
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    .line 113
    .end local v1           #e:Ljava/io/IOException;
    :cond_2
    :goto_3
    return-void

    .line 99
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :cond_3
    if-eqz v3, :cond_4

    .line 100
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 106
    :cond_4
    :goto_4
    if-eqz v0, :cond_5

    .line 107
    :try_start_6
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_5
    move-object v2, v3

    .line 111
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 109
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catch_1
    move-exception v5

    move-object v2, v3

    .line 112
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 98
    :catchall_0
    move-exception v5

    .line 99
    :goto_5
    if-eqz v2, :cond_6

    .line 100
    :try_start_7
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 106
    :cond_6
    :goto_6
    if-eqz v0, :cond_7

    .line 107
    :try_start_8
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_6

    .line 111
    :cond_7
    :goto_7
    throw v5

    .line 102
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catch_2
    move-exception v5

    goto :goto_4

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v1       #e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/DataInputStream;
    :catch_3
    move-exception v5

    goto :goto_2

    .line 109
    :catch_4
    move-exception v5

    goto :goto_3

    .line 102
    .end local v1           #e:Ljava/io/IOException;
    :catch_5
    move-exception v8

    goto :goto_6

    .line 109
    :catch_6
    move-exception v8

    goto :goto_7

    .line 98
    .end local v2           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v2       #in:Ljava/io/DataInputStream;
    goto :goto_5

    .line 90
    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private readId2Size(Ljava/lang/String;)V
    .locals 4
    .parameter "prefix"

    .prologue
    .line 116
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->filename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->doRead(Ljava/io/File;Z)V

    .line 127
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "i2s.index"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 121
    .local v1, legacyFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 122
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->doRead(Ljava/io/File;Z)V

    goto :goto_0

    .line 124
    :cond_1
    new-instance v2, Lorg/eclipse/mat/collect/HashMapIntLong;

    invoke-direct {v2}, Lorg/eclipse/mat/collect/HashMapIntLong;-><init>()V

    iput-object v2, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->id2size:Lorg/eclipse/mat/collect/HashMapIntLong;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 10

    .prologue
    .line 54
    iget-boolean v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->isDirty:Z

    if-nez v7, :cond_0

    .line 73
    :goto_0
    return-void

    .line 57
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->filename:Ljava/lang/String;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v2, file:Ljava/io/File;
    new-instance v6, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 61
    .local v6, out:Ljava/io/DataOutputStream;
    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->id2size:Lorg/eclipse/mat/collect/HashMapIntLong;

    invoke-virtual {v7}, Lorg/eclipse/mat/collect/HashMapIntLong;->getAllKeys()[I

    move-result-object v0

    .local v0, arr$:[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v5, :cond_1

    aget v4, v0, v3

    .line 62
    .local v4, key:I
    invoke-virtual {v6, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 63
    iget-object v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->id2size:Lorg/eclipse/mat/collect/HashMapIntLong;

    invoke-virtual {v7, v4}, Lorg/eclipse/mat/collect/HashMapIntLong;->get(I)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 61
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 66
    .end local v4           #key:I
    :cond_1
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    .line 68
    const/4 v7, 0x0

    iput-boolean v7, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->isDirty:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    .end local v0           #arr$:[I
    .end local v2           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v5           #len$:I
    .end local v6           #out:Ljava/io/DataOutputStream;
    :catch_0
    move-exception v1

    .line 70
    .local v1, e:Ljava/io/IOException;
    const-class v7, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v7

    sget-object v8, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    sget-object v9, Lorg/eclipse/mat/hprof/Messages;->RetainedSizeCache_Warning_IgnoreError:Lorg/eclipse/mat/hprof/Messages;

    iget-object v9, v9, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public get(I)J
    .locals 4
    .parameter "key"

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->id2size:Lorg/eclipse/mat/collect/HashMapIntLong;

    invoke-virtual {v1, p1}, Lorg/eclipse/mat/collect/HashMapIntLong;->get(I)J
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 44
    :goto_0
    return-wide v2

    .line 42
    :catch_0
    move-exception v0

    .line 44
    .local v0, e:Ljava/util/NoSuchElementException;
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public put(IJ)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 49
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->id2size:Lorg/eclipse/mat/collect/HashMapIntLong;

    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/mat/collect/HashMapIntLong;->put(IJ)Z

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->isDirty:Z

    .line 51
    return-void
.end method
