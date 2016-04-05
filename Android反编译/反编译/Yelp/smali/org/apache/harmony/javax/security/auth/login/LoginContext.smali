.class public Lorg/apache/harmony/javax/security/auth/login/LoginContext;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;,
        Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;
    }
.end annotation


# static fields
.field private static final DEFAULT_CALLBACK_HANDLER_PROPERTY:Ljava/lang/String; = "auth.login.defaultCallbackHandler"

.field private static final OPTIONAL:I = 0x0

.field private static final REQUIRED:I = 0x1

.field private static final REQUISITE:I = 0x2

.field private static final SUFFICIENT:I = 0x3


# instance fields
.field private callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

.field private contextClassLoader:Ljava/lang/ClassLoader;

.field private loggedIn:Z

.field private modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

.field private sharedState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation
.end field

.field private subject:Lorg/apache/harmony/javax/security/auth/Subject;

.field private userContext:Ljava/security/AccessControlContext;

.field private userProvidedConfig:Z

.field private userProvidedSubject:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, v0, v0, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.03"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, v0, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.03"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.34"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.34"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, v0, p2, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V

    return-void
.end method

.method static synthetic access$0(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)Ljava/security/AccessControlContext;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    return-object v0
.end method

.method static synthetic access$1(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->contextClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static synthetic access$2(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Ljava/lang/ClassLoader;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->contextClassLoader:Ljava/lang/ClassLoader;

    return-void
.end method

.method static synthetic access$3(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    return-void
.end method

.method static synthetic access$4(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loginImpl()V

    return-void
.end method

.method static synthetic access$5(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->logoutImpl()V

    return-void
.end method

.method private init(Ljava/lang/String;Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Lorg/apache/harmony/javax/security/auth/login/Configuration;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-object p2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedSubject:Z

    if-nez p1, :cond_1

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.00"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    if-nez p4, :cond_4

    invoke-static {}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAccessibleConfiguration()Lorg/apache/harmony/javax/security/auth/login/Configuration;

    move-result-object p4

    :goto_1
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-nez v0, :cond_2

    new-instance v0, Lorg/apache/harmony/javax/security/auth/AuthPermission;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "createLoginContext."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/harmony/javax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_2
    invoke-virtual {p4, p1}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    move-result-object v0

    if-nez v0, :cond_5

    if-eqz v1, :cond_3

    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-nez v0, :cond_3

    new-instance v0, Lorg/apache/harmony/javax/security/auth/AuthPermission;

    const-string v3, "createLoginContext.other"

    invoke-direct {v0, v3}, Lorg/apache/harmony/javax/security/auth/AuthPermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_3
    const-string v0, "other"

    invoke-virtual {p4, v0}, Lorg/apache/harmony/javax/security/auth/login/Configuration;->getAppConfigurationEntry(Ljava/lang/String;)[Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auth.35 "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput-boolean v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    goto :goto_1

    :cond_5
    array-length v1, v0

    new-array v1, v1, [Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    iput-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    :goto_2
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v1, v1

    if-lt v2, v1, :cond_7

    :try_start_0
    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;

    invoke-direct {v0, p0, p3}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$1;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    :cond_6
    :goto_3
    return-void

    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    new-instance v3, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    aget-object v4, v0, v2

    invoke-direct {v3, p0, v4}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/login/AppConfigurationEntry;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    new-instance v1, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v2, "auth.36"

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v0

    :cond_8
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$ContextedCallbackHandler;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;)V

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    goto :goto_3
.end method

.method private loginImpl()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    const/4 v14, 0x4

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/auth/Subject;

    invoke-direct {v0}, Lorg/apache/harmony/javax/security/auth/Subject;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->sharedState:Ljava/util/Map;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->sharedState:Ljava/util/Map;

    :cond_1
    const/4 v1, 0x0

    new-array v5, v14, [I

    new-array v6, v14, [I

    iget-object v7, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v8, v7

    move v4, v3

    :goto_0
    if-lt v4, v8, :cond_6

    :cond_2
    :goto_1
    aget v0, v5, v2

    aget v4, v6, v2

    if-ne v0, v4, :cond_13

    aget v0, v5, v12

    aget v4, v6, v12

    if-ne v0, v4, :cond_13

    aget v0, v6, v2

    if-nez v0, :cond_9

    aget v0, v6, v12

    if-nez v0, :cond_9

    aget v0, v5, v3

    if-nez v0, :cond_3

    aget v0, v5, v13

    if-eqz v0, :cond_13

    :cond_3
    move v0, v3

    :goto_2
    new-array v5, v14, [I

    aput v3, v6, v13

    aput v3, v6, v12

    aput v3, v6, v2

    aput v3, v6, v3

    if-nez v0, :cond_12

    iget-object v7, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v8, v7

    move v4, v3

    move-object v0, v1

    :goto_3
    if-lt v4, v8, :cond_a

    :goto_4
    aget v1, v5, v2

    aget v4, v6, v2

    if-ne v1, v4, :cond_11

    aget v1, v5, v12

    aget v4, v6, v12

    if-ne v1, v4, :cond_11

    aget v1, v6, v2

    if-nez v1, :cond_c

    aget v1, v6, v12

    if-nez v1, :cond_c

    aget v1, v5, v3

    if-nez v1, :cond_4

    aget v1, v5, v13

    if-eqz v1, :cond_11

    :cond_4
    move v1, v3

    :goto_5
    if-eqz v1, :cond_10

    iget-object v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v4, v2

    :goto_6
    if-lt v3, v4, :cond_d

    instance-of v1, v0, Ljava/security/PrivilegedActionException;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    :cond_5
    instance-of v1, v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    if-eqz v1, :cond_f

    check-cast v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v0

    :cond_6
    aget-object v9, v7, v4

    :try_start_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    iget-object v10, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->callbackHandler:Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;

    iget-object v11, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->sharedState:Ljava/util/Map;

    invoke-virtual {v9, v0, v10, v11}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->create(Lorg/apache/harmony/javax/security/auth/Subject;Lorg/apache/harmony/javax/security/auth/callback/CallbackHandler;Ljava/util/Map;)V

    iget-object v0, v9, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v0}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->login()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v9}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v0

    aget v10, v6, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, v6, v0

    invoke-virtual {v9}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v0

    aget v10, v5, v0

    add-int/lit8 v10, v10, 0x1

    aput v10, v5, v0

    invoke-virtual {v9}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eq v0, v13, :cond_2

    :cond_7
    :goto_7
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    if-nez v1, :cond_14

    :goto_8
    iget-object v1, v9, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->klass:Ljava/lang/Class;

    if-nez v1, :cond_8

    aget v1, v6, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v6, v2

    move-object v1, v0

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v9}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v1

    aget v10, v6, v1

    add-int/lit8 v10, v10, 0x1

    aput v10, v6, v1

    invoke-virtual {v9}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v1

    if-ne v1, v12, :cond_15

    move-object v1, v0

    goto/16 :goto_1

    :cond_9
    move v0, v3

    goto/16 :goto_2

    :cond_a
    aget-object v1, v7, v4

    iget-object v9, v1, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->klass:Ljava/lang/Class;

    if-eqz v9, :cond_b

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v9

    aget v10, v6, v9

    add-int/lit8 v10, v10, 0x1

    aput v10, v6, v9

    :try_start_1
    iget-object v9, v1, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v9}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->commit()Z

    invoke-virtual {v1}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->getFlag()I

    move-result v1

    aget v9, v5, v1

    add-int/lit8 v9, v9, 0x1

    aput v9, v5, v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    :goto_9
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_3

    :catch_1
    move-exception v1

    if-nez v0, :cond_b

    move-object v0, v1

    goto :goto_9

    :cond_c
    move v1, v3

    goto/16 :goto_5

    :cond_d
    aget-object v1, v2, v3

    :try_start_2
    iget-object v1, v1, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v1}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->abort()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_e
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :catch_2
    move-exception v1

    if-nez v0, :cond_e

    move-object v0, v1

    goto :goto_a

    :cond_f
    new-instance v1, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v2, "auth.37"

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v0

    :cond_10
    iput-boolean v2, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loggedIn:Z

    return-void

    :cond_11
    move v1, v2

    goto/16 :goto_5

    :cond_12
    move-object v0, v1

    goto/16 :goto_4

    :cond_13
    move v0, v2

    goto/16 :goto_2

    :cond_14
    move-object v0, v1

    goto :goto_8

    :cond_15
    move-object v1, v0

    goto/16 :goto_7
.end method

.method private logoutImpl()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    if-nez v1, :cond_0

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v1, "auth.38"

    invoke-direct {v0, v1}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loggedIn:Z

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->modules:[Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;

    array-length v5, v4

    move v3, v0

    :goto_0
    if-lt v3, v5, :cond_2

    if-nez v1, :cond_1

    if-nez v0, :cond_5

    :cond_1
    instance-of v0, v1, Ljava/security/PrivilegedActionException;

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    move-object v0, v1

    :goto_1
    instance-of v1, v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    if-eqz v1, :cond_4

    check-cast v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v0

    :cond_2
    aget-object v2, v4, v3

    :try_start_0
    iget-object v2, v2, Lorg/apache/harmony/javax/security/auth/login/LoginContext$Module;->module:Lorg/apache/harmony/javax/security/auth/spi/LoginModule;

    invoke-interface {v2}, Lorg/apache/harmony/javax/security/auth/spi/LoginModule;->logout()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :catch_0
    move-exception v2

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_4
    new-instance v1, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    const-string v2, "auth.37"

    invoke-direct {v1, v2}, Lorg/apache/harmony/javax/security/auth/login/LoginException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/harmony/javax/security/auth/login/LoginException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v0

    :cond_5
    return-void

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getSubject()Lorg/apache/harmony/javax/security/auth/Subject;
    .locals 1

    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedSubject:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->loggedIn:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->subject:Lorg/apache/harmony/javax/security/auth/Subject;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public login()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$2;

    invoke-direct {v0, p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$2;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v0
.end method

.method public logout()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/harmony/javax/security/auth/login/LoginException;
        }
    .end annotation

    new-instance v0, Lorg/apache/harmony/javax/security/auth/login/LoginContext$3;

    invoke-direct {v0, p0}, Lorg/apache/harmony/javax/security/auth/login/LoginContext$3;-><init>(Lorg/apache/harmony/javax/security/auth/login/LoginContext;)V

    :try_start_0
    iget-boolean v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userProvidedConfig:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/harmony/javax/security/auth/login/LoginContext;->userContext:Ljava/security/AccessControlContext;

    invoke-static {v0, v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/javax/security/auth/login/LoginException;

    throw v0
.end method
