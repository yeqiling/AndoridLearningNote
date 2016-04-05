.class public Lorg/eclipse/mat/hprof/Pass2Parser;
.super Lorg/eclipse/mat/hprof/AbstractParser;
.source "Pass2Parser.java"


# static fields
.field static final ignorableClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

.field private monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 203
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/eclipse/mat/hprof/Pass2Parser;->ignorableClasses:Ljava/util/Set;

    .line 206
    sget-object v0, Lorg/eclipse/mat/hprof/Pass2Parser;->ignorableClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lorg/eclipse/mat/hprof/Pass2Parser;->ignorableClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lorg/eclipse/mat/hprof/Pass2Parser;->ignorableClasses:Ljava/util/Set;

    const-class v1, Ljava/lang/ref/PhantomReference;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lorg/eclipse/mat/hprof/Pass2Parser;->ignorableClasses:Ljava/util/Set;

    const-string v1, "java.lang.ref.Finalizer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lorg/eclipse/mat/hprof/Pass2Parser;->ignorableClasses:Ljava/util/Set;

    const-string v1, "java.lang.ref.FinalizerReference"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/mat/hprof/IHprofParserHandler;Lorg/eclipse/mat/util/SimpleMonitor$Listener;)V
    .locals 0
    .parameter "handler"
    .parameter "monitor"

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/eclipse/mat/hprof/AbstractParser;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    .line 48
    iput-object p2, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    .line 49
    return-void
.end method

.method private readDumpSegments(J)V
    .locals 13
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v0

    .line 113
    .local v0, segmentStartPos:J
    add-long v4, v0, p1

    .line 115
    .local v4, segmentsEndPos:J
    :goto_0
    cmp-long v3, v0, v4

    if-gez v3, :cond_2

    .line 116
    const-wide/16 v8, 0x3e8

    div-long v6, v0, v8

    .line 117
    .local v6, workDone:J
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    invoke-virtual {v3}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->getWorkDone()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-gez v3, :cond_1

    .line 118
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    invoke-virtual {v3}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->isProbablyCanceled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 119
    new-instance v3, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v3}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v3

    .line 121
    :cond_0
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    invoke-virtual {v3, v6, v7}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->totalWorkDone(J)V

    .line 124
    :cond_1
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readUnsignedByte()I

    move-result v2

    .line 125
    .local v2, segmentType:I
    sparse-switch v2, :sswitch_data_0

    .line 176
    new-instance v3, Lorg/eclipse/mat/SnapshotException;

    sget-object v8, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_InvalidHeapDumpFile:Lorg/eclipse/mat/hprof/Messages;

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :sswitch_0
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v8, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->idSize:I

    invoke-virtual {v3, v8}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 180
    :goto_1
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v0

    .line 181
    goto :goto_0

    .line 132
    :sswitch_1
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v8, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->idSize:I

    mul-int/lit8 v8, v8, 0x2

    invoke-virtual {v3, v8}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    goto :goto_1

    .line 136
    :sswitch_2
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v8, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->idSize:I

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v3, v8}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    goto :goto_1

    .line 141
    :sswitch_3
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v8, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->idSize:I

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v3, v8}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    goto :goto_1

    .line 144
    :sswitch_4
    invoke-direct {p0}, Lorg/eclipse/mat/hprof/Pass2Parser;->skipClassDump()V

    goto :goto_1

    .line 147
    :sswitch_5
    invoke-direct {p0, v0, v1}, Lorg/eclipse/mat/hprof/Pass2Parser;->readInstanceDump(J)V

    goto :goto_1

    .line 150
    :sswitch_6
    invoke-direct {p0, v0, v1}, Lorg/eclipse/mat/hprof/Pass2Parser;->readObjectArrayDump(J)V

    goto :goto_1

    .line 153
    :sswitch_7
    invoke-direct {p0, v0, v1}, Lorg/eclipse/mat/hprof/Pass2Parser;->readPrimitiveArrayDump(J)V

    goto :goto_1

    .line 158
    :sswitch_8
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v8, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->idSize:I

    add-int/lit8 v8, v8, 0x4

    invoke-virtual {v3, v8}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    goto :goto_1

    .line 166
    :sswitch_9
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v8, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->idSize:I

    invoke-virtual {v3, v8}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    goto :goto_1

    .line 169
    :sswitch_a
    iget-object v3, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v8, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->idSize:I

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v3, v8}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    goto :goto_1

    .line 172
    :sswitch_b
    invoke-direct {p0, v0, v1}, Lorg/eclipse/mat/hprof/Pass2Parser;->readPrimitiveArrayNoDataDump(J)V

    goto :goto_1

    .line 182
    .end local v2           #segmentType:I
    .end local v6           #workDone:J
    :cond_2
    return-void

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_3
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0x7 -> :sswitch_0
        0x8 -> :sswitch_3
        0x20 -> :sswitch_4
        0x21 -> :sswitch_5
        0x22 -> :sswitch_6
        0x23 -> :sswitch_7
        0x89 -> :sswitch_9
        0x8a -> :sswitch_9
        0x8b -> :sswitch_9
        0x8c -> :sswitch_9
        0x8d -> :sswitch_9
        0x8e -> :sswitch_a
        0x90 -> :sswitch_9
        0xc3 -> :sswitch_b
        0xfe -> :sswitch_8
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method private readInstanceDump(J)V
    .locals 27
    .parameter "segmentStartPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass2Parser;->readID()J

    move-result-wide v4

    .line 215
    .local v4, id:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 216
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass2Parser;->readID()J

    move-result-wide v10

    .line 217
    .local v10, classID:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v8

    .line 218
    .local v8, bytesFollowing:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v22

    int-to-long v0, v8

    move-wide/from16 v24, v0

    add-long v12, v22, v24

    .line 220
    .local v12, endPos:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v3, v10, v11}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->resolveClassHierarchy(J)Ljava/util/List;

    move-result-object v15

    .line 222
    .local v15, hierarchy:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 223
    .local v6, thisClazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    new-instance v2, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->mapAddressToId(J)I

    move-result v3

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/model/ClassImpl;->getHeapSizePerInstance()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;I)V

    .line 226
    .local v2, heapObject:Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;
    iget-object v3, v2, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->references:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v22

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 229
    const/16 v18, 0x0

    .line 230
    .local v18, isWeakReferenceClass:Z
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 231
    .local v9, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    sget-object v3, Lorg/eclipse/mat/hprof/Pass2Parser;->ignorableClasses:Ljava/util/Set;

    invoke-interface {v9}, Lorg/eclipse/mat/snapshot/model/IClass;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    const/16 v18, 0x1

    .line 236
    .end local v9           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    :cond_1
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local v16           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 237
    .restart local v9       #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v9}, Lorg/eclipse/mat/snapshot/model/IClass;->getFieldDescriptors()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;

    .line 238
    .local v14, field:Lorg/eclipse/mat/snapshot/model/FieldDescriptor;
    invoke-virtual {v14}, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->getType()I

    move-result v19

    .line 239
    .local v19, type:I
    const/4 v3, 0x2

    move/from16 v0, v19

    if-ne v0, v3, :cond_5

    .line 240
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass2Parser;->readID()J

    move-result-wide v20

    .line 241
    .local v20, refId:J
    const-wide/16 v22, 0x0

    cmp-long v3, v20, v22

    if-eqz v3, :cond_3

    if-eqz v18, :cond_4

    invoke-virtual {v14}, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "referent"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 242
    :cond_4
    iget-object v3, v2, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->references:Lorg/eclipse/mat/collect/ArrayLong;

    move-wide/from16 v0, v20

    invoke-virtual {v3, v0, v1}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    goto :goto_0

    .line 245
    .end local v20           #refId:J
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/hprof/Pass2Parser;->skipValue(I)V

    goto :goto_0

    .line 250
    .end local v9           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v14           #field:Lorg/eclipse/mat/snapshot/model/FieldDescriptor;
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v19           #type:I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v22

    cmp-long v3, v12, v22

    if-eqz v3, :cond_7

    .line 251
    new-instance v3, Ljava/io/IOException;

    sget-object v7, Lorg/eclipse/mat/hprof/Messages;->Pass2Parser_Error_InsufficientBytesRead:Lorg/eclipse/mat/hprof/Messages;

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    move-object/from16 v0, v22

    invoke-static {v7, v0}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 255
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    move-wide/from16 v0, p1

    invoke-interface {v3, v2, v0, v1}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->addObject(Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;J)V

    .line 256
    return-void
.end method

.method private readObjectArrayDump(J)V
    .locals 17
    .parameter "segmentStartPos"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass2Parser;->readID()J

    move-result-wide v4

    .line 261
    .local v4, id:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 262
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v11

    .line 263
    .local v11, size:I
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass2Parser;->readID()J

    move-result-wide v8

    .line 265
    .local v8, arrayClassObjectID:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v3, v8, v9}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->lookupClass(J)Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v6

    check-cast v6, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 266
    .local v6, arrayType:Lorg/eclipse/mat/parser/model/ClassImpl;
    if-nez v6, :cond_0

    .line 267
    new-instance v3, Ljava/lang/RuntimeException;

    sget-object v7, Lorg/eclipse/mat/hprof/Messages;->Pass2Parser_Error_HandlerMustCreateFakeClassForAddress:Lorg/eclipse/mat/hprof/Messages;

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v7, v14}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 272
    :cond_0
    new-instance v2, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->mapAddressToId(J)I

    move-result v3

    invoke-static {v6, v11}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->doGetUsedHeapSize(Lorg/eclipse/mat/parser/model/ClassImpl;I)I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;I)V

    .line 274
    .local v2, heapObject:Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;
    iget-object v3, v2, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->references:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v14

    invoke-virtual {v3, v14, v15}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 275
    const/4 v3, 0x1

    iput-boolean v3, v2, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->isArray:Z

    .line 277
    const/4 v10, 0x0

    .local v10, ii:I
    :goto_0
    if-ge v10, v11, :cond_2

    .line 278
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass2Parser;->readID()J

    move-result-wide v12

    .line 279
    .local v12, refId:J
    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_1

    iget-object v3, v2, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->references:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v3, v12, v13}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 277
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 282
    .end local v12           #refId:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    move-wide/from16 v0, p1

    invoke-interface {v3, v2, v0, v1}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->addObject(Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;J)V

    .line 283
    return-void
.end method

.method private readPrimitiveArrayDump(J)V
    .locals 13
    .parameter "segmentStartPost"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v12, 0x1

    .line 286
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass2Parser;->readID()J

    move-result-wide v2

    .line 288
    .local v2, id:J
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1, v5}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 289
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v9

    .line 290
    .local v9, size:I
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readByte()B

    move-result v7

    .line 292
    .local v7, elementType:B
    if-lt v7, v5, :cond_0

    const/16 v1, 0xb

    if-le v7, v1, :cond_1

    .line 293
    :cond_0
    new-instance v1, Lorg/eclipse/mat/SnapshotException;

    sget-object v5, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_IllegalType:Lorg/eclipse/mat/hprof/Messages;

    invoke-direct {v1, v5}, Lorg/eclipse/mat/SnapshotException;-><init>(Lorg/eclipse/mat/hprof/Messages;)V

    throw v1

    .line 296
    :cond_1
    sget-object v1, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->TYPE:[Ljava/lang/String;

    aget-object v8, v1, v7

    .line 297
    .local v8, name:Ljava/lang/String;
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v1, v8, v12}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->lookupClassByName(Ljava/lang/String;Z)Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v4

    check-cast v4, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 298
    .local v4, clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    if-nez v4, :cond_2

    .line 299
    new-instance v1, Ljava/lang/RuntimeException;

    sget-object v5, Lorg/eclipse/mat/hprof/Messages;->Pass2Parser_Error_HandleMustCreateFakeClassForName:Lorg/eclipse/mat/hprof/Messages;

    new-array v10, v12, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v8, v10, v11

    invoke-static {v5, v10}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 303
    :cond_2
    new-instance v0, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;

    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->mapAddressToId(J)I

    move-result v1

    invoke-static {v4, v9, v7}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->doGetUsedHeapSize(Lorg/eclipse/mat/parser/model/ClassImpl;II)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;I)V

    .line 305
    .local v0, heapObject:Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;
    iget-object v1, v0, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->references:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 306
    iput-boolean v12, v0, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->isArray:Z

    .line 308
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v1, v0, p1, p2}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->addObject(Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;J)V

    .line 310
    sget-object v1, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->ELEMENT_SIZE:[I

    aget v6, v1, v7

    .line 311
    .local v6, elementSize:I
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    mul-int v5, v6, v9

    invoke-virtual {v1, v5}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 312
    return-void
.end method

.method private readPrimitiveArrayNoDataDump(J)V
    .locals 13
    .parameter "segmentStartPost"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v9, 0x1

    .line 318
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass2Parser;->readID()J

    move-result-wide v2

    .line 320
    .local v2, id:J
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1, v5}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 321
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v8

    .line 322
    .local v8, size:I
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readByte()B

    move-result v6

    .line 324
    .local v6, elementType:B
    if-lt v6, v5, :cond_0

    const/16 v1, 0xb

    if-le v6, v1, :cond_1

    .line 325
    :cond_0
    new-instance v1, Lorg/eclipse/mat/SnapshotException;

    sget-object v5, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_IllegalType:Lorg/eclipse/mat/hprof/Messages;

    invoke-direct {v1, v5}, Lorg/eclipse/mat/SnapshotException;-><init>(Lorg/eclipse/mat/hprof/Messages;)V

    throw v1

    .line 328
    :cond_1
    sget-object v1, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->TYPE:[Ljava/lang/String;

    aget-object v7, v1, v6

    .line 329
    .local v7, name:Ljava/lang/String;
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v1, v7, v9}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->lookupClassByName(Ljava/lang/String;Z)Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v4

    check-cast v4, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 330
    .local v4, clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    if-nez v4, :cond_2

    .line 331
    new-instance v1, Ljava/lang/RuntimeException;

    sget-object v5, Lorg/eclipse/mat/hprof/Messages;->Pass2Parser_Error_HandleMustCreateFakeClassForName:Lorg/eclipse/mat/hprof/Messages;

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v7, v9, v10

    invoke-static {v5, v9}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_2
    new-instance v0, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;

    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->mapAddressToId(J)I

    move-result v1

    invoke-static {v4, v8, v6}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->doGetUsedHeapSize(Lorg/eclipse/mat/parser/model/ClassImpl;II)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;I)V

    .line 337
    .local v0, heapObject:Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;
    iget-object v1, v0, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->references:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 338
    iput-boolean v9, v0, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->isArray:Z

    .line 340
    iget-object v1, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->handler:Lorg/eclipse/mat/hprof/IHprofParserHandler;

    invoke-interface {v1, v0, p1, p2}, Lorg/eclipse/mat/hprof/IHprofParserHandler;->addObject(Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;J)V

    .line 341
    return-void
.end method

.method private skipClassDump()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v5, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v6, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->idSize:I

    mul-int/lit8 v6, v6, 0x7

    add-int/lit8 v6, v6, 0x8

    invoke-virtual {v5, v6}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 187
    iget-object v5, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readUnsignedShort()I

    move-result v0

    .line 188
    .local v0, constantPoolSize:I
    const/4 v2, 0x0

    .local v2, ii:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 189
    iget-object v5, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 190
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass2Parser;->skipValue()V

    .line 188
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 193
    :cond_0
    iget-object v5, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readUnsignedShort()I

    move-result v4

    .line 194
    .local v4, numStaticFields:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_1

    .line 195
    iget-object v5, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v6, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->idSize:I

    invoke-virtual {v5, v6}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 196
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/Pass2Parser;->skipValue()V

    .line 194
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 199
    :cond_1
    iget-object v5, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readUnsignedShort()I

    move-result v3

    .line 200
    .local v3, numInstanceFields:I
    iget-object v5, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    iget v6, p0, Lorg/eclipse/mat/hprof/Pass2Parser;->idSize:I

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v3

    invoke-virtual {v5, v6}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 201
    return-void
.end method


# virtual methods
.method public read(Ljava/io/File;)V
    .locals 18
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    new-instance v11, Lorg/eclipse/mat/parser/io/PositionInputStream;

    new-instance v12, Ljava/io/BufferedInputStream;

    new-instance v13, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v12, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v11, v12}, Lorg/eclipse/mat/parser/io/PositionInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    .line 54
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass2Parser;->determineDumpNumber()I

    move-result v5

    .line 55
    .local v5, dumpNrToRead:I
    const/4 v4, 0x0

    .line 58
    .local v4, currentDumpNr:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-static {v11}, Lorg/eclipse/mat/hprof/Pass2Parser;->readVersion(Ljava/io/InputStream;)Lorg/eclipse/mat/hprof/AbstractParser$Version;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->version:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    .line 59
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v11}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->idSize:I

    .line 60
    move-object/from16 v0, p0

    iget v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->idSize:I

    const/4 v12, 0x4

    if-eq v11, v12, :cond_0

    move-object/from16 v0, p0

    iget v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->idSize:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    .line 61
    new-instance v11, Lorg/eclipse/mat/SnapshotException;

    sget-object v12, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_SupportedDumps:Lorg/eclipse/mat/hprof/Messages;

    invoke-direct {v11, v12}, Lorg/eclipse/mat/SnapshotException;-><init>(Lorg/eclipse/mat/hprof/Messages;)V

    throw v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :catchall_0
    move-exception v11

    .line 105
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v12}, Lorg/eclipse/mat/parser/io/PositionInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 107
    :goto_0
    throw v11

    .line 63
    :cond_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 65
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 66
    .local v6, fileSize:J
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v11}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v2

    .line 68
    .local v2, curPos:J
    :goto_1
    cmp-long v11, v2, v6

    if-gez v11, :cond_5

    .line 69
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    invoke-virtual {v11}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->isProbablyCanceled()Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;

    invoke-direct {v11}, Lorg/eclipse/mat/util/IProgressListener$OperationCanceledException;-><init>()V

    throw v11

    .line 70
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->monitor:Lorg/eclipse/mat/util/SimpleMonitor$Listener;

    const-wide/16 v12, 0x3e8

    div-long v12, v2, v12

    invoke-virtual {v11, v12, v13}, Lorg/eclipse/mat/util/SimpleMonitor$Listener;->totalWorkDone(J)V

    .line 72
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v11}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readUnsignedByte()I

    move-result v10

    .line 74
    .local v10, record:I
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 76
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/Pass2Parser;->readUnsignedInt()J

    move-result-wide v8

    .line 77
    .local v8, length:J
    const-wide/16 v12, 0x0

    cmp-long v11, v8, v12

    if-gez v11, :cond_2

    .line 78
    new-instance v11, Lorg/eclipse/mat/SnapshotException;

    sget-object v12, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_IllegalRecordLength:Lorg/eclipse/mat/hprof/Messages;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v15}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v12, v13}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 82
    :cond_2
    sparse-switch v10, :sswitch_data_0

    .line 97
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v11, v8, v9}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(J)I

    .line 101
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v11}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v2

    .line 102
    goto :goto_1

    .line 85
    :sswitch_0
    if-ne v5, v4, :cond_4

    .line 86
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lorg/eclipse/mat/hprof/Pass2Parser;->readDumpSegments(J)V

    .line 91
    :goto_4
    const/16 v11, 0xc

    if-ne v10, v11, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 88
    :cond_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v11, v8, v9}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(J)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 95
    :sswitch_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 105
    .end local v8           #length:J
    .end local v10           #record:I
    :cond_5
    :try_start_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/eclipse/mat/hprof/Pass2Parser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v11}, Lorg/eclipse/mat/parser/io/PositionInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 109
    :goto_5
    return-void

    .line 106
    .end local v2           #curPos:J
    .end local v6           #fileSize:J
    :catch_0
    move-exception v12

    goto/16 :goto_0

    .restart local v2       #curPos:J
    .restart local v6       #fileSize:J
    :catch_1
    move-exception v11

    goto :goto_5

    .line 82
    nop

    :sswitch_data_0
    .sparse-switch
        0xc -> :sswitch_0
        0x1c -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method
