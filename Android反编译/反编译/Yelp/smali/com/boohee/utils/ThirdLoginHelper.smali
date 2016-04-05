.class public Lcom/boohee/utils/ThirdLoginHelper;
.super Ljava/lang/Object;
.source "ThirdLoginHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/utils/ThirdLoginHelper$OnQQAuthFinishListener;
    }
.end annotation


# static fields
.field private static mUser:Lcom/boohee/model/User;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 461
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcom/boohee/utils/ThirdLoginHelper;->getLeyuUserInfo(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    return-void
.end method

.method static synthetic access$100()Lcom/boohee/model/User;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/boohee/utils/ThirdLoginHelper;->mUser:Lcom/boohee/model/User;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/model/User;)Lcom/boohee/model/User;
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    sput-object p0, Lcom/boohee/utils/ThirdLoginHelper;->mUser:Lcom/boohee/model/User;

    return-object p0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 47
    invoke-static {p0, p1, p2, p3, p4}, Lcom/boohee/utils/ThirdLoginHelper;->register(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/BaseActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-static {p0, p1}, Lcom/boohee/utils/ThirdLoginHelper;->getUserData(Lcom/boohee/one/ui/BaseActivity;Z)V

    return-void
.end method

.method private static couldLogin(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "accountStr"
    .parameter "pwdStr"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 268
    new-array v2, v1, [Ljava/lang/CharSequence;

    aput-object p0, v2, v0

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 269
    const v1, 0x7f070301

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 277
    :goto_0
    return v0

    .line 273
    :cond_0
    new-array v2, v1, [Ljava/lang/CharSequence;

    aput-object p1, v2, v0

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    const v1, 0x7f070402

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 277
    goto :goto_0
.end method

.method private static couldRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "account"
    .parameter "phoneEmail"
    .parameter "pwdStr"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 298
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    const v1, 0x7f07060b

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 310
    :goto_0
    return v0

    .line 302
    :cond_0
    invoke-static {p1}, Lcom/boohee/utils/TextUtil;->isEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Lcom/boohee/utils/TextUtil;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 303
    const-string v1, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u7535\u8bdd\u53f7\u7801\u6216\u90ae\u7bb1~~"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 306
    :cond_1
    new-array v2, v1, [Ljava/lang/CharSequence;

    aput-object p2, v2, v0

    invoke-static {v2}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 307
    const v1, 0x7f070402

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 310
    goto :goto_0
.end method

.method private static createUploadJSONParam(Ljava/util/Map;)Lcom/boohee/one/http/JsonParams;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/boohee/one/http/JsonParams;"
        }
    .end annotation

    .prologue
    .line 282
    .local p0, param:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v2}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 283
    .local v2, obj:Lcom/boohee/one/http/JsonParams;
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 284
    .local v1, key:Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    .end local v1           #key:Ljava/lang/String;
    :cond_0
    const-string v3, "user_connection"

    invoke-virtual {v2, v3}, Lcom/boohee/one/http/JsonParams;->with(Ljava/lang/String;)Lcom/boohee/one/http/JsonParams;

    move-result-object v3

    return-object v3
.end method

.method public static doLogin(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "accountStr"
    .parameter "pwdStr"

    .prologue
    .line 153
    if-eqz p0, :cond_0

    invoke-static {p1, p2}, Lcom/boohee/utils/ThirdLoginHelper;->couldLogin(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->showLoading()V

    .line 157
    new-instance v0, Lcom/boohee/utils/ThirdLoginHelper$3;

    invoke-direct {v0, p0, p0}, Lcom/boohee/utils/ThirdLoginHelper$3;-><init>(Landroid/content/Context;Lcom/boohee/one/ui/BaseActivity;)V

    invoke-static {p1, p2, p0, v0}, Lcom/boohee/api/PassportApi;->login(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static doQQAuth(ZZLcom/boohee/one/ui/BaseActivity;Lcom/boohee/utils/ThirdLoginHelper$OnQQAuthFinishListener;)V
    .locals 2
    .parameter "isBind"
    .parameter "isNeedLogout"
    .parameter "activity"
    .parameter "listener"

    .prologue
    .line 474
    invoke-virtual {p2}, Lcom/boohee/one/ui/BaseActivity;->showLoading()V

    .line 475
    if-eqz p0, :cond_0

    const-string v0, "/api/v1/user_connections.json"

    .line 476
    .local v0, url:Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/boohee/utils/ThirdLoginHelper$11;

    invoke-direct {v1, p2, p1, p2, p3}, Lcom/boohee/utils/ThirdLoginHelper$11;-><init>(Landroid/content/Context;ZLcom/boohee/one/ui/BaseActivity;Lcom/boohee/utils/ThirdLoginHelper$OnQQAuthFinishListener;)V

    invoke-static {p2, v0, v1}, Lcom/boohee/utils/SNSLogin;->qqLogin(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 511
    return-void

    .line 475
    .end local v0           #url:Ljava/lang/String;
    :cond_0
    const-string v0, "/api/v1/user_connections/authenticate_sns.json"

    goto :goto_0
.end method

.method public static doRegister(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "activity"
    .parameter "account"
    .parameter "phoneEmail"
    .parameter "pwdStr"
    .parameter "friendsPhoneNumber"

    .prologue
    .line 186
    if-eqz p0, :cond_0

    invoke-static {p1, p2, p3}, Lcom/boohee/utils/ThirdLoginHelper;->couldRegister(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->showLoading()V

    .line 193
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/AccountUtils;->hasUserKeyAndToken(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 195
    invoke-static {p0, p1, p2, p3, p4}, Lcom/boohee/utils/ThirdLoginHelper;->register(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_2
    new-instance v0, Lcom/boohee/utils/ThirdLoginHelper$4;

    move-object v1, p0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/boohee/utils/ThirdLoginHelper$4;-><init>(Landroid/content/Context;Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/boohee/api/PassportApi;->authenticateGuest(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private static getLeyuUserInfo(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .parameter "activity"
    .parameter "userName"
    .parameter "password"
    .parameter "accessToken"
    .parameter "callback"

    .prologue
    .line 94
    const-string v0, "http://m.miao.cn/action/devapi/login.jsp"

    .line 95
    .local v0, leyuUrl:Ljava/lang/String;
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 96
    .local v1, params:Lcom/boohee/one/http/JsonParams;
    const-string v2, "action"

    const-string v3, "login"

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v2, "password"

    invoke-virtual {v1, v2, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "access_token"

    invoke-virtual {v1, v2, p3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v2, Lcom/boohee/utils/ThirdLoginHelper$2;

    invoke-direct {v2, p0, p0, p4}, Lcom/boohee/utils/ThirdLoginHelper$2;-><init>(Landroid/content/Context;Lcom/boohee/one/ui/BaseActivity;Lcom/boohee/one/http/JsonCallback;)V

    invoke-static {v0, v1, v2, p0}, Lcom/boohee/one/http/client/BaseJsonRequest;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 122
    return-void
.end method

.method public static getUserConnections(Lcom/boohee/one/ui/BaseActivity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "isFinish"

    .prologue
    .line 389
    if-nez p0, :cond_0

    .line 407
    :goto_0
    return-void

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->showLoading()V

    .line 393
    new-instance v0, Lcom/boohee/utils/ThirdLoginHelper$9;

    invoke-direct {v0, p0, p0, p1}, Lcom/boohee/utils/ThirdLoginHelper$9;-><init>(Landroid/content/Context;Lcom/boohee/one/ui/BaseActivity;Z)V

    invoke-static {p0, v0}, Lcom/boohee/api/PassportApi;->getUserConnections(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private static getUserData(Lcom/boohee/one/ui/BaseActivity;Z)V
    .locals 1
    .parameter "activity"
    .parameter "isFinish"

    .prologue
    .line 415
    if-nez p0, :cond_0

    .line 434
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->showLoading()V

    .line 419
    new-instance v0, Lcom/boohee/utils/ThirdLoginHelper$10;

    invoke-direct {v0, p0, p0, p1}, Lcom/boohee/utils/ThirdLoginHelper$10;-><init>(Landroid/content/Context;Lcom/boohee/one/ui/BaseActivity;Z)V

    invoke-static {p0, v0}, Lcom/boohee/api/RecordApi;->getUsersProfile(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static handleQQHealthRequest(Lcom/boohee/one/ui/MainActivity;Landroid/content/Intent;Lcom/boohee/utils/ThirdLoginHelper$OnQQAuthFinishListener;)Z
    .locals 11
    .parameter "activity"
    .parameter "intent"
    .parameter "listener"

    .prologue
    const/4 v9, 0x0

    const v8, 0x7f07001c

    const/4 v10, 0x0

    .line 321
    const/4 v2, 0x0

    .line 322
    .local v2, isShow:Z
    if-eqz p1, :cond_2

    .line 323
    const-string v7, "openid"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, openId:Ljava/lang/String;
    const-string v7, "accesstoken"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, accessToken:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 326
    const/4 v5, 0x0

    .line 328
    .local v5, qqAlert:Lcom/boohee/widgets/LightAlertDialog;
    invoke-static {}, Lcom/boohee/database/UserPreference;->getQQOpenID()Ljava/lang/String;

    move-result-object v6

    .line 329
    .local v6, qqOpenId:Ljava/lang/String;
    invoke-static {}, Lcom/boohee/database/UserPreference;->getQQAccessToken()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, qqAccessToken:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 331
    invoke-static {p0}, Lcom/boohee/utils/AccountUtils;->isVisitorAccount(Landroid/content/Context;)Z

    move-result v1

    .line 332
    .local v1, isLogin:Z
    if-eqz v1, :cond_3

    .line 333
    invoke-static {v10, v10, p0, p2}, Lcom/boohee/utils/ThirdLoginHelper;->doQQAuth(ZZLcom/boohee/one/ui/BaseActivity;Lcom/boohee/utils/ThirdLoginHelper$OnQQAuthFinishListener;)V

    .line 369
    .end local v1           #isLogin:Z
    :cond_0
    :goto_0
    if-eqz v5, :cond_2

    .line 370
    invoke-virtual {v5, v10}, Lcom/boohee/widgets/LightAlertDialog;->setCancelable(Z)V

    .line 371
    invoke-virtual {v5}, Lcom/boohee/widgets/LightAlertDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 372
    invoke-virtual {v5}, Lcom/boohee/widgets/LightAlertDialog;->dismiss()V

    .line 374
    :cond_1
    invoke-virtual {v5}, Lcom/boohee/widgets/LightAlertDialog;->show()V

    .line 375
    const/4 v2, 0x1

    .line 379
    .end local v0           #accessToken:Ljava/lang/String;
    .end local v3           #openId:Ljava/lang/String;
    .end local v4           #qqAccessToken:Ljava/lang/String;
    .end local v5           #qqAlert:Lcom/boohee/widgets/LightAlertDialog;
    .end local v6           #qqOpenId:Ljava/lang/String;
    :cond_2
    return v2

    .line 335
    .restart local v0       #accessToken:Ljava/lang/String;
    .restart local v1       #isLogin:Z
    .restart local v3       #openId:Ljava/lang/String;
    .restart local v4       #qqAccessToken:Ljava/lang/String;
    .restart local v5       #qqAlert:Lcom/boohee/widgets/LightAlertDialog;
    .restart local v6       #qqOpenId:Ljava/lang/String;
    :cond_3
    const v7, 0x7f070442

    invoke-static {p0, v7}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v7

    const v8, 0x7f07043f

    new-instance v9, Lcom/boohee/utils/ThirdLoginHelper$6;

    invoke-direct {v9, p0, p2}, Lcom/boohee/utils/ThirdLoginHelper$6;-><init>(Lcom/boohee/one/ui/MainActivity;Lcom/boohee/utils/ThirdLoginHelper$OnQQAuthFinishListener;)V

    invoke-virtual {v7, v8, v9}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v5

    goto :goto_0

    .line 346
    .end local v1           #isLogin:Z
    :cond_4
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 347
    const v7, 0x7f07043d

    invoke-static {p0, v7}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v7

    const v8, 0x7f070440

    new-instance v9, Lcom/boohee/utils/ThirdLoginHelper$7;

    invoke-direct {v9, p0, p2}, Lcom/boohee/utils/ThirdLoginHelper$7;-><init>(Lcom/boohee/one/ui/MainActivity;Lcom/boohee/utils/ThirdLoginHelper$OnQQAuthFinishListener;)V

    invoke-virtual {v7, v8, v9}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v5

    goto :goto_0

    .line 357
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 358
    const v7, 0x7f070443

    invoke-static {p0, v7}, Lcom/boohee/widgets/LightAlertDialog;->create(Landroid/content/Context;I)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lcom/boohee/widgets/LightAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v7

    const v8, 0x7f070441

    new-instance v9, Lcom/boohee/utils/ThirdLoginHelper$8;

    invoke-direct {v9, p0, p2}, Lcom/boohee/utils/ThirdLoginHelper$8;-><init>(Lcom/boohee/one/ui/MainActivity;Lcom/boohee/utils/ThirdLoginHelper$OnQQAuthFinishListener;)V

    invoke-virtual {v7, v8, v9}, Lcom/boohee/widgets/LightAlertDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/boohee/widgets/LightAlertDialog;

    move-result-object v5

    goto :goto_0
.end method

.method public static leyuLogin(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .parameter "activity"
    .parameter "userName"
    .parameter "passsword"
    .parameter "callback"

    .prologue
    .line 60
    if-eqz p0, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->showLoading()V

    .line 64
    :cond_0
    invoke-static {p0}, Lcom/hanyou/leyusdk/LEYUApplication;->getAppConfig(Landroid/content/Context;)Lcom/hanyou/leyusdk/LEYUApplication;

    move-result-object v0

    .line 65
    .local v0, leyuapp:Lcom/hanyou/leyusdk/LEYUApplication;
    new-instance v1, Lcom/boohee/utils/ThirdLoginHelper$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/boohee/utils/ThirdLoginHelper$1;-><init>(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    iput-object v1, v0, Lcom/hanyou/leyusdk/LEYUApplication;->_callback:Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;

    .line 89
    invoke-virtual {v0}, Lcom/hanyou/leyusdk/LEYUApplication;->GetDeveloperAccessToken()V

    .line 90
    return-void
.end method

.method public static qqLogin(Lcom/boohee/utils/SNSLogin;)V
    .locals 2
    .parameter "snsLogin"

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->QZONE:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string v1, "/api/v1/user_connections/authenticate_sns.json"

    invoke-virtual {p0, v0, v1}, Lcom/boohee/utils/SNSLogin;->doRequest(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static register(Lcom/boohee/one/ui/BaseActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "account"
    .parameter "phoneEmail"
    .parameter "pwdStr"
    .parameter "friendsNumber"

    .prologue
    .line 231
    new-instance v0, Lcom/boohee/utils/ThirdLoginHelper$5;

    invoke-direct {v0, p0, p4, p0}, Lcom/boohee/utils/ThirdLoginHelper$5;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/ui/BaseActivity;)V

    invoke-static {p1, p2, p3, p0, v0}, Lcom/boohee/api/PassportApi;->upgradeToBoohee(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 258
    return-void
.end method

.method public static requestSNSInfoWhenFirstStartAfterUpdate(Lcom/boohee/one/ui/BaseActivity;)V
    .locals 9
    .parameter "activity"

    .prologue
    const/4 v8, 0x0

    .line 442
    invoke-static {p0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v3

    .line 443
    .local v3, op:Lcom/boohee/database/OnePreference;
    const/4 v4, 0x0

    .line 445
    .local v4, versionCode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/boohee/one/ui/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 447
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    :goto_0
    const-string v5, "current_version_code"

    invoke-virtual {v3, v5}, Lcom/boohee/database/OnePreference;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 453
    .local v2, oldVersionCode:I
    if-le v4, v2, :cond_0

    .line 454
    invoke-static {p0, v8}, Lcom/boohee/utils/ThirdLoginHelper;->getUserConnections(Lcom/boohee/one/ui/BaseActivity;Z)V

    .line 456
    :cond_0
    return-void

    .line 448
    .end local v2           #oldVersionCode:I
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static uploadSNSInfo(Ljava/util/Map;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/boohee/one/http/JsonCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    .local p0, param:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "/api/v1/user_connections/authenticate_sns.json"

    invoke-static {p0}, Lcom/boohee/utils/ThirdLoginHelper;->createUploadJSONParam(Ljava/util/Map;)Lcom/boohee/one/http/JsonParams;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/boohee/one/http/client/PassportClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method public static weiboLogin(Lcom/boohee/utils/SNSLogin;)V
    .locals 2
    .parameter "snsLogin"

    .prologue
    .line 138
    if-nez p0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->SINA:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string v1, "/api/v1/user_connections/authenticate_sns.json"

    invoke-virtual {p0, v0, v1}, Lcom/boohee/utils/SNSLogin;->doRequest(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static weixinLogin(Lcom/boohee/utils/SNSLogin;)V
    .locals 2
    .parameter "snsLogin"

    .prologue
    .line 132
    if-nez p0, :cond_0

    .line 135
    :goto_0
    return-void

    .line 134
    :cond_0
    sget-object v0, Lcom/umeng/socialize/bean/SHARE_MEDIA;->WEIXIN:Lcom/umeng/socialize/bean/SHARE_MEDIA;

    const-string v1, "/api/v1/user_connections/authenticate_sns.json"

    invoke-virtual {p0, v0, v1}, Lcom/boohee/utils/SNSLogin;->doRequest(Lcom/umeng/socialize/bean/SHARE_MEDIA;Ljava/lang/String;)V

    goto :goto_0
.end method
