.class public Lcom/mechat/mechatlibrary/MechatService;
.super Landroid/app/Service;
.source "MechatService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MechatService"


# instance fields
.field private isPolling:Z

.field private isServiceDestroy:Z

.field private mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

.field private mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

.field private messageIdString:Ljava/lang/String;

.field private myNetworkChangeReceiver:Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;

.field private spManager:Lcom/mechat/mechatlibrary/utils/SpManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/MechatService;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/MechatService;->poll()V

    return-void
.end method

.method static synthetic access$1(Lcom/mechat/mechatlibrary/MechatService;Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Lcom/mechat/mechatlibrary/MechatService;->hasKeyAndReturn(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$10(Lcom/mechat/mechatlibrary/MechatService;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/MechatService;->rePoll()V

    return-void
.end method

.method static synthetic access$2(Lcom/mechat/mechatlibrary/MechatService;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MechatService;->messageIdString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$3(Lcom/mechat/mechatlibrary/MechatService;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService;->messageIdString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mechat/mechatlibrary/MechatService;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    return-object v0
.end method

.method static synthetic access$5(Lcom/mechat/mechatlibrary/MechatService;)Lcom/mechat/mechatlibrary/utils/SpManager;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    return-object v0
.end method

.method static synthetic access$6(Lcom/mechat/mechatlibrary/MechatService;Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/MechatService;->addMsgAndSendBroadcast(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    return-void
.end method

.method static synthetic access$7(Lcom/mechat/mechatlibrary/MechatService;Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/mechat/mechatlibrary/MechatService;->downloadVoiceFile(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    return-void
.end method

.method static synthetic access$8(Lcom/mechat/mechatlibrary/MechatService;)Lcom/mechat/mechatlibrary/dao/MCEventDBManger;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    return-object v0
.end method

.method static synthetic access$9(Lcom/mechat/mechatlibrary/MechatService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/mechat/mechatlibrary/MechatService;->isPolling:Z

    return-void
.end method

.method private addMsgAndSendBroadcast(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 3
    .parameter "chatMessage"

    .prologue
    .line 285
    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/mechat/mechatlibrary/MCMessageManager;->addMessage(Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    .line 286
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/mechat/mechatlibrary/MCMessageManager;->getInstance()Lcom/mechat/mechatlibrary/MCMessageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mechat/mechatlibrary/MCMessageManager;->getNewMessageReceivedAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, newMessageIntent:Landroid/content/Intent;
    const-string v1, "msgId"

    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCMessage;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/MechatService;->sendBroadcast(Landroid/content/Intent;)V

    .line 289
    return-void
.end method

.method private downloadVoiceFile(Lcom/mechat/mechatlibrary/bean/MCMessage;)V
    .locals 5
    .parameter "chatMessage"

    .prologue
    .line 292
    move-object v2, p1

    check-cast v2, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;

    .line 293
    .local v2, voiceMessage:Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;
    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getVoiceUrl()Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, url:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/mechat/mechatlibrary/utils/Utils;->getVoiceStoreFile(Landroid/content/Context;Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;)Ljava/io/File;

    move-result-object v1

    .line 295
    .local v1, voiceFlie:Ljava/io/File;
    const-string v3, "MechatService"

    const-string v4, "downloadVoiceFile start"

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    new-instance v3, Lcom/mechat/mechatlibrary/MechatService$3;

    invoke-direct {v3, p0, v1, v2, p1}, Lcom/mechat/mechatlibrary/MechatService$3;-><init>(Lcom/mechat/mechatlibrary/MechatService;Ljava/io/File;Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;Lcom/mechat/mechatlibrary/bean/MCMessage;)V

    invoke-static {v0, v3}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->get(Ljava/lang/String;Lcom/mechat/loopj/android/http/FileAsyncHttpResponseHandler;)V

    .line 312
    return-void
.end method

.method private getCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/utils/SpManager;->getCookie()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasKeyAndReturn(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "msgObject"

    .prologue
    .line 259
    const/4 v1, 0x0

    .line 260
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    :try_start_0
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 267
    :cond_0
    :goto_0
    return-object v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private poll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 83
    iget-boolean v2, p0, Lcom/mechat/mechatlibrary/MechatService;->isServiceDestroy:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/mechat/mechatlibrary/MechatService;->isPolling:Z

    if-nez v2, :cond_0

    .line 84
    iput-boolean v5, p0, Lcom/mechat/mechatlibrary/MechatService;->isPolling:Z

    .line 85
    const/4 v1, 0x0

    .line 86
    .local v1, requestParams:Lcom/mechat/loopj/android/http/RequestParams;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    .local v0, paramMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "unitid"

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/MechatService;->getUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "usid"

    invoke-static {}, Lcom/mechat/mechatlibrary/bean/MCService;->getCurrentService()Lcom/mechat/mechatlibrary/bean/MCService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mechat/mechatlibrary/bean/MCService;->getUsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, "cookie"

    invoke-direct {p0}, Lcom/mechat/mechatlibrary/MechatService;->getCookie()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v2, "MechatService"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "msgId = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/mechat/mechatlibrary/MechatService;->messageIdString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MechatService;->messageIdString:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mechat/mechatlibrary/MechatService;->messageIdString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v2, v5, :cond_1

    .line 93
    const-string v2, "msgids"

    iget-object v3, p0, Lcom/mechat/mechatlibrary/MechatService;->messageIdString:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_0
    const-string v2, "nfu"

    const-string v3, "false"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v2, "time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v2, "__"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v1, Lcom/mechat/loopj/android/http/RequestParams;

    .end local v1           #requestParams:Lcom/mechat/loopj/android/http/RequestParams;
    invoke-direct {v1, v0}, Lcom/mechat/loopj/android/http/RequestParams;-><init>(Ljava/util/Map;)V

    .line 101
    .restart local v1       #requestParams:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v2, "https://chat.meiqia.com/"

    const-string v3, "mobile/poll"

    new-instance v4, Lcom/mechat/mechatlibrary/MechatService$1;

    invoke-direct {v4, p0}, Lcom/mechat/mechatlibrary/MechatService$1;-><init>(Lcom/mechat/mechatlibrary/MechatService;)V

    invoke-static {v2, v3, v1, v4}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->post(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 237
    .end local v0           #paramMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1           #requestParams:Lcom/mechat/loopj/android/http/RequestParams;
    :cond_0
    return-void

    .line 95
    .restart local v0       #paramMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1       #requestParams:Lcom/mechat/loopj/android/http/RequestParams;
    :cond_1
    const-string v2, "msgids"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private rePoll()V
    .locals 6

    .prologue
    .line 241
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MechatService;->myNetworkChangeReceiver:Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;->isNetAvaliable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 256
    :goto_0
    return-void

    .line 245
    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 247
    .local v1, rd:Ljava/util/Random;
    invoke-virtual {v1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    const-wide/high16 v4, 0x4069

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4049

    add-double/2addr v2, v4

    double-to-int v0, v2

    .line 248
    .local v0, delaytime:I
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/mechat/mechatlibrary/MechatService$2;

    invoke-direct {v3, p0}, Lcom/mechat/mechatlibrary/MechatService$2;-><init>(Lcom/mechat/mechatlibrary/MechatService;)V

    .line 254
    int-to-long v4, v0

    .line 248
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 272
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 51
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p0, v2, v1}, Lcom/mechat/mechatlibrary/MechatService;->startForeground(ILandroid/app/Notification;)V

    .line 53
    iput-boolean v2, p0, Lcom/mechat/mechatlibrary/MechatService;->isServiceDestroy:Z

    .line 54
    new-instance v1, Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/utils/SpManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mechat/mechatlibrary/MechatService;->spManager:Lcom/mechat/mechatlibrary/utils/SpManager;

    .line 55
    invoke-static {p0}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->init(Landroid/content/Context;)Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    move-result-object v1

    iput-object v1, p0, Lcom/mechat/mechatlibrary/MechatService;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    .line 56
    invoke-static {p0}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->init(Landroid/content/Context;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v1

    iput-object v1, p0, Lcom/mechat/mechatlibrary/MechatService;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    .line 57
    new-instance v1, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;-><init>(Lcom/mechat/mechatlibrary/MechatService;Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;)V

    iput-object v1, p0, Lcom/mechat/mechatlibrary/MechatService;->myNetworkChangeReceiver:Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;

    .line 58
    const-string v1, "MechatService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v0, mFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MechatService;->myNetworkChangeReceiver:Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/mechat/mechatlibrary/MechatService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "MechatService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mechat/mechatlibrary/MechatService;->isServiceDestroy:Z

    .line 77
    iget-object v0, p0, Lcom/mechat/mechatlibrary/MechatService;->myNetworkChangeReceiver:Lcom/mechat/mechatlibrary/MechatService$MyNetworkChangeReceiver;

    invoke-virtual {p0, v0}, Lcom/mechat/mechatlibrary/MechatService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 80
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/mechat/mechatlibrary/MechatService;->poll()V

    .line 68
    const-string v0, "MechatService"

    const-string v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method
