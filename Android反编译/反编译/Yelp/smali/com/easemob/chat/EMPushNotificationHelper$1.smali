.class Lcom/easemob/chat/EMPushNotificationHelper$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMPushNotificationHelper;->sendDeviceTokenToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMPushNotificationHelper;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMPushNotificationHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMPushNotificationHelper$1;->this$0:Lcom/easemob/chat/EMPushNotificationHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper$1;->this$0:Lcom/easemob/chat/EMPushNotificationHelper;

    invoke-virtual {v0}, Lcom/easemob/chat/EMPushNotificationHelper;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_0
    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    :cond_0
    if-nez v0, :cond_3

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/p;->a(Z)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->doStopService()V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->doStartService()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper$1;->this$0:Lcom/easemob/chat/EMPushNotificationHelper;

    invoke-virtual {v0}, Lcom/easemob/chat/EMPushNotificationHelper;->getDeviceToken()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v0

    new-instance v4, Lcom/easemob/chat/EMRandomDelay;

    invoke-direct {v4}, Lcom/easemob/chat/EMRandomDelay;-><init>()V

    invoke-virtual {p0}, Lcom/easemob/chat/EMPushNotificationHelper$1;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->P()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper$1;->this$0:Lcom/easemob/chat/EMPushNotificationHelper;

    invoke-virtual {v0, v3}, Lcom/easemob/chat/EMPushNotificationHelper;->sendDeviceInfo(Ljava/lang/String;)Z

    move-result v0

    move v2, v1

    :goto_2
    if-eqz v0, :cond_5

    :cond_4
    invoke-virtual {v4}, Lcom/easemob/chat/EMRandomDelay;->reset()V

    invoke-virtual {p0}, Lcom/easemob/chat/EMPushNotificationHelper$1;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper$1;->this$0:Lcom/easemob/chat/EMPushNotificationHelper;

    invoke-virtual {v0, v3}, Lcom/easemob/chat/EMPushNotificationHelper;->sendTokenToServer(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    :goto_3
    if-nez v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    :try_start_1
    invoke-virtual {v4, v1}, Lcom/easemob/chat/EMRandomDelay;->timeDelay(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    invoke-static {v6, v7}, Lcom/easemob/chat/EMPushNotificationHelper$1;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper$1;->this$0:Lcom/easemob/chat/EMPushNotificationHelper;

    invoke-virtual {v0, v3}, Lcom/easemob/chat/EMPushNotificationHelper;->sendTokenToServer(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    :try_start_3
    invoke-virtual {v4, v2}, Lcom/easemob/chat/EMRandomDelay;->timeDelay(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    invoke-static {v6, v7}, Lcom/easemob/chat/EMPushNotificationHelper$1;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    iget-object v0, p0, Lcom/easemob/chat/EMPushNotificationHelper$1;->this$0:Lcom/easemob/chat/EMPushNotificationHelper;

    invoke-virtual {v0, v3}, Lcom/easemob/chat/EMPushNotificationHelper;->sendDeviceInfo(Ljava/lang/String;)Z

    move-result v0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "EMPushNotificationHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method
