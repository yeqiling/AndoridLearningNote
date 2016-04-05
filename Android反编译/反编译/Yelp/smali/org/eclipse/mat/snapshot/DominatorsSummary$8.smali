.class final Lorg/eclipse/mat/snapshot/DominatorsSummary$8;
.super Ljava/lang/Object;
.source "DominatorsSummary.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/snapshot/DominatorsSummary;->reverseComparator(Ljava/util/Comparator;)Ljava/util/Comparator;
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


# instance fields
.field final synthetic val$comparator:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .parameter

    .prologue
    .line 513
    iput-object p1, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$8;->val$comparator:Ljava/util/Comparator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 515
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/DominatorsSummary$8;->val$comparator:Ljava/util/Comparator;

    invoke-interface {v0, p2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
