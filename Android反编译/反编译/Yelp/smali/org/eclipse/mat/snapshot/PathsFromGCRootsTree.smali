.class public final Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;
.super Ljava/lang/Object;
.source "PathsFromGCRootsTree.java"


# instance fields
.field private objectIds:[I

.field private objectInboundReferers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;",
            ">;"
        }
    .end annotation
.end field

.field private ownId:I


# direct methods
.method public constructor <init>(ILjava/util/HashMap;[I)V
    .locals 0
    .parameter "ownId"
    .parameter
    .parameter "objectIds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p2, objectInboundReferers:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;->ownId:I

    .line 30
    iput-object p2, p0, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;->objectInboundReferers:Ljava/util/HashMap;

    .line 31
    iput-object p3, p0, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;->objectIds:[I

    .line 32
    return-void
.end method


# virtual methods
.method public getBranch(I)Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;
    .locals 2
    .parameter "objId"

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;->objectInboundReferers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;

    return-object v0
.end method

.method public getObjectIds()[I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;->objectIds:[I

    return-object v0
.end method

.method public getOwnId()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;->ownId:I

    return v0
.end method
