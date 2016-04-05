.class Lorg/eclipse/mat/collect/HashMapLongObject$1;
.super Ljava/lang/Object;
.source "HashMapLongObject.java"

# interfaces
.implements Lorg/eclipse/mat/collect/IteratorLong;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/collect/HashMapLongObject;->keys()Lorg/eclipse/mat/collect/IteratorLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    .line 165
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject$1;,"Lorg/eclipse/mat/collect/HashMapLongObject.1;"
    iput-object p1, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->this$0:Lorg/eclipse/mat/collect/HashMapLongObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    const/4 v0, 0x0

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->n:I

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 170
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject$1;,"Lorg/eclipse/mat/collect/HashMapLongObject.1;"
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->n:I

    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->this$0:Lorg/eclipse/mat/collect/HashMapLongObject;

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

.method public next()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .prologue
    .line 174
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject$1;,"Lorg/eclipse/mat/collect/HashMapLongObject.1;"
    :cond_0
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->i:I

    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->this$0:Lorg/eclipse/mat/collect/HashMapLongObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z
    invoke-static {v1}, Lorg/eclipse/mat/collect/HashMapLongObject;->access$100(Lorg/eclipse/mat/collect/HashMapLongObject;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 175
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->this$0:Lorg/eclipse/mat/collect/HashMapLongObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapLongObject;->used:[Z
    invoke-static {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;->access$100(Lorg/eclipse/mat/collect/HashMapLongObject;)[Z

    move-result-object v0

    iget v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->i:I

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    .line 176
    iget v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->n:I

    .line 177
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->this$0:Lorg/eclipse/mat/collect/HashMapLongObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J
    invoke-static {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;->access$200(Lorg/eclipse/mat/collect/HashMapLongObject;)[J

    move-result-object v0

    iget v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject$1;->i:I

    aget-wide v0, v0, v1

    return-wide v0

    .line 180
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
