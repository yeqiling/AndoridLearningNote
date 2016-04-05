.class Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;
.super Ljava/lang/Object;
.source "SnapshotImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/internal/SnapshotImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Path"
.end annotation


# instance fields
.field index:I

.field next:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;


# direct methods
.method public constructor <init>(ILorg/eclipse/mat/parser/internal/SnapshotImpl$Path;)V
    .locals 0
    .parameter "index"
    .parameter "next"

    .prologue
    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1348
    iput p1, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;->index:I

    .line 1349
    iput-object p2, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;->next:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    .line 1350
    return-void
.end method


# virtual methods
.method public contains(J)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 1361
    move-object v0, p0

    .line 1362
    .local v0, p:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;
    :goto_0
    if-eqz v0, :cond_1

    .line 1363
    iget v1, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;->index:I

    int-to-long v2, v1

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 1366
    :goto_1
    return v1

    .line 1364
    :cond_0
    iget-object v0, v0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;->next:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    goto :goto_0

    .line 1366
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 1357
    iget v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;->index:I

    return v0
.end method

.method public getNext()Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;
    .locals 1

    .prologue
    .line 1353
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;->next:Lorg/eclipse/mat/parser/internal/SnapshotImpl$Path;

    return-object v0
.end method
