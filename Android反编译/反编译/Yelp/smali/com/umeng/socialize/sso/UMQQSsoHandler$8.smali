.class Lcom/umeng/socialize/sso/UMQQSsoHandler$8;
.super Ljava/lang/Object;
.source "UMQQSsoHandler.java"

# interfaces
.implements Lcom/tencent/tauth/IUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/socialize/sso/UMQQSsoHandler;->getUserInfo(Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/umeng/socialize/sso/UMQQSsoHandler;

.field private final synthetic val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;


# direct methods
.method constructor <init>(Lcom/umeng/socialize/sso/UMQQSsoHandler;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$8;->this$0:Lcom/umeng/socialize/sso/UMQQSsoHandler;

    iput-object p2, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$8;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 680
    iget-object v0, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$8;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    const v1, 0x9c40

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    .line 681
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 7
    .parameter "arg"

    .prologue
    const/4 v6, 0x0

    const v5, 0x9c42

    .line 685
    if-nez p1, :cond_0

    .line 686
    iget-object v3, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$8;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    invoke-interface {v3, v5, v6}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    .line 725
    :goto_0
    return-void

    .line 708
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 709
    .local v2, jsonObject:Lorg/json/JSONObject;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 710
    .local v1, infos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "screen_name"

    const-string v4, "nickname"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    const-string v3, "gender"

    const-string v4, "gender"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v3, "profile_image_url"

    const-string v4, "figureurl_qq_2"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    const-string v3, "is_yellow_year_vip"

    const-string v4, "is_yellow_year_vip"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    const-string v3, "yellow_vip_level"

    const-string v4, "yellow_vip_level"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    const-string v3, "msg"

    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    const-string v3, "city"

    const-string v4, "city"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string v3, "vip"

    const-string v4, "vip"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v3, "level"

    const-string v4, "level"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    const-string v3, "province"

    const-string v4, "province"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string v3, "is_yellow_vip"

    const-string v4, "is_yellow_vip"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    iget-object v3, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$8;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    const/16 v4, 0xc8

    invoke-interface {v3, v4, v1}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 722
    .end local v1           #infos:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #jsonObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 723
    .local v0, e:Lorg/json/JSONException;
    iget-object v3, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$8;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    invoke-interface {v3, v5, v6}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    goto/16 :goto_0
.end method

.method public onError(Lcom/tencent/tauth/UiError;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/umeng/socialize/sso/UMQQSsoHandler$8;->val$listener:Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;

    const v1, 0x9c42

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;->onComplete(ILjava/util/Map;)V

    .line 730
    return-void
.end method
