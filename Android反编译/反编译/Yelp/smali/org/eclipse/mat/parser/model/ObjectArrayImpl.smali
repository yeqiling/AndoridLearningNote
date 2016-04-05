.class public Lorg/eclipse/mat/parser/model/ObjectArrayImpl;
.super Lorg/eclipse/mat/parser/model/AbstractArrayImpl;
.source "ObjectArrayImpl.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/model/IObjectArray;


# static fields
.field private static final serialVersionUID:J = 0x2L


# direct methods
.method public constructor <init>(IJLorg/eclipse/mat/parser/model/ClassImpl;I)V
    .locals 0
    .parameter "objectId"
    .parameter "address"
    .parameter "classInstance"
    .parameter "length"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/mat/parser/model/AbstractArrayImpl;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;I)V

    .line 37
    return-void
.end method

.method public static doGetUsedHeapSize(Lorg/eclipse/mat/parser/model/ClassImpl;I)I
    .locals 2
    .parameter "clazz"
    .parameter "length"

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getHeapSizePerInstance()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getHeapSizePerInstance()I

    move-result v1

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->alignUpTo8(I)I

    move-result v0

    return v0
.end method


# virtual methods
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
    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->getLength()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 109
    .local v0, answer:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/NamedReference;>;"
    new-instance v4, Lorg/eclipse/mat/snapshot/model/PseudoReference;

    iget-object v5, p0, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    iget-object v6, p0, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v6}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v6

    const-string v8, "<class>"

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/eclipse/mat/snapshot/model/PseudoReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->getReferenceArray()[J

    move-result-object v3

    .line 113
    .local v3, refs:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 114
    aget-wide v4, v3, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v1, builder:Ljava/lang/StringBuilder;
    const/16 v4, 0x5b

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 118
    new-instance v4, Lorg/eclipse/mat/snapshot/model/NamedReference;

    iget-object v5, p0, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    aget-wide v6, v3, v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/eclipse/mat/snapshot/model/NamedReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v1           #builder:Ljava/lang/StringBuilder;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 122
    :cond_1
    return-object v0
.end method

.method public getReferenceArray()[J
    .locals 4

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getHeapObjectReader()Lorg/eclipse/mat/parser/IObjectReader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->getLength()I

    move-result v3

    invoke-interface {v1, p0, v2, v3}, Lorg/eclipse/mat/parser/IObjectReader;->readObjectArrayContent(Lorg/eclipse/mat/parser/model/ObjectArrayImpl;II)[J
    :try_end_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Lorg/eclipse/mat/SnapshotException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 57
    .end local v0           #e:Lorg/eclipse/mat/SnapshotException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReferenceArray(II)[J
    .locals 2
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getHeapObjectReader()Lorg/eclipse/mat/parser/IObjectReader;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lorg/eclipse/mat/parser/IObjectReader;->readObjectArrayContent(Lorg/eclipse/mat/parser/model/ObjectArrayImpl;II)[J
    :try_end_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Lorg/eclipse/mat/SnapshotException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 67
    .end local v0           #e:Lorg/eclipse/mat/SnapshotException;
    :catch_1
    move-exception v0

    .line 68
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getReferences()Lorg/eclipse/mat/collect/ArrayLong;
    .locals 8

    .prologue
    .line 73
    new-instance v0, Lorg/eclipse/mat/collect/ArrayLong;

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->getLength()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Lorg/eclipse/mat/collect/ArrayLong;-><init>(I)V

    .line 75
    .local v0, answer:Lorg/eclipse/mat/collect/ArrayLong;
    iget-object v3, p0, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 77
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->getReferenceArray()[J

    move-result-object v2

    .line 78
    .local v2, refs:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 79
    aget-wide v4, v2, v1

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 80
    aget-wide v4, v2, v1

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 78
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    return-object v0
.end method

.method public getUsedHeapSize()I
    .locals 3

    .prologue
    .line 41
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->getSnapshot()Lorg/eclipse/mat/snapshot/ISnapshot;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->getObjectId()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/eclipse/mat/snapshot/ISnapshot;->getHeapSize(I)I
    :try_end_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 43
    :goto_0
    return v1

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, e:Lorg/eclipse/mat/SnapshotException;
    iget-object v1, p0, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    iget v2, p0, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->length:I

    invoke-static {v1, v2}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->doGetUsedHeapSize(Lorg/eclipse/mat/parser/model/ClassImpl;I)I

    move-result v1

    goto :goto_0
.end method

.method protected internalGetField(Ljava/lang/String;)Lorg/eclipse/mat/snapshot/model/Field;
    .locals 10
    .parameter "name"

    .prologue
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5d

    if-eq v3, v4, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 98
    :goto_0
    return-object v3

    .line 91
    :cond_1
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 92
    .local v1, index:I
    if-ltz v1, :cond_2

    iget v3, p0, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->length:I

    if-le v1, v3, :cond_3

    .line 93
    :cond_2
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    sget-object v4, Lorg/eclipse/mat/hprof/Messages;->ObjectArrayImpl_forArray:Lorg/eclipse/mat/hprof/Messages;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->getTechnicalName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lorg/eclipse/mat/util/MessageUtil;->format(Lorg/eclipse/mat/hprof/Messages;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    .end local v1           #index:I
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Lorg/eclipse/mat/SnapshotException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 97
    .end local v0           #e:Lorg/eclipse/mat/SnapshotException;
    .restart local v1       #index:I
    :cond_3
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getHeapObjectReader()Lorg/eclipse/mat/parser/IObjectReader;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, p0, v1, v4}, Lorg/eclipse/mat/parser/IObjectReader;->readObjectArrayContent(Lorg/eclipse/mat/parser/model/ObjectArrayImpl;II)[J

    move-result-object v2

    .line 98
    .local v2, references:[J
    new-instance v3, Lorg/eclipse/mat/snapshot/model/Field;

    const/4 v4, 0x2

    new-instance v5, Lorg/eclipse/mat/snapshot/model/ObjectReference;

    iget-object v6, p0, Lorg/eclipse/mat/parser/model/ObjectArrayImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    const/4 v7, 0x0

    aget-wide v8, v2, v7

    invoke-direct {v5, v6, v8, v9}, Lorg/eclipse/mat/snapshot/model/ObjectReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;J)V

    invoke-direct {v3, p1, v4, v5}, Lorg/eclipse/mat/snapshot/model/Field;-><init>(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 101
    .end local v1           #index:I
    .end local v2           #references:[J
    :catch_1
    move-exception v0

    .line 102
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
