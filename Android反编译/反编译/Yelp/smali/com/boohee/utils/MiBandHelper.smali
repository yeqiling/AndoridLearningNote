.class public Lcom/boohee/utils/MiBandHelper;
.super Ljava/lang/Object;
.source "MiBandHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/utils/MiBandHelper$MiBandCallBack;
    }
.end annotation


# static fields
.field public static final KEY_DATA_SOURCE:Ljava/lang/String; = "xiaomi"

.field public static final KEY_MI_AUTH_DATE:Ljava/lang/String; = "KEY_MI_AUTH_DATE"

.field public static final KEY_MI_BAND:Ljava/lang/String; = "KEY_MI_BAND"

.field public static final KEY_MI_BAND_AUTH:Ljava/lang/String; = "KEY_MI_BAND_AUTH"

.field public static final MI_APPID:J = 0x2800000000004721L

.field public static final MI_REDIRECT_URI:Ljava/lang/String; = "http://www.boohee.com"

.field public static final THIRD_APP_ID:Ljava/lang/String; = "2833961550"

.field public static final THIRD_APP_SECRET:Ljava/lang/String; = "d9b9bc7b31f4ff7f41bee21a9e95859b"

.field public static final XMDataApi:Ljava/lang/String; = "https://hm.xiaomi.com/huami.api.getUserSummaryData.json?"

.field private static lastUpdateTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    return-void
.end method

.method static synthetic access$002(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    sput-wide p0, Lcom/boohee/utils/MiBandHelper;->lastUpdateTime:J

    return-wide p0
.end method

.method public static buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v5, 0x3f

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .local v3, urlStr:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 148
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 153
    .local v2, name:Ljava/lang/String;
    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #name:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 160
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 162
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "?&"

    const-string v6, "?"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getXMToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "KEY_MI_BAND_AUTH"

    invoke-static {v0}, Lcom/boohee/utility/SportDataBindHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static loadMIBndData(Landroid/content/Context;Lcom/boohee/utils/MiBandHelper$MiBandCallBack;)V
    .locals 10
    .parameter "context"
    .parameter "callBack"

    .prologue
    .line 94
    const-wide/32 v4, 0x2bf20

    .line 95
    .local v4, updateStep:J
    invoke-static {}, Lcom/boohee/utils/DateHelper;->today()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, currentDate:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "appid"

    const-string v7, "2882303761517135649"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v6, "third_appid"

    const-string v7, "2833961550"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v6, "third_appsecret"

    const-string v7, "d9b9bc7b31f4ff7f41bee21a9e95859b"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    const-string v6, "call_id"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v6, "access_token"

    invoke-static {}, Lcom/boohee/utils/MiBandHelper;->getXMToken()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v6, "fromdate"

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v6, "todate"

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const-string v6, "v"

    const-string v7, "1.0"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v6, "l"

    const-string v7, "english"

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v6, "https://hm.xiaomi.com/huami.api.getUserSummaryData.json?"

    invoke-static {v6, v1}, Lcom/boohee/utils/MiBandHelper;->buildUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, url:Ljava/lang/String;
    new-instance v2, Lcom/android/volley/toolbox/JsonObjectRequest;

    const/4 v7, 0x1

    new-instance v8, Lcom/boohee/utils/MiBandHelper$1;

    move-object v6, p0

    check-cast v6, Landroid/app/Activity;

    invoke-direct {v8, v6, p0, p1}, Lcom/boohee/utils/MiBandHelper$1;-><init>(Landroid/app/Activity;Landroid/content/Context;Lcom/boohee/utils/MiBandHelper$MiBandCallBack;)V

    new-instance v6, Lcom/boohee/utils/MiBandHelper$2;

    invoke-direct {v6, p1}, Lcom/boohee/utils/MiBandHelper$2;-><init>(Lcom/boohee/utils/MiBandHelper$MiBandCallBack;)V

    invoke-direct {v2, v7, v3, v8, v6}, Lcom/android/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 135
    .local v2, request:Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-static {v2, p0}, Lcom/boohee/one/http/RequestManager;->addRequest(Lcom/android/volley/Request;Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method public static setXMToken(Ljava/lang/String;)V
    .locals 2
    .parameter "xmToken"

    .prologue
    .line 61
    const-string v0, "KEY_MI_BAND_AUTH"

    invoke-static {v0, p0}, Lcom/boohee/utility/SportDataBindHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string v0, "KEY_MI_AUTH_DATE"

    invoke-static {}, Lcom/boohee/utils/TimeUtils;->getNow()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utility/SportDataBindHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method public static shouldAuth()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 81
    const-string v4, "KEY_MI_BAND_AUTH"

    invoke-static {v4}, Lcom/boohee/utility/SportDataBindHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, xiaomiToken:Ljava/lang/String;
    const-string v4, "KEY_MI_AUTH_DATE"

    invoke-static {v4}, Lcom/boohee/utility/SportDataBindHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, authDateStr:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 86
    :cond_0
    :goto_0
    return v3

    .line 84
    :cond_1
    invoke-static {v1}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 86
    .local v0, authDate:Ljava/util/Date;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->between(Ljava/util/Date;)I

    move-result v4

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_0

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static startAuthenticate(Landroid/app/Activity;Landroid/os/Bundle;I)V
    .locals 7
    .parameter "activity"
    .parameter "params"
    .parameter "requestCode"

    .prologue
    .line 56
    const-wide v2, 0x2800000000004721L

    const-string v4, "http://www.boohee.com"

    move-object v1, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetAccessToken(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;I)V

    .line 58
    return-void
.end method
