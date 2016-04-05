.class public Lorg/eclipse/mat/inspections/CommonNameResolver$URLResolver;
.super Ljava/lang/Object;
.source "CommonNameResolver.java"

# interfaces
.implements Lorg/eclipse/mat/snapshot/extension/IClassSpecificNameResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/mat/inspections/CommonNameResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "URLResolver"
.end annotation

.annotation runtime Lorg/eclipse/mat/snapshot/extension/Subject;
    value = "java.net.URL"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lorg/eclipse/mat/snapshot/model/IObject;)Ljava/lang/String;
    .locals 7
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/mat/SnapshotException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v6, "protocol"

    invoke-interface {p1, v6}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 117
    .local v3, protocol:Lorg/eclipse/mat/snapshot/model/IObject;
    invoke-interface {v3}, Lorg/eclipse/mat/snapshot/model/IObject;->getClassSpecificName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v6, ":"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v6, "authority"

    invoke-interface {p1, v6}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 120
    .local v0, authority:Lorg/eclipse/mat/snapshot/model/IObject;
    if-eqz v0, :cond_0

    .line 121
    const-string v6, "//"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-interface {v0}, Lorg/eclipse/mat/snapshot/model/IObject;->getClassSpecificName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    const-string v6, "path"

    invoke-interface {p1, v6}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 125
    .local v2, path:Lorg/eclipse/mat/snapshot/model/IObject;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lorg/eclipse/mat/snapshot/model/IObject;->getClassSpecificName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_1
    const-string v6, "query"

    invoke-interface {p1, v6}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 127
    .local v4, query:Lorg/eclipse/mat/snapshot/model/IObject;
    if-eqz v4, :cond_2

    .line 128
    const-string v6, "?"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-interface {v4}, Lorg/eclipse/mat/snapshot/model/IObject;->getClassSpecificName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    :cond_2
    const-string v6, "ref"

    invoke-interface {p1, v6}, Lorg/eclipse/mat/snapshot/model/IObject;->resolveValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/mat/snapshot/model/IObject;

    .line 132
    .local v5, ref:Lorg/eclipse/mat/snapshot/model/IObject;
    if-eqz v5, :cond_3

    .line 133
    const-string v6, "#"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-interface {v5}, Lorg/eclipse/mat/snapshot/model/IObject;->getClassSpecificName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
