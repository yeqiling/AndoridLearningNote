.class Lorg/eclipse/mat/parser/internal/ThreadStackHelper;
.super Ljava/lang/Object;
.source "ThreadStackHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildFrames(Ljava/util/List;Lorg/eclipse/mat/collect/HashMapIntObject;)[Lorg/eclipse/mat/parser/internal/StackFrameImpl;
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/collect/ArrayInt;",
            ">;)[",
            "Lorg/eclipse/mat/parser/internal/StackFrameImpl;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p1, line2locals:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/collect/ArrayInt;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    .line 129
    .local v4, sz:I
    new-array v0, v4, [Lorg/eclipse/mat/parser/internal/StackFrameImpl;

    .line 130
    .local v0, frames:[Lorg/eclipse/mat/parser/internal/StackFrameImpl;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 131
    const/4 v3, 0x0

    .line 132
    .local v3, localsIds:[I
    invoke-virtual {p1, v1}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/collect/ArrayInt;

    .line 133
    .local v2, locals:Lorg/eclipse/mat/collect/ArrayInt;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/mat/collect/ArrayInt;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 134
    invoke-virtual {v2}, Lorg/eclipse/mat/collect/ArrayInt;->toArray()[I

    move-result-object v3

    .line 136
    :cond_0
    new-instance v6, Lorg/eclipse/mat/parser/internal/StackFrameImpl;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v5, v3}, Lorg/eclipse/mat/parser/internal/StackFrameImpl;-><init>(Ljava/lang/String;[I)V

    aput-object v6, v0, v1

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 139
    .end local v2           #locals:Lorg/eclipse/mat/collect/ArrayInt;
    .end local v3           #localsIds:[I
    :cond_1
    return-object v0
.end method

.method static loadThreadsData(Lorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/collect/HashMapIntObject;
    .locals 20
    .parameter "snapshot"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/snapshot/ISnapshot;",
            ")",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IThreadStack;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p0 .. p0}, Lorg/eclipse/mat/snapshot/ISnapshot;->getSnapshotInfo()Lorg/eclipse/mat/snapshot/SnapshotInfo;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/mat/snapshot/SnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "threads"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 34
    .local v5, fileName:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    .local v4, f:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v18

    if-nez v18, :cond_1

    const/16 v17, 0x0

    .line 104
    :cond_0
    :goto_0
    return-object v17

    .line 37
    :cond_1
    new-instance v17, Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-direct/range {v17 .. v17}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>()V

    .line 39
    .local v17, threadId2stack:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/snapshot/model/IThreadStack;>;"
    const/4 v6, 0x0

    .line 41
    .local v6, in:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v18, Ljava/io/FileReader;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 42
    .end local v6           #in:Ljava/io/BufferedReader;
    .local v7, in:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 44
    .local v8, line:Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_7

    .line 45
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 46
    const-string v18, "Thread"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 48
    invoke-static {v8}, Lorg/eclipse/mat/parser/internal/ThreadStackHelper;->readThreadAddres(Ljava/lang/String;)J

    move-result-wide v14

    .line 49
    .local v14, threadAddress:J
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v11, lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-direct {v9}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>()V

    .line 52
    .local v9, line2locals:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/collect/ArrayInt;>;"
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 53
    :goto_2
    if-eqz v8, :cond_2

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    .line 55
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 60
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    const-string v19, "locals"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 62
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 63
    :goto_3
    if-eqz v8, :cond_5

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 65
    invoke-static {v8}, Lorg/eclipse/mat/parser/internal/ThreadStackHelper;->readLineNumber(Ljava/lang/String;)I

    move-result v10

    .line 66
    .local v10, lineNr:I
    if-ltz v10, :cond_4

    .line 67
    move-object/from16 v0, p0

    invoke-static {v8, v0}, Lorg/eclipse/mat/parser/internal/ThreadStackHelper;->readLocalId(Ljava/lang/String;Lorg/eclipse/mat/snapshot/ISnapshot;)I

    move-result v12

    .line 68
    .local v12, objectId:I
    invoke-virtual {v9, v10}, Lorg/eclipse/mat/collect/HashMapIntObject;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/collect/ArrayInt;

    .line 69
    .local v2, arr:Lorg/eclipse/mat/collect/ArrayInt;
    if-nez v2, :cond_3

    .line 70
    new-instance v2, Lorg/eclipse/mat/collect/ArrayInt;

    .end local v2           #arr:Lorg/eclipse/mat/collect/ArrayInt;
    invoke-direct {v2}, Lorg/eclipse/mat/collect/ArrayInt;-><init>()V

    .line 71
    .restart local v2       #arr:Lorg/eclipse/mat/collect/ArrayInt;
    invoke-virtual {v9, v10, v2}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_3
    invoke-virtual {v2, v12}, Lorg/eclipse/mat/collect/ArrayInt;->add(I)V

    .line 75
    .end local v2           #arr:Lorg/eclipse/mat/collect/ArrayInt;
    .end local v12           #objectId:I
    :cond_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 76
    goto :goto_3

    .line 79
    .end local v10           #lineNr:I
    :cond_5
    const-wide/16 v18, -0x1

    cmp-long v18, v14, v18

    if-eqz v18, :cond_6

    .line 80
    move-object/from16 v0, p0

    invoke-interface {v0, v14, v15}, Lorg/eclipse/mat/snapshot/ISnapshot;->mapAddressToId(J)I

    move-result v16

    .line 81
    .local v16, threadId:I
    new-instance v13, Lorg/eclipse/mat/parser/internal/ThreadStackImpl;

    invoke-static {v11, v9}, Lorg/eclipse/mat/parser/internal/ThreadStackHelper;->buildFrames(Ljava/util/List;Lorg/eclipse/mat/collect/HashMapIntObject;)[Lorg/eclipse/mat/parser/internal/StackFrameImpl;

    move-result-object v18

    move/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Lorg/eclipse/mat/parser/internal/ThreadStackImpl;-><init>(I[Lorg/eclipse/mat/parser/internal/StackFrameImpl;)V

    .line 82
    .local v13, stack:Lorg/eclipse/mat/snapshot/model/IThreadStack;
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1, v13}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 86
    .end local v9           #line2locals:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/collect/ArrayInt;>;"
    .end local v11           #lines:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #stack:Lorg/eclipse/mat/snapshot/model/IThreadStack;
    .end local v14           #threadAddress:J
    .end local v16           #threadId:I
    :cond_6
    if-eqz v8, :cond_7

    .line 87
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v8

    goto/16 :goto_1

    .line 95
    :cond_7
    if-eqz v7, :cond_0

    .line 97
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 98
    :catch_0
    move-exception v18

    goto/16 :goto_0

    .line 92
    .end local v7           #in:Ljava/io/BufferedReader;
    .end local v8           #line:Ljava/lang/String;
    .restart local v6       #in:Ljava/io/BufferedReader;
    :catch_1
    move-exception v3

    .line 93
    .local v3, e:Ljava/io/IOException;
    :goto_4
    :try_start_3
    new-instance v18, Lorg/eclipse/mat/SnapshotException;

    move-object/from16 v0, v18

    invoke-direct {v0, v3}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/Throwable;)V

    throw v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 95
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v18

    :goto_5
    if-eqz v6, :cond_8

    .line 97
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 100
    :cond_8
    :goto_6
    throw v18

    .line 98
    :catch_2
    move-exception v19

    goto :goto_6

    .line 95
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v7       #in:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v18

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    goto :goto_5

    .line 92
    .end local v6           #in:Ljava/io/BufferedReader;
    .restart local v7       #in:Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    move-object v6, v7

    .end local v7           #in:Ljava/io/BufferedReader;
    .restart local v6       #in:Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method private static readLineNumber(Ljava/lang/String;)I
    .locals 2
    .parameter "line"

    .prologue
    .line 121
    const-string v1, "line="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, start:I
    add-int/lit8 v1, v0, 0x5

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static readLocalId(Ljava/lang/String;Lorg/eclipse/mat/snapshot/ISnapshot;)I
    .locals 7
    .parameter "line"
    .parameter "snapshot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 114
    const-string v4, "0x"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 115
    .local v3, start:I
    const/16 v4, 0x2c

    invoke-virtual {p0, v4, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 116
    .local v2, end:I
    new-instance v4, Ljava/math/BigInteger;

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-direct {v4, v5, v6}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 117
    .local v0, address:J
    invoke-interface {p1, v0, v1}, Lorg/eclipse/mat/snapshot/ISnapshot;->mapAddressToId(J)I

    move-result v4

    return v4
.end method

.method private static readThreadAddres(Ljava/lang/String;)J
    .locals 4
    .parameter "line"

    .prologue
    .line 108
    const-string v1, "0x"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, start:I
    if-gez v0, :cond_0

    const-wide/16 v2, -0x1

    .line 110
    :goto_0
    return-wide v2

    :cond_0
    new-instance v1, Ljava/math/BigInteger;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method
