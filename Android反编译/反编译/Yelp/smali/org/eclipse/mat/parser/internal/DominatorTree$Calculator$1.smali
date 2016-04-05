.class Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$1;
.super Ljava/lang/Object;
.source "DominatorTree.java"

# interfaces
.implements Lorg/eclipse/mat/collect/IteratorInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->compute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field nextIndex:I

.field final synthetic this$0:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;)V
    .locals 1
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$1;->this$0:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    const/4 v0, 0x2

    iput v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$1;->nextIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 172
    iget v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$1;->nextIndex:I

    iget-object v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$1;->this$0:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;

    #getter for: Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I
    invoke-static {v1}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->access$000(Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()I
    .locals 3

    .prologue
    .line 176
    iget-object v0, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$1;->this$0:Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;

    #getter for: Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->dom:[I
    invoke-static {v0}, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;->access$000(Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator;)[I

    move-result-object v0

    iget v1, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$1;->nextIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/mat/parser/internal/DominatorTree$Calculator$1;->nextIndex:I

    aget v0, v0, v1

    return v0
.end method
