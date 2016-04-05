.class final Lorg/eclipse/mat/snapshot/DominatorsSummary$2;
.super Ljava/lang/Object;
.source "DominatorsSummary.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/snapshot/DominatorsSummary;
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
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 394
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, c1:I
    const/4 v1, 0x0

    .line 399
    .local v1, c2:I
    instance-of v2, p1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    if-eqz v2, :cond_0

    .line 400
    check-cast p1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    .end local p1
    invoke-virtual {p1}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->getDominatorCount()I

    move-result v0

    .line 401
    check-cast p2, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    .end local p2
    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->getDominatorCount()I

    move-result v1

    .line 407
    :goto_0
    if-le v0, v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 403
    .restart local p1
    .restart local p2
    :cond_0
    check-cast p1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    .end local p1
    invoke-virtual {p1}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->getDominatorCount()I

    move-result v0

    .line 404
    check-cast p2, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    .end local p2
    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->getDominatorCount()I

    move-result v1

    goto :goto_0

    .line 407
    :cond_1
    if-ne v0, v1, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    goto :goto_1
.end method
