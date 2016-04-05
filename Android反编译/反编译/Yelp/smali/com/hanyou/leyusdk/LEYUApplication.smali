.class public Lcom/hanyou/leyusdk/LEYUApplication;
.super Ljava/lang/Object;
.source "LEYUApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;
    }
.end annotation


# static fields
.field private static final APP_CONFIG:Ljava/lang/String; = "LEYUconfig"

.field public static final NETTYPE_CMNET:I = 0x3

.field public static final NETTYPE_CMWAP:I = 0x2

.field public static final NETTYPE_WIFI:I = 0x1

.field public static final REQ_LOGIN:I = 0x15

.field private static _app_id:Ljava/lang/String; = null

.field private static _app_key:Ljava/lang/String; = null

.field private static access_token:Ljava/lang/String; = null

.field private static dev_access_token:Ljava/lang/String; = null

.field private static leyuappConfig:Lcom/hanyou/leyusdk/LEYUApplication; = null

.field private static login:Z = false

.field private static loginUid:I = 0x0

.field private static mContext:Landroid/content/Context; = null

.field private static final wwwhost:Ljava/lang/String; = "http://m.miao.cn"


# instance fields
.field public _callback:Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;

.field private xHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const-string v0, ""

    sput-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->_app_id:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->_app_key:Ljava/lang/String;

    .line 52
    sput-boolean v1, Lcom/hanyou/leyusdk/LEYUApplication;->login:Z

    .line 53
    sput v1, Lcom/hanyou/leyusdk/LEYUApplication;->loginUid:I

    .line 54
    const-string v0, ""

    sput-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->dev_access_token:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->access_token:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lcom/hanyou/leyusdk/LEYUApplication$1;

    invoke-direct {v0, p0}, Lcom/hanyou/leyusdk/LEYUApplication$1;-><init>(Lcom/hanyou/leyusdk/LEYUApplication;)V

    iput-object v0, p0, Lcom/hanyou/leyusdk/LEYUApplication;->xHandler:Landroid/os/Handler;

    .line 88
    sput-object p1, Lcom/hanyou/leyusdk/LEYUApplication;->mContext:Landroid/content/Context;

    .line 89
    invoke-direct {p0, p1}, Lcom/hanyou/leyusdk/LEYUApplication;->initWithApiKey(Landroid/content/Context;)V

    .line 90
    invoke-virtual {p0}, Lcom/hanyou/leyusdk/LEYUApplication;->getLocalDevAccessToken()Ljava/lang/String;

    .line 91
    invoke-virtual {p0}, Lcom/hanyou/leyusdk/LEYUApplication;->initLoginInfo()V

    .line 92
    return-void
.end method

.method private GetDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "url"

    .prologue
    .line 270
    const-string v5, ""

    .line 271
    .local v5, resultString:Ljava/lang/String;
    const-string v3, "http://m.miao.cn"

    .line 272
    .local v3, host:Ljava/lang/String;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 273
    .local v2, get:Lorg/apache/http/client/methods/HttpGet;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 275
    .local v0, client:Lorg/apache/http/client/HttpClient;
    :try_start_0
    instance-of v7, v0, Lorg/apache/http/client/HttpClient;

    if-nez v7, :cond_0

    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 276
    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    .local v4, response:Lorg/apache/http/HttpResponse;
    :goto_0
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 281
    .end local v4           #response:Lorg/apache/http/HttpResponse;
    .end local v5           #resultString:Ljava/lang/String;
    .local v6, resultString:Ljava/lang/String;
    :goto_1
    return-object v6

    .line 275
    .end local v6           #resultString:Ljava/lang/String;
    .restart local v0       #client:Lorg/apache/http/client/HttpClient;
    .restart local v5       #resultString:Ljava/lang/String;
    :cond_0
    check-cast v0, Lorg/apache/http/client/HttpClient;

    .end local v0           #client:Lorg/apache/http/client/HttpClient;
    invoke-static {v0, v2}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 278
    :catch_0
    move-exception v1

    .line 279
    .local v1, e:Ljava/lang/Exception;
    iget-object v7, p0, Lcom/hanyou/leyusdk/LEYUApplication;->_callback:Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;->onFailed(Ljava/lang/String;)V

    move-object v6, v5

    .line 281
    .end local v5           #resultString:Ljava/lang/String;
    .restart local v6       #resultString:Ljava/lang/String;
    goto :goto_1
.end method

.method private GetDate2(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/hanyou/leyusdk/LEYUApplication;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    iget-object v0, p0, Lcom/hanyou/leyusdk/LEYUApplication;->_callback:Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;

    const-string v1, "Not Login"

    invoke-interface {v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;->onFailed(Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void

    .line 289
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hanyou/leyusdk/LEYUApplication$2;

    invoke-direct {v1, p0, p1}, Lcom/hanyou/leyusdk/LEYUApplication$2;-><init>(Lcom/hanyou/leyusdk/LEYUApplication;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 298
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private static _MakeURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .parameter "p_url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 493
    .local p1, params:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 494
    .local v1, url:Ljava/lang/StringBuilder;
    const-string v3, "?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_0

    .line 495
    const/16 v3, 0x3f

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 496
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 502
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "?&"

    const-string v5, "?"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, urlString:Ljava/lang/String;
    const-string v3, " "

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 496
    .end local v2           #urlString:Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 497
    .local v0, name:Ljava/lang/String;
    const/16 v4, 0x26

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const/16 v4, 0x3d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 500
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method static synthetic access$0(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    sput-object p0, Lcom/hanyou/leyusdk/LEYUApplication;->dev_access_token:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->dev_access_token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 530
    invoke-static {p0, p1}, Lcom/hanyou/leyusdk/LEYUApplication;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/hanyou/leyusdk/LEYUApplication;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 269
    invoke-direct {p0, p1}, Lcom/hanyou/leyusdk/LEYUApplication;->GetDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/hanyou/leyusdk/LEYUApplication;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/hanyou/leyusdk/LEYUApplication;->xHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$5()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->_app_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->_app_key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 492
    invoke-static {p0, p1}, Lcom/hanyou/leyusdk/LEYUApplication;->_MakeURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 53
    sget v0, Lcom/hanyou/leyusdk/LEYUApplication;->loginUid:I

    return v0
.end method

.method static synthetic access$9()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method private get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 437
    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->get()Ljava/util/Properties;

    move-result-object v0

    .line 438
    .local v0, props:Ljava/util/Properties;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static get()Ljava/util/Properties;
    .locals 7

    .prologue
    .line 442
    const/4 v1, 0x0

    .line 443
    .local v1, fis:Ljava/io/FileInputStream;
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    .line 448
    .local v3, props:Ljava/util/Properties;
    :try_start_0
    sget-object v4, Lcom/hanyou/leyusdk/LEYUApplication;->mContext:Landroid/content/Context;

    const-string v5, "LEYUconfig"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 452
    .local v0, dirConf:Ljava/io/File;
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 453
    const-string v5, "LEYUconfig"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 452
    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v1           #fis:Ljava/io/FileInputStream;
    .local v2, fis:Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 458
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v2

    .line 462
    .end local v0           #dirConf:Ljava/io/File;
    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    :goto_0
    return-object v3

    .line 455
    :catch_0
    move-exception v4

    .line 458
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 459
    :catch_1
    move-exception v4

    goto :goto_0

    .line 456
    :catchall_0
    move-exception v4

    .line 458
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 461
    :goto_3
    throw v4

    .line 459
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #dirConf:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v4

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_0

    .end local v0           #dirConf:Ljava/io/File;
    :catch_3
    move-exception v5

    goto :goto_3

    .line 456
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v0       #dirConf:Ljava/io/File;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_2

    .line 455
    .end local v1           #fis:Ljava/io/FileInputStream;
    .restart local v2       #fis:Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2           #fis:Ljava/io/FileInputStream;
    .restart local v1       #fis:Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public static getAppConfig(Landroid/content/Context;)Lcom/hanyou/leyusdk/LEYUApplication;
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    sget-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->leyuappConfig:Lcom/hanyou/leyusdk/LEYUApplication;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/hanyou/leyusdk/LEYUApplication;

    invoke-direct {v0, p0}, Lcom/hanyou/leyusdk/LEYUApplication;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->leyuappConfig:Lcom/hanyou/leyusdk/LEYUApplication;

    .line 84
    :cond_0
    sget-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->leyuappConfig:Lcom/hanyou/leyusdk/LEYUApplication;

    return-object v0
.end method

.method public static getNetworkType()I
    .locals 7

    .prologue
    .line 112
    const/4 v3, 0x0

    .line 113
    .local v3, netType:I
    sget-object v5, Lcom/hanyou/leyusdk/LEYUApplication;->mContext:Landroid/content/Context;

    .line 114
    const-string v6, "connectivity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 113
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 115
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 116
    .local v4, networkInfo:Landroid/net/NetworkInfo;
    if-nez v4, :cond_1

    .line 132
    :cond_0
    :goto_0
    return v3

    .line 119
    :cond_1
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 120
    .local v2, nType:I
    if-nez v2, :cond_3

    .line 121
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, extraInfo:Ljava/lang/String;
    invoke-static {v1}, Lcom/hanyou/leyusdk/LEYUApplication;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 123
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "cmnet"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 124
    const/4 v3, 0x3

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    const/4 v3, 0x2

    .line 129
    goto :goto_0

    .end local v1           #extraInfo:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    .line 130
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private initWithApiKey(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    .line 137
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 139
    const/16 v6, 0x80

    .line 138
    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 140
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "leyu_app_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 141
    .local v2, leyu_app_id:Ljava/lang/Object;
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "leyu_app_key"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 142
    .local v3, leyu_app_key:Ljava/lang/Object;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/hanyou/leyusdk/LEYUApplication;->_app_id:Ljava/lang/String;

    .line 143
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/hanyou/leyusdk/LEYUApplication;->_app_key:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #leyu_app_id:Ljava/lang/Object;
    .end local v3           #leyu_app_key:Ljava/lang/Object;
    :goto_0
    return-void

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 146
    iget-object v4, p0, Lcom/hanyou/leyusdk/LEYUApplication;->_callback:Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/hanyou/leyusdk/LEYUApplication$ICallBack;->onFailed(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 4
    .parameter "input"

    .prologue
    const/4 v2, 0x1

    .line 246
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "null"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v2

    .line 248
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 249
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 250
    .local v0, c:C
    const/16 v3, 0x20

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    const/16 v3, 0xd

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa

    if-eq v0, v3, :cond_2

    .line 251
    const/4 v2, 0x0

    goto :goto_0

    .line 248
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isNetworkConnected()Z
    .locals 4

    .prologue
    .line 100
    sget-object v2, Lcom/hanyou/leyusdk/LEYUApplication;->mContext:Landroid/content/Context;

    .line 101
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 100
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 102
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 103
    .local v1, ni:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private varargs remove([Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 537
    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->get()Ljava/util/Properties;

    move-result-object v1

    .line 538
    .local v1, props:Ljava/util/Properties;
    array-length v3, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    .line 540
    invoke-static {v1}, Lcom/hanyou/leyusdk/LEYUApplication;->setProps(Ljava/util/Properties;)V

    .line 541
    return-void

    .line 538
    :cond_0
    aget-object v0, p1, v2

    .line 539
    .local v0, k:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static saveLoginInfo(Lcom/hanyou/leyusdk/LEYUUser;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/hanyou/leyusdk/LEYUUser;->getUid()I

    move-result v0

    sput v0, Lcom/hanyou/leyusdk/LEYUApplication;->loginUid:I

    .line 265
    const/4 v0, 0x1

    sput-boolean v0, Lcom/hanyou/leyusdk/LEYUApplication;->login:Z

    .line 266
    const-string v0, "leyu_user"

    invoke-virtual {p0}, Lcom/hanyou/leyusdk/LEYUUser;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hanyou/leyusdk/LEYUApplication;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private static set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 531
    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->get()Ljava/util/Properties;

    move-result-object v0

    .line 532
    .local v0, props:Ljava/util/Properties;
    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 533
    invoke-static {v0}, Lcom/hanyou/leyusdk/LEYUApplication;->setProps(Ljava/util/Properties;)V

    .line 534
    return-void
.end method

.method private static set(Ljava/util/Properties;)V
    .locals 1
    .parameter "ps"

    .prologue
    .line 525
    invoke-static {}, Lcom/hanyou/leyusdk/LEYUApplication;->get()Ljava/util/Properties;

    move-result-object v0

    .line 526
    .local v0, props:Ljava/util/Properties;
    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 527
    invoke-static {v0}, Lcom/hanyou/leyusdk/LEYUApplication;->setProps(Ljava/util/Properties;)V

    .line 528
    return-void
.end method

.method private static setProps(Ljava/util/Properties;)V
    .locals 8
    .parameter "p"

    .prologue
    .line 466
    const/4 v3, 0x0

    .line 473
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_0
    sget-object v5, Lcom/hanyou/leyusdk/LEYUApplication;->mContext:Landroid/content/Context;

    const-string v6, "LEYUconfig"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    .line 477
    .local v1, dirConf:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    const-string v5, "LEYUconfig"

    invoke-direct {v0, v1, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 478
    .local v0, conf:Ljava/io/File;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 481
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 486
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 490
    .end local v0           #conf:Ljava/io/File;
    .end local v1           #dirConf:Ljava/io/File;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 482
    :catch_0
    move-exception v2

    .line 483
    .local v2, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 486
    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 487
    :catch_1
    move-exception v5

    goto :goto_0

    .line 484
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 486
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 489
    :goto_3
    throw v5

    .line 487
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #conf:Ljava/io/File;
    .restart local v1       #dirConf:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0           #conf:Ljava/io/File;
    .end local v1           #dirConf:Ljava/io/File;
    :catch_3
    move-exception v6

    goto :goto_3

    .line 484
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #conf:Ljava/io/File;
    .restart local v1       #dirConf:Ljava/io/File;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 482
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private toDoc(Ljava/lang/String;)Lcom/hanyou/leyusdk/Doc;
    .locals 7
    .parameter "fanhui"

    .prologue
    .line 507
    new-instance v3, Lcom/hanyou/leyusdk/Doc;

    invoke-direct {v3}, Lcom/hanyou/leyusdk/Doc;-><init>()V

    .line 509
    .local v3, map:Lcom/hanyou/leyusdk/Doc;
    :try_start_0
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, tits:[Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-le v5, v6, :cond_1

    .line 511
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v4

    if-lt v2, v5, :cond_0

    .line 521
    .end local v2           #i:I
    .end local v4           #tits:[Ljava/lang/String;
    :goto_1
    return-object v3

    .line 512
    .restart local v2       #i:I
    .restart local v4       #tits:[Ljava/lang/String;
    :cond_0
    aget-object v5, v4, v2

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 513
    .local v0, ddd:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/hanyou/leyusdk/Doc;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    .end local v0           #ddd:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_1
    const-string v5, "error_code"

    const-string v6, "1000"

    invoke-virtual {v3, v5, v6}, Lcom/hanyou/leyusdk/Doc;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 518
    .end local v4           #tits:[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 519
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static toInt(Ljava/lang/String;I)I
    .locals 1
    .parameter "str"
    .parameter "defValue"

    .prologue
    .line 233
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 236
    .end local p1
    :goto_0
    return p1

    .line 234
    .restart local p1
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public GetDeveloperAccessToken()V
    .locals 2

    .prologue
    .line 303
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/hanyou/leyusdk/LEYUApplication$3;

    invoke-direct {v1, p0}, Lcom/hanyou/leyusdk/LEYUApplication$3;-><init>(Lcom/hanyou/leyusdk/LEYUApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 320
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 321
    return-void
.end method

.method public LEYULoginview()V
    .locals 4

    .prologue
    .line 152
    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/hanyou/leyusdk/LEYUApplication;->mContext:Landroid/content/Context;

    const-class v3, Lcom/hanyou/leyusdk/HelloWebView;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 154
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "appid"

    sget-object v3, Lcom/hanyou/leyusdk/LEYUApplication;->_app_id:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v2, "accesstoken"

    sget-object v3, Lcom/hanyou/leyusdk/LEYUApplication;->dev_access_token:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 157
    sget-object v2, Lcom/hanyou/leyusdk/LEYUApplication;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0x15

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    return-void
.end method

.method public Logout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "leyu_user"

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Lcom/hanyou/leyusdk/LEYUApplication;->remove([Ljava/lang/String;)V

    .line 178
    sput-boolean v2, Lcom/hanyou/leyusdk/LEYUApplication;->login:Z

    .line 179
    sput v2, Lcom/hanyou/leyusdk/LEYUApplication;->loginUid:I

    .line 180
    return-void
.end method

.method public bloodglucose(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V
    .locals 10
    .parameter "deviceid"
    .parameter "uploadtime"
    .parameter "measuretime"
    .parameter "bloodglucosevalue"
    .parameter "timetype"

    .prologue
    .line 397
    const-string v9, "/action/devapi/uploaddata.jsp"

    .line 398
    new-instance v1, Lcom/hanyou/leyusdk/LEYUApplication$7;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/hanyou/leyusdk/LEYUApplication$7;-><init>(Lcom/hanyou/leyusdk/LEYUApplication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DI)V

    .line 397
    invoke-static {v9, v1}, Lcom/hanyou/leyusdk/LEYUApplication;->_MakeURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, newUrl:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/hanyou/leyusdk/LEYUApplication;->GetDate2(Ljava/lang/String;)V

    .line 411
    return-void
.end method

.method public bloodpressure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 12
    .parameter "deviceid"
    .parameter "uploadtime"
    .parameter "measuretime"
    .parameter "systolicpressure"
    .parameter "diastolicpressure"
    .parameter "pmean"
    .parameter "pulserate"
    .parameter "is_day"

    .prologue
    .line 374
    const-string v11, "/action/devapi/uploaddata.jsp"

    .line 375
    new-instance v0, Lcom/hanyou/leyusdk/LEYUApplication$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/hanyou/leyusdk/LEYUApplication$6;-><init>(Lcom/hanyou/leyusdk/LEYUApplication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    .line 374
    invoke-static {v11, v0}, Lcom/hanyou/leyusdk/LEYUApplication;->_MakeURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 390
    .local v10, newUrl:Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/hanyou/leyusdk/LEYUApplication;->GetDate2(Ljava/lang/String;)V

    .line 391
    return-void
.end method

.method public getLocalDevAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    sget-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->dev_access_token:Ljava/lang/String;

    invoke-static {v0}, Lcom/hanyou/leyusdk/LEYUApplication;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "leyu_dev_access_token"

    invoke-direct {p0, v0}, Lcom/hanyou/leyusdk/LEYUApplication;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->dev_access_token:Ljava/lang/String;

    .line 221
    :cond_0
    sget-object v0, Lcom/hanyou/leyusdk/LEYUApplication;->dev_access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginInfo()Lcom/hanyou/leyusdk/LEYUUser;
    .locals 4

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 204
    .local v1, lu:Lcom/hanyou/leyusdk/LEYUUser;
    :try_start_0
    const-string v3, "leyu_user"

    invoke-direct {p0, v3}, Lcom/hanyou/leyusdk/LEYUApplication;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 205
    .local v2, userInfo:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 206
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 207
    invoke-static {v2}, Lcom/hanyou/leyusdk/LEYUUser;->fromJSONString(Ljava/lang/String;)Lcom/hanyou/leyusdk/LEYUUser;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 214
    .end local v2           #userInfo:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLoginUid()I
    .locals 1

    .prologue
    .line 170
    sget v0, Lcom/hanyou/leyusdk/LEYUApplication;->loginUid:I

    return v0
.end method

.method public initLoginInfo()V
    .locals 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/hanyou/leyusdk/LEYUApplication;->getLoginInfo()Lcom/hanyou/leyusdk/LEYUUser;

    move-result-object v0

    .line 187
    .local v0, loginUser:Lcom/hanyou/leyusdk/LEYUUser;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/hanyou/leyusdk/LEYUUser;->getUid()I

    move-result v1

    if-lez v1, :cond_0

    .line 188
    const/4 v1, 0x1

    sput-boolean v1, Lcom/hanyou/leyusdk/LEYUApplication;->login:Z

    .line 189
    invoke-virtual {v0}, Lcom/hanyou/leyusdk/LEYUUser;->getUid()I

    move-result v1

    sput v1, Lcom/hanyou/leyusdk/LEYUApplication;->loginUid:I

    .line 190
    invoke-virtual {v0}, Lcom/hanyou/leyusdk/LEYUUser;->getaccess_token()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/hanyou/leyusdk/LEYUApplication;->access_token:Ljava/lang/String;

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0}, Lcom/hanyou/leyusdk/LEYUApplication;->Logout()V

    goto :goto_0
.end method

.method public isLogin()Z
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lcom/hanyou/leyusdk/LEYUApplication;->login:Z

    return v0
.end method

.method public passometer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDDLjava/lang/String;)V
    .locals 14
    .parameter "deviceid"
    .parameter "uploadtime"
    .parameter "measuretime"
    .parameter "movementsteps"
    .parameter "kcal"
    .parameter "mileage"
    .parameter "fat"
    .parameter "sport_type"

    .prologue
    .line 327
    const-string v13, "/action/devapi/uploaddata.jsp"

    .line 328
    new-instance v1, Lcom/hanyou/leyusdk/LEYUApplication$4;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-object/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/hanyou/leyusdk/LEYUApplication$4;-><init>(Lcom/hanyou/leyusdk/LEYUApplication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDDLjava/lang/String;)V

    .line 327
    invoke-static {v13, v1}, Lcom/hanyou/leyusdk/LEYUApplication;->_MakeURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, newUrl:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/hanyou/leyusdk/LEYUApplication;->GetDate2(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public physical(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 12
    .parameter "deviceid"
    .parameter "uploadtime"
    .parameter "measuretime"
    .parameter "height"
    .parameter "weight"
    .parameter "waistline"
    .parameter "hipline"
    .parameter "bustline"

    .prologue
    .line 417
    const-string v11, "/action/devapi/uploaddata.jsp"

    .line 418
    new-instance v0, Lcom/hanyou/leyusdk/LEYUApplication$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/hanyou/leyusdk/LEYUApplication$8;-><init>(Lcom/hanyou/leyusdk/LEYUApplication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIII)V

    .line 417
    invoke-static {v11, v0}, Lcom/hanyou/leyusdk/LEYUApplication;->_MakeURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v10

    .line 433
    .local v10, newUrl:Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/hanyou/leyusdk/LEYUApplication;->GetDate2(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method public sleep(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V
    .locals 12
    .parameter "deviceid"
    .parameter "uploadtime"
    .parameter "measuretime"
    .parameter "s_sleeptime"
    .parameter "e_sleeptime"
    .parameter "effectivesleep"
    .parameter "sleepquality"

    .prologue
    .line 351
    const-string v11, "/action/devapi/uploaddata.jsp"

    .line 352
    new-instance v1, Lcom/hanyou/leyusdk/LEYUApplication$5;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/hanyou/leyusdk/LEYUApplication$5;-><init>(Lcom/hanyou/leyusdk/LEYUApplication;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;)V

    .line 351
    invoke-static {v11, v1}, Lcom/hanyou/leyusdk/LEYUApplication;->_MakeURL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, newUrl:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/hanyou/leyusdk/LEYUApplication;->GetDate2(Ljava/lang/String;)V

    .line 367
    return-void
.end method
