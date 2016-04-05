.class public Lcom/mechat/mechatlibrary/MCClient;
.super Ljava/lang/Object;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/mechatlibrary/MCClient$MyHandler;,
        Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;
    }
.end annotation


# static fields
.field private static final AUTO_RESPONSE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "MeChatClient"

.field private static VersionName:Ljava/lang/String;

.field private static appkey:Ljava/lang/String;

.field private static context:Landroid/content/Context;

.field private static dbHelper:Lcom/mechat/mechatlibrary/dao/DBHelper;

.field private static volatile instance:Lcom/mechat/mechatlibrary/MCClient;

.field private static isHasLetUserOnlineSuc:Z

.field private static isInitSuc:Z

.field private static myHandler:Lcom/mechat/mechatlibrary/MCClient$MyHandler;

.field private static retryNum:I

.field private static spManager:Lcom/mechat/mechatlibrary/utils/SpManager;


# instance fields
.field private mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

.field private mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "1.1.0"

    sput-object v0, Lcom/mechat/mechatlibrary/MCClient;->VersionName:Ljava/lang/String;

    .line 60
    const/4 v0, 0x5

    sput v0, Lcom/mechat/mechatlibrary/MCClient;->retryNum:I

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mechat/mechatlibrary/MCClient;->isHasLetUserOnlineSuc:Z

    .line 72
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->init(Landroid/content/Context;)Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/MCClient;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    .line 76
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->init(Landroid/content/Context;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    .line 77
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/mechat/mechatlibrary/MCMessageManager;->init(Landroid/content/Context;)V

    .line 78
    new-instance v0, Lcom/mechat/mechatlibrary/MCClient$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mechat/mechatlibrary/MCClient$MyHandler;-><init>(Lcom/mechat/mechatlibrary/MCClient$MyHandler;)V

    sput-object v0, Lcom/mechat/mechatlibrary/MCClient;->myHandler:Lcom/mechat/mechatlibrary/MCClient$MyHandler;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 0
    .parameter

    .prologue
    .line 1312
    invoke-static {p0}, Lcom/mechat/mechatlibrary/MCClient;->saveAndSendNormalMsgBroadCoast(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    return-void
.end method

.method static synthetic access$1(Z)V
    .locals 0
    .parameter

    .prologue
    .line 71
    sput-boolean p0, Lcom/mechat/mechatlibrary/MCClient;->isInitSuc:Z

    return-void
.end method

.method static synthetic access$10(Lcom/mechat/mechatlibrary/MCClient;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    return-object v0
.end method

.method static synthetic access$11(Lcom/mechat/mechatlibrary/MCClient;Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 958
    invoke-direct {p0, p1, p2, p3}, Lcom/mechat/mechatlibrary/MCClient;->sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;)V

    return-void
.end method

.method static synthetic access$12()Lcom/mechat/mechatlibrary/MCClient$MyHandler;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->myHandler:Lcom/mechat/mechatlibrary/MCClient$MyHandler;

    return-object v0
.end method

.method static synthetic access$13(Lcom/mechat/mechatlibrary/MCClient;Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1250
    invoke-direct {p0, p1, p2, p3}, Lcom/mechat/mechatlibrary/MCClient;->sendLeaveMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;)V

    return-void
.end method

.method static synthetic access$2()Lcom/mechat/mechatlibrary/utils/SpManager;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    return-object v0
.end method

.method static synthetic access$3()Landroid/content/Context;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4()I
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/mechat/mechatlibrary/MCClient;->retryNum:I

    return v0
.end method

.method static synthetic access$5(I)V
    .locals 0
    .parameter

    .prologue
    .line 60
    sput p0, Lcom/mechat/mechatlibrary/MCClient;->retryNum:I

    return-void
.end method

.method static synthetic access$6()Lcom/mechat/mechatlibrary/dao/DBHelper;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->dbHelper:Lcom/mechat/mechatlibrary/dao/DBHelper;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mechat/mechatlibrary/MCClient;Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;Lcom/mechat/mechatlibrary/MCOnlineConfig;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 424
    invoke-direct {p0, p1, p2}, Lcom/mechat/mechatlibrary/MCClient;->requestOnline(Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;Lcom/mechat/mechatlibrary/MCOnlineConfig;)V

    return-void
.end method

.method static synthetic access$8(Z)V
    .locals 0
    .parameter

    .prologue
    .line 70
    sput-boolean p0, Lcom/mechat/mechatlibrary/MCClient;->isHasLetUserOnlineSuc:Z

    return-void
.end method

.method static synthetic access$9(Lcom/mechat/mechatlibrary/MCClient;)Lcom/mechat/mechatlibrary/dao/MCEventDBManger;
    .locals 1
    .parameter

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MCClient;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    return-object v0
.end method

.method private getEventFromNet(Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;)V
    .locals 6
    .parameter "onGetEventCallback"

    .prologue
    .line 602
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getInstance()Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v3

    iput-object v3, p0, Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    .line 604
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 605
    .local v2, source:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "mobileid"

    sget-object v4, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v3, "unitid"

    sget-object v4, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v3, "length"

    const-string v4, "2147483647"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 610
    .local v0, eventList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCEvent;>;"
    new-instance v1, Lcom/mechat/loopj/android/http/RequestParams;

    invoke-direct {v1, v2}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 611
    .local v1, params:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v3, "https://chat.meiqia.com/"

    const-string v4, "mobile/getEvents"

    new-instance v5, Lcom/mechat/mechatlibrary/MCClient$6;

    invoke-direct {v5, p0, v0, p1}, Lcom/mechat/mechatlibrary/MCClient$6;-><init>(Lcom/mechat/mechatlibrary/MCClient;Ljava/util/List;Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;)V

    invoke-static {v3, v4, v1, v5}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->get(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 675
    return-void
.end method

.method public static getInstance()Lcom/mechat/mechatlibrary/MCClient;
    .locals 2

    .prologue
    .line 87
    sget-boolean v0, Lcom/mechat/mechatlibrary/MCClient;->isInitSuc:Z

    if-nez v0, :cond_0

    .line 88
    const-string v0, "MeChatClient"

    const-string v1, "MCClient.getInstance() initialize SDK not success, please check the initialization"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "MeChatClient"

    const-string v1, "MCClient.getInstance() initialize SDK not success, please check the initialization"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_0
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->instance:Lcom/mechat/mechatlibrary/MCClient;

    if-nez v0, :cond_2

    .line 93
    const-class v1, Lcom/mechat/mechatlibrary/MCClient;

    monitor-enter v1

    .line 94
    :try_start_0
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->instance:Lcom/mechat/mechatlibrary/MCClient;

    if-nez v0, :cond_1

    .line 95
    new-instance v0, Lcom/mechat/mechatlibrary/MCClient;

    invoke-direct {v0}, Lcom/mechat/mechatlibrary/MCClient;-><init>()V

    sput-object v0, Lcom/mechat/mechatlibrary/MCClient;->instance:Lcom/mechat/mechatlibrary/MCClient;

    .line 93
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_2
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->instance:Lcom/mechat/mechatlibrary/MCClient;

    return-object v0

    .line 93
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getMessageFromNet(Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;)V
    .locals 6
    .parameter "onGetMessagesCallback"

    .prologue
    .line 752
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getInstance()Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v3

    iput-object v3, p0, Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    .line 754
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 755
    .local v2, source:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "cookie"

    sget-object v4, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    const-string v3, "unitid"

    sget-object v4, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    const-string v3, "length"

    const-string v4, "2147483647"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v0, chatMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    new-instance v1, Lcom/mechat/loopj/android/http/RequestParams;

    invoke-direct {v1, v2}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 761
    .local v1, params:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v3, "https://chat.meiqia.com/"

    const-string v4, "mobile/getMsgs"

    new-instance v5, Lcom/mechat/mechatlibrary/MCClient$7;

    invoke-direct {v5, p0, v0, p1}, Lcom/mechat/mechatlibrary/MCClient$7;-><init>(Lcom/mechat/mechatlibrary/MCClient;Ljava/util/List;Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;)V

    invoke-static {v3, v4, v1, v5}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 827
    return-void
.end method

.method private static getUniqueueCookie()Ljava/lang/String;
    .locals 6

    .prologue
    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "006600"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x40f5f8f000000000L

    mul-double/2addr v2, v4

    const-wide v4, 0x40c3880000000000L

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getUnitid(Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;)V
    .locals 7
    .parameter "appKey"
    .parameter "onInitCallback"

    .prologue
    .line 131
    if-nez p1, :cond_0

    .line 238
    :goto_0
    return-void

    .line 135
    :cond_0
    const-string v4, "MeChatClient"

    const-string v5, "getUnitid"

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 137
    .local v2, source:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, p0

    .line 138
    .local v3, value:Ljava/lang/String;
    sget-object v4, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->getInnerName()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, innerName:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 140
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 142
    :cond_1
    const-string v4, "MeChatClient"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "value = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v4, "appkey"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v1, Lcom/mechat/loopj/android/http/RequestParams;

    invoke-direct {v1, v2}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 145
    .local v1, params:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v4, "https://android.meiqia.com/"

    const-string v5, "sdk/getunitid/"

    new-instance v6, Lcom/mechat/mechatlibrary/MCClient$1;

    invoke-direct {v6, p0, p1}, Lcom/mechat/mechatlibrary/MCClient$1;-><init>(Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;)V

    invoke-static {v4, v5, v1, v6}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->get(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    goto :goto_0
.end method

.method private static getUserAgentString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 113
    new-instance v2, Landroid/webkit/WebView;

    sget-object v3, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v2, webview:Landroid/webkit/WebView;
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/webkit/WebView;->layout(IIII)V

    .line 115
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 116
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, ua:Ljava/lang/String;
    return-object v1
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->VersionName:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;)V
    .locals 9
    .parameter "context"
    .parameter "appKey"
    .parameter "onInitCallback"

    .prologue
    const/4 v8, 0x0

    .line 252
    const-string v6, "MeChatClient"

    const-string v7, "init"

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sput-object v6, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    .line 254
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getUserAgentString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->setUserAgent(Ljava/lang/String;)V

    .line 255
    sput-object p1, Lcom/mechat/mechatlibrary/MCClient;->appkey:Ljava/lang/String;

    .line 256
    sget-object v6, Lcom/mechat/mechatlibrary/MCClient;->dbHelper:Lcom/mechat/mechatlibrary/dao/DBHelper;

    if-nez v6, :cond_0

    .line 257
    new-instance v6, Lcom/mechat/mechatlibrary/dao/DBHelper;

    invoke-direct {v6, p0}, Lcom/mechat/mechatlibrary/dao/DBHelper;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/mechat/mechatlibrary/MCClient;->dbHelper:Lcom/mechat/mechatlibrary/dao/DBHelper;

    .line 259
    :cond_0
    sget-object v6, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    if-nez v6, :cond_1

    .line 260
    new-instance v6, Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-direct {v6, p0}, Lcom/mechat/mechatlibrary/utils/SpManager;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    .line 264
    :cond_1
    sget-object v6, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->getAppKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 265
    sget-object v6, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6, p1}, Lcom/mechat/mechatlibrary/utils/SpManager;->setAppKey(Ljava/lang/String;)V

    .line 269
    :cond_2
    if-eqz p1, :cond_3

    .line 270
    sget-object v6, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->getAppKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 271
    sget-object v6, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6, v8}, Lcom/mechat/mechatlibrary/utils/SpManager;->setUnitid(Ljava/lang/String;)V

    .line 272
    const-string v6, "MeChatClient"

    const-string v7, "change unitid"

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_3
    sget-object v6, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, cookie:Ljava/lang/String;
    if-nez v0, :cond_4

    .line 279
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getUniqueueCookie()Ljava/lang/String;

    move-result-object v0

    .line 280
    sget-object v6, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6, v0}, Lcom/mechat/mechatlibrary/utils/SpManager;->setCookie(Ljava/lang/String;)V

    .line 284
    :cond_4
    sget-object v6, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->getInnerName()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, innerName:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 286
    sget-object v6, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6, v1}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitIdByInnerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 287
    .local v4, unitid:Ljava/lang/String;
    sget-object v6, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6, v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->setUnitid(Ljava/lang/String;)V

    .line 290
    .end local v4           #unitid:Ljava/lang/String;
    :cond_5
    sget-object v6, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    .line 291
    invoke-static {p1, p2}, Lcom/mechat/mechatlibrary/MCClient;->getUnitid(Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;)V

    .line 342
    :cond_6
    :goto_0
    invoke-static {p0}, Lcom/mechat/mechatlibrary/MCMessageManager;->init(Landroid/content/Context;)V

    .line 344
    return-void

    .line 294
    :cond_7
    sget-boolean v6, Lcom/mechat/mechatlibrary/MCClient;->isInitSuc:Z

    if-nez v6, :cond_9

    .line 296
    sget-object v6, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v6}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-static {p0, v0, v6, v8, v7}, Lcom/mechat/mechatlibrary/utils/Utils;->visitUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;Lcom/mechat/mechatlibrary/utils/SpManager;)V

    .line 298
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v3, source:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v5, p1

    .line 300
    .local v5, value:Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 301
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 303
    :cond_8
    const-string v6, "appkey"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v2, Lcom/mechat/loopj/android/http/RequestParams;

    invoke-direct {v2, v3}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 305
    .local v2, params:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v6, "https://android.meiqia.com/"

    const-string v7, "sdk/getunitid/"

    new-instance v8, Lcom/mechat/mechatlibrary/MCClient$2;

    invoke-direct {v8, p1, p0}, Lcom/mechat/mechatlibrary/MCClient$2;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {v6, v7, v2, v8}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->get(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 334
    .end local v2           #params:Lcom/mechat/loopj/android/http/RequestParams;
    .end local v3           #source:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #value:Ljava/lang/String;
    :cond_9
    const-string v6, "MeChatClient"

    const-string v7, "isInitSuc"

    invoke-static {v6, v7}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const/4 v6, 0x1

    sput-boolean v6, Lcom/mechat/mechatlibrary/MCClient;->isInitSuc:Z

    .line 337
    if-eqz p2, :cond_6

    .line 338
    const-string v6, "initialize SDK success"

    invoke-interface {p2, v6}, Lcom/mechat/mechatlibrary/callback/OnInitCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOnline(Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;Lcom/mechat/mechatlibrary/MCOnlineConfig;)V
    .locals 6
    .parameter "userOnlineCallback"
    .parameter "onlineConfig"

    .prologue
    .line 425
    const/4 v2, 0x0

    .line 426
    .local v2, requestParams:Lcom/mechat/loopj/android/http/RequestParams;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 427
    .local v1, paramMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "unitid"

    sget-object v4, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    const-string v3, "MeChatClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "spManager.getUnitid() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v3, "cookie"

    sget-object v4, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v4}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v3, "appkey"

    sget-object v4, Lcom/mechat/mechatlibrary/MCClient;->appkey:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v3, "appUser"

    const-string v4, "true"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    if-eqz p2, :cond_0

    .line 433
    invoke-virtual {p2}, Lcom/mechat/mechatlibrary/MCOnlineConfig;->getConfig()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 434
    invoke-virtual {p2}, Lcom/mechat/mechatlibrary/MCOnlineConfig;->getExtraParams()Ljava/util/Map;

    move-result-object v3

    invoke-static {v3}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->mapToJsonStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 435
    .local v0, json:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 436
    const-string v3, "extraParams"

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    .end local v0           #json:Ljava/lang/String;
    :cond_0
    new-instance v2, Lcom/mechat/loopj/android/http/RequestParams;

    .end local v2           #requestParams:Lcom/mechat/loopj/android/http/RequestParams;
    invoke-direct {v2, v1}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 440
    .restart local v2       #requestParams:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v3, "MeChatClient"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "requestOnline() = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v3, "https://chat.meiqia.com/"

    const-string v4, "mobile/online"

    new-instance v5, Lcom/mechat/mechatlibrary/MCClient$4;

    invoke-direct {v5, p0, p1}, Lcom/mechat/mechatlibrary/MCClient$4;-><init>(Lcom/mechat/mechatlibrary/MCClient;Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;)V

    invoke-static {v3, v4, v2, v5}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 521
    return-void
.end method

.method private static saveAndSendNormalMsgBroadCoast(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 3
    .parameter "chatMessage"

    .prologue
    .line 1314
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getInstance()Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->saveMCMessageForNoExist(Lcom/mechat/mechatlibrary/bean/MCMessage;)J

    .line 1317
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/mechat/mechatlibrary/MCMessageManager;->addMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 1318
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/MCMessageManager;->getNewMessageReceivedAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1319
    .local v0, newMessage:Landroid/content/Intent;
    const-string v1, "msgId"

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1320
    sget-object v1, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1321
    return-void
.end method

.method private sendLeaveMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;)V
    .locals 4
    .parameter "leaveMessage"
    .parameter
    .parameter "onLeaveMessageCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1251
    .local p2, source:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/mechat/loopj/android/http/RequestParams;

    invoke-direct {v0, p2}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 1252
    .local v0, params:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v1, "https://android.meiqia.com/"

    const-string v2, "unit/createleavemsg/"

    new-instance v3, Lcom/mechat/mechatlibrary/MCClient$13;

    invoke-direct {v3, p0, p3, p1}, Lcom/mechat/mechatlibrary/MCClient$13;-><init>(Lcom/mechat/mechatlibrary/MCClient;Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    invoke-static {v1, v2, v0, v3}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1285
    return-void
.end method

.method private sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;)V
    .locals 4
    .parameter "message"
    .parameter
    .parameter "onMessageSendStateCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 959
    .local p2, source:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/mechat/loopj/android/http/RequestParams;

    invoke-direct {v0, p2}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 960
    .local v0, params:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v1, "MeChatClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendMCMessage source = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v1, "https://chat.meiqia.com/"

    const-string v2, "mobile/sendMsg"

    new-instance v3, Lcom/mechat/mechatlibrary/MCClient$9;

    invoke-direct {v3, p0, p1, p3}, Lcom/mechat/mechatlibrary/MCClient$9;-><init>(Lcom/mechat/mechatlibrary/MCClient;Lcom/mechat/mechatlibrary/bean/MCMessage;Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;)V

    invoke-static {v1, v2, v0, v3}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1048
    return-void
.end method

.method private uploadFile(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/util/Map;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V
    .locals 4
    .parameter "message"
    .parameter
    .parameter "onUploadFinishListener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mechat/mechatlibrary/bean/MCMessage;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, source:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 938
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 939
    :cond_0
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v1

    if-ne v1, v2, :cond_2

    const-string v0, "image"

    .line 940
    .local v0, type:Ljava/lang/String;
    :goto_0
    const-string v1, "type"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 941
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v1

    if-ne v1, v2, :cond_3

    move-object v1, p1

    .line 942
    check-cast v1, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3

    .line 943
    check-cast p1, Lcom/mechat/mechatlibrary/bean/MCImageMessage;

    .end local p1
    invoke-direct {p0, p1, p3}, Lcom/mechat/mechatlibrary/MCClient;->uploadImageFile(Lcom/mechat/mechatlibrary/bean/MCImageMessage;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V

    .line 956
    .end local v0           #type:Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 939
    .restart local p1
    :cond_2
    const-string v0, "voice"

    goto :goto_0

    .line 947
    .restart local v0       #type:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v1

    if-ne v1, v3, :cond_1

    move-object v1, p1

    .line 948
    check-cast v1, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getVoiceUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 949
    check-cast p1, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    .end local p1
    invoke-direct {p0, p1, p3}, Lcom/mechat/mechatlibrary/MCClient;->uploadVoiceFile(Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V

    goto :goto_1

    .line 954
    .end local v0           #type:Ljava/lang/String;
    .restart local p1
    :cond_4
    const/4 v1, 0x0

    invoke-interface {p3, v1}, Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;->onSuccess(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private uploadImageFile(Lcom/mechat/mechatlibrary/bean/MCImageMessage;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V
    .locals 5
    .parameter "message"
    .parameter "onUploadFinishListener"

    .prologue
    .line 1052
    const-string v2, "MeChatClient"

    const-string v3, " requestTokenAndUploadImage"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCImageMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mechat/mechatlibrary/utils/Utils;->decodeImageFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1054
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 1055
    const-string v2, "image file is null"

    invoke-interface {p2, v2}, Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;->onFailure(Ljava/lang/String;)V

    .line 1058
    :cond_0
    new-instance v1, Lcom/mechat/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/mechat/loopj/android/http/RequestParams;-><init>()V

    .line 1059
    .local v1, params:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v2, "unitid"

    sget-object v3, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mechat/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    const-string v2, "https://chat.meiqia.com/qiniu/image/uptoken/"

    const-string v3, ""

    new-instance v4, Lcom/mechat/mechatlibrary/MCClient$10;

    invoke-direct {v4, p0, v0, p2}, Lcom/mechat/mechatlibrary/MCClient$10;-><init>(Lcom/mechat/mechatlibrary/MCClient;Landroid/graphics/Bitmap;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V

    invoke-static {v2, v3, v1, v4}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->get(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 1116
    return-void
.end method

.method private uploadVoiceFile(Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V
    .locals 8
    .parameter "message"
    .parameter "onUploadFinishListener"

    .prologue
    .line 1119
    invoke-static {p1}, Lcom/mechat/mechatlibrary/utils/Utils;->isVoiceFileAvailable(Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;)Z

    move-result v6

    .line 1120
    .local v6, isVoiceFileAvailable:Z
    const-string v0, "MeChatClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "uploadVoiceFile file path = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "           isVoiceFileAvailable = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    if-nez v6, :cond_0

    .line 1122
    const-string v0, "failure"

    invoke-virtual {p1, v0}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->setStatus(Ljava/lang/String;)V

    .line 1123
    const-string v0, "voice file path is not available"

    invoke-interface {p2, v0}, Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;->onFailure(Ljava/lang/String;)V

    .line 1195
    :goto_0
    return-void

    .line 1126
    :cond_0
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mechat/mechatlibrary/utils/Utils;->getFileBytes(Ljava/lang/String;)[B

    move-result-object v7

    .line 1127
    .local v7, uoloadFileByte:[B
    new-instance v2, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v2, v7}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    .line 1128
    .local v2, entity:Lorg/apache/http/HttpEntity;
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "https://voiceupload.meiqia.com/upload/"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v3, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "?unitid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "application/octet-stream"

    .line 1129
    new-instance v4, Lcom/mechat/mechatlibrary/MCClient$11;

    invoke-direct {v4, p0, v7, p1, p2}, Lcom/mechat/mechatlibrary/MCClient$11;-><init>(Lcom/mechat/mechatlibrary/MCClient;[BLcom/mechat/mechatlibrary/bean/MCVoiceMessage;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V

    .line 1194
    invoke-static {}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->getVoiceUploadHeaders()[Lorg/apache/http/Header;

    move-result-object v5

    .line 1128
    invoke-static/range {v0 .. v5}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;[Lorg/apache/http/Header;)V

    goto :goto_0
.end method


# virtual methods
.method public getEvents(Ljava/lang/String;ILcom/mechat/mechatlibrary/callback/OnGetEventsCallback;)V
    .locals 3
    .parameter "id"
    .parameter "length"
    .parameter "onGetEventsCallback"

    .prologue
    .line 691
    sget-boolean v1, Lcom/mechat/mechatlibrary/MCClient;->isInitSuc:Z

    if-nez v1, :cond_0

    .line 692
    const-string v1, "MeChatClient"

    const-string v2, "getEvents initialize SDK not success, please check the initialization"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    const-string v1, "initialize SDK not success, please check the initialization"

    invoke-interface {p3, v1}, Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;->onFailure(Ljava/lang/String;)V

    .line 694
    const-string v1, "MeChatClient"

    const-string v2, "getEvents() initialize SDK not success, please check the initialization"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    :goto_0
    return-void

    .line 707
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getInstance()Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    move-result-object v1

    iput-object v1, p0, Lcom/mechat/mechatlibrary/MCClient;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    .line 708
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    invoke-virtual {v1, p1, p2}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getMCEvents(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;->onSuccess(Ljava/util/List;)V

    .line 709
    const-string v1, "MeChatClient"

    const-string v2, "getEvents suc"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    move-exception v0

    .line 711
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "unknow"

    invoke-interface {p3, v1}, Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;->onFailure(Ljava/lang/String;)V

    .line 712
    const-string v1, "MeChatClient"

    const-string v2, "getEvents db failed catch exception"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getMCMessages(Ljava/lang/String;ILcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;)V
    .locals 4
    .parameter "id"
    .parameter "length"
    .parameter "onGetMessagesCallback"

    .prologue
    .line 843
    sget-boolean v2, Lcom/mechat/mechatlibrary/MCClient;->isInitSuc:Z

    if-nez v2, :cond_0

    .line 844
    const-string v2, "initialize SDK not success, please check the initialization"

    invoke-interface {p3, v2}, Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;->onFailure(Ljava/lang/String;)V

    .line 845
    const-string v2, "MeChatClient"

    const-string v3, "getMCMessages initialize SDK not success, please check the initialization"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v2, "MeChatClient"

    const-string v3, "getMCMessages() initialize SDK not success, please check the initialization"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    :goto_0
    return-void

    .line 859
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getInstance()Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    .line 860
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    invoke-virtual {v2, p1, p2}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getMessageList(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 861
    .local v1, messageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    invoke-interface {p3, v1}, Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;->onSuccess(Ljava/util/List;)V

    .line 862
    const-string v2, "MeChatClient"

    const-string v3, "getMCMessages suc"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 863
    .end local v1           #messageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    :catch_0
    move-exception v0

    .line 864
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "unknow"

    invoke-interface {p3, v2}, Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;->onFailure(Ljava/lang/String;)V

    .line 865
    const-string v2, "MeChatClient"

    const-string v3, "getMCMessages db failed catch exception"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRecentEvents(ILcom/mechat/mechatlibrary/callback/OnGetEventsCallback;)V
    .locals 4
    .parameter "length"
    .parameter "onGetEventsCallback"

    .prologue
    .line 574
    sget-boolean v2, Lcom/mechat/mechatlibrary/MCClient;->isInitSuc:Z

    if-nez v2, :cond_0

    .line 575
    const-string v2, "MeChatClient"

    const-string v3, "getRecentEvents initialize SDK not success, please check the initialization"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v2, "initialize SDK not success, please check the initialization"

    invoke-interface {p2, v2}, Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;->onFailure(Ljava/lang/String;)V

    .line 577
    const-string v2, "MeChatClient"

    const-string v3, "getRecentEvents() initialize SDK not success, please check the initialization"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getInstance()Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getRecentMCEvents(I)Ljava/util/List;

    move-result-object v1

    .line 583
    .local v1, mcEventList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCEvent;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 585
    invoke-direct {p0, p2}, Lcom/mechat/mechatlibrary/MCClient;->getEventFromNet(Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;)V

    goto :goto_0

    .line 590
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getInstance()Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    move-result-object v2

    iput-object v2, p0, Lcom/mechat/mechatlibrary/MCClient;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    .line 591
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    invoke-virtual {v2, p1}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getRecentMCEvents(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;->onSuccess(Ljava/util/List;)V

    .line 592
    const-string v2, "MeChatClient"

    const-string v3, "getRecentEvents suc"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "unknow"

    invoke-interface {p2, v2}, Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;->onFailure(Ljava/lang/String;)V

    .line 595
    const-string v2, "MeChatClient"

    const-string v3, "getRecentEvents db failed catch exception"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getRecentMessages(ILcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;)V
    .locals 4
    .parameter "length"
    .parameter "onGetMessagesCallback"

    .prologue
    .line 728
    sget-boolean v2, Lcom/mechat/mechatlibrary/MCClient;->isInitSuc:Z

    if-nez v2, :cond_0

    .line 729
    const-string v2, "MeChatClient"

    const-string v3, "getRecentMessages initialize SDK not success, please check the initialization"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    const-string v2, "initialize SDK not success, please check the initialization"

    invoke-interface {p2, v2}, Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;->onFailure(Ljava/lang/String;)V

    .line 731
    const-string v2, "MeChatClient"

    const-string v3, "getRecentMessages() initialize SDK not success, please check the initialization"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :goto_0
    return-void

    .line 735
    :cond_0
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getInstance()Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getRecentMCMessages(I)Ljava/util/List;

    move-result-object v1

    .line 737
    .local v1, welcomeMCMessageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 739
    invoke-direct {p0, p2}, Lcom/mechat/mechatlibrary/MCClient;->getMessageFromNet(Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;)V

    goto :goto_0

    .line 743
    :cond_1
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getInstance()Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    .line 744
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    invoke-virtual {v2, p1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getRecentMCMessages(I)Ljava/util/List;

    move-result-object v0

    .line 745
    .local v0, messageList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/mechatlibrary/bean/MCMessage;>;"
    invoke-interface {p2, v0}, Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;->onSuccess(Ljava/util/List;)V

    .line 746
    const-string v2, "MeChatClient"

    const-string v3, "getRecentMessages suc"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public letUserOffline()V
    .locals 7

    .prologue
    .line 533
    const-string v4, "MeChatClient"

    const-string v5, "letUserOffline"

    invoke-static {v4, v5}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    new-instance v1, Landroid/content/Intent;

    sget-object v4, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    const-class v5, Lcom/mechat/mechatlibrary/MechatService;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 537
    .local v1, mechatService:Landroid/content/Intent;
    sget-object v4, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 539
    sget-object v4, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 540
    .local v0, deviceToken:Ljava/lang/String;
    const/4 v3, 0x0

    .line 541
    .local v3, requestParams:Lcom/mechat/loopj/android/http/RequestParams;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 542
    .local v2, paramMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "unitid"

    sget-object v5, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    const-string v4, "appuid"

    sget-object v5, Lcom/mechat/mechatlibrary/MCClient;->appkey:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v4, "appkey"

    sget-object v5, Lcom/mechat/mechatlibrary/MCClient;->appkey:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 545
    const-string v4, "cookie"

    sget-object v5, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v5}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    const-string v4, "deviceToken"

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v4, "deviceType"

    const-string v5, "android"

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    new-instance v3, Lcom/mechat/loopj/android/http/RequestParams;

    .end local v3           #requestParams:Lcom/mechat/loopj/android/http/RequestParams;
    invoke-direct {v3, v2}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 549
    .restart local v3       #requestParams:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v4, "https://chat.meiqia.com/"

    const-string v5, "mobile/keeponline"

    new-instance v6, Lcom/mechat/mechatlibrary/MCClient$5;

    invoke-direct {v6, p0}, Lcom/mechat/mechatlibrary/MCClient$5;-><init>(Lcom/mechat/mechatlibrary/MCClient;)V

    invoke-static {v4, v5, v3, v6}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 559
    return-void
.end method

.method public letUserOnline(Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;Lcom/mechat/mechatlibrary/MCOnlineConfig;)V
    .locals 5
    .parameter "userOnlineCallback"
    .parameter "onlineConfig"

    .prologue
    .line 394
    sget-boolean v0, Lcom/mechat/mechatlibrary/MCClient;->isInitSuc:Z

    if-nez v0, :cond_0

    .line 395
    const-string v0, "initialize SDK not success, please check the initialization"

    invoke-interface {p1, v0}, Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;->onFailure(Ljava/lang/String;)V

    .line 396
    const-string v0, "MeChatClient"

    const-string v1, "letUserOnline() initialize SDK not success, please check the initialization"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getInstance()Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    move-result-object v0

    iput-object v0, p0, Lcom/mechat/mechatlibrary/MCClient;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    .line 403
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    sget-object v1, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/utils/SpManager;->isHasVisit(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    sget-object v1, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mechat/mechatlibrary/MCClient$3;

    invoke-direct {v3, p0, p1, p2}, Lcom/mechat/mechatlibrary/MCClient$3;-><init>(Lcom/mechat/mechatlibrary/MCClient;Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;Lcom/mechat/mechatlibrary/MCOnlineConfig;)V

    .line 417
    sget-object v4, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    .line 404
    invoke-static {v0, v1, v2, v3, v4}, Lcom/mechat/mechatlibrary/utils/Utils;->visitUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;Lcom/mechat/mechatlibrary/utils/SpManager;)V

    goto :goto_0

    .line 419
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mechat/mechatlibrary/MCClient;->requestOnline(Lcom/mechat/mechatlibrary/callback/UserOnlineCallback;Lcom/mechat/mechatlibrary/MCOnlineConfig;)V

    goto :goto_0
.end method

.method protected removeAutoResponse()V
    .locals 2

    .prologue
    .line 1324
    sget-object v0, Lcom/mechat/mechatlibrary/MCClient;->myHandler:Lcom/mechat/mechatlibrary/MCClient$MyHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mechat/mechatlibrary/MCClient$MyHandler;->removeMessages(I)V

    .line 1325
    return-void
.end method

.method public sendLeaveMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;)V
    .locals 6
    .parameter "message"
    .parameter "onLeaveMessageCallback"

    .prologue
    .line 1208
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setId(Ljava/lang/String;)V

    .line 1211
    :cond_0
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getInstance()Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->saveMCMessageForNoExist(Lcom/mechat/mechatlibrary/bean/MCMessage;)J

    .line 1213
    sget-boolean v2, Lcom/mechat/mechatlibrary/MCClient;->isInitSuc:Z

    if-nez v2, :cond_1

    .line 1214
    const-string v2, "failure"

    invoke-virtual {p1, v2}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 1215
    const-string v2, "initialize SDK not success, please check the initialization"

    invoke-interface {p2, p1, v2}, Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;->onFailure(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V

    .line 1216
    const-string v2, "MeChatClient"

    const-string v3, "sendLeaveMessage initialize SDK not success, please check the initialization"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const-string v2, "MeChatClient"

    const-string v3, "sendLeaveMessage() initialize SDK not success, please check the initialization"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :goto_0
    return-void

    .line 1221
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1222
    .local v1, source:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "unitid"

    sget-object v3, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    const-string v2, "content"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    const-string v2, "referer"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const-string v2, "cookie"

    sget-object v3, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    const-string v2, "contact"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "app:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/mechat/mechatlibrary/utils/Utils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 1229
    :cond_2
    new-instance v0, Lcom/mechat/mechatlibrary/MCClient$12;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/mechat/mechatlibrary/MCClient$12;-><init>(Lcom/mechat/mechatlibrary/MCClient;Ljava/util/Map;Lcom/mechat/mechatlibrary/bean/MCMessage;Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;)V

    .line 1243
    .local v0, onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;
    invoke-direct {p0, p1, v1, v0}, Lcom/mechat/mechatlibrary/MCClient;->uploadFile(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/util/Map;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V

    goto :goto_0

    .line 1247
    .end local v0           #onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;
    :cond_3
    invoke-direct {p0, p1, v1, p2}, Lcom/mechat/mechatlibrary/MCClient;->sendLeaveMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/OnLeaveMessageCallback;)V

    goto :goto_0
.end method

.method public sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;)V
    .locals 6
    .parameter "message"
    .parameter "onMessageSendStateCallback"

    .prologue
    .line 881
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 882
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setId(Ljava/lang/String;)V

    .line 885
    :cond_0
    invoke-static {}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->getInstance()Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v2

    iput-object v2, p0, Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    .line 886
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    invoke-virtual {v2, p1}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->saveMCMessageForNoExist(Lcom/mechat/mechatlibrary/bean/MCMessage;)J

    .line 887
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sec save id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    sget-boolean v2, Lcom/mechat/mechatlibrary/MCClient;->isInitSuc:Z

    if-nez v2, :cond_1

    .line 890
    const-string v2, "failure"

    invoke-virtual {p1, v2}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 891
    const-string v2, "initialize SDK not success, please check the initialization"

    invoke-interface {p2, p1, v2}, Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;->onFailure(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V

    .line 892
    const-string v2, "MeChatClient"

    const-string v3, "sendMCMessage initialize SDK not success, please check the initialization"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    const-string v2, "MeChatClient"

    const-string v3, "sendMCMessage() initialize SDK not success, please check the initialization"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 935
    :goto_0
    return-void

    .line 898
    :cond_1
    sget-boolean v2, Lcom/mechat/mechatlibrary/MCClient;->isHasLetUserOnlineSuc:Z

    if-nez v2, :cond_2

    .line 899
    const-string v2, "failure"

    invoke-virtual {p1, v2}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 900
    const-string v2, "before use this methond, must use MCClient.getInstance().leftUserOnline() first"

    invoke-interface {p2, p1, v2}, Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;->onFailure(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/lang/String;)V

    .line 901
    const-string v2, "MeChatClient"

    const-string v3, "sendMCMessage before use this methond, must use MCClient.getInstance().leftUserOnline() first"

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 906
    :cond_2
    sget-object v2, Lcom/mechat/mechatlibrary/MCClient;->myHandler:Lcom/mechat/mechatlibrary/MCClient$MyHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/mechat/mechatlibrary/MCClient$MyHandler;->removeMessages(I)V

    .line 909
    const-string v2, "sending"

    invoke-virtual {p1, v2}, Lcom/mechat/mechatlibrary/bean/MCMessage;->setStatus(Ljava/lang/String;)V

    .line 911
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 912
    .local v1, source:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "usid"

    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string v2, "cookie"

    sget-object v3, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    const-string v2, "unitid"

    sget-object v3, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    const-string v2, "content"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 917
    :cond_3
    new-instance v0, Lcom/mechat/mechatlibrary/MCClient$8;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/mechat/mechatlibrary/MCClient$8;-><init>(Lcom/mechat/mechatlibrary/MCClient;Ljava/util/Map;Lcom/mechat/mechatlibrary/bean/MCMessage;Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;)V

    .line 931
    .local v0, onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;
    invoke-direct {p0, p1, v1, v0}, Lcom/mechat/mechatlibrary/MCClient;->uploadFile(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/util/Map;Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;)V

    goto :goto_0

    .line 934
    .end local v0           #onUploadFinishListener:Lcom/mechat/mechatlibrary/MCClient$OnUploadFinishListener;
    :cond_4
    invoke-direct {p0, p1, v1, p2}, Lcom/mechat/mechatlibrary/MCClient;->sendMCMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;Ljava/util/Map;Lcom/mechat/mechatlibrary/callback/OnMessageSendStateCallback;)V

    goto :goto_0
.end method

.method public setPlatformInnerName(Ljava/lang/String;)V
    .locals 3
    .parameter "innerName"

    .prologue
    .line 353
    sget-boolean v1, Lcom/mechat/mechatlibrary/MCClient;->isInitSuc:Z

    if-nez v1, :cond_0

    .line 354
    const-string v1, "MeChatClient"

    const-string v2, "setPlatformInnerName() initialize SDK not success, please check the initialization"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_0
    return-void

    .line 357
    :cond_0
    sget-object v1, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v1, p1}, Lcom/mechat/mechatlibrary/utils/SpManager;->setInnerName(Ljava/lang/String;)V

    .line 358
    sget-object v1, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v1, p1}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitIdByInnerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, unitid:Ljava/lang/String;
    sget-object v1, Lcom/mechat/mechatlibrary/MCClient;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v1, v0}, Lcom/mechat/mechatlibrary/utils/SpManager;->setUnitid(Ljava/lang/String;)V

    .line 360
    sget-object v1, Lcom/mechat/mechatlibrary/MCClient;->dbHelper:Lcom/mechat/mechatlibrary/dao/DBHelper;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCMessageTable()V

    .line 361
    sget-object v1, Lcom/mechat/mechatlibrary/MCClient;->dbHelper:Lcom/mechat/mechatlibrary/dao/DBHelper;

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/dao/DBHelper;->createMCEventTable()V

    goto :goto_0
.end method

.method public startMCConversationActivity(Lcom/mechat/mechatlibrary/MCOnlineConfig;)Z
    .locals 3
    .parameter "onlineConfig"

    .prologue
    .line 372
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    const-class v2, Lcom/mechat/mechatlibrary/ui/ConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 373
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 374
    const-string v1, "onlineConfig"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 375
    sget-object v1, Lcom/mechat/mechatlibrary/MCClient;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 376
    sget-boolean v1, Lcom/mechat/mechatlibrary/MCClient;->isInitSuc:Z

    if-nez v1, :cond_0

    .line 377
    const-string v1, "MeChatClient"

    const-string v2, "startMCConversationActivity() initialize SDK not success, please check the initialization"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v1, "MeChatClient"

    const-string v2, "startMCConversationActivity() initialize SDK not success, please check the initialization"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogE;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const/4 v1, 0x0

    .line 381
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
