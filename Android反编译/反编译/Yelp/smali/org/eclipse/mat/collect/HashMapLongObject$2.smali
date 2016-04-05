.class Lorg/eclipse/mat/collect/HashMapLongObject$2;
.super Ljava/lang/Object;
.source "HashMapLongObject.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/collect/HashMapLongObject;->values()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field i:I

.field n:I

.field final synthetic this$0:Lorg/eclipse/mat/collect/HashMapLongObject;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/collect/HashMapLongObject;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject$2;,"Lorg/eclipse/mat/collect/HashMapLongObject.2;"
    iput-object p1, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->this$0:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->n:I

    .line 188
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 191
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject$2;,"Lorg/eclipse/mat/collect/HashMapLongObject.2;"
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->n:I

    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->this$0:Lorg/eclipse/mat/collect/HashMapLongObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapLongObject;->size:I
    invoke-static {v1}, Lorg/eclipse/mat/collect/HashMapLongObject;->access$000(Lorg/eclipse/mat/collect/HashMapLongObject;)I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 195
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject$2;,"Lorg/eclipse/mat/collect/HashMapLongObject.2;"
    :cond_0
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->i:I

    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->this$0:Lorg/eclipse/mat/collect/HashMapLongObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z
    invoke-static {v1}, Lorg/eclipse/mat/collect/HashMapLongObject;->access$100(Lorg/eclipse/mat/collect/HashMapLongObject;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 196
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->this$0:Lorg/eclipse/mat/collect/HashMapLongObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z
    invoke-static {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;->access$100(Lorg/eclipse/mat/collect/HashMapLongObject;)[Z

    move-result-object v0

    iget v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->i:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 197
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->n:I

    .line 198
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->this$0:Lorg/eclipse/mat/collect/HashMapLongObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;
    invoke-static {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;->access$300(Lorg/eclipse/mat/collect/HashMapLongObject;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject$2;->i:I

    aget-object v0, v0, v1

    return-object v0

    .line 201
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 205
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject$2;,"Lorg/eclipse/mat/collect/HashMapLongObject.2;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
