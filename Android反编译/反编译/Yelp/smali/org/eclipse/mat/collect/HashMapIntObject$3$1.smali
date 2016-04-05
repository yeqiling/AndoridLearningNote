.class Lorg/eclipse/mat/collect/HashMapIntObject$3$1;
.super Ljava/lang/Object;
.source "HashMapIntObject.java"

# interfaces
.implements Lorg/eclipse/mat/collect/HashMapIntObject$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/collect/HashMapIntObject$3;->next()Lorg/eclipse/mat/collect/HashMapIntObject$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/eclipse/mat/collect/HashMapIntObject$Entry",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/mat/collect/HashMapIntObject$3;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/collect/HashMapIntObject$3;)V
    .locals 0
    .parameter

    .prologue
    .line 222
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject$3$1;,"Lorg/eclipse/mat/collect/HashMapIntObject$3.1;"
    iput-object p1, p0, Lorg/eclipse/mat/collect/HashMapIntObject$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapIntObject$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 2

    .prologue
    .line 224
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject$3$1;,"Lorg/eclipse/mat/collect/HashMapIntObject$3.1;"
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapIntObject$3;

    iget-object v0, v0, Lorg/eclipse/mat/collect/HashMapIntObject$3;->this$0:Lorg/eclipse/mat/collect/HashMapIntObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapIntObject;->keys:[I
    invoke-static {v0}, Lorg/eclipse/mat/collect/HashMapIntObject;->access$200(Lorg/eclipse/mat/collect/HashMapIntObject;)[I

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapIntObject$3;

    iget v1, v1, Lorg/eclipse/mat/collect/HashMapIntObject$3;->i:I

    aget v0, v0, v1

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 228
    .local p0, this:Lorg/eclipse/mat/collect/HashMapIntObject$3$1;,"Lorg/eclipse/mat/collect/HashMapIntObject$3.1;"
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntObject$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapIntObject$3;

    iget-object v0, v0, Lorg/eclipse/mat/collect/HashMapIntObject$3;->this$0:Lorg/eclipse/mat/collect/HashMapIntObject;

    #getter for: Lorg/eclipse/mat/collect/HashMapIntObject;->values:[Ljava/lang/Object;
    invoke-static {v0}, Lorg/eclipse/mat/collect/HashMapIntObject;->access$300(Lorg/eclipse/mat/collect/HashMapIntObject;)[Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntObject$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapIntObject$3;

    iget v1, v1, Lorg/eclipse/mat/collect/HashMapIntObject$3;->i:I

    aget-object v0, v0, v1

    return-object v0
.end method
