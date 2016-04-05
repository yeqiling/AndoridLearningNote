.class public Lorg/eclipse/mat/snapshot/SnapshotInfo;
.super Ljava/lang/Object;
.source "SnapshotInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4L


# instance fields
.field protected creationDate:Ljava/util/Date;

.field protected identifierSize:I

.field protected jvmInfo:Ljava/lang/String;

.field protected numberOfClassLoaders:I

.field protected numberOfClasses:I

.field protected numberOfGCRoots:I

.field protected numberOfObjects:I

.field protected path:Ljava/lang/String;

.field protected prefix:Ljava/lang/String;

.field protected properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field protected usedHeapSize:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;IIIIJ)V
    .locals 13
    .parameter "path"
    .parameter "jvmInfo"
    .parameter "identifierSize"
    .parameter "creationDate"
    .parameter "numberOfObjects"
    .parameter "numberOfGCRoots"
    .parameter "numberOfClasses"
    .parameter "numberOfClassLoaders"
    .parameter "usedHeapSize"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-static {p1}, Lorg/eclipse/mat/snapshot/SnapshotInfo;->prefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Lorg/eclipse/mat/snapshot/SnapshotInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;IIIIJ)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;IIIIJ)V
    .locals 4
    .parameter "path"
    .parameter "prefix"
    .parameter "jvmInfo"
    .parameter "identifierSize"
    .parameter "creationDate"
    .parameter "numberOfObjects"
    .parameter "numberOfGCRoots"
    .parameter "numberOfClasses"
    .parameter "numberOfClassLoaders"
    .parameter "usedHeapSize"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->path:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->prefix:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->jvmInfo:Ljava/lang/String;

    .line 62
    iput p4, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->identifierSize:I

    .line 63
    if-eqz p5, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-virtual {p5}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    iput-object v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->creationDate:Ljava/util/Date;

    .line 64
    iput p6, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->numberOfObjects:I

    .line 65
    iput p7, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->numberOfGCRoots:I

    .line 66
    iput p8, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->numberOfClasses:I

    .line 67
    iput p9, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->numberOfClassLoaders:I

    .line 68
    iput-wide p10, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->usedHeapSize:J

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->properties:Ljava/util/Map;

    .line 70
    return-void

    .line 63
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static prefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    const/16 v2, 0x2e

    .line 81
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 82
    .local v0, p:I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getCreationDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 138
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->creationDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->creationDate:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIdentifierSize()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->identifierSize:I

    return v0
.end method

.method public getJvmInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->jvmInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberOfClassLoaders()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->numberOfClassLoaders:I

    return v0
.end method

.method public getNumberOfClasses()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->numberOfClasses:I

    return v0
.end method

.method public getNumberOfGCRoots()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->numberOfGCRoots:I

    return v0
.end method

.method public getNumberOfObjects()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->numberOfObjects:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1
    .parameter "name"

    .prologue
    .line 86
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public getUsedHeapSize()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->usedHeapSize:J

    return-wide v0
.end method

.method public setProperty(Ljava/lang/String;Ljava/io/Serializable;)Ljava/io/Serializable;
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 90
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, summary:Ljava/lang/StringBuilder;
    const-string v1, "Path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v1, "\r\nJVM Info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    iget-object v1, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->jvmInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v1, "\r\nIdentifier Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget v1, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->identifierSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    const-string v1, "\r\nCreation Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v1, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->creationDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    const-string v1, "\r\nNumber of Objects: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    iget v1, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->numberOfObjects:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 199
    const-string v1, "\r\nNumber of GC roots: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    iget v1, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->numberOfGCRoots:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    const-string v1, "\r\nNumber of Classes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    iget v1, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->numberOfClasses:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    const-string v1, "\r\nNumber of ClassLoaders: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    iget v1, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->numberOfClassLoaders:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 205
    const-string v1, "\r\nUsed Heap Size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    iget-wide v2, p0, Lorg/eclipse/mat/snapshot/SnapshotInfo;->usedHeapSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
