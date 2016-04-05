.class Lorg/eclipse/mat/collect/HashMapLongObject$3$1;
.super Ljava/lang/Object;
.source "HashMapLongObject.java"

# interfaces
.implements Lorg/eclipse/mat/collect/HashMapLongObject$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/collect/HashMapLongObject$3;->next()Lorg/eclipse/mat/collect/HashMapLongObject$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/mat/collect/HashMapLongObject$Entry",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/mat/collect/HashMapLongObject$3;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/collect/HashMapLongObject$3;)V
    .locals 0
    .parameter

    .prologue
    .line 223
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject$3$1;,"Lorg/eclipse/mat/collect/HashMapLongObject$3.1;"
    iput-object p1, p0, Lorg/eclipse/mat/collect/HashMapLongObject$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapLongObject$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()J
    .locals 2

    .prologue
    .line 225
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject$3$1;,"Lorg/eclipse/mat/collect/HashMapLongObject$3.1;"
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapLongObject$3;

    iget-object v0, v0, Lorg/eclipse/mat/collect/HashMapLongObject$3;->this$0:Lorg/eclipse/mat/collect/HashMapLongObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapLongObject;->keys:[J
    invoke-static {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;->access$200(Lorg/eclipse/mat/collect/HashMapLongObject;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapLongObject$3;

    iget v1, v1, Lorg/eclipse/mat/collect/HashMapLongObject$3;->i:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 229
    .local p0, this:Lorg/eclipse/mat/collect/HashMapLongObject$3$1;,"Lorg/eclipse/mat/collect/HashMapLongObject$3.1;"
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapLongObject$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapLongObject$3;

    iget-object v0, v0, Lorg/eclipse/mat/collect/HashMapLongObject$3;->this$0:Lorg/eclipse/mat/collect/HashMapLongObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapLongObject;->values:[Ljava/lang/Object;
    invoke-static {v0}, Lorg/eclipse/mat/collect/HashMapLongObject;->access$300(Lorg/eclipse/mat/collect/HashMapLongObject;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapLongObject$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapLongObject$3;

    iget v1, v1, Lorg/eclipse/mat/collect/HashMapLongObject$3;->i:I

    aget-object v0, v0, v1

    return-object v0
.end method
