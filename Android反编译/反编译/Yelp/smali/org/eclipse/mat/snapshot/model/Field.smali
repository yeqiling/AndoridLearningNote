.class public final Lorg/eclipse/mat/snapshot/model/Field;
.super Lorg/eclipse/mat/snapshot/model/FieldDescriptor;
.source "Field.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field protected value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0
    .parameter "name"
    .parameter "type"
    .parameter "value"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lorg/eclipse/mat/snapshot/model/FieldDescriptor;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lorg/eclipse/mat/snapshot/model/Field;->value:Ljava/lang/Object;

    .line 28
    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lorg/eclipse/mat/snapshot/model/Field;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 0
    .parameter "object"

    .prologue
    .line 35
    iput-object p1, p0, Lorg/eclipse/mat/snapshot/model/Field;->value:Ljava/lang/Object;

    .line 36
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/eclipse/mat/snapshot/model/Field;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/mat/snapshot/model/Field;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": \t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/mat/snapshot/model/Field;->value:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
