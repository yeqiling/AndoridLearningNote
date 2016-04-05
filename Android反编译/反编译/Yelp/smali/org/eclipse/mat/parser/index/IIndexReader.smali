.class public interface abstract Lorg/eclipse/mat/parser/index/IIndexReader;
.super Ljava/lang/Object;
.source "IIndexReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyObjectsIndex;,
        Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;,
        Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;,
        Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    }
.end annotation


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract delete()V
.end method

.method public abstract size()I
.end method

.method public abstract unload()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
