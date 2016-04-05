.class public interface abstract Lorg/eclipse/mat/snapshot/model/IClass;
.super Ljava/lang/Object;
.source "IClass.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/model/IObject;


# static fields
.field public static final JAVA_LANG_CLASS:Ljava/lang/String; = "java.lang.Class"

.field public static final JAVA_LANG_CLASSLOADER:Ljava/lang/String; = "java.lang.ClassLoader"


# virtual methods
.method public abstract doesExtend(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getAllSubclasses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClassLoaderAddress()J
.end method

.method public abstract getClassLoaderId()I
.end method

.method public abstract getFieldDescriptors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/FieldDescriptor;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getHeapSizePerInstance()I
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumberOfObjects()I
.end method

.method public abstract getObjectIds()[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getRetainedHeapSizeOfObjects(ZZLorg/eclipse/mat/util/IProgressListener;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract getStaticFields()Ljava/util/List;
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

.method public abstract getSubclasses()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSuperClass()Lorg/eclipse/mat/snapshot/model/IClass;
.end method

.method public abstract getSuperClassId()I
.end method

.method public abstract hasSuperClass()Z
.end method

.method public abstract isArrayType()Z
.end method
