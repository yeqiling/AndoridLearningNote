.class Lorg/eclipse/mat/collect/HashMapIntLong$3$1;
.super Ljava/lang/Object;
.source "HashMapIntLong.java"

# interfaces
.implements Lorg/eclipse/mat/collect/HashMapIntLong$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/mat/collect/HashMapIntLong$3;->next()Lorg/eclipse/mat/collect/HashMapIntLong$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/eclipse/mat/collect/HashMapIntLong$3;


# direct methods
.method constructor <init>(Lorg/eclipse/mat/collect/HashMapIntLong$3;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lorg/eclipse/mat/collect/HashMapIntLong$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapIntLong$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKey()I
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapIntLong$3;

    iget-object v0, v0, Lorg/eclipse/mat/collect/HashMapIntLong$3;->this$0:Lorg/eclipse/mat/collect/HashMapIntLong;

    #getter for: Lorg/eclipse/mat/collect/HashMapIntLong;->keys:[I
    invoke-static {v0}, Lorg/eclipse/mat/collect/HashMapIntLong;->access$200(Lorg/eclipse/mat/collect/HashMapIntLong;)[I

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntLong$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapIntLong$3;

    iget v1, v1, Lorg/eclipse/mat/collect/HashMapIntLong$3;->i:I

    aget v0, v0, v1

    return v0
.end method

.method public getValue()J
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lorg/eclipse/mat/collect/HashMapIntLong$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapIntLong$3;

    iget-object v0, v0, Lorg/eclipse/mat/collect/HashMapIntLong$3;->this$0:Lorg/eclipse/mat/collect/HashMapIntLong;

    #getter for: Lorg/eclipse/mat/collect/HashMapIntLong;->values:[J
    invoke-static {v0}, Lorg/eclipse/mat/collect/HashMapIntLong;->access$300(Lorg/eclipse/mat/collect/HashMapIntLong;)[J

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/mat/collect/HashMapIntLong$3$1;->this$1:Lorg/eclipse/mat/collect/HashMapIntLong$3;

    iget v1, v1, Lorg/eclipse/mat/collect/HashMapIntLong$3;->i:I

    aget-wide v0, v0, v1

    return-wide v0
.end method
