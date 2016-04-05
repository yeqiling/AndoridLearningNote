.class public interface abstract Lorg/eclipse/mat/parser/IObjectReader;
.super Ljava/lang/Object;
.source "IObjectReader.java"


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getAddon(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract open(Lorg/eclipse/mat/snapshot/ISnapshot;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract read(ILorg/eclipse/mat/snapshot/ISnapshot;)Lorg/eclipse/mat/snapshot/model/IObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract readObjectArrayContent(Lorg/eclipse/mat/parser/model/ObjectArrayImpl;II)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method

.method public abstract readPrimitiveArrayContent(Lorg/eclipse/mat/parser/model/PrimitiveArrayImpl;II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation
.end method
