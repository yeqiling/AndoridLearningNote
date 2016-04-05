.class Lcom/easemob/chat/EMCustomerService;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/core/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/EMCustomerService$EMScheduleLogoutReason;,
        Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;
    }
.end annotation


# static fields
.field private static final CONFIG_EASEMOB_HELPDESK_JID:Ljava/lang/String; = "EASEMOB_HELPDESK_JID"

.field private static final HELPDESK_LOGOUT_BROADCAST:Ljava/lang/String; = "easemob.helpdesk.logout."

.field private static final MAX_LOGOUT_DELAY:J = 0xe100L

.field private static final MIN_INTERVAL_UPDATE_LOGOUT_TIME:J = 0x258L

.field private static final TAG:Ljava/lang/String; = "EMCustomerService"

.field private static instance:Lcom/easemob/chat/EMCustomerService;


# instance fields
.field private configuration:Lcom/easemob/chat/EMCustomerServiceConfiguration;

.field private logoutDelay:J

.field private logoutIntent:Landroid/app/PendingIntent;

.field private logoutReceiver:Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/EMCustomerService;->instance:Lcom/easemob/chat/EMCustomerService;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMCustomerService;->configuration:Lcom/easemob/chat/EMCustomerServiceConfiguration;

    iput-object v0, p0, Lcom/easemob/chat/EMCustomerService;->logoutIntent:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/easemob/chat/EMCustomerService;->logoutReceiver:Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;

    const-wide/32 v0, 0xe100

    iput-wide v0, p0, Lcom/easemob/chat/EMCustomerService;->logoutDelay:J

    return-void
.end method

.method static synthetic access$0(Lcom/easemob/chat/EMCustomerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/EMCustomerService;->forceLogout()V

    return-void
.end method

.method private forceLogout()V
    .locals 3

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->logout()V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->J()V

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMNotifier;->getInstance(Landroid/content/Context;)Lcom/easemob/chat/EMNotifier;

    move-result-object v0

    sget-object v1, Lcom/easemob/EMNotifierEvent$Event;->EventLogout:Lcom/easemob/EMNotifierEvent$Event;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/easemob/chat/EMNotifier;->publishEvent(Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)Z

    return-void
.end method

.method static declared-synchronized getInstance()Lcom/easemob/chat/EMCustomerService;
    .locals 2

    const-class v1, Lcom/easemob/chat/EMCustomerService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/EMCustomerService;->instance:Lcom/easemob/chat/EMCustomerService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMCustomerService;

    invoke-direct {v0}, Lcom/easemob/chat/EMCustomerService;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMCustomerService;->instance:Lcom/easemob/chat/EMCustomerService;

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMCustomerService;->instance:Lcom/easemob/chat/EMCustomerService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLogoutBroadcastAction()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "easemob.helpdesk.logout."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelScheduledLogout()V
    .locals 2

    const-string v0, "EMCustomerService"

    const-string v1, "cancel helpdesk logout"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->J()V

    invoke-virtual {p0}, Lcom/easemob/chat/EMCustomerService;->unregisterLogoutTimerReceiver()V

    return-void
.end method

.method isCustomServiceAgent(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/easemob/chat/EMCustomerService;->configuration:Lcom/easemob/chat/EMCustomerServiceConfiguration;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/easemob/chat/EMCustomerService;->configuration:Lcom/easemob/chat/EMCustomerServiceConfiguration;

    invoke-virtual {v1}, Lcom/easemob/chat/EMCustomerServiceConfiguration;->getAgents()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMCustomerService;->configuration:Lcom/easemob/chat/EMCustomerServiceConfiguration;

    invoke-virtual {v0}, Lcom/easemob/chat/EMCustomerServiceConfiguration;->getAgents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method isMessageBelongingToCusomerService(Lcom/easemob/chat/EMMessage;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMCustomerService;->isCustomServiceAgent(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-virtual {p0}, Lcom/easemob/chat/EMCustomerService;->cancelScheduledLogout()V

    return-void
.end method

.method public onInit()V
    .locals 0

    return-void
.end method

.method public scheduleLogout(Lcom/easemob/chat/EMCustomerService$EMScheduleLogoutReason;)V
    .locals 10

    const-wide/16 v8, 0x3e8

    const-string v0, "EMCustomerService"

    const-string v1, "schedule helpdesk logout"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/easemob/chat/EMCustomerService;->logoutDelay:J

    mul-long/2addr v2, v8

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->H()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->I()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x927c0

    cmp-long v1, v4, v6

    if-gez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v1, Lcom/easemob/chat/EMCustomerService$EMScheduleLogoutReason;->EMNewMessage:Lcom/easemob/chat/EMCustomerService$EMScheduleLogoutReason;

    if-ne p1, v1, :cond_3

    iget-wide v6, p0, Lcom/easemob/chat/EMCustomerService;->logoutDelay:J

    mul-long/2addr v6, v8

    add-long/2addr v6, v4

    cmp-long v1, v2, v6

    if-gez v1, :cond_5

    iget-wide v0, p0, Lcom/easemob/chat/EMCustomerService;->logoutDelay:J

    mul-long/2addr v0, v8

    add-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    :goto_1
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v2

    :try_start_0
    const-string v0, "alarm"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/easemob/chat/EMCustomerService;->logoutIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/easemob/chat/EMCustomerService;->getLogoutBroadcastAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v2, v4, v3, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p0, Lcom/easemob/chat/EMCustomerService;->logoutIntent:Landroid/app/PendingIntent;

    :cond_1
    iget-object v3, p0, Lcom/easemob/chat/EMCustomerService;->logoutReceiver:Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;

    if-nez v3, :cond_2

    new-instance v3, Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;

    invoke-direct {v3, p0}, Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;-><init>(Lcom/easemob/chat/EMCustomerService;)V

    iput-object v3, p0, Lcom/easemob/chat/EMCustomerService;->logoutReceiver:Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {p0}, Lcom/easemob/chat/EMCustomerService;->getLogoutBroadcastAction()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/easemob/chat/EMCustomerService;->logoutReceiver:Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    iget-object v2, p0, Lcom/easemob/chat/EMCustomerService;->logoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v3, p0, Lcom/easemob/chat/EMCustomerService;->logoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v4, v5, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/easemob/chat/core/p;->c(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/easemob/chat/EMCustomerService$EMScheduleLogoutReason;->EMLogin:Lcom/easemob/chat/EMCustomerService$EMScheduleLogoutReason;

    if-ne p1, v1, :cond_5

    cmp-long v0, v2, v4

    if-gez v0, :cond_4

    invoke-direct {p0}, Lcom/easemob/chat/EMCustomerService;->forceLogout()V

    goto/16 :goto_0

    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    :cond_5
    move-object v1, v0

    goto :goto_1
.end method

.method setConfiguration(Lcom/easemob/chat/EMCustomerServiceConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMCustomerService;->configuration:Lcom/easemob/chat/EMCustomerServiceConfiguration;

    return-void
.end method

.method public setLogoutDelay(J)V
    .locals 3

    const-wide/32 v0, 0xe100

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    iput-wide p1, p0, Lcom/easemob/chat/EMCustomerService;->logoutDelay:J

    :cond_0
    return-void
.end method

.method unregisterLogoutTimerReceiver()V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "EMCustomerService"

    const-string v1, "unregister helpdesk logout receiver"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMCustomerService;->logoutReceiver:Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/easemob/chat/EMCustomerService;->logoutIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/easemob/chat/EMCustomerService;->getLogoutBroadcastAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMCustomerService;->logoutIntent:Landroid/app/PendingIntent;

    :cond_2
    :try_start_0
    const-string v0, "alarm"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/easemob/chat/EMCustomerService;->logoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/easemob/chat/EMCustomerService;->logoutReceiver:Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMCustomerService;->logoutReceiver:Lcom/easemob/chat/EMCustomerService$HelpDeskLogoutReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Receiver not registered"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
