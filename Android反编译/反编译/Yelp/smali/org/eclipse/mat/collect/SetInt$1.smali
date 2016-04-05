.class Lorg/eclipse/mat/collect/SetInt$1;
.super Ljava/lang/Object;
.source "SetInt.java"

# interfaces
.implements Lorg/eclipse/mat/collect/IteratorInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/collect/SetInt;->iterator()Lorg/eclipse/mat/collect/IteratorInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field i:I

.field n:I

.field final synthetic this$0:Lorg/eclipse/mat/collect/SetInt;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/collect/SetInt;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lorg/eclipse/mat/collect/SetInt$1;->this$0:Lorg/eclipse/mat/collect/SetInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/collect/SetInt$1;->n:I

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/mat/collect/SetInt$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lorg/eclipse/mat/collect/SetInt$1;->n:I

    iget-object v1, p0, Lorg/eclipse/mat/collect/SetInt$1;->this$0:Lorg/eclipse/mat/collect/SetInt;

    #getter for: Lorg/eclipse/mat/collect/SetInt;->size:I
    invoke-static {v1}, Lorg/eclipse/mat/collect/SetInt;->access$000(Lorg/eclipse/mat/collect/SetInt;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 114
    :cond_0
    iget v0, p0, Lorg/eclipse/mat/collect/SetInt$1;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/collect/SetInt$1;->i:I

    iget-object v1, p0, Lorg/eclipse/mat/collect/SetInt$1;->this$0:Lorg/eclipse/mat/collect/SetInt;

    #getter for: Lorg/eclipse/mat/collect/SetInt;->used:[Z
    invoke-static {v1}, Lorg/eclipse/mat/collect/SetInt;->access$100(Lorg/eclipse/mat/collect/SetInt;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 115
    iget-object v0, p0, Lorg/eclipse/mat/collect/SetInt$1;->this$0:Lorg/eclipse/mat/collect/SetInt;

    #getter for: Lorg/eclipse/mat/collect/SetInt;->used:[Z
    invoke-static {v0}, Lorg/eclipse/mat/collect/SetInt;->access$100(Lorg/eclipse/mat/collect/SetInt;)[Z

    move-result-object v0

    iget v1, p0, Lorg/eclipse/mat/collect/SetInt$1;->i:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 116
    iget v0, p0, Lorg/eclipse/mat/collect/SetInt$1;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/collect/SetInt$1;->n:I

    .line 117
    iget-object v0, p0, Lorg/eclipse/mat/collect/SetInt$1;->this$0:Lorg/eclipse/mat/collect/SetInt;

    #getter for: Lorg/eclipse/mat/collect/SetInt;->keys:[I
    invoke-static {v0}, Lorg/eclipse/mat/collect/SetInt;->access$200(Lorg/eclipse/mat/collect/SetInt;)[I

    move-result-object v0

    iget v1, p0, Lorg/eclipse/mat/collect/SetInt$1;->i:I

    aget v0, v0, v1

    return v0

    .line 120
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
