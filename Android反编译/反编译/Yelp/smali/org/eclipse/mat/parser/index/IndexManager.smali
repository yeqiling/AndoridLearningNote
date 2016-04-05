.class public Lorg/eclipse/mat/parser/index/IndexManager;
.super Ljava/lang/Object;
.source "IndexManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/mat/parser/index/IndexManager$Visitor;,
        Lorg/eclipse/mat/parser/index/IndexManager$Index;
    }
.end annotation


# instance fields
.field public a2s:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

.field public domIn:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

.field public domOut:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

.field public idx:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

.field public inbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyObjectsIndex;

.field public o2c:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

.field public o2ret:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

.field public outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    return-void
.end method


# virtual methods
.method public a2size()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexManager;->a2s:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    return-object v0
.end method

.method public c2objects()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyObjectsIndex;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexManager;->inbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyObjectsIndex;

    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexManager$2;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/parser/index/IndexManager$2;-><init>(Lorg/eclipse/mat/parser/index/IndexManager;)V

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexManager$2;->doIt()V

    .line 155
    return-void
.end method

.method public delete()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexManager$3;

    invoke-direct {v0, p0}, Lorg/eclipse/mat/parser/index/IndexManager$3;-><init>(Lorg/eclipse/mat/parser/index/IndexManager;)V

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexManager$3;->doIt()V

    .line 168
    return-void
.end method

.method public dominated()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexManager;->domOut:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    return-object v0
.end method

.method public dominator()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexManager;->domIn:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    return-object v0
.end method

.method public getReader(Lorg/eclipse/mat/parser/index/IndexManager$Index;)Lorg/eclipse/mat/parser/index/IIndexReader;
    .locals 3
    .parameter "index"

    .prologue
    .line 68
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p1, Lorg/eclipse/mat/parser/index/IndexManager$Index;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/mat/parser/index/IIndexReader;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 71
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public inbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexManager;->inbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyObjectsIndex;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 1
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    new-instance v0, Lorg/eclipse/mat/parser/index/IndexManager$1;

    invoke-direct {v0, p0, p1}, Lorg/eclipse/mat/parser/index/IndexManager$1;-><init>(Lorg/eclipse/mat/parser/index/IndexManager;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/eclipse/mat/parser/index/IndexManager$1;->doIt()V

    .line 107
    return-void
.end method

.method public o2address()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexManager;->idx:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    return-object v0
.end method

.method public o2class()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexManager;->o2c:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2OneIndex;

    return-object v0
.end method

.method public o2retained()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexManager;->o2ret:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2LongIndex;

    return-object v0
.end method

.method public outbound()Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lorg/eclipse/mat/parser/index/IndexManager;->outbound:Lorg/eclipse/mat/parser/index/IIndexReader$IOne2ManyIndex;

    return-object v0
.end method

.method public setReader(Lorg/eclipse/mat/parser/index/IndexManager$Index;Lorg/eclipse/mat/parser/index/IIndexReader;)V
    .locals 3
    .parameter "index"
    .parameter "reader"

    .prologue
    .line 58
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p1, Lorg/eclipse/mat/parser/index/IndexManager$Index;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 64
    return-void

    .line 59
    :catch_0
    move-exception v0

    .line 60
    .local v0, e:Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 61
    .end local v0           #e:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 62
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
