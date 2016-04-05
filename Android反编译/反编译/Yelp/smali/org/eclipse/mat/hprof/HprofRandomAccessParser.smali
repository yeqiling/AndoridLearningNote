.class public Lorg/eclipse/mat/hprof/HprofRandomAccessParser;
.super Lorg/eclipse/mat/hprof/AbstractParser;
.source "HprofRandomAccessParser.java"


# static fields
.field public static final LAZY_LOADING_LIMIT:I = 0x100


# direct methods
.method public constructor <init>(Ljava/io/File;Lorg/eclipse/mat/hprof/AbstractParser$Version;I)V
    .locals 4
    .parameter "file"
    .parameter "version"
    .parameter "identifierSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/eclipse/mat/hprof/AbstractParser;-><init>()V

    .line 43
    new-instance v0, Lorg/eclipse/mat/parser/io/PositionInputStream;

    new-instance v1, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/16 v3, 0x200

    invoke-direct {v1, v2, v3}, Lorg/eclipse/mat/parser/io/BufferedRandomAccessInputStream;-><init>(Ljava/io/RandomAccessFile;I)V

    invoke-direct {v0, v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    .line 45
    iput-object p2, p0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->version:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    .line 46
    iput p3, p0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->idSize:I

    .line 47
    return-void
.end method

.method private readInstanceDump(ILorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IObject;
    .locals 17
    .parameter "objectId"
    .parameter "dump"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->readID()J

    move-result-wide v4

    .line 87
    .local v4, address:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->idSize:I

    add-int/lit8 v3, v3, 0x8

    invoke-virtual {v2, v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->idSize:I

    add-int/lit8 v3, v3, 0x8

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    .line 90
    :cond_0
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/eclipse/mat/snapshot/ISnapshot;->getClassOf(I)Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->resolveClassHierarchy(Lorg/eclipse/mat/snapshot/ISnapshot;Lorg/eclipse/mat/snapshot/model/IClass;)Ljava/util/List;

    move-result-object v11

    .line 91
    .local v11, hierarchy:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    if-nez v11, :cond_1

    .line 92
    new-instance v2, Ljava/io/IOException;

    sget-object v3, Lorg/eclipse/mat/hprof/Messages;->HprofRandomAccessParser_Error_DumpIncomplete:Lorg/eclipse/mat/hprof/Messages;

    iget-object v3, v3, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 94
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v7, instanceFields:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/Field;>;"
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 96
    .local v8, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v8}, Lorg/eclipse/mat/snapshot/model/IClass;->getFieldDescriptors()Ljava/util/List;

    move-result-object v10

    .line 97
    .local v10, fields:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/FieldDescriptor;>;"
    const/4 v13, 0x0

    .local v13, ii:I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-ge v13, v2, :cond_2

    .line 98
    invoke-interface {v10, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;

    .line 99
    .local v9, field:Lorg/eclipse/mat/snapshot/model/FieldDescriptor;
    invoke-virtual {v9}, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->getType()I

    move-result v14

    .line 100
    .local v14, type:I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v14}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->readValue(Lorg/eclipse/mat/snapshot/ISnapshot;I)Ljava/lang/Object;

    move-result-object v15

    .line 101
    .local v15, value:Ljava/lang/Object;
    new-instance v2, Lorg/eclipse/mat/snapshot/model/Field;

    invoke-virtual {v9}, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9}, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->getType()I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v2, v3, v0, v15}, Lorg/eclipse/mat/snapshot/model/Field;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 105
    .end local v8           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v9           #field:Lorg/eclipse/mat/snapshot/model/FieldDescriptor;
    .end local v10           #fields:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/FieldDescriptor;>;"
    .end local v13           #ii:I
    .end local v14           #type:I
    .end local v15           #value:Ljava/lang/Object;
    :cond_3
    const/4 v2, 0x0

    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 107
    .local v6, classImpl:Lorg/eclipse/mat/parser/model/ClassImpl;
    move-object/from16 v0, p2

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/eclipse/mat/snapshot/ISnapshot;->isClassLoader(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    new-instance v2, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;

    move/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/mat/parser/model/ClassLoaderImpl;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;Ljava/util/List;)V

    .line 110
    :goto_1
    return-object v2

    :cond_4
    new-instance v2, Lorg/eclipse/mat/parser/model/InstanceImpl;

    move/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/mat/parser/model/InstanceImpl;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;Ljava/util/List;)V

    goto :goto_1
.end method

.method private readObjectArrayDump(ILorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IArray;
    .locals 19
    .parameter "objectId"
    .parameter "dump"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->readID()J

    move-result-wide v10

    .line 119
    .local v10, id:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v7

    .line 122
    .local v7, size:I
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->readID()J

    move-result-wide v14

    .line 124
    .local v14, arrayClassObjectID:J
    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Lorg/eclipse/mat/snapshot/ISnapshot;->mapAddressToId(J)I

    move-result v3

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Lorg/eclipse/mat/snapshot/ISnapshot;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v16

    check-cast v16, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 125
    .local v16, arrayType:Lorg/eclipse/mat/snapshot/model/IClass;
    if-nez v16, :cond_0

    .line 126
    new-instance v3, Ljava/lang/RuntimeException;

    sget-object v4, Lorg/eclipse/mat/hprof/Messages;->HprofRandomAccessParser_Error_MissingFakeClass:Lorg/eclipse/mat/hprof/Messages;

    iget-object v4, v4, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 129
    :cond_0
    const/4 v2, 0x0

    .line 130
    .local v2, content:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget v3, v0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->idSize:I

    mul-int/2addr v3, v7

    const/16 v4, 0x100

    if-ge v3, v4, :cond_2

    .line 131
    new-array v0, v7, [J

    move-object/from16 v17, v0

    .line 132
    .local v17, data:[J
    const/16 v18, 0x0

    .local v18, ii:I
    :goto_0
    move-object/from16 v0, v17

    array-length v3, v0

    move/from16 v0, v18

    if-ge v0, v3, :cond_1

    .line 133
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->readID()J

    move-result-wide v4

    aput-wide v4, v17, v18

    .line 132
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 134
    :cond_1
    move-object/from16 v2, v17

    .line 139
    .end local v2           #content:Ljava/lang/Object;
    .end local v17           #data:[J
    .end local v18           #ii:I
    :goto_1
    new-instance v8, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;

    move-object/from16 v12, v16

    check-cast v12, Lorg/eclipse/mat/parser/model/ClassImpl;

    move/from16 v9, p1

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;I)V

    .line 140
    .local v8, array:Lorg/eclipse/mat/parser/model/ObjectArrayImpl;
    invoke-virtual {v8, v2}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->setInfo(Ljava/lang/Object;)V

    .line 141
    return-object v8

    .line 136
    .end local v8           #array:Lorg/eclipse/mat/parser/model/ObjectArrayImpl;
    .restart local v2       #content:Ljava/lang/Object;
    :cond_2
    new-instance v2, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;

    .end local v2           #content:Ljava/lang/Object;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;-><init>(ZJII)V

    .local v2, content:Lorg/eclipse/mat/hprof/ArrayDescription$Offline;
    goto :goto_1
.end method

.method private readPrimitiveArrayDump(ILorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IArray;
    .locals 22
    .parameter "objectId"
    .parameter "dump"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 146
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->readID()J

    move-result-wide v10

    .line 148
    .local v10, id:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lorg/eclipse/mat/parser/io/PositionInputStream;->skipBytes(I)I

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readInt()I

    move-result v7

    .line 151
    .local v7, arraySize:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readByte()B

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v18, v0

    .line 152
    .local v18, elementType:J
    const-wide/16 v4, 0x4

    cmp-long v3, v18, v4

    if-ltz v3, :cond_0

    const-wide/16 v4, 0xb

    cmp-long v3, v18, v4

    if-lez v3, :cond_1

    .line 153
    :cond_0
    new-instance v3, Ljava/io/IOException;

    sget-object v4, Lorg/eclipse/mat/hprof/Messages;->Pass1Parser_Error_IllegalType:Lorg/eclipse/mat/hprof/Messages;

    iget-object v4, v4, Lorg/eclipse/mat/hprof/Messages;->pattern:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_1
    sget-object v3, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->ELEMENT_SIZE:[I

    move-wide/from16 v0, v18

    long-to-int v4, v0

    aget v6, v3, v4

    .line 157
    .local v6, elementSize:I
    mul-int v20, v6, v7

    .line 159
    .local v20, len:I
    const/4 v2, 0x0

    .line 160
    .local v2, content:Ljava/lang/Object;
    const/16 v3, 0x100

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    .line 161
    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 162
    .local v17, data:[B
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readFully([B)V

    .line 163
    const-wide/16 v4, 0x8

    cmp-long v3, v18, v4

    if-nez v3, :cond_3

    move-object/from16 v2, v17

    .line 169
    .end local v2           #content:Ljava/lang/Object;
    .end local v17           #data:[B
    :goto_0
    const/16 v16, 0x0

    .line 170
    .local v16, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    sget-object v3, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->TYPE:[Ljava/lang/String;

    move-wide/from16 v0, v18

    long-to-int v4, v0

    aget-object v21, v3, v4

    .line 171
    .local v21, name:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-interface {v0, v1, v3}, Lorg/eclipse/mat/snapshot/ISnapshot;->getClassesByName(Ljava/lang/String;Z)Ljava/util/Collection;

    move-result-object v15

    .line 172
    .local v15, classes:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    if-eqz v15, :cond_2

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 173
    :cond_2
    new-instance v3, Ljava/io/IOException;

    sget-object v4, Lorg/eclipse/mat/hprof/Messages;->HprofRandomAccessParser_Error_MissingClass:Lorg/eclipse/mat/hprof/Messages;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v21, v5, v9

    invoke-static {v4, v5}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    .end local v15           #classes:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    .end local v16           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v21           #name:Ljava/lang/String;
    .restart local v2       #content:Ljava/lang/Object;
    .restart local v17       #data:[B
    :cond_3
    new-instance v2, Lorg/eclipse/mat/hprof/ArrayDescription$Raw;

    .end local v2           #content:Ljava/lang/Object;
    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lorg/eclipse/mat/hprof/ArrayDescription$Raw;-><init>([B)V

    goto :goto_0

    .line 165
    .end local v17           #data:[B
    .restart local v2       #content:Ljava/lang/Object;
    :cond_4
    new-instance v2, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;

    .end local v2           #content:Ljava/lang/Object;
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/io/PositionInputStream;->position()J

    move-result-wide v4

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;-><init>(ZJII)V

    .local v2, content:Lorg/eclipse/mat/hprof/ArrayDescription$Offline;
    goto :goto_0

    .line 175
    .end local v2           #content:Lorg/eclipse/mat/hprof/ArrayDescription$Offline;
    .restart local v15       #classes:Ljava/util/Collection;,"Ljava/util/Collection<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    .restart local v16       #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .restart local v21       #name:Ljava/lang/String;
    :cond_5
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_6

    .line 176
    new-instance v3, Ljava/io/IOException;

    sget-object v4, Lorg/eclipse/mat/hprof/Messages;->HprofRandomAccessParser_Error_DuplicateClass:Lorg/eclipse/mat/hprof/Messages;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v21, v5, v9

    invoke-static {v4, v5}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 179
    :cond_6
    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    .end local v16           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    check-cast v16, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 182
    .restart local v16       #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    new-instance v8, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;

    move-object/from16 v12, v16

    check-cast v12, Lorg/eclipse/mat/parser/model/ClassImpl;

    move-wide/from16 v0, v18

    long-to-int v14, v0

    move/from16 v9, p1

    move v13, v7

    invoke-direct/range {v8 .. v14}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;II)V

    .line 184
    .local v8, array:Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;
    invoke-virtual {v8, v2}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->setInfo(Ljava/lang/Object;)V

    .line 186
    return-object v8
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/io/PositionInputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read(IJLorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IObject;
    .locals 6
    .parameter "objectId"
    .parameter "position"
    .parameter "dump"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1, p2, p3}, Lorg/eclipse/mat/parser/io/PositionInputStream;->seek(J)V

    .line 56
    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readUnsignedByte()I

    move-result v0

    .line 57
    .local v0, segmentType:I
    packed-switch v0, :pswitch_data_0

    .line 65
    new-instance v1, Ljava/io/IOException;

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->HprofRandomAccessParser_Error_IllegalDumpSegment:Lorg/eclipse/mat/hprof/Messages;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v0           #segmentType:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 59
    .restart local v0       #segmentType:I
    :pswitch_0
    :try_start_1
    invoke-direct {p0, p1, p4}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->readInstanceDump(ILorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 63
    :goto_0
    monitor-exit p0

    return-object v1

    .line 61
    :pswitch_1
    :try_start_2
    invoke-direct {p0, p1, p4}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->readObjectArrayDump(ILorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IArray;

    move-result-object v1

    goto :goto_0

    .line 63
    :pswitch_2
    invoke-direct {p0, p1, p4}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->readPrimitiveArrayDump(ILorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IArray;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized readObjectArray(Lorg/eclipse/mat/hprof/ArrayDescription$Offline;II)[J
    .locals 8
    .parameter "descriptor"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->idSize:I

    .line 193
    .local v1, elementSize:I
    iget-object v3, p0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {p1}, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->getPosition()J

    move-result-wide v4

    mul-int v6, p2, v1

    int-to-long v6, v6

    add-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/io/PositionInputStream;->seek(J)V

    .line 194
    new-array v0, p3, [J

    .line 195
    .local v0, data:[J
    const/4 v2, 0x0

    .local v2, ii:I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 196
    invoke-virtual {p0}, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->readID()J

    move-result-wide v4

    aput-wide v4, v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 197
    :cond_0
    monitor-exit p0

    return-object v0

    .line 191
    .end local v0           #data:[J
    .end local v1           #elementSize:I
    .end local v2           #ii:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized readPrimitiveArray(Lorg/eclipse/mat/hprof/ArrayDescription$Offline;II)[B
    .locals 8
    .parameter "descriptor"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->getElementSize()I

    move-result v1

    .line 204
    .local v1, elementSize:I
    iget-object v2, p0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {p1}, Lorg/eclipse/mat/hprof/ArrayDescription$Offline;->getPosition()J

    move-result-wide v4

    mul-int v3, p2, v1

    int-to-long v6, v3

    add-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/mat/parser/io/PositionInputStream;->seek(J)V

    .line 206
    mul-int v2, p3, v1

    new-array v0, v2, [B

    .line 207
    .local v0, data:[B
    iget-object v2, p0, Lorg/eclipse/mat/hprof/HprofRandomAccessParser;->in:Lorg/eclipse/mat/parser/io/PositionInputStream;

    invoke-virtual {v2, v0}, Lorg/eclipse/mat/parser/io/PositionInputStream;->readFully([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    monitor-exit p0

    return-object v0

    .line 202
    .end local v0           #data:[B
    .end local v1           #elementSize:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public resolveClassHierarchy(Lorg/eclipse/mat/snapshot/ISnapshot;Lorg/eclipse/mat/snapshot/model/IClass;)Ljava/util/List;
    .locals 2
    .parameter "snapshot"
    .parameter "clazz"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/snapshot/ISnapshot;",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ")",
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
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :goto_0
    invoke-interface {p2}, Lorg/eclipse/mat/snapshot/model/IClass;->hasSuperClass()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-interface {p2}, Lorg/eclipse/mat/snapshot/model/IClass;->getSuperClassId()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/eclipse/mat/snapshot/ISnapshot;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object p2

    .end local p2
    check-cast p2, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 77
    .restart local p2
    if-nez p2, :cond_1

    const/4 v0, 0x0

    .line 81
    .end local v0           #answer:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    :cond_0
    return-object v0

    .line 78
    .restart local v0       #answer:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
