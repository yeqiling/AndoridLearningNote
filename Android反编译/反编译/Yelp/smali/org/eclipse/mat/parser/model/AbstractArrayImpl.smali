.class public abstract Lorg/eclipse/mat/parser/model/AbstractArrayImpl;
.super Lorg/eclipse/mat/parser/model/AbstractObjectImpl;
.source "AbstractArrayImpl.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/model/IArray;


# static fields
.field private static final serialVersionUID:J = 0x2L


# instance fields
.field private info:Ljava/lang/Object;

.field protected length:I


# direct methods
.method public constructor <init>(IJLorg/eclipse/mat/parser/model/ClassImpl;I)V
    .locals 0
    .parameter "objectId"
    .parameter "address"
    .parameter "classInstance"
    .parameter "length"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;-><init>(IJLorg/eclipse/mat/parser/model/ClassImpl;)V

    .line 29
    iput p5, p0, Lorg/eclipse/mat/parser/model/AbstractArrayImpl;->length:I

    .line 30
    return-void
.end method


# virtual methods
.method protected appendFields(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2
    .parameter "buf"

    .prologue
    .line 49
    invoke-super {p0, p1}, Lorg/eclipse/mat/parser/model/AbstractObjectImpl;->appendFields(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ";length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/mat/parser/model/AbstractArrayImpl;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getInfo()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lorg/eclipse/mat/parser/model/AbstractArrayImpl;->info:Ljava/lang/Object;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lorg/eclipse/mat/parser/model/AbstractArrayImpl;->length:I

    return v0
.end method

.method public getTechnicalName()Ljava/lang/String;
    .locals 6

    .prologue
    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 54
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractArrayImpl;->getClazz()Lorg/eclipse/mat/parser/model/ClassImpl;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/mat/parser/model/ClassImpl;->getName()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, name:Ljava/lang/String;
    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 57
    .local v2, p:I
    if-gez v2, :cond_0

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    :goto_0
    const-string v3, " @ 0x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractArrayImpl;->getObjectAddress()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 60
    :cond_0
    const/4 v3, 0x0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/mat/parser/model/AbstractArrayImpl;->getLength()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public setInfo(Ljava/lang/Object;)V
    .locals 0
    .parameter "content"

    .prologue
    .line 37
    iput-object p1, p0, Lorg/eclipse/mat/parser/model/AbstractArrayImpl;->info:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 45
    iput p1, p0, Lorg/eclipse/mat/parser/model/AbstractArrayImpl;->length:I

    .line 46
    return-void
.end method
