.class public Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
.super Ljava/lang/Object;
.source "XiaomiOAuthorize.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/account/openauth/XiaomiOAuthorize$OnOAuthInterface;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "XiaomiOAuthorize"

.field private static final TYPE_CODE:Ljava/lang/String; = "code"

.field private static final TYPE_TOKEN:Ljava/lang/String; = "token"

.field private static instance:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    invoke-direct {v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;-><init>()V

    sput-object v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->instance:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getInstance()Lcom/xiaomi/account/openauth/XiaomiOAuthorize;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->instance:Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    return-object v0
.end method

.method public static setOnOAuthInterface(Lcom/xiaomi/account/openauth/XiaomiOAuthorize$OnOAuthInterface;)V
    .locals 0
    .parameter "onOAuthInterface"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    return-void
.end method

.method public static startGetAccessToken(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;I)V
    .locals 9
    .parameter "activity"
    .parameter "clientId"
    .parameter "redirecURI"
    .parameter "options"
    .parameter "requestCode"

    .prologue
    .line 192
    if-nez p4, :cond_0

    .line 194
    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 196
    .restart local p4
    :cond_0
    invoke-static {}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->getInstance()Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    const-string v5, "token"

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 198
    return-void
.end method

.method public static startGetOAuthCode(Landroid/app/Activity;JLjava/lang/String;Landroid/os/Bundle;I)V
    .locals 9
    .parameter "activity"
    .parameter "clientId"
    .parameter "redirecURI"
    .parameter "options"
    .parameter "requestCode"

    .prologue
    .line 202
    if-nez p4, :cond_0

    .line 204
    new-instance p4, Landroid/os/Bundle;

    .end local p4
    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 206
    .restart local p4
    :cond_0
    invoke-static {}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->getInstance()Lcom/xiaomi/account/openauth/XiaomiOAuthorize;

    move-result-object v0

    const-string v5, "code"

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    move v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 208
    return-void
.end method

.method private tryAddAccountAndGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 10
    .parameter "activity"
    .parameter "clientId"
    .parameter "redirecURI"
    .parameter "responseType"
    .parameter "options"
    .parameter "requestCode"

    .prologue
    .line 65
    new-instance v1, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;-><init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 118
    instance-of v2, v1, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v1, v0}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 119
    :goto_0
    return-void

    .line 118
    :cond_0
    check-cast v1, Landroid/os/AsyncTask;

    invoke-static {v1, v0}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method protected doesXiaomiAuthServiceExist(Landroid/app/Activity;)Z
    .locals 1
    .parameter "activity"

    .prologue
    .line 156
    invoke-static {p1}, Lcom/xiaomi/auth/XiaomiAuthUtil;->isServiceSupport(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected getAccessToken(Landroid/app/Activity;[Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "activity"
    .parameter "accounts"
    .parameter "optionBundle"

    .prologue
    .line 177
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {p1, v0, p3}, Lcom/xiaomi/auth/XiaomiAuthUtil;->getAccessToken(Landroid/content/Context;Landroid/accounts/Account;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getXiaomiAccounts(Landroid/app/Activity;)[Landroid/accounts/Account;
    .locals 2
    .parameter "activity"

    .prologue
    .line 171
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method protected startAuthorizeActivityFroResult(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 12
    .parameter "activity"
    .parameter "clientId"
    .parameter "redirecURI"
    .parameter "responseType"
    .parameter "options"
    .parameter "requestCode"

    .prologue
    .line 163
    .line 165
    const-string v2, "extra_scope"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 166
    const-string v2, "extra_state"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v3, p1

    move-wide v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v10, p7

    .line 163
    invoke-static/range {v3 .. v10}, Lcom/xiaomi/account/openauth/AuthorizeHelper;->startAuthorizeActivityForResult(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 167
    return-void
.end method

.method protected startGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .parameter "activity"
    .parameter "clientId"
    .parameter "redirecURI"
    .parameter "responseType"
    .parameter "options"
    .parameter "requestCode"

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->doesXiaomiAuthServiceExist(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-virtual/range {p0 .. p7}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startAuthorizeActivityFroResult(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 59
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->getXiaomiAccounts(Landroid/app/Activity;)[Landroid/accounts/Account;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 53
    invoke-direct/range {p0 .. p7}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->tryAddAccountAndGetOAuthorize(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual/range {p0 .. p7}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->startGetOAuthorizeFromAccount(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V

    goto :goto_0
.end method

.method protected startGetOAuthorizeFromAccount(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 10
    .parameter "activity"
    .parameter "clientId"
    .parameter "redirecURI"
    .parameter "responseType"
    .parameter "options"
    .parameter "requestCode"

    .prologue
    .line 125
    invoke-virtual {p0, p1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize;->getXiaomiAccounts(Landroid/app/Activity;)[Landroid/accounts/Account;

    move-result-object v8

    .line 126
    .local v8, accounts:[Landroid/accounts/Account;
    new-instance v0, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;

    move-object v1, p0

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object v7, p1

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;-><init>(Lcom/xiaomi/account/openauth/XiaomiOAuthorize;JLjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;[Landroid/accounts/Account;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/os/Bundle;

    .line 151
    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/xiaomi/account/openauth/XiaomiOAuthorize$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 152
    :goto_0
    return-void

    .line 151
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected tryAddXiaomiAccount(Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 9
    .parameter "activity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Landroid/accounts/OperationCanceledException;,
            Ljava/io/IOException;,
            Landroid/accounts/AuthenticatorException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v1, "com.xiaomi"

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    .line 187
    .local v8, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    invoke-interface {v8}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method
