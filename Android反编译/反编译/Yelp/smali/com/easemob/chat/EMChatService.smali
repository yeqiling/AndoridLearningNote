.class public Lcom/easemob/chat/EMChatService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/EMChatService$LocalBinder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "chatservice"


# instance fields
.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/easemob/chat/EMChatService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMChatService$LocalBinder;-><init>(Lcom/easemob/chat/EMChatService;)V

    iput-object v0, p0, Lcom/easemob/chat/EMChatService;->mBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "chatservice"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "chatservice"

    const-string v1, "chat service created"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "chatservice"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/easemob/chat/EMChatManager;->stopService:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->doStartService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "reason"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMMonitor;->getInstance()Lcom/easemob/chat/EMMonitor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/easemob/chat/EMChatService;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/easemob/chat/EMMonitor;->start(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMMonitor;->getInstance()Lcom/easemob/chat/EMMonitor;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/easemob/chat/EMMonitor;->startWakeup(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "chatservice"

    const-string v1, "start not sticky!"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_1
    const-string v0, "chatservice"

    const-string v1, "start sticky!"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
