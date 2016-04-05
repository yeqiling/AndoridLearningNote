.class public Lcom/easemob/chat/EMChat;
.super Ljava/lang/Object;


# static fields
.field private static final PID_FILE:Ljava/lang/String; = ".easemob.pid"

.field private static final TAG:Ljava/lang/String; = "EaseMob"

.field private static instance:Lcom/easemob/chat/EMChat;


# instance fields
.field private appContext:Landroid/content/Context;

.field appInited:Z

.field private autoLogin:Z

.field private initSingleProcess:Z

.field private password:Ljava/lang/String;

.field private sdkInited:Z

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/easemob/chat/EMChat;

    invoke-direct {v0}, Lcom/easemob/chat/EMChat;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMChat;->instance:Lcom/easemob/chat/EMChat;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/easemob/chat/EMChat;->appInited:Z

    iput-boolean v2, p0, Lcom/easemob/chat/EMChat;->autoLogin:Z

    iput-boolean v2, p0, Lcom/easemob/chat/EMChat;->initSingleProcess:Z

    iput-boolean v1, p0, Lcom/easemob/chat/EMChat;->sdkInited:Z

    iput-object v0, p0, Lcom/easemob/chat/EMChat;->appContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/easemob/chat/EMChat;->userName:Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/EMChat;->password:Ljava/lang/String;

    return-void
.end method

.method private checkSDKInited(Landroid/content/Context;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChat;->sdkInited:Z

    return v0
.end method

.method public static getInstance()Lcom/easemob/chat/EMChat;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMChat;->instance:Lcom/easemob/chat/EMChat;

    return-object v0
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMChat;->userName:Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/EMChat;->password:Ljava/lang/String;

    return-void
.end method

.method public enalbeDNSConfig(Z)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/p;->b(Z)V

    return-void
.end method

.method public getAppContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChat;->appContext:Landroid/content/Context;

    return-object v0
.end method

.method public getAppkey()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 6

    iget-boolean v0, p0, Lcom/easemob/chat/EMChat;->initSingleProcess:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMChat;->checkSDKInited(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EaseMob"

    const-string v1, "skip init easemob since already inited"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "EaseMob"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "easemob init in process:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMChat;->appContext:Landroid/content/Context;

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChat;->appContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatConfig;->loadConfig(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "EaseMob"

    const-string v1, "wrong configuration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Initialization failed! : wrong configuration"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {p1}, Lcom/easemob/chat/InitSmackStaticCode;->initStaticCode(Landroid/content/Context;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->onInit()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->onInit()Lcom/easemob/chat/EMSessionManager;

    move-result-object v2

    iget-object v0, p0, Lcom/easemob/chat/EMChat;->userName:Ljava/lang/String;

    const-string v3, "EaseMob"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "passed userName : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/easemob/chat/EMChat;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    invoke-virtual {v2}, Lcom/easemob/chat/EMSessionManager;->getLastLoginUser()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v3, p0, Lcom/easemob/chat/EMChat;->appContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/easemob/analytics/EMActiveCollector;->sendActivePacket(Landroid/content/Context;)V

    const-string v3, "EaseMob"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "is autoLogin : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/easemob/chat/EMChat;->autoLogin:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "EaseMob"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "lastLoginUser : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/easemob/chat/EMChat;->autoLogin:Z

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/easemob/chat/EMChat;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/easemob/chat/EMChat;->password:Ljava/lang/String;

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lcom/easemob/chat/EMSessionManager;->getLastLoginPwd()Ljava/lang/String;

    move-result-object v1

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/easemob/chat/EMSessionManager;->login(Ljava/lang/String;Ljava/lang/String;ZLcom/easemob/EMCallBack;)V

    :cond_4
    :goto_1
    const-string v0, "EaseMob"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HuanXin SDK is initialized with version : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMChat;->sdkInited:Z

    goto/16 :goto_0

    :cond_5
    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMChatManager;->initDB(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->loadDB()V

    goto :goto_1
.end method

.method public isLoggedIn()Z
    .locals 4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/easemob/chat/EMChat;->userName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/easemob/chat/EMChat;->password:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMSessionManager;->getLastLoginUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/easemob/chat/EMSessionManager;->getLastLoginPwd()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSDKInited()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChat;->sdkInited:Z

    return v0
.end method

.method public setAppInited()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMChat;->appInited:Z

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->onAppInited()V

    return-void
.end method

.method public setAppkey(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v0

    iput-object p1, v0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/p;->d(Ljava/lang/String;)V

    return-void
.end method

.method public setAutoLogin(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChat;->autoLogin:Z

    return-void
.end method

.method public setDebugMode(Z)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->isSDKInited()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/c;->a()Lcom/easemob/chat/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    :cond_0
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/p;->f(Z)V

    sput-boolean p1, Lcom/easemob/util/EMLog;->debugMode:Z

    return-void
.end method

.method public setEnv(Lcom/easemob/chat/EMChatConfig$EMEnvMode;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatConfig;->setEnv(Lcom/easemob/chat/EMChatConfig$EMEnvMode;)V

    return-void
.end method

.method public setInitSingleProcess(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChat;->initSingleProcess:Z

    return-void
.end method

.method public setLogMode(Lcom/easemob/util/EMLog$ELogMode;)V
    .locals 0

    invoke-static {p1}, Lcom/easemob/util/EMLog;->setLogMode(Lcom/easemob/util/EMLog$ELogMode;)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/easemob/chat/EMChat;->password:Ljava/lang/String;

    goto :goto_0
.end method

.method setSDKMode(Lcom/easemob/chat/EMChatConfig$EMSDKMode;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatConfig;->setSDKMode(Lcom/easemob/chat/EMChatConfig$EMSDKMode;)V

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/easemob/chat/EMChat;->userName:Ljava/lang/String;

    goto :goto_0
.end method

.method public uploadLog(Lcom/easemob/EMCallBack;)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMChat;->appContext:Landroid/content/Context;

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/j;->c()Lcom/easemob/chat/core/j$c;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/easemob/debug/DebugHelper;->uploadLog(Landroid/content/Context;Ljava/lang/String;Lcom/easemob/EMCallBack;)V

    return-void
.end method
