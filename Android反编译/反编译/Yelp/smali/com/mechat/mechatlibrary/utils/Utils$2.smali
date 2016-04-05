.class Lcom/mechat/mechatlibrary/utils/Utils$2;
.super Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/utils/Utils;->visitUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;Lcom/mechat/mechatlibrary/utils/SpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$cookie:Ljava/lang/String;

.field private final synthetic val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

.field private final synthetic val$spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

.field private final synthetic val$unitid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/utils/SpManager;Ljava/lang/String;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$cookie:Ljava/lang/String;

    iput-object p3, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$unitid:Ljava/lang/String;

    iput-object p4, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    iput-object p5, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$context:Landroid/content/Context;

    .line 438
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 3
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"
    .parameter "error"

    .prologue
    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, throwableStr:Ljava/lang/String;
    const-string v1, "visit failure = "

    invoke-static {v1, v0}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    if-eqz v1, :cond_0

    .line 479
    const-string v1, "timed out"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    const-string v2, "timed out"

    invoke-interface {v1, v2}, Lcom/mechat/mechatlibrary/callback/OnInitCallback;->onFailed(Ljava/lang/String;)V

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    const-string v2, "unknow"

    invoke-interface {v1, v2}, Lcom/mechat/mechatlibrary/callback/OnInitCallback;->onFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 9
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBody"

    .prologue
    .line 444
    :try_start_0
    iget-object v6, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    iget-object v7, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v7}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Lcom/mechat/mechatlibrary/utils/SpManager;->setHasVisit(Ljava/lang/String;Z)V

    .line 446
    new-instance v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v4, p3, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 447
    .local v4, str:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {v4}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 448
    .local v2, jsonObject:Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    const-string v7, "ip"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mechat/mechatlibrary/utils/SpManager;->setVisitIp(Ljava/lang/String;)V

    .line 449
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "init visit = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cookie = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$cookie:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    const-string v6, "Utils"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unitid = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$unitid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v6, "Utils"

    const-string v7, "start  visit suc"

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-object v6, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    if-eqz v6, :cond_0

    .line 454
    iget-object v6, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$onInitCallback:Lcom/mechat/mechatlibrary/callback/OnInitCallback;

    const-string v7, "initialize SDK success"

    invoke-interface {v6, v7}, Lcom/mechat/mechatlibrary/callback/OnInitCallback;->onSuccess(Ljava/lang/String;)V

    .line 458
    :cond_0
    iget-object v6, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->getHasUploadDeviceInfo()Z

    move-result v1

    .line 459
    .local v1, isHasUploadDevice:Z
    if-nez v1, :cond_1

    .line 460
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 461
    .local v5, userInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$context:Landroid/content/Context;

    invoke-static {v6}, Lcom/mechat/mechatlibrary/utils/Utils;->getDeviceInfos(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 462
    new-instance v3, Lcom/mechat/mechatlibrary/MCUserConfig;

    invoke-direct {v3}, Lcom/mechat/mechatlibrary/MCUserConfig;-><init>()V

    .line 463
    .local v3, mcUserConfig:Lcom/mechat/mechatlibrary/MCUserConfig;
    iget-object v6, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$context:Landroid/content/Context;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v5, v7, v8}, Lcom/mechat/mechatlibrary/MCUserConfig;->setUserInfo(Landroid/content/Context;Ljava/util/Map;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/UpdateUserInfoCallback;)V

    .line 464
    iget-object v6, p0, Lcom/mechat/mechatlibrary/utils/Utils$2;->val$spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/mechat/mechatlibrary/utils/SpManager;->setHasUploadDeviceInfo(Z)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 472
    .end local v1           #isHasUploadDevice:Z
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    .end local v3           #mcUserConfig:Lcom/mechat/mechatlibrary/MCUserConfig;
    .end local v4           #str:Ljava/lang/String;
    .end local v5           #userInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 469
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 470
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
