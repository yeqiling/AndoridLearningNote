.class public Lcom/easemob/chat/core/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/core/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/core/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "EMAdvanceDebugManager"

.field private static b:Ljava/lang/String;

.field private static c:Lcom/easemob/chat/core/c;

.field private static synthetic g:[I


# instance fields
.field private d:Landroid/content/BroadcastReceiver;

.field private e:Landroid/content/Context;

.field private f:Lcom/easemob/chat/core/EMConnectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/core/c;->b:Ljava/lang/String;

    sput-object v0, Lcom/easemob/chat/core/c;->c:Lcom/easemob/chat/core/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/core/c;->d:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/easemob/chat/core/c;->f:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/c;->e:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/easemob/chat/core/c;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".debug.ipc.cmd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/core/c;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/easemob/chat/core/c;)Lcom/easemob/chat/core/EMConnectionManager;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/c;->f:Lcom/easemob/chat/core/EMConnectionManager;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/easemob/chat/core/c;
    .locals 2

    const-class v1, Lcom/easemob/chat/core/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/core/c;->c:Lcom/easemob/chat/core/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/core/c;

    invoke-direct {v0}, Lcom/easemob/chat/core/c;-><init>()V

    sput-object v0, Lcom/easemob/chat/core/c;->c:Lcom/easemob/chat/core/c;

    :cond_0
    sget-object v0, Lcom/easemob/chat/core/c;->c:Lcom/easemob/chat/core/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/easemob/chat/core/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g()[I
    .locals 3

    sget-object v0, Lcom/easemob/chat/core/c;->g:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/easemob/chat/core/c$a;->values()[Lcom/easemob/chat/core/c$a;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/easemob/chat/core/c$a;->g:Lcom/easemob/chat/core/c$a;

    invoke-virtual {v1}, Lcom/easemob/chat/core/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/easemob/chat/core/c$a;->h:Lcom/easemob/chat/core/c$a;

    invoke-virtual {v1}, Lcom/easemob/chat/core/c$a;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/easemob/chat/core/c$a;->f:Lcom/easemob/chat/core/c$a;

    invoke-virtual {v1}, Lcom/easemob/chat/core/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/easemob/chat/core/c$a;->a:Lcom/easemob/chat/core/c$a;

    invoke-virtual {v1}, Lcom/easemob/chat/core/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/easemob/chat/core/c$a;->c:Lcom/easemob/chat/core/c$a;

    invoke-virtual {v1}, Lcom/easemob/chat/core/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/easemob/chat/core/c$a;->d:Lcom/easemob/chat/core/c$a;

    invoke-virtual {v1}, Lcom/easemob/chat/core/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/easemob/chat/core/c$a;->b:Lcom/easemob/chat/core/c$a;

    invoke-virtual {v1}, Lcom/easemob/chat/core/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/easemob/chat/core/c$a;->e:Lcom/easemob/chat/core/c$a;

    invoke-virtual {v1}, Lcom/easemob/chat/core/c$a;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/easemob/chat/core/c;->g:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/easemob/chat/core/c;->d:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/core/c$1;

    invoke-direct {v0, p0}, Lcom/easemob/chat/core/c$1;-><init>(Lcom/easemob/chat/core/c;)V

    iput-object v0, p0, Lcom/easemob/chat/core/c;->d:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/easemob/chat/core/c;->e:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/c;->d:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    sget-object v3, Lcom/easemob/chat/core/c;->b:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/easemob/chat/EMMessage;Lcom/easemob/chat/core/c$a;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/easemob/chat/core/c;->g()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/easemob/chat/core/c$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easemob/chat/core/c$2;

    invoke-direct {v1, p0}, Lcom/easemob/chat/core/c$2;-><init>(Lcom/easemob/chat/core/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :pswitch_1
    const-string v0, "EMAdvanceDebugManager"

    const-string v1, "upload dns"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->i()Lcom/easemob/chat/core/j$a;

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/easemob/chat/core/c;->a(Z)V

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/easemob/chat/EMChat;->setDebugMode(Z)V

    const-string v0, "EMAdvanceDebugManager"

    const-string v1, "debugmode set to true"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/easemob/chat/core/c;->a(Z)V

    const-string v0, "EMAdvanceDebugManager"

    const-string v1, "debugmode set to false"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/easemob/chat/EMChat;->setDebugMode(Z)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/core/c$3;

    invoke-direct {v1, p0}, Lcom/easemob/chat/core/c$3;-><init>(Lcom/easemob/chat/core/c;)V

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChat;->uploadLog(Lcom/easemob/EMCallBack;)V

    goto :goto_0

    :pswitch_5
    sget-boolean v0, Lcom/easemob/util/EMLog;->debugMode:Z

    if-nez v0, :cond_1

    sput-boolean v4, Lcom/easemob/util/EMLog;->debugMode:Z

    :cond_1
    const-string v1, "\r\n"

    const-string v1, "EMAdvanceDebugManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " usename : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appkey  : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/core/p;->v()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\r\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " SDK     : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/core/p;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v0, Lcom/easemob/util/EMLog;->debugMode:Z

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "appkey"

    invoke-virtual {p1, v0, v3}, Lcom/easemob/chat/EMMessage;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "EMAdvanceDebugManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "received change appkey cmd, appkey: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/c;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMChat;->setAppkey(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/easemob/chat/core/c;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".em_internal_debug"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "debug_action"

    const-string v2, "change_appkey"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/easemob/chat/core/c;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "im_server"

    invoke-virtual {p1, v0, v3}, Lcom/easemob/chat/EMMessage;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "rest_server"

    invoke-virtual {p1, v1, v3}, Lcom/easemob/chat/EMMessage;->getStringAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable_dns"

    invoke-virtual {p1, v2, v5}, Lcom/easemob/chat/EMMessage;->getBooleanAttribute(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->e()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/easemob/chat/core/p;->b(Z)V

    invoke-virtual {p0, v3, v3}, Lcom/easemob/chat/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/easemob/chat/core/c;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".em_internal_debug"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "debug_action"

    const-string v2, "change_servers"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/easemob/chat/core/c;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "EMAdvanceDebugManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "change servers to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/easemob/chat/core/p;->b(Z)V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/easemob/chat/core/p;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/easemob/chat/core/p;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/easemob/chat/core/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public a(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/c;->f:Lcom/easemob/chat/core/EMConnectionManager;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/v;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/core/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/v;->a(Z)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/v;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/v;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/v;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/v;->a()Lcom/easemob/chat/core/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/v;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/core/c;->f:Lcom/easemob/chat/core/EMConnectionManager;

    return-void
.end method

.method public onInit()V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/core/c;->h()V

    return-void
.end method
