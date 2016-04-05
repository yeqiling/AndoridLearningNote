.class public interface abstract Lorg/eclipse/mat/hprof/IHprofParserHandler;
.super Ljava/lang/Object;
.source "IHprofParserHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;
    }
.end annotation


# static fields
.field public static final CREATION_DATE:Ljava/lang/String; = "CREATION_DATE"

.field public static final IDENTIFIER_SIZE:Ljava/lang/String; = "ID_SIZE"

.field public static final VERSION:Ljava/lang/String; = "VERSION"


# virtual methods
.method public abstract addClass(Lorg/eclipse/mat/parser/model/ClassImpl;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract addGCRoot(JJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract addObject(Lorg/eclipse/mat/hprof/IHprofParserHandler$HeapObject;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract beforePass1(Lorg/eclipse/mat/parser/model/XSnapshotInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract beforePass2(Lorg/eclipse/mat/util/IProgressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract cancel()V
.end method

.method public abstract fillIn(Lorg/eclipse/mat/parser/IPreliminaryIndex;)Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getConstantPool()Lorg/eclipse/mat/collect/HashMapLongObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/eclipse/mat/collect/HashMapLongObject",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getIdentifierSize()I
.end method

.method public abstract getSnapshotInfo()Lorg/eclipse/mat/parser/model/XSnapshotInfo;
.end method

.method public abstract lookupClass(J)Lorg/eclipse/mat/snapshot/model/IClass;
.end method

.method public abstract lookupClassByIndex(I)Lorg/eclipse/mat/snapshot/model/IClass;
.end method

.method public abstract lookupClassByName(Ljava/lang/String;Z)Lorg/eclipse/mat/snapshot/model/IClass;
.end method

.method public abstract mapAddressToId(J)I
.end method

.method public abstract reportInstance(JJ)V
.end method

.method public abstract reportRequiredObjectArray(J)V
.end method

.method public abstract reportRequiredPrimitiveArray(I)V
.end method

.method public abstract resolveClassHierarchy(J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/mat/snapshot/model/IClass;",
            ">;"
        }
    .end annotation
.end method
