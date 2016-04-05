.class public Lcom/boohee/utils/SNSLogin;
.super Ljava/lang/Object;
.source "SNSLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/utils/SNSLogin$4;
    }
.end annotation


# static fields
.field public static final KEY_QQ_ZONE:Ljava/lang/String; = "qq_zone"

.field public static final KEY_SINA_WEIBO:Ljava/lang/String; = "sina_weibo"

.field public static final KEY_WEIXIN:Ljava/lang/String; = "weixin"

.field public static final QQ_APPID:Ljava/lang/String; = "100530867"

.field public static final QQ_APPKEY:Ljava/lang/String; = "d32ea174315e9c42bfbd481ac3b3fef6"

.field static final TAG:Ljava/lang/String; = null

.field public static final URL_BIND_SNS_ACCOUNT:Ljava/lang/String; = "/api/v1/user_connections.json"

.field public static final URL_SNS_LOGIN_INFO_UPLOAD:Ljava/lang/String; = "/api/v1/user_connections/authenticate_sns.json"

.field private static mTencent:Lcom/tencent/tauth/Tencent;


# instance fields
.field private mActivity:Lcom/boohee/one/ui/BaseActivity;

.field private mBundle:Landroid/os/Bundle;

.field private mController:Lcom/umeng/socialize/controller/UMSocialService;

.field private mListener:Lcom/boohee/one/http/JsonCallback;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 36
    const-class v0, Lcom/boohee/utils/SNSLogin;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/utils/SNSLogin;->TAG:Ljava/lang/String;

    .line 41
    const-string v0, "100530867"

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/tauth/Tencent;->createInstance(Ljava/lang/String;Landroid/content/Context;)Lcom/tencent/tauth/Tencent;

    move-result-object v0

    sput-object v0, Lcom/boohee/utils/SNSLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    return-void
.end method

.method public constructor <init>(Lcom/boohee/one/ui/BaseActivity;Lcom/umeng/socialize/controller/UMSocialService;Lcom/boohee/one/http/JsonCallback;)V
    .locals 0
    .parameter "activity"
    .parameter "controller"
    .parameter "listener"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/boohee/utils/SNSLogin;->mActivity:Lcom/boohee/one/ui/BaseActivity;

    .line 66
    iput-object p2, p0, Lcom/boohee/utils/SNSLogin;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    .line 67
    iput-object p3, p0, Lcom/boohee/utils/SNSLogin;->mListener:Lcom/boohee/one/http/JsonCallback;

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/utils/SNSLogin;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/utils/SNSLogin;->mActivity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/utils/SNSLogin;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-object p1, p0, Lcom/boohee/utils/SNSLogin;->mBundle:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/utils/SNSLogin;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/boohee/utils/SNSLogin;->getPlatformAndLogin(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/utils/SNSLogin;Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/boohee/utils/SNSLogin;->snsLogin(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$400()Lcom/tencent/tauth/Tencent;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/boohee/utils/SNSLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    return-object v0
.end method

.method private doSNSLogin(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/boohee/utils/SNSLogin;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/boohee/utils/SNSLogin;->mActivity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/utils/SNSLogin$1;

    invoke-direct {v2, p0}, Lcom/boohee/utils/SNSLogin$1;-><init>(Lcom/boohee/utils/SNSLogin;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->doOauthVerify(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMAuthListener;)V

    .line 140
    return-void
.end method

.method private getPlatformAndLogin(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/boohee/utils/SNSLogin;->mActivity:Lcom/boohee/one/ui/BaseActivity;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/boohee/utils/SNSLogin;->mActivity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/BaseActivity;->showLoading()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/boohee/utils/SNSLogin;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    iget-object v1, p0, Lcom/boohee/utils/SNSLogin;->mActivity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/utils/SNSLogin$2;

    invoke-direct {v2, p0, p1}, Lcom/boohee/utils/SNSLogin$2;-><init>(Lcom/boohee/utils/SNSLogin;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/umeng/socialize/controller/UMSocialService;->getPlatformInfo(Landroid/content/Context;Lcom/umeng/socialize/bean/SHARE_MEDIA;Lcom/umeng/socialize/controller/listener/SocializeListeners$UMDataListener;)V

    .line 174
    return-void
.end method

.method private getUserConnectionJsonParams(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/util/Map;)Lcom/boohee/one/http/JsonParams;
    .locals 6
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/boohee/one/http/JsonParams;"
        }
    .end annotation

    .prologue
    .line 199
    .local p2, info:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v2}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 201
    .local v2, userConnection:Lcom/boohee/one/http/JsonParams;
    :try_start_0
    sget-object v3, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    if-ne v3, p1, :cond_1

    .line 202
    iget-object v3, p0, Lcom/boohee/utils/SNSLogin;->mBundle:Landroid/os/Bundle;

    if-nez v3, :cond_0

    .line 203
    const/4 v3, 0x0

    .line 222
    :goto_0
    return-object v3

    .line 205
    :cond_0
    const-string v3, "identity"

    const-string v4, "unionid"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v3, "access_token"

    iget-object v4, p0, Lcom/boohee/utils/SNSLogin;->mBundle:Landroid/os/Bundle;

    const-string v5, "access_token"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v3, "avatar_url"

    const-string v4, "headimgurl"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v3, "nickname"

    const-string v4, "nickname"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :goto_1
    invoke-direct {p0, p1}, Lcom/boohee/utils/SNSLogin;->shareMedia2String(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, provider:Ljava/lang/String;
    const-string v3, "provider"

    invoke-virtual {v2, v3, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v3, "sync_to_qq"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 222
    .end local v1           #provider:Ljava/lang/String;
    :goto_2
    const-string v3, "user_connection"

    invoke-virtual {v2, v3}, Lcom/boohee/one/http/JsonParams;->with(Ljava/lang/String;)Lcom/boohee/one/http/JsonParams;

    move-result-object v3

    goto :goto_0

    .line 210
    :cond_1
    :try_start_1
    const-string v3, "identity"

    const-string v4, "uid"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v3, "access_token"

    const-string v4, "access_token"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v3, "avatar_url"

    const-string v4, "profile_image_url"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v3, "nickname"

    const-string v4, "screen_name"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static qqLogin(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 3
    .parameter "activity"
    .parameter "url"
    .parameter "callback"

    .prologue
    .line 251
    sget-object v0, Lcom/boohee/utils/SNSLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    const-string v1, "all"

    new-instance v2, Lcom/boohee/utils/SNSLogin$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/boohee/utils/SNSLogin$3;-><init>(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/tencent/tauth/Tencent;->login(Landroid/app/Activity;Ljava/lang/String;Lcom/tencent/tauth/IUiListener;)I

    .line 277
    return-void
.end method

.method public static qqLogout()V
    .locals 2

    .prologue
    .line 283
    sget-object v0, Lcom/boohee/utils/SNSLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    if-eqz v0, :cond_0

    .line 284
    sget-object v0, Lcom/boohee/utils/SNSLogin;->mTencent:Lcom/tencent/tauth/Tencent;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/tauth/Tencent;->logout(Landroid/content/Context;)V

    .line 286
    :cond_0
    return-void
.end method

.method private shareMedia2String(Lcom/umeng/socialize/bean/SHARE_MEDIA;)Ljava/lang/String;
    .locals 3
    .parameter "args"

    .prologue
    .line 226
    const-string v0, ""

    .line 227
    .local v0, result:Ljava/lang/String;
    sget-object v1, Lcom/boohee/utils/SNSLogin$4;->$SwitchMap$com$umeng$socialize$bean$SHARE_MEDIA:[I

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 240
    :goto_0
    return-object v0

    .line 229
    :pswitch_0
    const-string v0, "sina_weibo"

    .line 230
    goto :goto_0

    .line 232
    :pswitch_1
    const-string v0, "qq_zone"

    .line 233
    goto :goto_0

    .line 235
    :pswitch_2
    const-string v0, "weixin"

    .line 236
    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private snsLogin(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/util/Map;)V
    .locals 4
    .parameter "args"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/socialize/bean/SHARE_MEDIA;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 183
    .local p2, info:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/utils/SNSLogin;->getUserConnectionJsonParams(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/util/Map;)Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    .line 184
    .local v0, userParams:Lcom/boohee/one/http/JsonParams;
    if-nez v0, :cond_0

    .line 185
    const v1, 0x7f0700ec

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 189
    :goto_0
    return-void

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/boohee/utils/SNSLogin;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/utils/SNSLogin;->mActivity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v3, p0, Lcom/boohee/utils/SNSLogin;->mListener:Lcom/boohee/one/http/JsonCallback;

    invoke-static {v1, v0, v2, v3}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static snsLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 11
    .parameter "url"
    .parameter "openID"
    .parameter "accessToken"
    .parameter "nickName"
    .parameter "avatarUrl"
    .parameter "expires_at"
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 300
    new-instance v2, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v2}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 301
    .local v2, userConnection:Lcom/boohee/one/http/JsonParams;
    const-string v3, "identity"

    invoke-virtual {v2, v3, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v3, "access_token"

    invoke-virtual {v2, v3, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const-string v3, "avatar_url"

    invoke-virtual {v2, v3, p4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v3, "nickname"

    invoke-virtual {v2, v3, p3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    const-string v3, "expires_at"

    new-instance v4, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v8, v8, p5

    add-long/2addr v6, v8

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    const-string v3, "provider"

    const-string v4, "qq_zone"

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v3, "sync_to_qq"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string v3, "user_connection"

    invoke-virtual {v2, v3}, Lcom/boohee/one/http/JsonParams;->with(Ljava/lang/String;)Lcom/boohee/one/http/JsonParams;

    move-result-object v3

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-static {p0, v3, v0, v1}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 311
    const v3, 0x7f0700ee

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 312
    return-void
.end method


# virtual methods
.method public doRequest(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V
    .locals 1
    .parameter "args"
    .parameter "url"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/utils/SNSLogin;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/utils/SNSLogin;->mListener:Lcom/boohee/one/http/JsonCallback;

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    iput-object p2, p0, Lcom/boohee/utils/SNSLogin;->mUrl:Ljava/lang/String;

    .line 75
    invoke-virtual {p0, p1}, Lcom/boohee/utils/SNSLogin;->onClick(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0
.end method

.method public onClick(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
    .locals 6
    .parameter "args"

    .prologue
    .line 79
    sget-object v1, Lcom/boohee/utils/SNSLogin$4;->$SwitchMap$com$umeng$socialize$bean$SHARE_MEDIA:[I

    invoke-virtual {p1}, Lcom/umeng/socialize/bean/SHARE_MEDIA;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 81
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/utils/SNSLogin;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    new-instance v2, Lcom/umeng/socialize/sso/SinaSsoHandler;

    invoke-direct {v2}, Lcom/umeng/socialize/sso/SinaSsoHandler;-><init>()V

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSsoHandler(Lcom/umeng/socialize/sso/UMSsoHandler;)V

    .line 82
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {p0, v1}, Lcom/boohee/utils/SNSLogin;->doSNSLogin(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v1, p0, Lcom/boohee/utils/SNSLogin;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    new-instance v2, Lcom/umeng/socialize/sso/QZoneSsoHandler;

    iget-object v3, p0, Lcom/boohee/utils/SNSLogin;->mActivity:Lcom/boohee/one/ui/BaseActivity;

    const-string v4, "100530867"

    const-string v5, "d32ea174315e9c42bfbd481ac3b3fef6"

    invoke-direct {v2, v3, v4, v5}, Lcom/umeng/socialize/sso/QZoneSsoHandler;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/umeng/socialize/bean/SocializeConfig;->setSsoHandler(Lcom/umeng/socialize/sso/UMSsoHandler;)V

    .line 87
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {p0, v1}, Lcom/boohee/utils/SNSLogin;->doSNSLogin(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0

    .line 90
    :pswitch_2
    new-instance v0, Lcom/umeng/socialize/weixin/controller/UMWXHandler;

    iget-object v1, p0, Lcom/boohee/utils/SNSLogin;->mActivity:Lcom/boohee/one/ui/BaseActivity;

    const-string v2, "wxaddc5c19a31e9d39"

    const-string v3, "1f98ca2de209fb04baea8fd983c8fc45"

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, wxHandler:Lcom/umeng/socialize/weixin/controller/UMWXHandler;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/umeng/socialize/weixin/controller/UMWXHandler;->setRefreshTokenAvailable(Z)V

    .line 93
    iget-object v1, p0, Lcom/boohee/utils/SNSLogin;->mController:Lcom/umeng/socialize/controller/UMSocialService;

    invoke-interface {v1}, Lcom/umeng/socialize/controller/UMSocialService;->getConfig()Lcom/umeng/socialize/bean/SocializeConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/umeng/socialize/bean/SocializeConfig;->setSsoHandler(Lcom/umeng/socialize/sso/UMSsoHandler;)V

    .line 94
    sget-object v1, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    invoke-direct {p0, v1}, Lcom/boohee/utils/SNSLogin;->doSNSLogin(Lcom/umeng/socialize/bean/SHARE_MEDIA;)V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
