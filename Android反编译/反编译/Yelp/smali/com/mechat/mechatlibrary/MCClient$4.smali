.class Lcom/mechat/mechatlibrary/MCClient$4;
.super Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCClient;->requestOnline(Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;Lcom/mechat/mechatlibrary/MCOnlineConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MCClient;

.field private final synthetic val$userOnlineCallback:Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MCClient;Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCClient$4;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCClient$4;->val$userOnlineCallback:Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;

    .line 441
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseString"
    .parameter "throwable"

    .prologue
    .line 491
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    .local v0, failureString:Ljava/lang/String;
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient$4;->val$userOnlineCallback:Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;

    const-string v2, "unknow"

    invoke-interface {v1, v2}, Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;->onFailure(Ljava/lang/String;)V

    .line 494
    const-string v1, "MeChatClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "letUserOnline failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 4
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 500
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    .local v0, failureString:Ljava/lang/String;
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient$4;->val$userOnlineCallback:Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;

    const-string v2, "unknow"

    invoke-interface {v1, v2}, Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;->onFailure(Ljava/lang/String;)V

    .line 503
    const-string v1, "MeChatClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "letUserOnline failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 509
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 511
    .local v0, failureString:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 512
    .local v1, throwableStr:Ljava/lang/String;
    const-string v2, "timed out"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 513
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$4;->val$userOnlineCallback:Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;

    const-string v3, "timed out"

    invoke-interface {v2, v3}, Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;->onFailure(Ljava/lang/String;)V

    .line 517
    :goto_0
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "letUserOnline failed "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void

    .line 515
    :cond_0
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$4;->val$userOnlineCallback:Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;

    const-string v3, "unknow"

    invoke-interface {v2, v3}, Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 8
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 445
    invoke-super {p0, p1, p2, p3}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 447
    :try_start_0
    const-string v5, "success"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 448
    .local v1, isSuc:Z
    const-string v5, "MeChatClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " online suc response = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const/4 v5, 0x1

    invoke-static {v5}, Lcom/mechat/mechatlibrary/MCClient;->access$8(Z)V

    .line 450
    if-eqz v1, :cond_1

    .line 452
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v5

    const-string v6, "ursptime"

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->setUrspTime(Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$2()Lcom/mechat/mechatlibrary/utils/SpManager;

    move-result-object v5

    const-string v6, "urspmsg"

    const/4 v7, 0x0

    invoke-virtual {p3, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->setUrspMsg(Ljava/lang/String;)V

    .line 456
    invoke-static {p3}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getMCService(Lorg/json/JSONObject;)Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v4

    .line 457
    .local v4, serviceInfo:Lcom/mechat/mechatlibrary/bean/MCService;
    invoke-static {v4}, Lcom/mechat/mechatlibrary/bean/MCService;->setCurrentService(Lcom/mechat/mechatlibrary/bean/MCService;)V

    .line 460
    new-instance v2, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;

    invoke-direct {v2}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;-><init>()V

    .line 461
    .local v2, mcEvent:Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;
    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsavatar()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setAvatarUrl(Ljava/lang/String;)V

    .line 462
    const-string v5, "timestamp"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 463
    const-string v5, "timestamp"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setCreatedTime(Ljava/lang/String;)V

    .line 467
    :goto_0
    const-string v5, "alloc_us"

    invoke-virtual {v2, v5}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setType(Ljava/lang/String;)V

    .line 468
    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsname()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setUsname(Ljava/lang/String;)V

    .line 469
    iget-object v5, p0, Lcom/mechat/mechatlibrary/MCClient$4;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    #getter for: Lcom/mechat/mechatlibrary/MCClient;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;
    invoke-static {v5}, Lcom/mechat/mechatlibrary/MCClient;->access$9(Lcom/mechat/mechatlibrary/MCClient;)Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->saveMCEvent(Lcom/mechat/mechatlibrary/bean/MCEvent;)J

    .line 471
    iget-object v5, p0, Lcom/mechat/mechatlibrary/MCClient$4;->val$userOnlineCallback:Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;

    const/4 v6, 0x1

    invoke-interface {v5, v6, v4}, Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;->onSuccess(ZLcom/mechat/mechatlibrary/bean/MCService;)V

    .line 474
    new-instance v3, Landroid/content/Intent;

    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$3()Landroid/content/Context;

    move-result-object v5

    const-class v6, Lcom/mechat/mechatlibrary/MechatService;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 475
    .local v3, mechatService:Landroid/content/Intent;
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->access$3()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 486
    .end local v1           #isSuc:Z
    .end local v2           #mcEvent:Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;
    .end local v3           #mechatService:Landroid/content/Intent;
    .end local v4           #serviceInfo:Lcom/mechat/mechatlibrary/bean/MCService;
    :goto_1
    return-void

    .line 465
    .restart local v1       #isSuc:Z
    .restart local v2       #mcEvent:Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;
    .restart local v4       #serviceInfo:Lcom/mechat/mechatlibrary/bean/MCService;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;->setCreatedTime(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    .end local v1           #isSuc:Z
    .end local v2           #mcEvent:Lcom/mechat/mechatlibrary/bean/MCAllocationEvent;
    .end local v4           #serviceInfo:Lcom/mechat/mechatlibrary/bean/MCService;
    :catch_0
    move-exception v0

    .line 483
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 484
    const-string v5, "MeChatClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "online failed catch JSONException"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 478
    .end local v0           #e:Lorg/json/JSONException;
    .restart local v1       #isSuc:Z
    :cond_1
    :try_start_1
    const-string v5, "MeChatClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "online onFailure = no online userver code 105"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    iget-object v5, p0, Lcom/mechat/mechatlibrary/MCClient$4;->val$userOnlineCallback:Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;->onSuccess(ZLcom/mechat/mechatlibrary/bean/MCService;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
