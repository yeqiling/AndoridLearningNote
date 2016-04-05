.class final Lorg/eclipse/mat/snapshot/DominatorsSummary$1;
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
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 381
    instance-of v0, p1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    if-eqz v0, :cond_0

    .line 382
    check-cast p1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    .end local p1
    invoke-virtual {p1}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->getClassName()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;

    .end local p2
    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassDominatorRecord;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 385
    :goto_0
    return v0

    .restart local p1
    .restart local p2
    :cond_0
    check-cast p1, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    .end local p1
    invoke-virtual {p1}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;

    .end local p2
    invoke-virtual {p2}, Lorg/eclipse/mat/snapshot/DominatorsSummary$ClassloaderDominatorRecord;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
