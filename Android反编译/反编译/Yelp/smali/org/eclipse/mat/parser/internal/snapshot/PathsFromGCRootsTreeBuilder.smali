.class public Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;
.super Ljava/lang/Object;
.source "PathsFromGCRootsTreeBuilder.java"


# instance fields
.field private objectIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private objectInboundReferers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private ownId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "ownId"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->objectIds:Ljava/util/ArrayList;

    .line 26
    iput p1, p0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->ownId:I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->objectInboundReferers:Ljava/util/HashMap;

    .line 28
    return-void
.end method


# virtual methods
.method public addObjectReferer(Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;)V
    .locals 2
    .parameter "referer"

    .prologue
    .line 52
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->objectInboundReferers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->getOwnId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->objectIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->getOwnId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    return-void
.end method

.method public getObjectReferers()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->objectInboundReferers:Ljava/util/HashMap;

    return-object v0
.end method

.method public getOwnId()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->ownId:I

    return v0
.end method

.method public toPathsFromGCRootsTree()Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;
    .locals 7

    .prologue
    .line 35
    new-instance v1, Ljava/util/HashMap;

    iget-object v5, p0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->objectInboundReferers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 37
    .local v1, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;>;"
    iget-object v5, p0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->objectInboundReferers:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 38
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;

    invoke-virtual {v5}, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->toPathsFromGCRootsTree()Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 40
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;>;"
    :cond_0
    iget-object v5, p0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->objectIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v0, v5, [I

    .line 41
    .local v0, children:[I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_1

    .line 42
    iget-object v5, p0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->objectIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v0, v3

    .line 41
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 44
    :cond_1
    new-instance v5, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;

    iget v6, p0, Lorg/eclipse/mat/parser/internal/snapshot/PathsFromGCRootsTreeBuilder;->ownId:I

    invoke-direct {v5, v6, v1, v0}, Lorg/eclipse/mat/snapshot/PathsFromGCRootsTree;-><init>(ILjava/util/HashMap;[I)V

    return-object v5
.end method
