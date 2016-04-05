.class final Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord$3;
.super Ljava/lang/Object;
.source "MultiplePathsFromGCRootsRecord.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->getComparatorByReferencedRetainedSize()Ljava/util/Comparator;
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
        "Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 202
    check-cast p1, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;

    .end local p1
    check-cast p2, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord$3;->compare(Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;)I
    .locals 4
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 205
    invoke-virtual {p1}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->getReferencedRetainedSize()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->getReferencedRetainedSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    .line 207
    :goto_0
    return v0

    .line 206
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->getReferencedRetainedSize()J

    move-result-wide v0

    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/MultiplePathsFromGCRootsRecord;->getReferencedRetainedSize()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    .line 207
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
