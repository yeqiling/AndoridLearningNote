.class final Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord$2;
.super Ljava/lang/Object;
.source "MultiplePathsFromGCRootsClassRecord.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->getComparatorByReferencedHeapSize()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 154
    check-cast p1, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;

    .end local p1
    check-cast p2, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord$2;->compare(Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;)I
    .locals 6
    .parameter "o1"
    .parameter "o2"

    .prologue
    const/4 v1, 0x0

    .line 159
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->getReferencedHeapSize()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->getReferencedHeapSize()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    const/4 v1, 0x1

    .line 164
    :cond_0
    :goto_0
    return v1

    .line 160
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->getReferencedHeapSize()J

    move-result-wide v2

    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsClassRecord;->getReferencedHeapSize()J
    :try_end_0
    .catch Lorg/eclipse/mat/SnapshotException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    .line 162
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Lorg/eclipse/mat/SnapshotException;
    goto :goto_0
.end method
