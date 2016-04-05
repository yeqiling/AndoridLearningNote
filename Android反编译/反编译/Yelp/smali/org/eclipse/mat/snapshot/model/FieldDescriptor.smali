.class public Lorg/eclipse/mat/snapshot/model/FieldDescriptor;
.super Ljava/lang/Object;
.source "FieldDescriptor.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected name:Ljava/lang/String;

.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "name"
    .parameter "type"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->name:Ljava/lang/String;

    .line 28
    iput p2, p0, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->type:I

    .line 29
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->type:I

    return v0
.end method

.method public getVerboseSignature()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    iget v1, p0, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "ref"

    .line 51
    :goto_0
    return-object v1

    .line 50
    :cond_0
    sget-object v1, Lorg/eclipse/mat/snapshot/model/IPrimitiveArray;->TYPE:[Ljava/lang/String;

    iget v2, p0, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->type:I

    aget-object v0, v1, v2

    .line 51
    .local v0, t:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 40
    iput-object p1, p0, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->name:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 44
    iput p1, p0, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;->type:I

    .line 45
    return-void
.end method
