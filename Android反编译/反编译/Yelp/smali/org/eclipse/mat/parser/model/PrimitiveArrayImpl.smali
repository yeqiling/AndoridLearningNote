.class public Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;
.super Lorg/eclipse/mat/parser/model/AbstractArrayImpl;
.source "PrimitiveArrayImpl.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(IJLorg/eclipse/mat/parser/model/ClassImpl;II)V
    .locals 0
    .parameter "objectId"
    .parameter "address"
    .parameter "classInstance"
    .parameter "length"
    .parameter "type"

    .prologue
    .line 36
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/mat/parser/model/AbstractArrayImpl;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;I)V

    .line 37
    iput p6, p0, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->type:I

    .line 38
    return-void
.end method

.method public static doGetUsedHeapSize(Lorg/eclipse/mat/parser/model/ClassImpl;II)I
    .locals 2
    .parameter "clazz"
    .parameter "length"
    .parameter "type"

    .prologue
    .line 103
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/ClassImpl;->getHeapSizePerInstance()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    sget-object v1, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->ELEMENT_SIZE:[I

    aget v1, v1, p2

    mul-int/2addr v1, p1

    add-int/2addr v0, v1

    invoke-static {v0}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->alignUpTo8(I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected appendFields(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .parameter "buf"

    .prologue
    .line 91
    invoke-super {p0, p1}, Lorg/eclipse/mat/parser/model/AbstractArrayImpl;->appendFields(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->getUsedHeapSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getComponentType()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 45
    sget-object v0, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->COMPONENT_TYPE:[Ljava/lang/Class;

    iget v1, p0, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->type:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getOutboundReferences()Ljava/util/List;
    .locals 6
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
    .line 84
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    .local v0, references:Ljava/util/List;,"Ljava/util/List<Lorg/eclipse/mat/snapshot/model/NamedReference;>;"
    new-instance v1, Lorg/eclipse/mat/snapshot/model/PseudoReference;

    iget-object v2, p0, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    iget-object v3, p0, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v4

    const-string v3, "<class>"

    invoke-direct {v1, v2, v4, v5, v3}, Lorg/eclipse/mat/snapshot/model/PseudoReference;-><init>(Lorg/eclipse/mat/snapshot/ISnapshot;JLjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    return-object v0
.end method

.method public getReferences()Lorg/eclipse/mat/collect/ArrayLong;
    .locals 4

    .prologue
    .line 78
    new-instance v0, Lorg/eclipse/mat/collect/ArrayLong;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/eclipse/mat/collect/ArrayLong;-><init>(I)V

    .line 79
    .local v0, references:Lorg/eclipse/mat/collect/ArrayLong;
    iget-object v1, p0, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/model/ClassImpl;->getObjectAddress()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/mat/collect/ArrayLong;->add(J)V

    .line 80
    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->type:I

    return v0
.end method

.method public getUsedHeapSize()I
    .locals 4

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->getSnapshot()Lorg/eclipse/mat/snapshot/ISnapshot;

    move-result-object v1

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->getObjectId()I

    move-result v2

    invoke-interface {v1, v2}, Lorg/eclipse/mat/snapshot/ISnapshot;->getHeapSize(I)I
    :try_end_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 98
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Lorg/eclipse/mat/SnapshotException;
    iget-object v1, p0, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->classInstance:Lorg/eclipse/mat/parser/model/ClassImpl;

    iget v2, p0, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->length:I

    iget v3, p0, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->type:I

    invoke-static {v1, v2, v3}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->doGetUsedHeapSize(Lorg/eclipse/mat/parser/model/ClassImpl;II)I

    move-result v1

    goto :goto_0
.end method

.method public getValueArray()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getHeapObjectReader()Lorg/eclipse/mat/parser/IObjectReader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->getLength()I

    move-result v3

    invoke-interface {v1, p0, v2, v3}, Lorg/eclipse/mat/parser/IObjectReader;->readPrimitiveArrayContent(Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;II)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Lorg/eclipse/mat/SnapshotException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 58
    .end local v0           #e:Lorg/eclipse/mat/SnapshotException;
    :catch_1
    move-exception v0

    .line 59
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getValueArray(II)Ljava/lang/Object;
    .locals 2
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->source:Lorg/eclipse/mat/parser/internal/SnapshotImpl;

    invoke-virtual {v1}, Lorg/eclipse/mat/parser/internal/SnapshotImpl;->getHeapObjectReader()Lorg/eclipse/mat/parser/IObjectReader;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Lorg/eclipse/mat/parser/IObjectReader;->readPrimitiveArrayContent(Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;II)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, e:Lorg/eclipse/mat/SnapshotException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 68
    .end local v0           #e:Lorg/eclipse/mat/SnapshotException;
    :catch_1
    move-exception v0

    .line 69
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getValueAt(I)Ljava/lang/Object;
    .locals 2
    .parameter "index"

    .prologue
    .line 49
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;->getValueArray(II)Ljava/lang/Object;

    move-result-object v0

    .line 50
    .local v0, data:Ljava/lang/Object;
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected internalGetField(Ljava/lang/String;)Lorg/eclipse/mat/snapshot/model/Field;
    .locals 1
    .parameter "name"

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method
