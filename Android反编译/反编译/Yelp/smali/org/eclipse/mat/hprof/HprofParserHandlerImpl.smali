.class public Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;
.super Ljava/lang/Object;
.source "HprofParserHandlerImpl.java"

# interfaces
.implements Lorg/eclipse/mat/hprof/IHprofParserHandler;


# instance fields
.field private array2size:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;

.field private classesByAddress:Lorg/eclipse/mat/collect/HashMapLongObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Lorg/eclipse/mat/parser/model/ClassImpl;",
            ">;"
        }
    .end annotation
.end field

.field private classesByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/parser/model/ClassImpl;",
            ">;>;"
        }
    .end annotation
.end field

.field private constantPool:Lorg/eclipse/mat/collect/HashMapLongObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gcRoots:Lorg/eclipse/mat/collect/HashMapLongObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

.field private info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

.field private object2classId:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;

.field private object2position:Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;

.field private outbound:Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;

.field private requiredArrayClassIDs:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private requiredPrimitiveArrays:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private threadAddressToLocals:Lorg/eclipse/mat/collect/HashMapLongObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private version:Lorg/eclipse/mat/hprof/AbstractParser$Version;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-direct {v0}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    .line 51
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject;

    const/16 v1, 0x2710

    invoke-direct {v0, v1}, Lorg/eclipse/mat/collect/HashMapLongObject;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->constantPool:Lorg/eclipse/mat/collect/HashMapLongObject;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByName:Ljava/util/Map;

    .line 53
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-direct {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByAddress:Lorg/eclipse/mat/collect/HashMapLongObject;

    .line 55
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lorg/eclipse/mat/collect/HashMapLongObject;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->gcRoots:Lorg/eclipse/mat/collect/HashMapLongObject;

    .line 58
    iput-object v2, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    .line 59
    iput-object v2, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->outbound:Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;

    .line 60
    iput-object v2, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->object2classId:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;

    .line 61
    iput-object v2, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->object2position:Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;

    .line 62
    iput-object v2, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->array2size:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;

    .line 64
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->requiredArrayClassIDs:Ljava/util/Set;

    .line 65
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->requiredPrimitiveArrays:Ljava/util/Set;

    .line 67
    new-instance v0, Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-direct {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->threadAddressToLocals:Lorg/eclipse/mat/collect/HashMapLongObject;

    return-void
.end method

.method private alignUpToX(II)I
    .locals 2
    .parameter "n"
    .parameter "x"

    .prologue
    .line 245
    rem-int v0, p1, p2

    .line 246
    .local v0, r:I
    if-nez v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    add-int v1, p1, p2

    sub-int p1, v1, v0

    goto :goto_0
.end method

.method private calculateClassSize(Lorg/eclipse/mat/parser/model/ClassImpl;)I
    .locals 4
    .parameter "clazz"

    .prologue
    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, staticFieldsSize:I
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getStaticFields()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/Field;

    .line 233
    .local v0, field:Lorg/eclipse/mat/snapshot/model/Field;
    invoke-direct {p0, v0}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->sizeOf(Lorg/eclipse/mat/snapshot/model/FieldDescriptor;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 234
    .end local v0           #field:Lorg/eclipse/mat/snapshot/model/Field;
    :cond_0
    const/16 v3, 0x8

    invoke-direct {p0, v2, v3}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->alignUpToX(II)I

    move-result v3

    return v3
.end method

.method private calculateInstanceSize(Lorg/eclipse/mat/parser/model/ClassImpl;)I
    .locals 2
    .parameter "clazz"

    .prologue
    .line 209
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/ClassImpl;->isArrayType()Z

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-direct {p0, p1}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->calculateSizeRecursive(Lorg/eclipse/mat/parser/model/ClassImpl;)I

    move-result v0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->alignUpToX(II)I

    move-result v0

    .line 214
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getIdentifierSize()I

    move-result v0

    goto :goto_0
.end method

.method private calculateSizeRecursive(Lorg/eclipse/mat/parser/model/ClassImpl;)I
    .locals 8
    .parameter "clazz"

    .prologue
    .line 219
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getSuperClassAddress()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 220
    iget-object v4, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getIdentifierSize()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    .line 227
    :goto_0
    return v4

    .line 222
    :cond_0
    iget-object v4, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByAddress:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getSuperClassAddress()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 223
    .local v3, superClass:Lorg/eclipse/mat/parser/model/ClassImpl;
    const/4 v2, 0x0

    .line 224
    .local v2, ownFieldsSize:I
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getFieldDescriptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;

    .line 225
    .local v0, field:Lorg/eclipse/mat/snapshot/model/FieldDescriptor;
    invoke-direct {p0, v0}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->sizeOf(Lorg/eclipse/mat/snapshot/model/FieldDescriptor;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    .line 227
    .end local v0           #field:Lorg/eclipse/mat/snapshot/model/FieldDescriptor;
    :cond_1
    invoke-direct {p0, v3}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->calculateSizeRecursive(Lorg/eclipse/mat/parser/model/ClassImpl;)I

    move-result v4

    add-int/2addr v4, v2

    iget-object v5, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getIdentifierSize()I

    move-result v5

    invoke-direct {p0, v4, v5}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->alignUpToX(II)I

    move-result v4

    goto :goto_0
.end method

.method private createRequiredFakeClasses()V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 166
    const-wide/16 v18, 0x0

    .line 169
    .local v18, nextObjectAddress:J
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->requiredArrayClassIDs:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 170
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->requiredArrayClassIDs:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 171
    .local v3, arrayClassID:J
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->lookupClass(J)Lorg/eclipse/mat/parser/model/ClassImpl;

    move-result-object v2

    .line 172
    .local v2, arrayType:Lorg/eclipse/mat/snapshot/model/IClass;
    if-nez v2, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v5, v3, v4}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->reverse(J)I

    move-result v20

    .line 174
    .local v20, objectId:I
    if-ltz v20, :cond_1

    .line 175
    sget-object v5, Lorg/eclipse/mat/hprof/Messages;->HprofParserHandlerImpl_Error_ExpectedClassSegment:Lorg/eclipse/mat/hprof/Messages;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v5, v10}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 178
    .local v17, msg:Ljava/lang/String;
    new-instance v5, Lorg/eclipse/mat/SnapshotException;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 181
    .end local v17           #msg:Ljava/lang/String;
    :cond_1
    new-instance v2, Lorg/eclipse/mat/parser/model/ClassImpl;

    .end local v2           #arrayType:Lorg/eclipse/mat/snapshot/model/IClass;
    const-string v5, "unknown-class[]"

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    new-array v10, v10, [Lorg/eclipse/mat/snapshot/model/Field;

    const/4 v11, 0x0

    new-array v11, v11, [Lorg/eclipse/mat/snapshot/model/FieldDescriptor;

    invoke-direct/range {v2 .. v11}, Lorg/eclipse/mat/parser/model/ClassImpl;-><init>(JLjava/lang/String;JJ[Lorg/eclipse/mat/snapshot/model/Field;[Lorg/eclipse/mat/snapshot/model/FieldDescriptor;)V

    .restart local v2       #arrayType:Lorg/eclipse/mat/snapshot/model/IClass;
    move-object v5, v2

    .line 184
    check-cast v5, Lorg/eclipse/mat/parser/model/ClassImpl;

    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v11}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->addClass(Lorg/eclipse/mat/parser/model/ClassImpl;J)V

    goto :goto_0

    .line 188
    .end local v2           #arrayType:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v3           #arrayClassID:J
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v20           #objectId:I
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->requiredArrayClassIDs:Ljava/util/Set;

    .line 190
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->requiredPrimitiveArrays:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 191
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->requiredPrimitiveArrays:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16       #i$:Ljava/util/Iterator;
    move-wide/from16 v7, v18

    .end local v18           #nextObjectAddress:J
    .local v7, nextObjectAddress:J
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 192
    .local v2, arrayType:Ljava/lang/Integer;
    sget-object v5, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->TYPE:[Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aget-object v9, v5, v10

    .line 193
    .local v9, name:Ljava/lang/String;
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v5}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->lookupClassByName(Ljava/lang/String;Z)Lorg/eclipse/mat/snapshot/model/IClass;

    move-result-object v6

    .line 194
    .local v6, clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    if-nez v6, :cond_3

    .line 195
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    const-wide/16 v10, 0x1

    add-long/2addr v7, v10

    invoke-virtual {v5, v7, v8}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->reverse(J)I

    move-result v5

    if-gez v5, :cond_4

    .line 198
    new-instance v6, Lorg/eclipse/mat/parser/model/ClassImpl;

    .end local v6           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v5, 0x0

    new-array v14, v5, [Lorg/eclipse/mat/snapshot/model/Field;

    const/4 v5, 0x0

    new-array v15, v5, [Lorg/eclipse/mat/snapshot/model/FieldDescriptor;

    invoke-direct/range {v6 .. v15}, Lorg/eclipse/mat/parser/model/ClassImpl;-><init>(JLjava/lang/String;JJ[Lorg/eclipse/mat/snapshot/model/Field;[Lorg/eclipse/mat/snapshot/model/FieldDescriptor;)V

    .restart local v6       #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    move-object v5, v6

    .line 200
    check-cast v5, Lorg/eclipse/mat/parser/model/ClassImpl;

    const-wide/16 v10, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10, v11}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->addClass(Lorg/eclipse/mat/parser/model/ClassImpl;J)V

    goto :goto_1

    .end local v2           #arrayType:Ljava/lang/Integer;
    .end local v6           #clazz:Lorg/eclipse/mat/snapshot/model/IClass;
    .end local v7           #nextObjectAddress:J
    .end local v9           #name:Ljava/lang/String;
    .end local v16           #i$:Ljava/util/Iterator;
    .restart local v18       #nextObjectAddress:J
    :cond_5
    move-wide/from16 v7, v18

    .line 205
    .end local v18           #nextObjectAddress:J
    .restart local v7       #nextObjectAddress:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->sort()V

    .line 206
    return-void
.end method

.method private map2ids(Lorg/eclipse/mat/collect/HashMapLongObject;)Lorg/eclipse/mat/collect/HashMapIntObject;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;)",
            "Lorg/eclipse/mat/collect/HashMapIntObject",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/parser/model/XGCRootInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, source:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    new-instance v6, Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-direct {v6}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>()V

    .line 304
    .local v6, sink:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    invoke-virtual {p1}, Lorg/eclipse/mat/collect/HashMapLongObject;->entries()Ljava/util/Iterator;

    move-result-object v3

    .line 305
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/collect/HashMapLongObject$Entry<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 306
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/collect/HashMapLongObject$Entry;

    .line 307
    .local v1, entry:Lorg/eclipse/mat/collect/HashMapLongObject$Entry;,"Lorg/eclipse/mat/collect/HashMapLongObject$Entry<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    iget-object v7, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-interface {v1}, Lorg/eclipse/mat/collect/HashMapLongObject$Entry;->getKey()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->reverse(J)I

    move-result v2

    .line 308
    .local v2, idx:I
    if-ltz v2, :cond_0

    .line 311
    invoke-interface {v1}, Lorg/eclipse/mat/collect/HashMapLongObject$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, roots:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 312
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/mat/parser/model/XGCRootInfo;

    .line 313
    .local v4, root:Lorg/eclipse/mat/parser/model/XGCRootInfo;
    invoke-virtual {v4, v2}, Lorg/eclipse/mat/parser/model/XGCRootInfo;->setObjectId(I)V

    .line 314
    invoke-virtual {v4}, Lorg/eclipse/mat/parser/model/XGCRootInfo;->getContextAddress()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 315
    iget-object v7, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/model/XGCRootInfo;->getContextAddress()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->reverse(J)I

    move-result v0

    .line 316
    .local v0, contextId:I
    if-gez v0, :cond_2

    .line 317
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 319
    :cond_2
    invoke-virtual {v4, v0}, Lorg/eclipse/mat/parser/model/XGCRootInfo;->setContextId(I)V

    goto :goto_1

    .line 323
    .end local v0           #contextId:I
    .end local v4           #root:Lorg/eclipse/mat/parser/model/XGCRootInfo;
    :cond_3
    invoke-interface {v1}, Lorg/eclipse/mat/collect/HashMapLongObject$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 326
    .end local v1           #entry:Lorg/eclipse/mat/collect/HashMapLongObject$Entry;,"Lorg/eclipse/mat/collect/HashMapLongObject$Entry<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    .end local v2           #idx:I
    .end local v5           #roots:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    :cond_4
    return-object v6
.end method

.method private sizeOf(Lorg/eclipse/mat/snapshot/model/FieldDescriptor;)I
    .locals 2
    .parameter "field"

    .prologue
    .line 238
    invoke-virtual {p1}, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->getType()I

    move-result v0

    .line 239
    .local v0, type:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getIdentifierSize()I

    move-result v1

    .line 241
    :goto_0
    return v1

    :cond_0
    sget-object v1, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->ELEMENT_SIZE:[I

    aget v1, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public addClass(Lorg/eclipse/mat/parser/model/ClassImpl;J)V
    .locals 4
    .parameter "clazz"
    .parameter "filePosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->add(J)V

    .line 373
    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByAddress:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lorg/eclipse/mat/collect/HashMapLongObject;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 375
    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByName:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 376
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByName:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #list:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #list:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    return-void
.end method

.method public addGCRoot(JJI)V
    .locals 9
    .parameter "id"
    .parameter "referrer"
    .parameter "rootType"

    .prologue
    .line 351
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-eqz v1, :cond_2

    .line 352
    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->threadAddressToLocals:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v1, p3, p4}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/mat/collect/HashMapLongObject;

    .line 353
    .local v7, localAddressToRootInfo:Lorg/eclipse/mat/collect/HashMapLongObject;
    if-nez v7, :cond_0

    .line 354
    new-instance v7, Lorg/eclipse/mat/collect/HashMapLongObject;

    .end local v7           #localAddressToRootInfo:Lorg/eclipse/mat/collect/HashMapLongObject;
    invoke-direct {v7}, Lorg/eclipse/mat/collect/HashMapLongObject;-><init>()V

    .line 355
    .restart local v7       #localAddressToRootInfo:Lorg/eclipse/mat/collect/HashMapLongObject;
    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->threadAddressToLocals:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v1, p3, p4, v7}, Lorg/eclipse/mat/collect/HashMapLongObject;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_0
    invoke-virtual {v7, p1, p2}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 358
    .local v0, gcRootInfo:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    if-nez v0, :cond_1

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #gcRootInfo:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 360
    .restart local v0       #gcRootInfo:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    invoke-virtual {v7, p1, p2, v0}, Lorg/eclipse/mat/collect/HashMapLongObject;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_1
    new-instance v1, Lorg/eclipse/mat/parser/model/XGCRootInfo;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/mat/parser/model/XGCRootInfo;-><init>(JJI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    .end local v0           #gcRootInfo:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    .end local v7           #localAddressToRootInfo:Lorg/eclipse/mat/collect/HashMapLongObject;
    :goto_0
    return-void

    .line 366
    :cond_2
    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->gcRoots:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v1, p1, p2}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 367
    .local v8, r:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    if-nez v8, :cond_3

    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->gcRoots:Lorg/eclipse/mat/collect/HashMapLongObject;

    new-instance v8, Ljava/util/ArrayList;

    .end local v8           #r:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    const/4 v2, 0x3

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    .restart local v8       #r:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;"
    invoke-virtual {v1, p1, p2, v8}, Lorg/eclipse/mat/collect/HashMapLongObject;->put(JLjava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_3
    new-instance v1, Lorg/eclipse/mat/parser/model/XGCRootInfo;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/mat/parser/model/XGCRootInfo;-><init>(JJI)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addObject(Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;J)V
    .locals 8
    .parameter "object"
    .parameter "filePosition"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 381
    iget v2, p1, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->objectId:I

    .line 384
    .local v2, index:I
    iget-object v4, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->threadAddressToLocals:Lorg/eclipse/mat/collect/HashMapLongObject;

    iget-wide v6, p1, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->objectAddress:J

    invoke-virtual {v4, v6, v7}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/mat/collect/HashMapLongObject;

    .line 386
    .local v3, localVars:Lorg/eclipse/mat/collect/HashMapLongObject;,"Lorg/eclipse/mat/collect/HashMapLongObject<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    if-eqz v3, :cond_0

    .line 387
    invoke-virtual {v3}, Lorg/eclipse/mat/collect/HashMapLongObject;->keys()Lorg/eclipse/mat/collect/IteratorLong;

    move-result-object v1

    .line 388
    .local v1, e:Lorg/eclipse/mat/collect/IteratorLong;
    :goto_0
    invoke-interface {v1}, Lorg/eclipse/mat/collect/IteratorLong;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 389
    iget-object v4, p1, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->references:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-interface {v1}, Lorg/eclipse/mat/collect/IteratorLong;->next()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    goto :goto_0

    .line 393
    .end local v1           #e:Lorg/eclipse/mat/collect/IteratorLong;
    :cond_0
    iget-object v4, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->outbound:Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;

    iget-object v5, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    iget-object v6, p1, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->references:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v4, v5, v2, v6}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->log(Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;ILorg/eclipse/mat/collect/ArrayLong;)V

    .line 395
    iget-object v4, p1, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->clazz:Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectId()I

    move-result v0

    .line 396
    .local v0, classIndex:I
    iget-object v4, p1, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->clazz:Lorg/eclipse/mat/parser/model/ClassImpl;

    iget v5, p1, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->usedHeapSize:I

    invoke-virtual {v4, v5}, Lorg/eclipse/mat/parser/model/ClassImpl;->addInstance(I)V

    .line 399
    iget-object v4, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->object2classId:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;

    invoke-virtual {v4, v2, v0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->set(II)V

    .line 400
    iget-object v4, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->object2position:Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;

    invoke-virtual {v4, v2, p2, p3}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->set(IJ)V

    .line 403
    iget-boolean v4, p1, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->isArray:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->array2size:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;

    iget v5, p1, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->usedHeapSize:I

    invoke-virtual {v4, v2, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;->set(II)V

    .line 404
    :cond_1
    return-void
.end method

.method public addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    const-string v0, "VERSION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-static {p2}, Lorg/eclipse/mat/hprof/AbstractParser$Version;->valueOf(Ljava/lang/String;)Lorg/eclipse/mat/hprof/AbstractParser$Version;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->version:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    .line 342
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    const-string v1, "hprof.version"

    iget-object v2, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->version:Lorg/eclipse/mat/hprof/AbstractParser$Version;

    invoke-virtual {v2}, Lorg/eclipse/mat/hprof/AbstractParser$Version;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setProperty(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    const-string v0, "ID_SIZE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setIdentifierSize(I)V

    goto :goto_0

    .line 345
    :cond_2
    const-string v0, "CREATION_DATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    new-instance v1, Ljava/util/Date;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->setCreationDate(Ljava/util/Date;)V

    goto :goto_0
.end method

.method public beforePass1(Lorg/eclipse/mat/parser/model/XSnapshotInfo;)V
    .locals 1
    .parameter "snapshotInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 75
    iput-object p1, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    .line 76
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-direct {v0}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    .line 77
    return-void
.end method

.method public beforePass2(Lorg/eclipse/mat/util/IProgressListener;)V
    .locals 18
    .parameter "monitor"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 81
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->add(J)V

    .line 84
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->sort()V

    .line 87
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->requiredArrayClassIDs:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->requiredPrimitiveArrays:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->createRequiredFakeClasses()V

    .line 92
    :cond_1
    sget-object v3, Lorg/eclipse/mat/util/IProgressListener$Severity;->INFO:Lorg/eclipse/mat/util/IProgressListener$Severity;

    sget-object v4, Lorg/eclipse/mat/hprof/Messages;->HprofParserHandlerImpl_HeapContainsObjects:Lorg/eclipse/mat/hprof/Messages;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-virtual {v15}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPath()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v5, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v15}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v5, v7

    invoke-static {v4, v5}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v3, v4, v5}, Lorg/eclipse/mat/util/IProgressListener;->sendUserMessage(Lorg/eclipse/mat/util/IProgressListener$Severity;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    const/4 v13, 0x0

    .line 99
    .local v13, maxClassId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByAddress:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v3}, Lorg/eclipse/mat/collect/HashMapLongObject;->values()Ljava/util/Iterator;

    move-result-object v9

    .local v9, e:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 101
    .local v8, clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->reverse(J)I

    move-result v10

    .line 102
    .local v10, index:I
    invoke-virtual {v8, v10}, Lorg/eclipse/mat/parser/model/ClassImpl;->setObjectId(I)V

    .line 104
    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 106
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->calculateInstanceSize(Lorg/eclipse/mat/parser/model/ClassImpl;)I

    move-result v3

    invoke-virtual {v8, v3}, Lorg/eclipse/mat/parser/model/ClassImpl;->setHeapSizePerInstance(I)V

    .line 107
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->calculateClassSize(Lorg/eclipse/mat/parser/model/ClassImpl;)I

    move-result v3

    invoke-virtual {v8, v3}, Lorg/eclipse/mat/parser/model/ClassImpl;->setUsedHeapSize(I)V

    goto :goto_0

    .line 111
    .end local v8           #clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    .end local v10           #index:I
    :cond_2
    new-instance v3, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size()I

    move-result v4

    sget-object v5, Lorg/eclipse/mat/parser/index/IndexManager$Index;->OUTBOUND:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-virtual {v15}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, "temp."

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/eclipse/mat/parser/index/IndexManager$Index;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;-><init>(ILjava/io/File;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->outbound:Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;

    .line 113
    new-instance v3, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size()I

    move-result v4

    invoke-static {v13}, Lorg/eclipse/mat/parser/index/IndexWriter;->mostSignificantBit(I)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->object2classId:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;

    .line 115
    new-instance v3, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size()I

    move-result v4

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-virtual {v7}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lorg/eclipse/mat/parser/index/IndexWriter;->mostSignificantBit(J)I

    move-result v5

    invoke-direct {v3, v4, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;-><init>(II)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->object2position:Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;

    .line 117
    new-instance v3, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v4}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->size()I

    move-result v4

    invoke-direct {v3, v4}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->array2size:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByName:Ljava/util/Map;

    const-string v4, "java.lang.Class"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 122
    .local v12, javaLangClasses:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 123
    .local v11, javaLangClass:Lorg/eclipse/mat/parser/model/ClassImpl;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v11}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->reverse(J)I

    move-result v3

    invoke-virtual {v11, v3}, Lorg/eclipse/mat/parser/model/ClassImpl;->setObjectId(I)V

    .line 126
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByAddress:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v3}, Lorg/eclipse/mat/collect/HashMapLongObject;->values()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 127
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 128
    .restart local v8       #clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/model/ClassImpl;->getSuperClassAddress()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->reverse(J)I

    move-result v3

    invoke-virtual {v8, v3}, Lorg/eclipse/mat/parser/model/ClassImpl;->setSuperClassIndex(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/model/ClassImpl;->getClassLoaderAddress()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->reverse(J)I

    move-result v3

    invoke-virtual {v8, v3}, Lorg/eclipse/mat/parser/model/ClassImpl;->setClassLoaderIndex(I)V

    .line 134
    invoke-virtual {v8}, Lorg/eclipse/mat/parser/model/ClassImpl;->getClassLoaderId()I

    move-result v3

    if-gez v3, :cond_3

    .line 135
    const-wide/16 v4, 0x0

    invoke-virtual {v8, v4, v5}, Lorg/eclipse/mat/parser/model/ClassImpl;->setClassLoaderAddress(J)V

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->reverse(J)I

    move-result v3

    invoke-virtual {v8, v3}, Lorg/eclipse/mat/parser/model/ClassImpl;->setClassLoaderIndex(I)V

    .line 140
    :cond_3
    invoke-virtual {v8, v11}, Lorg/eclipse/mat/parser/model/ClassImpl;->setClassInstance(Lorg/eclipse/mat/parser/model/ClassImpl;)V

    .line 141
    invoke-virtual {v8}, Lorg/eclipse/mat/parser/model/ClassImpl;->getUsedHeapSize()I

    move-result v3

    invoke-virtual {v11, v3}, Lorg/eclipse/mat/parser/model/ClassImpl;->addInstance(I)V

    .line 144
    invoke-virtual {v8}, Lorg/eclipse/mat/parser/model/ClassImpl;->getSuperClassAddress()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->lookupClass(J)Lorg/eclipse/mat/parser/model/ClassImpl;

    move-result-object v14

    .line 145
    .local v14, superclass:Lorg/eclipse/mat/parser/model/ClassImpl;
    if-eqz v14, :cond_4

    invoke-virtual {v14, v8}, Lorg/eclipse/mat/parser/model/ClassImpl;->addSubClass(Lorg/eclipse/mat/parser/model/ClassImpl;)V

    .line 147
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->object2classId:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectId()I

    move-result v4

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/model/ClassImpl;->getClazz()Lorg/eclipse/mat/parser/model/ClassImpl;

    move-result-object v5

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;->set(II)V

    .line 149
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->outbound:Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectId()I

    move-result v5

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/model/ClassImpl;->getReferences()Lorg/eclipse/mat/collect/ArrayLong;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v7}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->log(Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;ILorg/eclipse/mat/collect/ArrayLong;)V

    goto/16 :goto_1

    .line 155
    .end local v8           #clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    .end local v14           #superclass:Lorg/eclipse/mat/parser/model/ClassImpl;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByName:Ljava/util/Map;

    const-string v4, "java.lang.ClassLoader"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 156
    .local v6, classLoaderClass:Lorg/eclipse/mat/parser/model/ClassImpl;
    new-instance v2, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->reverse(J)I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/model/ClassImpl;->getHeapSizePerInstance()I

    move-result v7

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;I)V

    .line 158
    .local v2, heapObject:Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;
    iget-object v3, v2, Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;->references:Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 159
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4, v5}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->addObject(Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;J)V

    .line 161
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->constantPool:Lorg/eclipse/mat/collect/HashMapLongObject;

    .line 162
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->constantPool:Lorg/eclipse/mat/collect/HashMapLongObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->constantPool:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;->clear()V

    .line 332
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->outbound:Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->outbound:Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->cancel()V

    .line 333
    :cond_1
    return-void
.end method

.method public fillIn(Lorg/eclipse/mat/parser/IPreliminaryIndex;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    .locals 22
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 258
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByAddress:Lorg/eclipse/mat/collect/HashMapLongObject;

    const/4 v6, 0x0

    new-array v6, v6, [Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v5, v6}, Lorg/eclipse/mat/collect/HashMapLongObject;->getAllValues([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 259
    .local v4, allClasses:[Lorg/eclipse/mat/parser/model/ClassImpl;
    move-object v11, v4

    .local v11, arr$:[Lorg/eclipse/mat/parser/model/ClassImpl;
    array-length v0, v11

    move/from16 v18, v0

    .local v18, len$:I
    const/4 v15, 0x0

    .local v15, i$:I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_1

    aget-object v13, v11, v15

    .line 260
    .local v13, clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    invoke-virtual {v13}, Lorg/eclipse/mat/parser/model/ClassImpl;->getClassLoaderAddress()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    invoke-virtual {v13}, Lorg/eclipse/mat/parser/model/ClassImpl;->isArrayType()Z

    move-result v5

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->gcRoots:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v13}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/mat/collect/HashMapLongObject;->containsKey(J)Z

    move-result v5

    if-nez v5, :cond_0

    .line 262
    invoke-virtual {v13}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    const/4 v10, 0x2

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v10}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->addGCRoot(JJI)V

    .line 259
    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 267
    .end local v13           #clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    :cond_1
    new-instance v12, Lorg/eclipse/mat/collect/HashMapIntObject;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByAddress:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v5}, Lorg/eclipse/mat/collect/HashMapLongObject;->size()I

    move-result v5

    invoke-direct {v12, v5}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>(I)V

    .line 269
    .local v12, classesById:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByAddress:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v5}, Lorg/eclipse/mat/collect/HashMapLongObject;->values()Ljava/util/Iterator;

    move-result-object v17

    .local v17, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 270
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 271
    .restart local v13       #clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    invoke-virtual {v13}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectId()I

    move-result v5

    invoke-virtual {v12, v5, v13}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 273
    .end local v13           #clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    :cond_2
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Lorg/eclipse/mat/parser/IPreliminaryIndex;->setClassesById(Lorg/eclipse/mat/collect/HashMapIntObject;)V

    .line 275
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->gcRoots:Lorg/eclipse/mat/collect/HashMapLongObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->map2ids(Lorg/eclipse/mat/collect/HashMapLongObject;)Lorg/eclipse/mat/collect/HashMapIntObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/eclipse/mat/parser/IPreliminaryIndex;->setGcRoots(Lorg/eclipse/mat/collect/HashMapIntObject;)V

    .line 277
    new-instance v20, Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-direct/range {v20 .. v20}, Lorg/eclipse/mat/collect/HashMapIntObject;-><init>()V

    .line 279
    .local v20, thread2objects2roots:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Lorg/eclipse/mat/collect/HashMapIntObject<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->threadAddressToLocals:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v5}, Lorg/eclipse/mat/collect/HashMapLongObject;->entries()Ljava/util/Iterator;

    move-result-object v16

    .line 280
    .local v16, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lorg/eclipse/mat/collect/HashMapLongObject$Entry<Lorg/eclipse/mat/collect/HashMapLongObject<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;>;>;"
    :cond_3
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 281
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/eclipse/mat/collect/HashMapLongObject$Entry;

    .line 282
    .local v14, entry:Lorg/eclipse/mat/collect/HashMapLongObject$Entry;,"Lorg/eclipse/mat/collect/HashMapLongObject$Entry<Lorg/eclipse/mat/collect/HashMapLongObject<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-interface {v14}, Lorg/eclipse/mat/collect/HashMapLongObject$Entry;->getKey()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->reverse(J)I

    move-result v21

    .line 283
    .local v21, threadId:I
    if-ltz v21, :cond_3

    .line 284
    invoke-interface {v14}, Lorg/eclipse/mat/collect/HashMapLongObject$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/mat/collect/HashMapLongObject;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->map2ids(Lorg/eclipse/mat/collect/HashMapLongObject;)Lorg/eclipse/mat/collect/HashMapIntObject;

    move-result-object v19

    .line 285
    .local v19, objects2roots:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/mat/collect/HashMapIntObject;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/mat/collect/HashMapIntObject;->put(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 288
    .end local v14           #entry:Lorg/eclipse/mat/collect/HashMapLongObject$Entry;,"Lorg/eclipse/mat/collect/HashMapLongObject$Entry<Lorg/eclipse/mat/collect/HashMapLongObject<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;>;"
    .end local v19           #objects2roots:Lorg/eclipse/mat/collect/HashMapIntObject;,"Lorg/eclipse/mat/collect/HashMapIntObject<Ljava/util/List<Lorg/eclipse/mat/parser/model/XGCRootInfo;>;>;"
    .end local v21           #threadId:I
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lorg/eclipse/mat/parser/IPreliminaryIndex;->setThread2objects2roots(Lorg/eclipse/mat/collect/HashMapIntObject;)V

    .line 290
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/eclipse/mat/parser/IPreliminaryIndex;->setIdentifiers(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->array2size:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;

    sget-object v6, Lorg/eclipse/mat/parser/index/IndexManager$Index;->A2SIZE:Lorg/eclipse/mat/parser/index/IndexManager$Index;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "temp."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/mat/parser/index/IndexManager$Index;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollectorUncompressed;->writeTo(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/eclipse/mat/parser/IPreliminaryIndex;->setArray2size(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)V

    .line 295
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->object2classId:Lorg/eclipse/mat/parser/index/IndexWriter$IntIndexCollector;

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/eclipse/mat/parser/IPreliminaryIndex;->setObject2classId(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;)V

    .line 297
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->outbound:Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/index/IndexWriter$IntArray1NWriter;->flush()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Lorg/eclipse/mat/parser/IPreliminaryIndex;->setOutbound(Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;)V

    .line 299
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->object2position:Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;

    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "temp.o2hprof.index"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lorg/eclipse/mat/parser/index/IndexWriter$LongIndexCollector;->writeTo(Ljava/io/File;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    move-result-object v5

    return-object v5
.end method

.method public getConstantPool()Lorg/eclipse/mat/collect/HashMapLongObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->constantPool:Lorg/eclipse/mat/collect/HashMapLongObject;

    return-object v0
.end method

.method public getIdentifierSize()I
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->getIdentifierSize()I

    move-result v0

    return v0
.end method

.method public getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->info:Lorg/eclipse/mat/parser/model/XSnapshotInfo;

    return-object v0
.end method

.method public lookupClass(J)Lorg/eclipse/mat/parser/model/ClassImpl;
    .locals 1
    .parameter "classId"

    .prologue
    .line 431
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByAddress:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/parser/model/ClassImpl;

    return-object v0
.end method

.method public bridge synthetic lookupClass(J)Lorg/eclipse/mat/snapshot/model/IClass;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->lookupClass(J)Lorg/eclipse/mat/parser/model/ClassImpl;

    move-result-object v0

    return-object v0
.end method

.method public lookupClassByIndex(I)Lorg/eclipse/mat/snapshot/model/IClass;
    .locals 2
    .parameter "objIndex"

    .prologue
    .line 446
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v0, p1}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->get(I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->lookupClass(J)Lorg/eclipse/mat/parser/model/ClassImpl;

    move-result-object v0

    return-object v0
.end method

.method public lookupClassByName(Ljava/lang/String;Z)Lorg/eclipse/mat/snapshot/model/IClass;
    .locals 5
    .parameter "name"
    .parameter "failOnMultipleInstances"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 435
    iget-object v1, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByName:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 436
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/parser/model/ClassImpl;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 442
    :goto_0
    return-object v1

    .line 437
    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 438
    new-instance v1, Ljava/lang/RuntimeException;

    sget-object v2, Lorg/eclipse/mat/hprof/Messages;->HprofParserHandlerImpl_Error_MultipleClassInstancesExist:Lorg/eclipse/mat/hprof/Messages;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 442
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/snapshot/model/IClass;

    goto :goto_0
.end method

.method public mapAddressToId(J)I
    .locals 1
    .parameter "address"

    .prologue
    .line 464
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->reverse(J)I

    move-result v0

    return v0
.end method

.method public reportInstance(JJ)V
    .locals 1
    .parameter "id"
    .parameter "filePosition"

    .prologue
    .line 407
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->identifiers:Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/mat/parser/index/IndexWriter$Identifier;->add(J)V

    .line 408
    return-void
.end method

.method public reportRequiredObjectArray(J)V
    .locals 3
    .parameter "arrayClassID"

    .prologue
    .line 411
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->requiredArrayClassIDs:Ljava/util/Set;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 412
    return-void
.end method

.method public reportRequiredPrimitiveArray(I)V
    .locals 2
    .parameter "arrayType"

    .prologue
    .line 415
    iget-object v0, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->requiredPrimitiveArrays:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 416
    return-void
.end method

.method public resolveClassHierarchy(J)Ljava/util/List;
    .locals 7
    .parameter "classId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 452
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    iget-object v2, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByAddress:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v2, p1, p2}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 453
    .local v1, clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :goto_0
    invoke-virtual {v1}, Lorg/eclipse/mat/parser/model/ClassImpl;->hasSuperClass()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 456
    iget-object v2, p0, Lorg/eclipse/mat/hprof/HprofParserHandlerImpl;->classesByAddress:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getSuperClassAddress()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lorg/eclipse/mat/collect/HashMapLongObject;->get(J)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    check-cast v1, Lorg/eclipse/mat/parser/model/ClassImpl;

    .line 457
    .restart local v1       #clazz:Lorg/eclipse/mat/parser/model/ClassImpl;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 460
    :cond_0
    return-object v0
.end method
