.class Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;
.super Ljava/lang/Object;
.source "DominatorTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuccessorsEnum"
.end annotation


# instance fields
.field nextIndex:I

.field parent:I

.field final synthetic this$1:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;I)V
    .locals 1
    .parameter
    .parameter "parent"

    .prologue
    .line 433
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->this$1:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput p2, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->parent:I

    .line 435
    add-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, v0}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->findFirstChildIndex(I)I

    move-result v0

    iput v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->nextIndex:I

    .line 436
    return-void
.end method


# virtual methods
.method findFirstChildIndex(I)I
    .locals 3
    .parameter "el"

    .prologue
    .line 452
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->this$1:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;

    iget-object v1, v1, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dom:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    .line 453
    .local v0, i:I
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->this$1:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;

    iget-object v1, v1, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dom:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-ne v1, p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 454
    :cond_0
    return v0
.end method

.method public hasMoreElements()Z
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->nextIndex:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()I
    .locals 4

    .prologue
    .line 443
    iget v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->nextIndex:I

    if-gez v1, :cond_0

    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 444
    :cond_0
    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->this$1:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;

    iget-object v1, v1, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->elements:[I

    iget v2, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->nextIndex:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->nextIndex:I

    aget v0, v1, v2

    .line 446
    .local v0, res:I
    iget v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->nextIndex:I

    iget-object v2, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->this$1:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;

    iget-object v2, v2, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dom:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->this$1:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;

    iget-object v1, v1, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree;->dom:[I

    iget v2, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->nextIndex:I

    aget v1, v1, v2

    iget v2, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->parent:I

    add-int/lit8 v2, v2, 0x2

    if-eq v1, v2, :cond_2

    :cond_1
    const/4 v1, -0x1

    iput v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$FlatDominatorTree$SuccessorsEnum;->nextIndex:I

    .line 448
    :cond_2
    return v0
.end method
