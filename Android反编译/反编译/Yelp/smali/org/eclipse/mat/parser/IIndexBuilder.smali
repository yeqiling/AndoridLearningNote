.class public interface abstract Lorg/eclipse/mat/parser/IIndexBuilder;
.super Ljava/lang/Object;
.source "IIndexBuilder.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract clean([ILorg/eclipse/mat/util/IProgressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract fill(Lorg/eclipse/mat/parser/IPreliminaryIndex;Lorg/eclipse/mat/util/IProgressListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract init(Ljava/io/File;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
