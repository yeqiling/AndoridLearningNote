.class public interface abstract Lorg/eclipse/mat/snapshot/model/IInstance;
.super Ljava/lang/Object;
.source "IInstance.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/model/IObject;


# virtual methods
.method public abstract getField(Ljava/lang/String;)Lorg/eclipse/mat/snapshot/model/Field;
.end method

.method public abstract getFields()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/Field;",
            ">;"
        }
    .end annotation
.end method
