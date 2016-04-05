.class public Lcom/boohee/utils/AccountUtils;
.super Ljava/lang/Object;
.source "AccountUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIdentity(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "ctx"

    .prologue
    .line 58
    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v1

    .line 59
    .local v1, userPrefs:Lcom/boohee/database/UserPreference;
    const-string v2, "identity"

    invoke-virtual {v1, v2}, Lcom/boohee/database/UserPreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, identity:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 61
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 62
    const-string v2, "identity"

    invoke-virtual {v1, v2, v0}, Lcom/boohee/database/UserPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_0
    return-object v0
.end method

.method public static goHome(Landroid/app/Activity;Ljava/lang/Class;)V
    .locals 2
    .parameter "activity"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p1, homeActivityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 113
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 116
    return-void
.end method

.method public static hasUserKeyAndToken(Landroid/content/Context;)Z
    .locals 1
    .parameter "ctx"

    .prologue
    .line 155
    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isReleaseUser()Z
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, result:Z
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/AccountUtils;->hasUserKeyAndToken(Landroid/content/Context;)Z

    move-result v0

    .line 144
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/AccountUtils;->isVisitorAccount(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 145
    :goto_0
    return v0

    .line 144
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVisitorAccount(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x2

    .line 125
    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    const-string v1, "user_type"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/UserPreference;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static login(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 96
    new-instance v1, Lcom/boohee/modeldao/UserDao;

    invoke-direct {v1, p0}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/UserDao;->queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v0

    .line 97
    .local v0, user:Lcom/boohee/model/User;
    invoke-virtual {v0}, Lcom/boohee/model/User;->hasProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    const-class v1, Lcom/boohee/one/ui/MainActivity;

    invoke-static {p0, v1}, Lcom/boohee/utils/AccountUtils;->goHome(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 103
    :goto_0
    return-void

    .line 100
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/boohee/account/UserInitActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static logout()V
    .locals 3

    .prologue
    .line 71
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    .line 73
    .local v0, userPrefs:Lcom/boohee/database/UserPreference;
    invoke-static {}, Lcom/boohee/push/PushManager;->getInstance()Lcom/boohee/push/PushManager;

    move-result-object v1

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/push/PushManager;->unBindRegId(Landroid/content/Context;)V

    .line 76
    const-string v1, "token"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 77
    const-string v1, "user_key"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 78
    const-string v1, "password"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 79
    const-string v1, "sex_type"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 80
    const-string v1, "budget_s_points"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 81
    const-string v1, "duration"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 82
    const-string v1, "cycle"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 83
    const-string v1, "POS"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/FilterDataSyncUtil;->removeFilterData(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Lcom/boohee/utility/SportDataBindHelper;->clearData()V

    .line 86
    invoke-static {}, Lcom/boohee/utils/AccountUtils;->qqLogout()V

    .line 87
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/database/OnePreference;->clearAll()V

    .line 89
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/one/cache/FileCache;->get(Landroid/content/Context;)Lcom/boohee/one/cache/FileCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/one/cache/FileCache;->clear()V

    .line 90
    return-void
.end method

.method public static qqLogout()V
    .locals 2

    .prologue
    .line 193
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    .line 194
    .local v0, userPrefs:Lcom/boohee/database/UserPreference;
    const-string v1, "qq_open_id"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 195
    const-string v1, "qq_access_token"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 196
    const-string v1, "qq_expires_in"

    invoke-virtual {v0, v1}, Lcom/boohee/database/UserPreference;->remove(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/boohee/utils/SNSLogin;->qqLogout()V

    .line 198
    return-void
.end method

.method public static saveQQOpenIDAndAccessToken(Landroid/content/Context;Ljava/util/List;)V
    .locals 10
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/UserConnection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/status/UserConnection;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/UserConnection;

    .line 170
    .local v0, conn:Lcom/boohee/model/status/UserConnection;
    const-string v6, "qq_zone"

    iget-object v7, v0, Lcom/boohee/model/status/UserConnection;->provider:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long v2, v6, v8

    .line 173
    .local v2, currentTime:J
    const-wide/32 v6, 0x278d00

    add-long v4, v2, v6

    .line 174
    .local v4, expiresIn:J
    iget-object v6, v0, Lcom/boohee/model/status/UserConnection;->expires_in:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 175
    iget-object v6, v0, Lcom/boohee/model/status/UserConnection;->expires_in:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    add-long v4, v2, v6

    .line 178
    :cond_3
    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v6

    invoke-virtual {v6}, Lcom/boohee/database/UserPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "qq_open_id"

    iget-object v8, v0, Lcom/boohee/model/status/UserConnection;->identity:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "qq_access_token"

    iget-object v8, v0, Lcom/boohee/model/status/UserConnection;->access_token:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "qq_expires_in"

    invoke-interface {v6, v7, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public static saveTokenAndUserKey(Landroid/content/Context;Lcom/boohee/model/User;)V
    .locals 3
    .parameter "ctx"
    .parameter "user"

    .prologue
    .line 41
    if-nez p1, :cond_0

    .line 49
    :goto_0
    return-void

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    .line 44
    .local v0, user_prefs:Lcom/boohee/database/UserPreference;
    const-string v1, "token"

    iget-object v2, p1, Lcom/boohee/model/User;->token:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/UserPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v1, "user_key"

    iget-object v2, p1, Lcom/boohee/model/User;->user_key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/UserPreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    const-string v1, "user_type"

    iget v2, p1, Lcom/boohee/model/User;->user_type:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/UserPreference;->putInt(Ljava/lang/String;I)V

    .line 47
    new-instance v1, Lcom/boohee/modeldao/UserDao;

    invoke-direct {v1, p0}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Lcom/boohee/modeldao/UserDao;->add(Lcom/boohee/model/User;)Z

    .line 48
    invoke-static {}, Lcom/boohee/push/PushManager;->getInstance()Lcom/boohee/push/PushManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/boohee/push/PushManager;->bindRegId(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static setUserTypeBoohee(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 133
    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/database/UserPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_type"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 134
    return-void
.end method

.method public static setUserTypeSns(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 129
    invoke-static {p0}, Lcom/boohee/database/UserPreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/UserPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/database/UserPreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "user_type"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 130
    return-void
.end method
