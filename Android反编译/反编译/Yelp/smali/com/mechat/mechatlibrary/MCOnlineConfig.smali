.class public Lcom/mechat/mechatlibrary/MCOnlineConfig;
.super Ljava/lang/Object;
.source "MCOnlineConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private configMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private extraParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->configMap:Ljava/util/Map;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->extraParams:Ljava/util/Map;

    .line 15
    return-void
.end method


# virtual methods
.method protected getConfig()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->configMap:Ljava/util/Map;

    return-object v0
.end method

.method protected getExtraParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->extraParams:Ljava/util/Map;

    return-object v0
.end method

.method public setAppUserId(Ljava/lang/String;)V
    .locals 2
    .parameter "appUserId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->configMap:Ljava/util/Map;

    const-string v1, "appUserId"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->configMap:Ljava/util/Map;

    const-string v1, "from"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 2
    .parameter "email"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->configMap:Ljava/util/Map;

    const-string v1, "email"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method public setExtraParams(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    .local p1, extraParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->extraParams:Ljava/util/Map;

    .line 122
    return-void
.end method

.method public setQQ(Ljava/lang/String;)V
    .locals 2
    .parameter "qq"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->configMap:Ljava/util/Map;

    const-string v1, "IM"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public setSpecifyAgent(Ljava/lang/String;Z)V
    .locals 3
    .parameter "id"
    .parameter "isForce"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->configMap:Ljava/util/Map;

    const-string v1, "specifyUs"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    if-eqz p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->configMap:Ljava/util/Map;

    const-string v1, "reassign"

    const-string v2, "false"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_0
    return-void
.end method

.method public setSpecifyGroup(Ljava/lang/String;)V
    .locals 2
    .parameter "grounpid"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->configMap:Ljava/util/Map;

    const-string v1, "specifyGr"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public setSpecifyUs(Ljava/lang/String;)V
    .locals 2
    .parameter "usid"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->configMap:Ljava/util/Map;

    const-string v1, "specifyUs"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    return-void
.end method

.method public setTel(Ljava/lang/String;)V
    .locals 2
    .parameter "tel"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCOnlineConfig;->configMap:Ljava/util/Map;

    const-string v1, "tel"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    return-void
.end method
