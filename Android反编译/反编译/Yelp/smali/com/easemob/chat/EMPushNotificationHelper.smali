.class Lcom/easemob/chat/EMPushNotificationHelper;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "EMPushNotificationHelper"

.field private static instance:Lcom/easemob/chat/EMPushNotificationHelper;


# instance fields
.field private isLogout:Z

.field private pushThread:Ljava/lang/Thread;

.field private sendTokenLock:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->pushThread:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->sendTokenLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->isLogout:Z

    return-void
.end method

.method public static getInstance()Lcom/easemob/chat/EMPushNotificationHelper;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMPushNotificationHelper;->instance:Lcom/easemob/chat/EMPushNotificationHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMPushNotificationHelper;

    invoke-direct {v0}, Lcom/easemob/chat/EMPushNotificationHelper;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMPushNotificationHelper;->instance:Lcom/easemob/chat/EMPushNotificationHelper;

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMPushNotificationHelper;->instance:Lcom/easemob/chat/EMPushNotificationHelper;

    return-object v0
.end method

.method private notificationDisplayStyle(I)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->L()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "notification_display_style"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v2

    const/4 v3, 0x0

    instance-of v4, v0, Lorg/json/JSONObject;

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v4, Lcom/easemob/cloud/EMHttpClient;->PUT:Ljava/lang/String;

    invoke-virtual {v2, v1, v3, v0, v4}, Lcom/easemob/cloud/EMHttpClient;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    packed-switch v2, :pswitch_data_0

    const-string v1, "EMPushNotificationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "notificationDisplayStyle error:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string v0, "EMPushNotificationHelper"

    const-string v1, "notificationDisplayStyle SC_OK"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method checkAvailablePushService()Z
    .locals 5

    const/4 v1, 0x0

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->i()Lcom/easemob/chat/core/j$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->i()Lcom/easemob/chat/core/j$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/easemob/chat/core/j$a;->d:Z

    :goto_0
    const-string v2, "EMPushNotificationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GCM is enabled : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    :try_start_0
    const-string v0, "com.google.android.gms.common.GooglePlayServicesUtil"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/p;->a(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_2
    const-string v0, "EMPushNotificationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GCM service enabled : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "EMPushNotificationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method getDeviceToken()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->P()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    :cond_1
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easemob/chat/core/p;->b()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->register([Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_2
    :goto_1
    const-string v1, "EMPushNotificationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "devicetoken = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method isPushServiceEnabled()Z
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->a()Z

    move-result v0

    return v0
.end method

.method public onDestroy(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->pushThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->pushThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->pushThread:Ljava/lang/Thread;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->isLogout:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/easemob/chat/EMPushNotificationHelper;->isPushServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMPushNotificationHelper;->sendTokenToServer(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0xbb8

    const-string v2, "unbind device token failed"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/p;->a(Z)V

    :cond_2
    return-void
.end method

.method onInit()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->isLogout:Z

    return-void
.end method

.method sendDeviceInfo(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/devices"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "model"

    const-string v4, "android"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "name"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "token"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sdk_version"

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easemob/chat/EMChat;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "os_version"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v3

    const/4 v4, 0x0

    instance-of v5, v0, Lorg/json/JSONObject;

    if-nez v5, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v5, Lcom/easemob/cloud/EMHttpClient;->POST:Ljava/lang/String;

    invoke-virtual {v3, v2, v4, v0, v5}, Lcom/easemob/cloud/EMHttpClient;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    packed-switch v3, :pswitch_data_0

    const-string v2, "duplicate_unique_property_exists"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/p;->j(Ljava/lang/String;)V

    const-string v0, "EMPushNotificationHelper"

    const-string v2, "sendDeviceToServer SC_OK:"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1

    :cond_1
    const-string v1, "EMPushNotificationHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendDeviceToServer error : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "EMPushNotificationHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method

.method sendDeviceTokenToServer()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "EMPushNotificationHelper"

    const-string v1, "GCM available"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->isLogout:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->pushThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->pushThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->pushThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMPushNotificationHelper$1;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMPushNotificationHelper$1;-><init>(Lcom/easemob/chat/EMPushNotificationHelper;)V

    iput-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->pushThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper;->pushThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    const-string v0, "EMPushNotificationHelper"

    const-string v1, "GCM not available"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method sendTokenToServer(Ljava/lang/String;)Z
    .locals 5

    iget-object v1, p0, Lcom/easemob/chat/EMPushNotificationHelper;->sendTokenLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/users/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "device_token"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "notifier_name"

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easemob/chat/core/p;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v3

    instance-of v4, v0, Lorg/json/JSONObject;

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v4, Lcom/easemob/cloud/EMHttpClient;->PUT:Ljava/lang/String;

    invoke-virtual {v3, v2, v0, v4}, Lcom/easemob/cloud/EMHttpClient;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    packed-switch v3, :pswitch_data_0

    const-string v2, "EMPushNotificationHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendTokenToServer error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :goto_2
    return v0

    :cond_0
    :try_start_3
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string v0, "EMPushNotificationHelper"

    const-string v2, "sendTokenToServer SC_OK:"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v2, "EMPushNotificationHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
