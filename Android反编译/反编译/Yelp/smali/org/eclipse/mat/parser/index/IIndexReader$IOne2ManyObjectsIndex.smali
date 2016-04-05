.class public interface abstract Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyObjectsIndex;
.super Ljava/lang/Object;
.source "IIndexReader.java"

# interfaces
.implements Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/parser/index/IIndexReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IOne2ManyObjectsIndex"
.end annotation


# virtual methods
.method public abstract getObjectsOf(Ljava/io/Serializable;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
