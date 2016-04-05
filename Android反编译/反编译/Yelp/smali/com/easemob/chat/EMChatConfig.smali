.class public Lcom/easemob/chat/EMChatConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/EMChatConfig$EMEnvMode;,
        Lcom/easemob/chat/EMChatConfig$EMSDKMode;
    }
.end annotation


# static fields
.field private static final CONFIG_EASEMOB_API_URL:Ljava/lang/String; = "EASEMOB_API_URL"

.field private static final CONFIG_EASEMOB_APPKEY:Ljava/lang/String; = "EASEMOB_APPKEY"

.field private static final CONFIG_EASEMOB_CHAT_ADDRESS:Ljava/lang/String; = "EASEMOB_CHAT_ADDRESS"

.field private static final CONFIG_EASEMOB_CHAT_DOMAIN:Ljava/lang/String; = "EASEMOB_CHAT_DOMAIN"

.field private static final CONFIG_EASEMOB_GROUP_DOMAIN:Ljava/lang/String; = "EASEMOB_GROUP_DOMAIN"

.field static DOMAIN:Ljava/lang/String; = null

.field static DOMAIN_SUFFIX:Ljava/lang/String; = null

.field static MUC_DOMAIN:Ljava/lang/String; = null

.field static MUC_DOMAIN_SUFFIX:Ljava/lang/String; = null

.field static final SHARE_SERCRET:Ljava/lang/String; = "share-secret"

.field private static final TAG:Ljava/lang/String; = "conf"

.field static final TOKEN_ENTITY:Ljava/lang/String; = "entities"

.field static final UUID:Ljava/lang/String; = "uuid"

.field private static debugTrafficMode:Z

.field private static instance:Lcom/easemob/chat/EMChatConfig;


# instance fields
.field public APPKEY:Ljava/lang/String;

.field private chatServer:Ljava/lang/String;

.field private restServer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "easemob.com"

    sput-object v0, Lcom/easemob/chat/EMChatConfig;->DOMAIN:Ljava/lang/String;

    const-string v0, "@easemob.com"

    sput-object v0, Lcom/easemob/chat/EMChatConfig;->DOMAIN_SUFFIX:Ljava/lang/String;

    const-string v0, "conference.easemob.com"

    sput-object v0, Lcom/easemob/chat/EMChatConfig;->MUC_DOMAIN:Ljava/lang/String;

    const-string v0, "@conference.easemob.com"

    sput-object v0, Lcom/easemob/chat/EMChatConfig;->MUC_DOMAIN_SUFFIX:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/easemob/chat/EMChatConfig;->debugTrafficMode:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/EMChatConfig;->instance:Lcom/easemob/chat/EMChatConfig;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/easemob/chat/EMChatConfig;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMChatConfig;->instance:Lcom/easemob/chat/EMChatConfig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMChatConfig;

    invoke-direct {v0}, Lcom/easemob/chat/EMChatConfig;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMChatConfig;->instance:Lcom/easemob/chat/EMChatConfig;

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMChatConfig;->instance:Lcom/easemob/chat/EMChatConfig;

    return-object v0
.end method

.method public static isDebugTrafficMode()Z
    .locals 1

    sget-boolean v0, Lcom/easemob/chat/EMChatConfig;->debugTrafficMode:Z

    return v0
.end method

.method private printConfig()V
    .locals 3

    const-string v0, "conf"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " APPKEY:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " CHATSERVER:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " domain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/easemob/chat/EMChatConfig;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "conf"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "STORAGE_URL:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setAdvanceDebugConfig()V
    .locals 2

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/core/c;->a()Lcom/easemob/chat/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/c;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/easemob/util/EMLog;->debugMode:Z

    :cond_0
    invoke-static {}, Lcom/easemob/chat/core/c;->a()Lcom/easemob/chat/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/c;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/easemob/chat/core/c;->a()Lcom/easemob/chat/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    :cond_1
    invoke-static {}, Lcom/easemob/chat/core/c;->a()Lcom/easemob/chat/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/core/c;->a()Lcom/easemob/chat/core/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/c;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/easemob/chat/EMChatConfig;->chatServer:Ljava/lang/String;

    iput-object v1, p0, Lcom/easemob/chat/EMChatConfig;->restServer:Ljava/lang/String;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/p;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public getDomain()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMChatConfig;->DOMAIN:Ljava/lang/String;

    return-object v0
.end method

.method getEnvMode()Lcom/easemob/chat/EMChatConfig$EMEnvMode;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->t()Lcom/easemob/chat/EMChatConfig$EMEnvMode;

    move-result-object v0

    return-object v0
.end method

.method getSDKMode()Lcom/easemob/chat/EMChatConfig$EMSDKMode;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->u()Lcom/easemob/chat/EMChatConfig$EMSDKMode;

    move-result-object v0

    return-object v0
.end method

.method public getStorageUrl()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->c()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method loadConfig(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_3

    const-string v0, "conf"

    const-string v1, "\u8bf7\u786e\u8ba4meta\u5c5e\u6027\u5199\u5728\u6e05\u5355\u6587\u4ef6\u91cc\u7684application\u8282\u70b9\u4ee5\u5185"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/easemob/chat/EMChatConfig;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/EMChatConfig;->DOMAIN_SUFFIX:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/easemob/chat/EMChatConfig;->MUC_DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/EMChatConfig;->MUC_DOMAIN_SUFFIX:Ljava/lang/String;

    invoke-direct {p0}, Lcom/easemob/chat/EMChatConfig;->setAdvanceDebugConfig()V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/p;->d(Ljava/lang/String;)V

    const-string v0, "conf"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "EASEMOB_APPKEY is set to:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatConfig;->chatServer:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMChatConfig;->chatServer:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatConfig;->chatServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/p;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMChatConfig;->restServer:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMChatConfig;->restServer:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatConfig;->restServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/p;->c(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0}, Lcom/easemob/chat/EMChatConfig;->printConfig()V

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "conf"

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "conf"

    const-string v2, "\u627e\u4e0d\u5230ApplicationInfo"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_3
    const-string v1, "EASEMOB_APPKEY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v2, p0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    if-nez v2, :cond_9

    const-string v1, "conf"

    const-string v2, "EASEMOB_APPKEY is not set in AndroidManifest file"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    const-string v1, "EASEMOB_CHAT_ADDRESS"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    iput-object v1, p0, Lcom/easemob/chat/EMChatConfig;->chatServer:Ljava/lang/String;

    :cond_5
    const-string v1, "EASEMOB_API_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    iput-object v1, p0, Lcom/easemob/chat/EMChatConfig;->restServer:Ljava/lang/String;

    :cond_6
    const-string v1, "EASEMOB_CHAT_DOMAIN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    sput-object v1, Lcom/easemob/chat/EMChatConfig;->DOMAIN:Ljava/lang/String;

    :cond_7
    const-string v1, "EASEMOB_GROUP_DOMAIN"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    sput-object v1, Lcom/easemob/chat/EMChatConfig;->MUC_DOMAIN:Ljava/lang/String;

    :cond_8
    const-string v1, "GCM_PROJECT_NUMBER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->b()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easemob/chat/core/p;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-object v2, p0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput-object v1, p0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    goto :goto_2
.end method

.method setEnv(Lcom/easemob/chat/EMChatConfig$EMEnvMode;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/p;->a(Lcom/easemob/chat/EMChatConfig$EMEnvMode;)V

    return-void
.end method

.method setSDKMode(Lcom/easemob/chat/EMChatConfig$EMSDKMode;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/p;->a(Lcom/easemob/chat/EMChatConfig$EMSDKMode;)V

    return-void
.end method
