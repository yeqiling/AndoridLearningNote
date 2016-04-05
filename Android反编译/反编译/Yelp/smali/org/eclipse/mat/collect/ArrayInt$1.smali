.class Lorg/eclipse/mat/collect/ArrayInt$1;
.super Ljava/lang/Object;
.source "ArrayInt.java"

# interfaces
.implements Lorg/eclipse/mat/collect/IteratorInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/collect/ArrayInt;->iterator()Lorg/eclipse/mat/collect/IteratorInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lorg/eclipse/mat/collect/ArrayInt;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/collect/ArrayInt;)V
    .locals 1
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lorg/eclipse/mat/collect/ArrayInt$1;->this$0:Lorg/eclipse/mat/collect/ArrayInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/collect/ArrayInt$1;->index:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 91
    iget v0, p0, Lorg/eclipse/mat/collect/ArrayInt$1;->index:I

    iget-object v1, p0, Lorg/eclipse/mat/collect/ArrayInt$1;->this$0:Lorg/eclipse/mat/collect/ArrayInt;

    iget v1, v1, Lorg/eclipse/mat/collect/ArrayInt;->size:I

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
    .line 95
    iget-object v0, p0, Lorg/eclipse/mat/collect/ArrayInt$1;->this$0:Lorg/eclipse/mat/collect/ArrayInt;

    iget-object v0, v0, Lorg/eclipse/mat/collect/ArrayInt;->elements:[I

    iget v1, p0, Lorg/eclipse/mat/collect/ArrayInt$1;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/eclipse/mat/collect/ArrayInt$1;->index:I

    aget v0, v0, v1

    return v0
.end method
