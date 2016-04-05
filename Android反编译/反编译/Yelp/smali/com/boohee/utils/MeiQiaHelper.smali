.class public Lcom/boohee/utils/MeiQiaHelper;
.super Ljava/lang/Object;
.source "MeiQiaHelper.java"


# static fields
.field private static isInitSuccess:Z

.field private static retryTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/boohee/utils/MeiQiaHelper;->retryTimes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    sput-boolean p0, Lcom/boohee/utils/MeiQiaHelper;->isInitSuccess:Z

    return p0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 37
    sget v0, Lcom/boohee/utils/MeiQiaHelper;->retryTimes:I

    return v0
.end method

.method static synthetic access$108()I
    .locals 2

    .prologue
    .line 37
    sget v0, Lcom/boohee/utils/MeiQiaHelper;->retryTimes:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/boohee/utils/MeiQiaHelper;->retryTimes:I

    return v0
.end method

.method private static getUserInfo(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 98
    new-instance v1, Lcom/boohee/utils/MeiQiaHelper$1;

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0, p0}, Lcom/boohee/utils/MeiQiaHelper$1;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    invoke-static {p0, v1}, Lcom/boohee/api/OneApi;->getUsersProfile(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 108
    return-void
.end method

.method public static initSDK()V
    .locals 3

    .prologue
    .line 147
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "54caf6024eae354d78000004"

    new-instance v2, Lcom/boohee/utils/MeiQiaHelper$3;

    invoke-direct {v2}, Lcom/boohee/utils/MeiQiaHelper$3;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/mechat/mechatlibrary/MCClient;->init(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;)V

    .line 166
    return-void
.end method

.method public static startChat(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    .line 48
    sget-boolean v2, Lcom/boohee/utils/MeiQiaHelper;->isInitSuccess:Z

    if-nez v2, :cond_0

    .line 49
    const-string v2, "\u5ba2\u670d\u542f\u52a8\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5~~"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 63
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-static {p0}, Lcom/boohee/utils/MeiQiaHelper;->getUserInfo(Landroid/content/Context;)V

    .line 55
    new-instance v1, Lcom/mechat/mechatlibrary/MCOptions;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/MCOptions;-><init>(Landroid/content/Context;)V

    .line 56
    .local v1, options:Lcom/mechat/mechatlibrary/MCOptions;
    invoke-virtual {v1, v3}, Lcom/mechat/mechatlibrary/MCOptions;->setShowAgentJoinEvent(Z)V

    .line 57
    invoke-virtual {v1, v3}, Lcom/mechat/mechatlibrary/MCOptions;->setShowVoiceMessage(Z)V

    .line 59
    new-instance v0, Lcom/mechat/mechatlibrary/MCOnlineConfig;

    invoke-direct {v0}, Lcom/mechat/mechatlibrary/MCOnlineConfig;-><init>()V

    .line 61
    .local v0, onlineConfig:Lcom/mechat/mechatlibrary/MCOnlineConfig;
    const-string v2, "1"

    invoke-virtual {v0, v2}, Lcom/mechat/mechatlibrary/MCOnlineConfig;->setSpecifyGroup(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getInstance()Lcom/mechat/mechatlibrary/MCClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mechat/mechatlibrary/MCClient;->startMCConversationActivity(Lcom/mechat/mechatlibrary/MCOnlineConfig;)Z

    goto :goto_0
.end method

.method public static startChatWithSprcifyAgent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "specifyAgent"

    .prologue
    const/4 v3, 0x1

    .line 71
    sget-boolean v2, Lcom/boohee/utils/MeiQiaHelper;->isInitSuccess:Z

    if-nez v2, :cond_0

    .line 72
    const-string v2, "\u5ba2\u670d\u542f\u52a8\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u91cd\u8bd5~~"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 90
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/boohee/utils/MeiQiaHelper;->getUserInfo(Landroid/content/Context;)V

    .line 78
    new-instance v1, Lcom/mechat/mechatlibrary/MCOptions;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/MCOptions;-><init>(Landroid/content/Context;)V

    .line 79
    .local v1, options:Lcom/mechat/mechatlibrary/MCOptions;
    invoke-virtual {v1, v3}, Lcom/mechat/mechatlibrary/MCOptions;->setShowAgentJoinEvent(Z)V

    .line 80
    invoke-virtual {v1, v3}, Lcom/mechat/mechatlibrary/MCOptions;->setShowVoiceMessage(Z)V

    .line 83
    new-instance v0, Lcom/mechat/mechatlibrary/MCOnlineConfig;

    invoke-direct {v0}, Lcom/mechat/mechatlibrary/MCOnlineConfig;-><init>()V

    .line 84
    .local v0, onlineConfig:Lcom/mechat/mechatlibrary/MCOnlineConfig;
    invoke-virtual {v0, p1, v3}, Lcom/mechat/mechatlibrary/MCOnlineConfig;->setSpecifyAgent(Ljava/lang/String;Z)V

    .line 89
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getInstance()Lcom/mechat/mechatlibrary/MCClient;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mechat/mechatlibrary/MCClient;->startMCConversationActivity(Lcom/mechat/mechatlibrary/MCOnlineConfig;)Z

    goto :goto_0
.end method

.method public static updateMeiQiaUserID(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 174
    new-instance v0, Lcom/mechat/mechatlibrary/MCUserConfig;

    invoke-direct {v0}, Lcom/mechat/mechatlibrary/MCUserConfig;-><init>()V

    .line 175
    .local v0, mcUserConfig:Lcom/mechat/mechatlibrary/MCUserConfig;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v1, userInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "appUserId"

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v2, userInfoExtra:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "user_key"

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    new-instance v3, Lcom/boohee/utils/MeiQiaHelper$4;

    invoke-direct {v3}, Lcom/boohee/utils/MeiQiaHelper$4;-><init>()V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/mechat/mechatlibrary/MCUserConfig;->setUserInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V

    .line 188
    return-void
.end method

.method public static updateUserInfo(Landroid/content/Context;Lcom/boohee/model/User;)V
    .locals 6
    .parameter "context"
    .parameter "user"

    .prologue
    .line 116
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v0, Lcom/mechat/mechatlibrary/MCUserConfig;

    invoke-direct {v0}, Lcom/mechat/mechatlibrary/MCUserConfig;-><init>()V

    .line 119
    .local v0, mcUserConfig:Lcom/mechat/mechatlibrary/MCUserConfig;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v1, userInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "tel"

    iget-object v4, p1, Lcom/boohee/model/User;->cellphone:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v3, "email"

    iget-object v4, p1, Lcom/boohee/model/User;->email:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const-string v3, "birthday"

    iget-object v4, p1, Lcom/boohee/model/User;->description:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v4, "sex"

    invoke-virtual {p1}, Lcom/boohee/model/User;->isMale()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "\u7537"

    :goto_1
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v3, "comment"

    iget-object v4, p1, Lcom/boohee/model/User;->description:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v3, "avatar"

    iget-object v4, p1, Lcom/boohee/model/User;->avatar_url:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v3, "appUserId"

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v3, "appUserName"

    iget-object v4, p1, Lcom/boohee/model/User;->user_name:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v3, "appNickName"

    iget-object v4, p1, Lcom/boohee/model/User;->nick_name:Ljava/lang/String;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 130
    .local v2, userInfoExtra:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "user_type"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/boohee/model/User;->user_type:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v3, "user_key"

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    new-instance v3, Lcom/boohee/utils/MeiQiaHelper$2;

    invoke-direct {v3}, Lcom/boohee/utils/MeiQiaHelper$2;-><init>()V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/mechat/mechatlibrary/MCUserConfig;->setUserInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V

    goto/16 :goto_0

    .line 123
    .end local v2           #userInfoExtra:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const-string v3, "\u5973"

    goto :goto_1
.end method
