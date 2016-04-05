.class public Lcom/mechat/mechatlibrary/MCUserConfig;
.super Ljava/lang/Object;
.source "MCUserConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/mechatlibrary/MCUserConfig$Contact;,
        Lcom/mechat/mechatlibrary/MCUserConfig$PersonalAccount;,
        Lcom/mechat/mechatlibrary/MCUserConfig$PersonalInfo;
    }
.end annotation


# instance fields
.field private userInfo:Ljava/util/Map;
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

.field private userInfoExtra:Ljava/util/Map;
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
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/MCUserConfig;Ljava/util/Map;Lcom/mechat/mechatlibrary/utils/SpManager;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    invoke-direct {p0, p1, p2, p3}, Lcom/mechat/mechatlibrary/MCUserConfig;->requestUpdate(Ljava/util/Map;Lcom/mechat/mechatlibrary/utils/SpManager;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V

    return-void
.end method

.method private requestUpdate(Ljava/util/Map;Lcom/mechat/mechatlibrary/utils/SpManager;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V
    .locals 4
    .parameter
    .parameter "spManager"
    .parameter "updateUserInfoCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mechat/mechatlibrary/utils/SpManager;",
            "Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, mapParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/mechat/loopj/android/http/RequestParams;

    invoke-direct {v0, p1}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 134
    .local v0, params:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v1, "unitid"

    invoke-virtual {p2}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mechat/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v1, "cookie"

    invoke-virtual {p2}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mechat/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v1, "MCUserConfig"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " requestUpdate param = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v1, "https://chat.meiqia.com/"

    const-string v2, "sdk/set/attrs"

    new-instance v3, Lcom/mechat/mechatlibrary/MCUserConfig$2;

    invoke-direct {v3, p0, p3}, Lcom/mechat/mechatlibrary/MCUserConfig$2;-><init>(Lcom/mechat/mechatlibrary/MCUserConfig;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V

    invoke-static {v1, v2, v0, v3}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 158
    return-void
.end method

.method private updateInfo(Landroid/content/Context;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V
    .locals 9
    .parameter "context"
    .parameter "updateUserInfoCallback"

    .prologue
    .line 87
    new-instance v5, Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-direct {v5, p1}, Lcom/mechat/mechatlibrary/utils/SpManager;-><init>(Landroid/content/Context;)V

    .line 89
    .local v5, spManager:Lcom/mechat/mechatlibrary/utils/SpManager;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 90
    .local v3, mapParams:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mechat/mechatlibrary/utils/Utils;->getDeviceInfos(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 92
    iget-object v6, p0, Lcom/mechat/mechatlibrary/MCUserConfig;->userInfoExtra:Ljava/util/Map;

    if-eqz v6, :cond_0

    .line 93
    iget-object v6, p0, Lcom/mechat/mechatlibrary/MCUserConfig;->userInfoExtra:Ljava/util/Map;

    invoke-static {v6}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, json:Ljava/lang/String;
    const-string v6, "extraParams"

    invoke-interface {v3, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v2           #json:Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/mechat/mechatlibrary/MCUserConfig;->userInfo:Ljava/util/Map;

    if-eqz v6, :cond_2

    .line 98
    iget-object v6, p0, Lcom/mechat/mechatlibrary/MCUserConfig;->userInfo:Ljava/util/Map;

    const-string v7, "appUserId"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    .local v0, appUserId:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 100
    invoke-static {v0}, Lcom/mechat/mechatlibrary/utils/Utils;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, newCookie:Ljava/lang/String;
    invoke-virtual {v5, v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->setCookie(Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/mechat/mechatlibrary/dao/DBHelper;

    invoke-direct {v1, p1}, Lcom/mechat/mechatlibrary/dao/DBHelper;-><init>(Landroid/content/Context;)V

    .line 104
    .local v1, dbHelper:Lcom/mechat/mechatlibrary/dao/DBHelper;
    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCMessageTable()V

    .line 105
    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCEventTable()V

    .line 107
    .end local v1           #dbHelper:Lcom/mechat/mechatlibrary/dao/DBHelper;
    .end local v4           #newCookie:Ljava/lang/String;
    :cond_1
    iget-object v6, p0, Lcom/mechat/mechatlibrary/MCUserConfig;->userInfo:Ljava/util/Map;

    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 111
    .end local v0           #appUserId:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->isHasVisit(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 112
    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/mechat/mechatlibrary/MCUserConfig$1;

    invoke-direct {v8, p0, v3, v5, p2}, Lcom/mechat/mechatlibrary/MCUserConfig$1;-><init>(Lcom/mechat/mechatlibrary/MCUserConfig;Ljava/util/Map;Lcom/mechat/mechatlibrary/utils/SpManager;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V

    invoke-static {p1, v6, v7, v8, v5}, Lcom/mechat/mechatlibrary/utils/Utils;->visitUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;Lcom/mechat/mechatlibrary/utils/SpManager;)V

    .line 130
    :goto_0
    return-void

    .line 127
    :cond_3
    invoke-direct {p0, v3, v5, p2}, Lcom/mechat/mechatlibrary/MCUserConfig;->requestUpdate(Ljava/util/Map;Lcom/mechat/mechatlibrary/utils/SpManager;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V

    goto :goto_0
.end method


# virtual methods
.method public setUserInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V
    .locals 0
    .parameter "context"
    .parameter
    .parameter
    .parameter "updateUserInfoCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 80
    .local p2, userInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, userInfoExtra:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCUserConfig;->userInfo:Ljava/util/Map;

    .line 81
    iput-object p3, p0, Lcom/mechat/mechatlibrary/MCUserConfig;->userInfoExtra:Ljava/util/Map;

    .line 82
    invoke-direct {p0, p1, p4}, Lcom/mechat/mechatlibrary/MCUserConfig;->updateInfo(Landroid/content/Context;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V

    .line 83
    return-void
.end method
