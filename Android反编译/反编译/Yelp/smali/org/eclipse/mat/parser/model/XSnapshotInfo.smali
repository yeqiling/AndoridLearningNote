.class public final Lorg/eclipse/mat/parser/model/XSnapshotInfo;
.super Lorg/eclipse/mat/snapshot/SnapshotInfo;
.source "XSnapshotInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x3L


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 22
    const-wide/16 v10, 0x0

    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    move v6, v4

    move v7, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lorg/eclipse/mat/snapshot/SnapshotInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Date;IIIIJ)V

    .line 23
    return-void
.end method


# virtual methods
.method public setCreationDate(Ljava/util/Date;)V
    .locals 4
    .parameter "creationDate"

    .prologue
    .line 34
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->creationDate:Ljava/util/Date;

    .line 35
    return-void
.end method

.method public setIdentifierSize(I)V
    .locals 0
    .parameter "identifierSize"

    .prologue
    .line 38
    iput p1, p0, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->identifierSize:I

    .line 39
    return-void
.end method

.method public setJvmInfo(Ljava/lang/String;)V
    .locals 0
    .parameter "jvmInfo"

    .prologue
    .line 42
    iput-object p1, p0, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->jvmInfo:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setNumberOfClassLoaders(I)V
    .locals 0
    .parameter "numberOfClassLoaders"

    .prologue
    .line 50
    iput p1, p0, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->numberOfClassLoaders:I

    .line 51
    return-void
.end method

.method public setNumberOfClasses(I)V
    .locals 0
    .parameter "numberOfClasses"

    .prologue
    .line 46
    iput p1, p0, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->numberOfClasses:I

    .line 47
    return-void
.end method

.method public setNumberOfGCRoots(I)V
    .locals 0
    .parameter "numberOfGCRoots"

    .prologue
    .line 54
    iput p1, p0, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->numberOfGCRoots:I

    .line 55
    return-void
.end method

.method public setNumberOfObjects(I)V
    .locals 0
    .parameter "numberOfObjects"

    .prologue
    .line 58
    iput p1, p0, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->numberOfObjects:I

    .line 59
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 30
    iput-object p1, p0, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->path:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0
    .parameter "prefix"

    .prologue
    .line 26
    iput-object p1, p0, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->prefix:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setUsedHeapSize(J)V
    .locals 1
    .parameter "usedHeapSize"

    .prologue
    .line 62
    iput-wide p1, p0, Lorg/eclipse/mat/parser/model/XSnapshotInfo;->usedHeapSize:J

    .line 63
    return-void
.end method
