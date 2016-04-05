.class Lorg/eclipse/mat/collect/HashMapIntObject$1;
.super Ljava/lang/Object;
.source "HashMapIntObject.java"

# interfaces
.implements Lorg/eclipse/mat/collect/IteratorInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/collect/HashMapIntObject;->keys()Lorg/eclipse/mat/collect/IteratorInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field i:I

.field n:I

.field final synthetic this$0:Lorg/eclipse/mat/collect/HashMapIntObject;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/collect/HashMapIntObject;)V
    .locals 1
    .parameter

    .prologue
    .line 164
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject$1;,"Lorg/eclipse/mat/collect/HashMapIntObject.1;"
    iput-object p1, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->this$0:Lorg/eclipse/mat/collect/HashMapIntObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->n:I

    .line 166
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 169
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject$1;,"Lorg/eclipse/mat/collect/HashMapIntObject.1;"
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->n:I

    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->this$0:Lorg/eclipse/mat/collect/HashMapIntObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapIntObject;->size:I
    invoke-static {v1}, Lorg/eclipse/mat/collect/HashMapIntObject;->access$000(Lorg/eclipse/mat/collect/HashMapIntObject;)I

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
    .line 173
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject$1;,"Lorg/eclipse/mat/collect/HashMapIntObject.1;"
    :cond_0
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->i:I

    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->this$0:Lorg/eclipse/mat/collect/HashMapIntObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z
    invoke-static {v1}, Lorg/eclipse/mat/collect/HashMapIntObject;->access$100(Lorg/eclipse/mat/collect/HashMapIntObject;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 174
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->this$0:Lorg/eclipse/mat/collect/HashMapIntObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapIntObject;->used:[Z
    invoke-static {v0}, Lorg/eclipse/mat/collect/HashMapIntObject;->access$100(Lorg/eclipse/mat/collect/HashMapIntObject;)[Z

    move-result-object v0

    iget v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->i:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 175
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->n:I

    .line 176
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->this$0:Lorg/eclipse/mat/collect/HashMapIntObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I
    invoke-static {v0}, Lorg/eclipse/mat/collect/HashMapIntObject;->access$200(Lorg/eclipse/mat/collect/HashMapIntObject;)[I

    move-result-object v0

    iget v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject$1;->i:I

    aget v0, v0, v1

    return v0

    .line 179
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
