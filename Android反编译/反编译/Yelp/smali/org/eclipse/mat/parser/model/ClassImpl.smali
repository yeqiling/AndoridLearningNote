.class public Lorg/eclipse/mat/parser/model/ClassImpl;
.super Lorg/eclipse/mat/parser/model/AbstractObjectImpl;
.source "ClassImpl.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/model/IClass;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/mat/parser/model/AbstractObjectImpl;",
        "Lorg/eclipse/mat/snapshot/model/IClass;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/eclipse/mat/parser/model/ClassImpl;",
        ">;"
    }
.end annotation


# static fields
.field public static final JAVA_LANG_CLASS:Ljava/lang/String; = "java.lang.Class"

.field private static final serialVersionUID:J = 0x16L


# instance fields
.field private cacheEntry:Ljava/io/Serializable;

.field protected classLoaderAddress:J

.field protected classLoaderId:I

.field protected fields:[Lorg/eclipse/mat/snapshot/model/FieldDescriptor;

.field protected instanceCount:I

.field protected instanceSize:I

.field protected isArrayType:Z

.field protected name:Ljava/lang/String;

.field protected staticFields:[Lorg/eclipse/mat/snapshot/model/Field;

.field private subClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation
.end field

.field protected superClassAddress:J

.field protected superClassId:I

.field protected totalSize:J

.field protected usedHeapSize:I


# direct methods
.method public constructor <init>(JLjava/lang/String;JJ[Lorg/eclipse/mat/snapshot/model/Field;[Lorg/eclipse/mat/snapshot/model/FieldDescriptor;)V
    .locals 2
    .parameter "address"
    .parameter "name"
    .parameter "superId"
    .parameter "loaderId"
    .parameter "staticFields"
    .parameter "fields"

    .prologue
    const/4 v1, -0x1

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, v1, p1, p2, v0}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;)V

    .line 44
    iput v1, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->superClassId:I

    .line 46
    iput v1, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->classLoaderId:I

    .line 64
    iput-object p3, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->name:Ljava/lang/String;

    .line 65
    iput-wide p4, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->superClassAddress:J

    .line 66
    iput-wide p6, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->classLoaderAddress:J

    .line 67
    iput-object p8, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->staticFields:[Lorg/eclipse/mat/snapshot/model/Field;

    .line 68
    iput-object p9, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->fields:[Lorg/eclipse/mat/snapshot/model/FieldDescriptor;

    .line 69
    iput v1, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->instanceSize:I

    .line 71
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->totalSize:J

    .line 72
    const-string v0, "[]"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->isArrayType:Z

    .line 73
    return-void
.end method


# virtual methods
.method public addInstance(I)V
    .locals 4
    .parameter "usedHeapSize"

    .prologue
    .line 244
    iget v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->instanceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->instanceCount:I

    .line 245
    iget-wide v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->totalSize:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->totalSize:J

    .line 246
    return-void
.end method

.method public addSubClass(Lorg/eclipse/mat/parser/model/ClassImpl;)V
    .locals 1
    .parameter "clazz"

    .prologue
    .line 295
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->subClasses:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->subClasses:Ljava/util/List;

    .line 296
    :cond_0
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->subClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method protected appendFields(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .parameter "buf"

    .prologue
    .line 268
    invoke-super {p0, p1}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->appendFields(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Lorg/eclipse/mat/parser/model/ClassImpl;

    .end local p1
    invoke-virtual {p0, p1}, Lorg/eclipse/mat/parser/model/ClassImpl;->compareTo(Lorg/eclipse/mat/parser/model/ClassImpl;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/eclipse/mat/parser/model/ClassImpl;)I
    .locals 5
    .parameter "other"

    .prologue
    .line 238
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v0

    .line 239
    .local v0, myAddress:J
    invoke-virtual {p1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v2

    .line 240
    .local v2, otherAddress:J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public doesExtend(Ljava/lang/String;)Z
    .locals 2
    .parameter "className"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 310
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->hasSuperClass()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    iget v1, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->superClassId:I

    invoke-virtual {v0, v1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v0, p1}, Lorg/eclipse/mat/parser/model/ClassImpl;->doesExtend(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllSubclasses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v3, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->subClasses:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->subClasses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 264
    :cond_1
    return-object v0

    .line 260
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->subClasses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/IClass;>;"
    iget-object v3, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->subClasses:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 262
    iget-object v3, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->subClasses:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/snapshot/model/IClass;

    .line 263
    .local v2, subClass:Lorg/eclipse/mat/snapshot/model/IClass;
    invoke-interface {v2}, Lorg/eclipse/mat/snapshot/model/IClass;->getAllSubclasses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getCacheEntry()Ljava/io/Serializable;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->cacheEntry:Ljava/io/Serializable;

    return-object v0
.end method

.method public getClassLoaderAddress()J
    .locals 2

    .prologue
    .line 178
    iget-wide v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->classLoaderAddress:J

    return-wide v0
.end method

.method public getClassLoaderId()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->classLoaderId:I

    return v0
.end method

.method public getFieldDescriptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/FieldDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->fields:[Lorg/eclipse/mat/snapshot/model/FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getHeapSizePerInstance()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->instanceSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfObjects()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->instanceCount:I

    return v0
.end method

.method public getObjectIds()[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getIndexManager()Lorg/eclipse/mat/parser/index/IndexManager;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/index/IndexManager;->c2objects()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyObjectsIndex;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->cacheEntry:Ljava/io/Serializable;

    invoke-interface {v1, v2}, Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyObjectsIndex;->getObjectsOf(Ljava/io/Serializable;)[I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Lorg/eclipse/mat/SnapshotException;

    invoke-direct {v1, v0}, Lorg/eclipse/mat/SnapshotException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getOutboundReferences()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/NamedReference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 154
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/NamedReference;>;"
    new-instance v4, Lorg/eclipse/mat/snapshot/model/PseudoReference;

    iget-object v5, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    iget-object v6, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v6

    const-string v8, "<class>"

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/eclipse/mat/snapshot/model/PseudoReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 156
    iget-wide v4, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->superClassAddress:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 157
    new-instance v4, Lorg/eclipse/mat/snapshot/model/PseudoReference;

    iget-object v5, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    iget-wide v6, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->superClassAddress:J

    const-string v8, "<super>"

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/eclipse/mat/snapshot/model/PseudoReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_0
    new-instance v4, Lorg/eclipse/mat/snapshot/model/PseudoReference;

    iget-object v5, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    iget-wide v6, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->classLoaderAddress:J

    const-string v8, "<classloader>"

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/eclipse/mat/snapshot/model/PseudoReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    const/4 v2, 0x0

    .local v2, ii:I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->staticFields:[Lorg/eclipse/mat/snapshot/model/Field;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    .line 162
    iget-object v4, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->staticFields:[Lorg/eclipse/mat/snapshot/model/Field;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    if-eqz v4, :cond_1

    .line 163
    iget-object v4, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->staticFields:[Lorg/eclipse/mat/snapshot/model/Field;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    .line 164
    .local v3, ref:Lorg/eclipse/mat/snapshot/model/ObjectReference;
    iget-object v4, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->staticFields:[Lorg/eclipse/mat/snapshot/model/Field;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Lorg/eclipse/mat/snapshot/model/Field;->getName()Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, fieldName:Ljava/lang/String;
    const-string v4, "<"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 167
    new-instance v4, Lorg/eclipse/mat/snapshot/model/PseudoReference;

    iget-object v5, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v3}, Lorg/eclipse/mat/snapshot/model/ObjectReference;->getObjectAddress()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7, v1}, Lorg/eclipse/mat/snapshot/model/PseudoReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    .end local v1           #fieldName:Ljava/lang/String;
    .end local v3           #ref:Lorg/eclipse/mat/snapshot/model/ObjectReference;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 169
    .restart local v1       #fieldName:Ljava/lang/String;
    .restart local v3       #ref:Lorg/eclipse/mat/snapshot/model/ObjectReference;
    :cond_2
    new-instance v4, Lorg/eclipse/mat/snapshot/model/NamedReference;

    iget-object v5, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v3}, Lorg/eclipse/mat/snapshot/model/ObjectReference;->getObjectAddress()J

    move-result-wide v6

    invoke-direct {v4, v5, v6, v7, v1}, Lorg/eclipse/mat/snapshot/model/NamedReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 174
    .end local v1           #fieldName:Ljava/lang/String;
    .end local v3           #ref:Lorg/eclipse/mat/snapshot/model/ObjectReference;
    :cond_3
    return-object v0
.end method

.method public getReferences()Lorg/eclipse/mat/collect/ArrayLong;
    .locals 8

    .prologue
    .line 136
    new-instance v0, Lorg/eclipse/mat/collect/ArrayLong;

    iget-object v3, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->staticFields:[Lorg/eclipse/mat/snapshot/model/Field;

    array-length v3, v3

    invoke-direct {v0, v3}, Lorg/eclipse/mat/collect/ArrayLong;-><init>(I)V

    .line 138
    .local v0, answer:Lorg/eclipse/mat/collect/ArrayLong;
    iget-object v3, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 139
    iget-wide v4, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->superClassAddress:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->superClassAddress:J

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 140
    :cond_0
    iget-wide v4, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->classLoaderAddress:J

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 142
    const/4 v1, 0x0

    .local v1, ii:I
    :goto_0
    iget-object v3, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->staticFields:[Lorg/eclipse/mat/snapshot/model/Field;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 143
    iget-object v3, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->staticFields:[Lorg/eclipse/mat/snapshot/model/Field;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    if-eqz v3, :cond_1

    .line 144
    iget-object v3, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->staticFields:[Lorg/eclipse/mat/snapshot/model/Field;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    .line 145
    .local v2, ref:Lorg/eclipse/mat/snapshot/model/ObjectReference;
    invoke-virtual {v2}, Lorg/eclipse/mat/snapshot/model/ObjectReference;->getObjectAddress()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 142
    .end local v2           #ref:Lorg/eclipse/mat/snapshot/model/ObjectReference;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_2
    return-object v0
.end method

.method public getRetainedHeapSizeOfObjects(ZZLorg/eclipse/mat/util/IProgressListener;)J
    .locals 10
    .parameter "calculateIfNotAvailable"
    .parameter "approximation"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 101
    iget-object v8, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v8}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getRetainedSizeCache()Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;

    move-result-object v8

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectId()I

    move-result v9

    invoke-virtual {v8, v9}, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->get(I)J

    move-result-wide v0

    .line 103
    .local v0, answer:J
    cmp-long v8, v0, v6

    if-gtz v8, :cond_0

    if-nez p1, :cond_1

    .line 128
    .end local v0           #answer:J
    :cond_0
    :goto_0
    return-wide v0

    .line 105
    .restart local v0       #answer:J
    :cond_1
    cmp-long v8, v0, v6

    if-gez v8, :cond_2

    if-nez p2, :cond_0

    .line 107
    :cond_2
    if-nez p3, :cond_3

    new-instance p3, Lorg/eclipse/mat/util/VoidProgressListener;

    .end local p3
    invoke-direct {p3}, Lorg/eclipse/mat/util/VoidProgressListener;-><init>()V

    .line 109
    .restart local p3
    :cond_3
    new-instance v2, Lorg/eclipse/mat/collect/ArrayInt;

    invoke-direct {v2}, Lorg/eclipse/mat/collect/ArrayInt;-><init>()V

    .line 110
    .local v2, ids:Lorg/eclipse/mat/collect/ArrayInt;
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectId()I

    move-result v8

    invoke-virtual {v2, v8}, Lorg/eclipse/mat/collect/ArrayInt;->add(I)V

    .line 111
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectIds()[I

    move-result-object v8

    invoke-virtual {v2, v8}, Lorg/eclipse/mat/collect/ArrayInt;->addAll([I)V

    .line 114
    const-wide/16 v4, 0x0

    .line 116
    .local v4, retainedSize:J
    if-nez p2, :cond_7

    .line 117
    iget-object v8, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v2}, Lorg/eclipse/mat/collect/ArrayInt;->toArray()[I

    move-result-object v9

    invoke-virtual {v8, v9, p3}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getRetainedSet([ILorg/eclipse/mat/util/IProgressListener;)[I

    move-result-object v3

    .line 118
    .local v3, retainedSet:[I
    invoke-interface {p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v8

    if-eqz v8, :cond_4

    move-wide v0, v6

    goto :goto_0

    .line 119
    :cond_4
    iget-object v6, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v6, v3}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getHeapSize([I)J

    move-result-wide v4

    .line 125
    .end local v3           #retainedSet:[I
    :cond_5
    if-eqz p2, :cond_6

    neg-long v4, v4

    .line 127
    :cond_6
    iget-object v6, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getRetainedSizeCache()Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;

    move-result-object v6

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectId()I

    move-result v7

    invoke-virtual {v6, v7, v4, v5}, Lorg/eclipse/mat/parser/internal/snapshot/RetainedSizeCache;->put(IJ)V

    move-wide v0, v4

    .line 128
    goto :goto_0

    .line 121
    :cond_7
    iget-object v8, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v2}, Lorg/eclipse/mat/collect/ArrayInt;->toArray()[I

    move-result-object v9

    invoke-virtual {v8, v9, p3}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getMinRetainedSize([ILorg/eclipse/mat/util/IProgressListener;)J

    move-result-wide v4

    .line 122
    invoke-interface {p3}, Lorg/eclipse/mat/util/IProgressListener;->isCanceled()Z

    move-result v8

    if-eqz v8, :cond_5

    move-wide v0, v6

    goto :goto_0
.end method

.method public getStaticFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/Field;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->staticFields:[Lorg/eclipse/mat/snapshot/model/Field;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubclasses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->subClasses:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->subClasses:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public getSuperClass()Lorg/eclipse/mat/parser/model/ClassImpl;
    .locals 6

    .prologue
    .line 223
    :try_start_0
    iget-wide v2, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->superClassAddress:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    iget v2, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->superClassId:I

    invoke-virtual {v1, v2}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getObject(I)Lorg/eclipse/mat/snapshot/model/IObject;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/parser/model/ClassImpl;
    :try_end_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, e:Lorg/eclipse/mat/SnapshotException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic getSuperClass()Lorg/eclipse/mat/snapshot/model/IClass;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getSuperClass()Lorg/eclipse/mat/parser/model/ClassImpl;

    move-result-object v0

    return-object v0
.end method

.method public getSuperClassAddress()J
    .locals 2

    .prologue
    .line 214
    iget-wide v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->superClassAddress:J

    return-wide v0
.end method

.method public getSuperClassId()I
    .locals 1

    .prologue
    .line 218
    iget v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->superClassId:I

    return v0
.end method

.method public getTechnicalName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 277
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    const-string v1, " @ 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    .line 230
    iget-wide v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->totalSize:J

    return-wide v0
.end method

.method public getUsedHeapSize()I
    .locals 1

    .prologue
    .line 132
    iget v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->usedHeapSize:I

    return v0
.end method

.method public hasSuperClass()Z
    .locals 4

    .prologue
    .line 234
    iget-wide v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->superClassAddress:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected internalGetField(Ljava/lang/String;)Lorg/eclipse/mat/snapshot/model/Field;
    .locals 5
    .parameter "name"

    .prologue
    .line 285
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->staticFields:[Lorg/eclipse/mat/snapshot/model/Field;

    .local v0, arr$:[Lorg/eclipse/mat/snapshot/model/Field;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 286
    .local v1, f:Lorg/eclipse/mat/snapshot/model/Field;
    invoke-virtual {v1}, Lorg/eclipse/mat/snapshot/model/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    .end local v1           #f:Lorg/eclipse/mat/snapshot/model/Field;
    :goto_1
    return-object v1

    .line 285
    .restart local v1       #f:Lorg/eclipse/mat/snapshot/model/Field;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 287
    .end local v1           #f:Lorg/eclipse/mat/snapshot/model/Field;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public isArrayType()Z
    .locals 1

    .prologue
    .line 272
    iget-boolean v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->isArrayType:Z

    return v0
.end method

.method public removeInstance(I)V
    .locals 4
    .parameter "heapSizePerInstance"

    .prologue
    .line 249
    iget v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->instanceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->instanceCount:I

    .line 250
    iget-wide v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->totalSize:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->totalSize:J

    .line 251
    return-void
.end method

.method public removeSubClass(Lorg/eclipse/mat/parser/model/ClassImpl;)V
    .locals 1
    .parameter "clazz"

    .prologue
    .line 300
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->subClasses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 301
    return-void
.end method

.method public setCacheEntry(Ljava/io/Serializable;)V
    .locals 0
    .parameter "cacheEntry"

    .prologue
    .line 80
    iput-object p1, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->cacheEntry:Ljava/io/Serializable;

    .line 81
    return-void
.end method

.method public setClassLoaderAddress(J)V
    .locals 1
    .parameter "address"

    .prologue
    .line 182
    iput-wide p1, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->classLoaderAddress:J

    .line 183
    return-void
.end method

.method public setClassLoaderIndex(I)V
    .locals 0
    .parameter "classLoaderIndex"

    .prologue
    .line 88
    iput p1, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->classLoaderId:I

    .line 89
    return-void
.end method

.method public setHeapSizePerInstance(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 198
    iput p1, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->instanceSize:I

    .line 199
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 206
    iput-object p1, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->name:Ljava/lang/String;

    .line 207
    return-void
.end method

.method public setSnapshot(Lorg/eclipse/mat/snapshot/ISnapshot;)V
    .locals 8
    .parameter "dump"

    .prologue
    .line 315
    invoke-super {p0, p1}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->setSnapshot(Lorg/eclipse/mat/snapshot/ISnapshot;)V

    .line 320
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->staticFields:[Lorg/eclipse/mat/snapshot/model/Field;

    .local v0, arr$:[Lorg/eclipse/mat/snapshot/model/Field;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 321
    .local v1, f:Lorg/eclipse/mat/snapshot/model/Field;
    invoke-virtual {v1}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    if-eqz v5, :cond_0

    .line 322
    invoke-virtual {v1}, Lorg/eclipse/mat/snapshot/model/Field;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    .line 323
    .local v4, ref:Lorg/eclipse/mat/snapshot/model/ObjectReference;
    new-instance v5, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    invoke-virtual {v4}, Lorg/eclipse/mat/snapshot/model/ObjectReference;->getObjectAddress()J

    move-result-wide v6

    invoke-direct {v5, p1, v6, v7}, Lorg/eclipse/mat/snapshot/model/ObjectReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;J)V

    invoke-virtual {v1, v5}, Lorg/eclipse/mat/snapshot/model/Field;->setValue(Ljava/lang/Object;)V

    .line 320
    .end local v4           #ref:Lorg/eclipse/mat/snapshot/model/ObjectReference;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    .end local v1           #f:Lorg/eclipse/mat/snapshot/model/Field;
    :cond_1
    return-void
.end method

.method public setSuperClassIndex(I)V
    .locals 0
    .parameter "superClassIndex"

    .prologue
    .line 84
    iput p1, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->superClassId:I

    .line 85
    return-void
.end method

.method public setUsedHeapSize(I)V
    .locals 0
    .parameter "usedHeapSize"

    .prologue
    .line 304
    iput p1, p0, Lorg/eclipse/mat/parser/model/ClassImpl;->usedHeapSize:I

    .line 305
    return-void
.end method
