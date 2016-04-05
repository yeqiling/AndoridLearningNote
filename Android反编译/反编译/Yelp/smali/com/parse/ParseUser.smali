.class public Lcom/parse/ParseUser;
.super Lcom/parse/ParseObject;
.source "ParseUser.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_User"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseUser$State;
    }
.end annotation


# static fields
.field static final FILENAME_CURRENT_USER:Ljava/lang/String; = "currentUser"

.field private static final KEY_AUTH_DATA:Ljava/lang/String; = "authData"

.field private static final KEY_EMAIL:Ljava/lang/String; = "email"

.field private static final KEY_PASSWORD:Ljava/lang/String; = "password"

.field private static final KEY_SESSION_TOKEN:Ljava/lang/String; = "sessionToken"

.field private static final KEY_USERNAME:Ljava/lang/String; = "username"

.field private static final MUTEX_CURRENT_USER:Ljava/lang/Object; = null

.field static final PIN_CURRENT_USER:Ljava/lang/String; = "_currentUser"

.field private static final QUEUE_CURRENT_USER:Lcom/parse/TaskQueue;

.field private static final READ_ONLY_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static authenticationProviders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/parse/ParseAuthenticationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static autoUserEnabled:Z

.field static currentUser:Lcom/parse/ParseUser;

.field private static currentUserMatchesDisk:Z

.field private static final isAutoUserEnabledMutex:Ljava/lang/Object;

.field private static isRevocableSessionEnabled:Z

.field private static final isRevocableSessionEnabledMutex:Ljava/lang/Object;


# instance fields
.field private isCurrentUser:Z

.field private isLazy:Z

.field private isNew:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "sessionToken"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "authData"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseUser;->READ_ONLY_KEYS:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;

    .line 54
    new-instance v0, Lcom/parse/TaskQueue;

    invoke-direct {v0}, Lcom/parse/TaskQueue;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->QUEUE_CURRENT_USER:Lcom/parse/TaskQueue;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    .line 59
    sput-boolean v3, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 1712
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    .line 1746
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseUser;->isRevocableSessionEnabledMutex:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 151
    iput-boolean v0, p0, Lcom/parse/ParseUser;->isLazy:Z

    .line 152
    iput-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 153
    return-void
.end method

.method static synthetic access$100(Lcom/parse/ParseUser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parse/ParseUser;->cleanUpAuthData()V

    return-void
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    return v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    sput-boolean p0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/parse/ParseUser;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/parse/ParseUser;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parse/ParseUser;->logOutInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/parse/ParseUser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parse/ParseUser;->synchronizeAllAuthData()V

    return-void
.end method

.method static synthetic access$1500(Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-static {p0}, Lcom/parse/ParseUser;->logOutInBackground(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parse/ParseUser;->logOutAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/parse/ParseUser;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/parse/ParseUser;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->getAuthData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->removeAuthData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/parse/ParseUser;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    return-void
.end method

.method static synthetic access$2200(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/parse/ParseUser;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/util/Map;Lbolts/Task;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/parse/ParseUser;->linkWithAsync(Ljava/lang/String;Ljava/util/Map;Lbolts/Task;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/parse/ParseUser;Lcom/parse/ParseUser$State;Lcom/parse/ParseOperationSet;)Lcom/parse/ParseRESTUserCommand;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseUser;->currentServiceLogInCommand(Lcom/parse/ParseUser$State;Lcom/parse/ParseOperationSet;)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->upgradeToRevocableSessionAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/parse/ParseUser;Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->setSessionTokenInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->signUpAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/parse/ParseUser;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->restoreAnonymity(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/parse/ParseUser;->isRevocableSessionEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/parse/ParseUser;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/parse/ParseUser;->isNew:Z

    return p1
.end method

.method static synthetic access$702(Lcom/parse/ParseUser;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/parse/ParseUser;->isLazy:Z

    return p1
.end method

.method static synthetic access$800(ZLbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->getCurrentUserAsync(ZLbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;

    return-object v0
.end method

.method public static become(Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1
    .parameter "sessionToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 935
    invoke-static {p0}, Lcom/parse/ParseUser;->becomeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static becomeInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .parameter "sessionToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 901
    if-nez p0, :cond_0

    .line 902
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a sessionToken for the user to log in with"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 905
    :cond_0
    invoke-static {p0}, Lcom/parse/ParseRESTUserCommand;->getCurrentUserCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 906
    .local v0, command:Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$8;

    invoke-direct {v2}, Lcom/parse/ParseUser$8;-><init>()V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static becomeInBackground(Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .parameter "sessionToken"
    .parameter "callback"

    .prologue
    .line 951
    invoke-static {p0}, Lcom/parse/ParseUser;->becomeInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 952
    return-void
.end method

.method private cleanUpAuthData()V
    .locals 7

    .prologue
    .line 342
    iget-object v5, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 343
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseUser$State;->authData()Ljava/util/Map;

    move-result-object v0

    .line 344
    .local v0, authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 345
    monitor-exit v5

    .line 364
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 349
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 351
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 352
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 353
    sget-object v4, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 354
    sget-object v4, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseAuthenticationProvider;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/parse/ParseAuthenticationProvider;->restoreAuthentication(Ljava/util/Map;)Z

    goto :goto_1

    .line 363
    .end local v0           #authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 359
    .restart local v0       #authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v2       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseUser$State;->newBuilder()Lcom/parse/ParseUser$State$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/parse/ParseUser$State$Builder;->authData(Ljava/util/Map;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v3

    .line 362
    .local v3, newState:Lcom/parse/ParseUser$State;
    invoke-virtual {p0, v3}, Lcom/parse/ParseUser;->setState(Lcom/parse/ParseObject$State;)V

    .line 363
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static clearCurrentUserFromMemory()V
    .locals 2

    .prologue
    .line 1829
    sget-object v1, Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;

    monitor-enter v1

    .line 1830
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 1831
    const/4 v0, 0x0

    sput-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 1832
    monitor-exit v1

    .line 1833
    return-void

    .line 1832
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private currentServiceLogInCommand(Lcom/parse/ParseUser$State;Lcom/parse/ParseOperationSet;)Lcom/parse/ParseRESTUserCommand;
    .locals 4
    .parameter "state"
    .parameter "operations"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 626
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v1

    invoke-static {}, Lcom/parse/PointerEncoder;->get()Lcom/parse/PointerEncoder;

    move-result-object v3

    invoke-virtual {p0, v1, p2, v3}, Lcom/parse/ParseUser;->toJSONObjectForSaving(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v0

    .line 627
    .local v0, params:Lorg/json/JSONObject;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 629
    invoke-virtual {p1}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/parse/ParseUser;->isRevocableSessionEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/parse/ParseRESTUserCommand;->serviceLogInUserCommand(Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;

    move-result-object v1

    return-object v1

    .line 627
    .end local v0           #params:Lorg/json/JSONObject;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static disableAutomaticUser()V
    .locals 2

    .prologue
    .line 1731
    sget-object v1, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1732
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1733
    monitor-exit v1

    .line 1734
    return-void

    .line 1733
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static disableRevocableSession()V
    .locals 2

    .prologue
    .line 1777
    sget-object v1, Lcom/parse/ParseUser;->isRevocableSessionEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1778
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/parse/ParseUser;->isRevocableSessionEnabled:Z

    .line 1779
    monitor-exit v1

    .line 1780
    return-void

    .line 1779
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static enableAutomaticUser()V
    .locals 2

    .prologue
    .line 1725
    sget-object v1, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1726
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    .line 1727
    monitor-exit v1

    .line 1728
    return-void

    .line 1727
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static enableRevocableSessionInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1760
    sget-object v1, Lcom/parse/ParseUser;->isRevocableSessionEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1761
    const/4 v0, 0x1

    :try_start_0
    sput-boolean v0, Lcom/parse/ParseUser;->isRevocableSessionEnabled:Z

    .line 1762
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1764
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseUser;->getCurrentUserAsync(Z)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$26;

    invoke-direct {v1}, Lcom/parse/ParseUser$26;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0

    .line 1762
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getAuthData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 404
    :try_start_0
    const-string v1, "authData"

    invoke-virtual {p0, v1}, Lcom/parse/ParseUser;->getMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 405
    .local v0, authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-nez v0, :cond_0

    .line 409
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 411
    .restart local v0       #authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    monitor-exit v2

    return-object v0

    .line 412
    .end local v0           #authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getAuthData(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .parameter "authType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    invoke-direct {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method static getCurrentSessionToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1089
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 1090
    .local v0, current:Lcom/parse/ParseUser;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getCurrentSessionTokenAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1095
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseUser;->getCurrentUserAsync(Z)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$11;

    invoke-direct {v1}, Lcom/parse/ParseUser$11;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentUser()Lcom/parse/ParseUser;
    .locals 1

    .prologue
    .line 966
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/parse/ParseUser;->getCurrentUser(Z)Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentUser(Z)Lcom/parse/ParseUser;
    .locals 2
    .parameter "shouldAutoCreateUser"

    .prologue
    .line 979
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseUser;->getCurrentUserAsync(Z)Lbolts/Task;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parse/ParseUser;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 982
    :goto_0
    return-object v1

    .line 980
    :catch_0
    move-exception v0

    .line 982
    .local v0, e:Lcom/parse/ParseException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getCurrentUserAsync()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 956
    invoke-static {}, Lcom/parse/ParseUser;->isAutomaticUserEnabled()Z

    move-result v0

    invoke-static {v0}, Lcom/parse/ParseUser;->getCurrentUserAsync(Z)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static getCurrentUserAsync(Z)Lbolts/Task;
    .locals 2
    .parameter "shouldAutoCreateUser"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 987
    sget-object v1, Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;

    monitor-enter v1

    .line 988
    :try_start_0
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    if-eqz v0, :cond_0

    .line 989
    sget-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 993
    :goto_0
    return-object v0

    .line 991
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    sget-object v0, Lcom/parse/ParseUser;->QUEUE_CURRENT_USER:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$9;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$9;-><init>(Z)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 991
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getCurrentUserAsync(ZLbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "shouldAutoCreateUser"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1003
    .local p1, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParseUser$10;

    invoke-direct {v0, p0}, Lcom/parse/ParseUser$10;-><init>(Z)V

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 67
    const-class v0, Lcom/parse/ParseUser;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method static isAutomaticUserEnabled()Z
    .locals 2

    .prologue
    .line 1737
    sget-object v1, Lcom/parse/ParseUser;->isAutoUserEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1738
    :try_start_0
    sget-boolean v0, Lcom/parse/ParseUser;->autoUserEnabled:Z

    monitor-exit v1

    return v0

    .line 1739
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static isRevocableSessionEnabled()Z
    .locals 2

    .prologue
    .line 1783
    sget-object v1, Lcom/parse/ParseUser;->isRevocableSessionEnabledMutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1784
    :try_start_0
    sget-boolean v0, Lcom/parse/ParseUser;->isRevocableSessionEnabled:Z

    monitor-exit v1

    return v0

    .line 1785
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static isRevocableSessionToken(Ljava/lang/String;)Z
    .locals 1
    .parameter "sessionToken"

    .prologue
    .line 1789
    const-string v0, "r:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private linkWithAsync(Ljava/lang/String;Ljava/util/Map;Lbolts/Task;Ljava/lang/String;)Lbolts/Task;
    .locals 4
    .parameter "authType"
    .parameter
    .parameter
    .parameter "sessionToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1560
    .local p2, authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    const-string v1, "anonymous"

    invoke-direct {p0, v1}, Lcom/parse/ParseUser;->getAuthData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 1561
    .local v0, oldAnonymousData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1562
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    .line 1563
    invoke-direct {p0, p1, p2}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 1567
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentSessionTokenAsync()Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/ParseUser$21;

    invoke-direct {v3, p0, p4, p3}, Lcom/parse/ParseUser$21;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Lbolts/Task;)V

    invoke-virtual {v1, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/ParseUser$20;

    invoke-direct {v3, p0, v0, p1}, Lcom/parse/ParseUser$20;-><init>(Lcom/parse/ParseUser;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 1585
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static logIn(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseUser;
    .locals 1
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 866
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .parameter "username"
    .parameter "password"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 827
    if-nez p0, :cond_0

    .line 828
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a username for the user to log in with"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 830
    :cond_0
    if-nez p1, :cond_1

    .line 831
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a password for the user to log in with"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 834
    :cond_1
    invoke-static {}, Lcom/parse/ParseUser;->isRevocableSessionEnabled()Z

    move-result v1

    invoke-static {p0, p1, v1}, Lcom/parse/ParseRESTUserCommand;->logInUserCommand(Ljava/lang/String;Ljava/lang/String;Z)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 836
    .local v0, command:Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$7;

    invoke-direct {v2}, Lcom/parse/ParseUser$7;-><init>()V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static logInInBackground(Ljava/lang/String;Ljava/lang/String;Lcom/parse/LogInCallback;)V
    .locals 1
    .parameter "username"
    .parameter "password"
    .parameter "callback"

    .prologue
    .line 885
    invoke-static {p0, p1}, Lcom/parse/ParseUser;->logInInBackground(Ljava/lang/String;Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 886
    return-void
.end method

.method static logInLazyUser(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseUser;
    .locals 3
    .parameter "authType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ParseUser;"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v1, Lcom/parse/ParseUser;

    invoke-static {v1}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    .line 167
    .local v0, user:Lcom/parse/ParseUser;
    iget-object v2, v0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 168
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, v0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 169
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/parse/ParseUser;->isLazy:Z

    .line 170
    invoke-direct {v0, p0, p1}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 171
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    sget-object v2, Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;

    monitor-enter v2

    .line 174
    const/4 v1, 0x0

    :try_start_1
    sput-boolean v1, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    .line 175
    sput-object v0, Lcom/parse/ParseUser;->currentUser:Lcom/parse/ParseUser;

    .line 176
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 178
    return-object v0

    .line 171
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 176
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method static logInWithAsync(Ljava/lang/String;Ljava/util/Map;)Lbolts/Task;
    .locals 3
    .parameter "authType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1457
    .local p1, authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lcom/parse/ParseUser$18;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseUser$18;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 1480
    .local v0, logInWithTask:Lbolts/Continuation;,"Lbolts/Continuation<Ljava/lang/Void;Lbolts/Task<Lcom/parse/ParseUser;>;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$19;

    invoke-direct {v2, p0, p1, v0}, Lcom/parse/ParseUser$19;-><init>(Ljava/lang/String;Ljava/util/Map;Lbolts/Continuation;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static logOut()V
    .locals 1

    .prologue
    .line 1278
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->logOutInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1283
    :goto_0
    return-void

    .line 1279
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private logOutAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1287
    invoke-direct {p0}, Lcom/parse/ParseUser;->logOutInternal()Ljava/lang/String;

    move-result-object v0

    .line 1288
    .local v0, oldSessionToken:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->revokeSessionTokenAsync(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static logOutInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1189
    sget-object v0, Lcom/parse/ParseUser;->QUEUE_CURRENT_USER:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$15;

    invoke-direct {v1}, Lcom/parse/ParseUser$15;-><init>()V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static logOutInBackground(Lbolts/Task;)Lbolts/Task;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1200
    .local p0, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/parse/ParseUser;->getCurrentUserAsync(Z)Lbolts/Task;

    move-result-object v0

    .line 1202
    .local v0, userTask:Lbolts/Task;,"Lbolts/Task<Lcom/parse/ParseUser;>;"
    new-instance v1, Lcom/parse/ParseUser$16;

    invoke-direct {v1, v0}, Lcom/parse/ParseUser$16;-><init>(Lbolts/Task;)V

    invoke-virtual {p0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static logOutInBackground(Lcom/parse/LogOutCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 1262
    invoke-static {}, Lcom/parse/ParseUser;->logOutInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1263
    return-void
.end method

.method private logOutInternal()Ljava/lang/String;
    .locals 7

    .prologue
    .line 1293
    iget-object v5, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v5

    .line 1294
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v3

    .line 1296
    .local v3, oldSessionToken:Ljava/lang/String;
    invoke-direct {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1297
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/parse/ParseUser;->logOutWith(Ljava/lang/String;)V

    goto :goto_0

    .line 1305
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #oldSessionToken:Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1300
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #oldSessionToken:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseUser$State;->newBuilder()Lcom/parse/ParseUser$State$Builder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/parse/ParseUser$State$Builder;->sessionToken(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    .line 1302
    .local v0, builder:Lcom/parse/ParseUser$State$Builder;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    .line 1303
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/parse/ParseUser;->isNew:Z

    .line 1304
    invoke-virtual {v0}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/parse/ParseUser;->setState(Lcom/parse/ParseObject$State;)V

    .line 1305
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1306
    return-object v3
.end method

.method private logOutWith(Ljava/lang/String;)V
    .locals 3
    .parameter "authType"

    .prologue
    .line 1599
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1600
    :try_start_0
    sget-object v1, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseAuthenticationProvider;

    .line 1601
    .local v0, provider:Lcom/parse/ParseAuthenticationProvider;
    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->isLinked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1602
    invoke-virtual {v0}, Lcom/parse/ParseAuthenticationProvider;->deauthenticate()V

    .line 1604
    :cond_0
    monitor-exit v2

    .line 1605
    return-void

    .line 1604
    .end local v0           #provider:Lcom/parse/ParseAuthenticationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static pinCurrentUserIfNeededAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .parameter "user"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1170
    sget-object v1, Lcom/parse/ParseUser;->MUTEX_CURRENT_USER:Ljava/lang/Object;

    monitor-enter v1

    .line 1171
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/parse/ParseUser;->currentUserMatchesDisk:Z

    if-eqz v0, :cond_1

    .line 1172
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 1176
    :goto_0
    return-object v0

    .line 1174
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 1174
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private putAuthData(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .parameter "authType"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p2, authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 421
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    .line 422
    .local v0, newAuthData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v1, "authData"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseUser;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 424
    monitor-exit v2

    .line 425
    return-void

    .line 424
    .end local v0           #newAuthData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static registerAuthenticationProvider(Lcom/parse/ParseAuthenticationProvider;)V
    .locals 3
    .parameter "provider"

    .prologue
    .line 1440
    sget-object v1, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/parse/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1442
    instance-of v1, p0, Lcom/parse/AnonymousAuthenticationProvider;

    if-eqz v1, :cond_1

    .line 1453
    :cond_0
    :goto_0
    return-void

    .line 1449
    :cond_1
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 1450
    .local v0, user:Lcom/parse/ParseUser;
    if-eqz v0, :cond_0

    .line 1451
    invoke-virtual {v0, p0}, Lcom/parse/ParseUser;->synchronizeAuthData(Lcom/parse/ParseAuthenticationProvider;)V

    goto :goto_0
.end method

.method private removeAuthData(Ljava/lang/String;)V
    .locals 3
    .parameter "authType"

    .prologue
    .line 428
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 429
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    .line 430
    .local v0, newAuthData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v1, "authData"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseUser;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 432
    monitor-exit v2

    .line 433
    return-void

    .line 432
    .end local v0           #newAuthData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static requestPasswordReset(Ljava/lang/String;)V
    .locals 1
    .parameter "email"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1350
    invoke-static {p0}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 1351
    return-void
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .parameter "email"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1332
    invoke-static {p0}, Lcom/parse/ParseRESTUserCommand;->resetUserPasswordCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    .line 1333
    .local v0, command:Lcom/parse/ParseRESTCommand;
    invoke-virtual {v0}, Lcom/parse/ParseRESTCommand;->executeAsync()Lbolts/Task;

    move-result-object v1

    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public static requestPasswordResetInBackground(Ljava/lang/String;Lcom/parse/RequestPasswordResetCallback;)V
    .locals 1
    .parameter "email"
    .parameter "callback"

    .prologue
    .line 1368
    invoke-static {p0}, Lcom/parse/ParseUser;->requestPasswordResetInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 1369
    return-void
.end method

.method private resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1621
    .local p1, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1622
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1623
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 1642
    :goto_0
    return-object v1

    .line 1625
    :cond_0
    invoke-direct {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1627
    invoke-direct {p0, p1}, Lcom/parse/ParseUser;->signUpAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/ParseUser$23;

    invoke-direct {v3, p0}, Lcom/parse/ParseUser$23;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v1, v3}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 1697
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1638
    :cond_1
    :try_start_1
    new-instance v0, Lbolts/Capture;

    invoke-direct {v0}, Lbolts/Capture;-><init>()V

    .line 1642
    .local v0, operations:Lbolts/Capture;,"Lbolts/Capture<Lcom/parse/ParseOperationSet;>;"
    new-instance v1, Lcom/parse/ParseUser$25;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$25;-><init>(Lcom/parse/ParseUser;)V

    invoke-static {v1}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v1

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(Lbolts/Task;)Lbolts/Continuation;

    move-result-object v3

    invoke-virtual {v1, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v3, Lcom/parse/ParseUser$24;

    invoke-direct {v3, p0, v0}, Lcom/parse/ParseUser$24;-><init>(Lcom/parse/ParseUser;Lbolts/Capture;)V

    invoke-virtual {v1, v3}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private restoreAnonymity(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, anonymousData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 521
    if-eqz p1, :cond_0

    .line 522
    :try_start_0
    const-string v0, "anonymous"

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 524
    :cond_0
    monitor-exit v1

    .line 525
    return-void

    .line 524
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private revokeSessionTokenAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 1
    .parameter "sessionToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1310
    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/parse/ParseUser;->isRevocableSessionToken(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1311
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 1313
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lcom/parse/ParseRESTUserCommand;->logOutUserCommand(Ljava/lang/String;)Lcom/parse/ParseRESTUserCommand;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseRESTUserCommand;->executeAsync()Lbolts/Task;

    move-result-object v0

    invoke-virtual {v0}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method private static saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;
    .locals 2
    .parameter "user"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1106
    sget-object v0, Lcom/parse/ParseUser;->QUEUE_CURRENT_USER:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$12;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$12;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private static saveCurrentUserAsync(Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .parameter "user"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1115
    .local p1, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    new-instance v0, Lcom/parse/ParseUser$14;

    invoke-direct {v0, p0}, Lcom/parse/ParseUser$14;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {p1, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$13;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$13;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private setSessionTokenInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .parameter "newSessionToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 394
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 395
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseUser$State;->newBuilder()Lcom/parse/ParseUser$State$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/parse/ParseUser$State$Builder;->sessionToken(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    .line 397
    .local v0, builder:Lcom/parse/ParseUser$State$Builder;
    invoke-virtual {v0}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/parse/ParseUser;->setState(Lcom/parse/ParseObject$State;)V

    .line 398
    invoke-static {p0}, Lcom/parse/ParseUser;->saveCurrentUserAsync(Lcom/parse/ParseUser;)Lbolts/Task;

    move-result-object v1

    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 399
    .end local v0           #builder:Lcom/parse/ParseUser$State$Builder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private signUpAsync(Lbolts/Task;)Lbolts/Task;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    .local p1, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v2

    .line 656
    .local v2, user:Lcom/parse/ParseUser;
    iget-object v8, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v8

    .line 657
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v7

    .line 658
    .local v7, sessionToken:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 659
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Username cannot be missing or blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    .line 737
    :goto_1
    return-object v0

    .line 657
    .end local v7           #sessionToken:Ljava/lang/String;
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 662
    .restart local v7       #sessionToken:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Password cannot be missing or blank"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    goto :goto_1

    .line 774
    .end local v7           #sessionToken:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 666
    .restart local v7       #sessionToken:Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 671
    invoke-direct {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v6

    .line 672
    .local v6, authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v0, "anonymous"

    invoke-interface {v6, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "anonymous"

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 674
    invoke-virtual {p0, v7, p1}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    goto :goto_1

    .line 678
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot sign up a user that has already signed up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    goto :goto_1

    .line 684
    .end local v6           #authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_4
    iget-object v0, p0, Lcom/parse/ParseUser;->operationSetQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 685
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot sign up a user that is already signing up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    goto :goto_1

    .line 691
    :cond_5
    if-eqz v2, :cond_7

    invoke-static {v2}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 695
    if-ne p0, v2, :cond_6

    .line 696
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Attempt to merge currentUser with itself."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    goto :goto_1

    .line 700
    :cond_6
    invoke-virtual {p0}, Lcom/parse/ParseUser;->checkForChangesToMutableContainers()V

    .line 701
    invoke-virtual {v2}, Lcom/parse/ParseUser;->checkForChangesToMutableContainers()V

    .line 703
    invoke-virtual {v2}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v3

    .line 704
    .local v3, oldUsername:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/parse/ParseUser;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 705
    .local v4, oldPassword:Ljava/lang/String;
    const-string v0, "anonymous"

    invoke-direct {v2, v0}, Lcom/parse/ParseUser;->getAuthData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    .line 707
    .local v5, anonymousData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, p0}, Lcom/parse/ParseUser;->copyChangesFrom(Lcom/parse/ParseObject;)V

    .line 708
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/parse/ParseUser;->setUsername(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/parse/ParseUser;->setPassword(Ljava/lang/String;)V

    .line 710
    invoke-virtual {p0}, Lcom/parse/ParseUser;->revert()V

    .line 712
    invoke-virtual {v2, v7, p1}, Lcom/parse/ParseUser;->saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v9

    new-instance v0, Lcom/parse/ParseUser$4;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/parse/ParseUser$4;-><init>(Lcom/parse/ParseUser;Lcom/parse/ParseUser;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v9, v0}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8

    goto/16 :goto_1

    .line 737
    .end local v3           #oldUsername:Ljava/lang/String;
    .end local v4           #oldPassword:Ljava/lang/String;
    .end local v5           #anonymousData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    new-instance v0, Lcom/parse/ParseUser$6;

    invoke-direct {v0, p0}, Lcom/parse/ParseUser$6;-><init>(Lcom/parse/ParseUser;)V

    invoke-static {v0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    invoke-static {p1}, Lcom/parse/TaskQueue;->waitFor(Lbolts/Task;)Lbolts/Continuation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseUser$5;

    invoke-direct {v1, p0, v7}, Lcom/parse/ParseUser$5;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method private stripAnonymity()V
    .locals 3

    .prologue
    .line 507
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 508
    :try_start_0
    invoke-static {p0}, Lcom/parse/ParseAnonymousUtils;->isLinked(Lcom/parse/ParseUser;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 510
    const-string v0, "anonymous"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/parse/ParseUser;->putAuthData(Ljava/lang/String;Ljava/util/Map;)V

    .line 515
    :cond_0
    :goto_0
    monitor-exit v1

    .line 516
    return-void

    .line 512
    :cond_1
    const-string v0, "anonymous"

    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->removeAuthData(Ljava/lang/String;)V

    goto :goto_0

    .line 515
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private synchronizeAllAuthData()V
    .locals 4

    .prologue
    .line 1412
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1413
    :try_start_0
    invoke-direct {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1414
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V

    goto :goto_0

    .line 1416
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1417
    return-void
.end method

.method private synchronizeAuthData(Ljava/lang/String;)V
    .locals 3
    .parameter "authType"

    .prologue
    .line 1385
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 1386
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1387
    monitor-exit v2

    .line 1395
    :goto_0
    return-void

    .line 1389
    :cond_0
    sget-object v1, Lcom/parse/ParseUser;->authenticationProviders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseAuthenticationProvider;

    .line 1390
    .local v0, provider:Lcom/parse/ParseAuthenticationProvider;
    if-nez v0, :cond_1

    .line 1391
    monitor-exit v2

    goto :goto_0

    .line 1394
    .end local v0           #provider:Lcom/parse/ParseAuthenticationProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1393
    .restart local v0       #provider:Lcom/parse/ParseAuthenticationProvider;
    :cond_1
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->synchronizeAuthData(Lcom/parse/ParseAuthenticationProvider;)V

    .line 1394
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private upgradeToRevocableSessionAsync(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1802
    .local p1, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v0

    .line 1804
    .local v0, sessionToken:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/parse/ParseUser;->isRevocableSessionToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1808
    .end local p1           #toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    :goto_0
    return-object p1

    .restart local p1       #toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :cond_1
    new-instance v1, Lcom/parse/ParseUser$29;

    invoke-direct {v1, p0, v0}, Lcom/parse/ParseUser$29;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseUser$28;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$28;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic fetch()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetch()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetch()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 588
    invoke-super {p0}, Lcom/parse/ParseObject;->fetch()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method fetchAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 3
    .parameter "sessionToken"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 595
    .local p2, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 598
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 602
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->fetchAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$2;

    invoke-direct {v2, p0}, Lcom/parse/ParseUser$2;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method fetchFromLocalDatastoreAsync()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1704
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1705
    invoke-static {p0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 1707
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/parse/ParseObject;->fetchFromLocalDatastoreAsync()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic fetchIfNeeded()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/parse/ParseUser;->fetchIfNeeded()Lcom/parse/ParseUser;

    move-result-object v0

    return-object v0
.end method

.method public fetchIfNeeded()Lcom/parse/ParseUser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1374
    invoke-super {p0}, Lcom/parse/ParseObject;->fetchIfNeeded()Lcom/parse/ParseObject;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser;

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    const-string v0, "email"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 463
    const-string v0, "password"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 389
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getState()Lcom/parse/ParseObject$State;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v0

    return-object v0
.end method

.method getState()Lcom/parse/ParseUser$State;
    .locals 1

    .prologue
    .line 188
    invoke-super {p0}, Lcom/parse/ParseObject;->getState()Lcom/parse/ParseObject$State;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    const-string v0, "username"

    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 2
    .parameter "result"
    .parameter "operationsBeforeSave"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Lcom/parse/ParseOperationSet;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 370
    .local v0, success:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 371
    const-string v1, "password"

    invoke-virtual {p2, v1}, Lcom/parse/ParseOperationSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v1

    return-object v1

    .line 369
    .end local v0           #success:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAuthenticated()Z
    .locals 4

    .prologue
    .line 217
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 218
    :try_start_0
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 219
    .local v0, current:Lcom/parse/ParseUser;
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getState()Lcom/parse/ParseUser$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit v2

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 223
    .end local v0           #current:Lcom/parse/ParseUser;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isContainerObject(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1
    .parameter "key"
    .parameter "object"

    .prologue
    .line 204
    const-string v0, "authData"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->isContainerObject(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method isCurrentUser()Z
    .locals 2

    .prologue
    .line 380
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 381
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isCurrentUser:Z

    monitor-exit v1

    return v0

    .line 382
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isKeyMutable(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 162
    sget-object v0, Lcom/parse/ParseUser;->READ_ONLY_KEYS:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isLazy()Z
    .locals 2

    .prologue
    .line 197
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isLazy:Z

    monitor-exit v1

    return v0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isLinked(Ljava/lang/String;)Z
    .locals 2
    .parameter "authType"

    .prologue
    .line 1380
    invoke-direct {p0}, Lcom/parse/ParseUser;->getAuthData()Ljava/util/Map;

    move-result-object v0

    .line 1381
    .local v0, authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isNew()Z
    .locals 2

    .prologue
    .line 488
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 489
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseUser;->isNew:Z

    monitor-exit v1

    return v0

    .line 490
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method linkWithAsync(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lbolts/Task;
    .locals 2
    .parameter "authType"
    .parameter
    .parameter "sessionToken"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1590
    .local p2, authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$22;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/parse/ParseUser$22;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method mergeFromDiskJSON(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;)Lcom/parse/ParseObject$State;
    .locals 9
    .parameter "state"
    .parameter "json"

    .prologue
    .line 269
    iget-object v7, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v7

    .line 270
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseObject$State;->newBuilder()Lcom/parse/ParseObject$State$Init;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseUser$State$Builder;

    .line 272
    .local v0, builder:Lcom/parse/ParseUser$State$Builder;
    const-string v6, "session_token"

    const/4 v8, 0x0

    invoke-virtual {p2, v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 273
    .local v5, newSessionToken:Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 274
    invoke-virtual {v0, v5}, Lcom/parse/ParseUser$State$Builder;->sessionToken(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;

    .line 275
    const-string v6, "session_token"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 278
    :cond_0
    const-string v6, "auth_data"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 279
    .local v4, newAuthData:Lorg/json/JSONObject;
    if-eqz v4, :cond_3

    .line 283
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 284
    .local v2, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 285
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 286
    .local v3, key:Ljava/lang/String;
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 287
    invoke-static {}, Lcom/parse/ParseDecoder;->get()Lcom/parse/ParseDecoder;

    move-result-object v6

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/parse/ParseDecoder;->decode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-virtual {v0, v3, v6}, Lcom/parse/ParseUser$State$Builder;->putAuthData(Ljava/lang/String;Ljava/util/Map;)Lcom/parse/ParseUser$State$Builder;

    .line 289
    :cond_1
    invoke-direct {p0, v3}, Lcom/parse/ParseUser;->synchronizeAuthData(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 291
    .end local v2           #i:Ljava/util/Iterator;
    .end local v3           #key:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 292
    .local v1, e:Lorg/json/JSONException;
    :try_start_2
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 299
    .end local v0           #builder:Lcom/parse/ParseUser$State$Builder;
    .end local v1           #e:Lorg/json/JSONException;
    .end local v4           #newAuthData:Lorg/json/JSONObject;
    .end local v5           #newSessionToken:Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 294
    .restart local v0       #builder:Lcom/parse/ParseUser$State$Builder;
    .restart local v2       #i:Ljava/util/Iterator;
    .restart local v4       #newAuthData:Lorg/json/JSONObject;
    .restart local v5       #newSessionToken:Ljava/lang/String;
    :cond_2
    :try_start_3
    const-string v6, "auth_data"

    invoke-virtual {p2, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 298
    .end local v2           #i:Ljava/util/Iterator;
    :cond_3
    invoke-virtual {v0}, Lcom/parse/ParseUser$State$Builder;->build()Lcom/parse/ParseUser$State;

    move-result-object v6

    invoke-super {p0, v6, p2}, Lcom/parse/ParseObject;->mergeFromDiskJSON(Lcom/parse/ParseObject$State;Lorg/json/JSONObject;)Lcom/parse/ParseObject$State;

    move-result-object v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-object v6
.end method

.method mergeFromObject(Lcom/parse/ParseObject;)V
    .locals 4
    .parameter "other"

    .prologue
    .line 305
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 307
    if-ne p0, p1, :cond_0

    .line 308
    :try_start_0
    monitor-exit v3

    .line 318
    :goto_0
    return-void

    .line 311
    :cond_0
    instance-of v2, p1, Lcom/parse/ParseUser;

    if-eqz v2, :cond_1

    .line 312
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser;

    move-object v1, v0

    .line 313
    .local v1, otherUser:Lcom/parse/ParseUser;
    invoke-virtual {v1}, Lcom/parse/ParseUser;->isNew()Z

    move-result v2

    iput-boolean v2, p0, Lcom/parse/ParseUser;->isNew:Z

    .line 316
    .end local v1           #otherUser:Lcom/parse/ParseUser;
    :cond_1
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->mergeFromObject(Lcom/parse/ParseObject;)V

    .line 317
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method bridge synthetic newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseObject$State$Init;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-virtual {p0, p1}, Lcom/parse/ParseUser;->newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;

    move-result-object v0

    return-object v0
.end method

.method newStateBuilder(Ljava/lang/String;)Lcom/parse/ParseUser$State$Builder;
    .locals 1
    .parameter "className"

    .prologue
    .line 183
    new-instance v0, Lcom/parse/ParseUser$State$Builder;

    invoke-direct {v0, p1}, Lcom/parse/ParseUser$State$Builder;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 497
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 498
    :try_start_0
    const-string v0, "username"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    invoke-direct {p0}, Lcom/parse/ParseUser;->stripAnonymity()V

    .line 502
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    monitor-exit v1

    .line 504
    return-void

    .line 503
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 228
    const-string v0, "username"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t remove the username key."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->remove(Ljava/lang/String;)V

    .line 232
    return-void
.end method

.method saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 3
    .parameter "sessionToken"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 553
    .local p2, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 555
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isLazy()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 556
    invoke-direct {p0, p2}, Lcom/parse/ParseUser;->resolveLazinessAsync(Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    invoke-virtual {v1}, Lbolts/Task;->makeVoid()Lbolts/Task;

    move-result-object v0

    .line 561
    .local v0, task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    new-instance v1, Lcom/parse/ParseUser$1;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$1;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 558
    .end local v0           #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    .restart local v0       #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_0

    .line 572
    .end local v0           #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 1
    .parameter "email"

    .prologue
    .line 473
    const-string v0, "email"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 474
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 459
    const-string v0, "password"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 460
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 442
    const-string v0, "username"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseUser;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    return-void
.end method

.method public signUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 792
    invoke-virtual {p0}, Lcom/parse/ParseUser;->signUpInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    .line 793
    return-void
.end method

.method public signUpInBackground()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$3;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$3;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public signUpInBackground(Lcom/parse/SignUpCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/parse/ParseUser;->signUpInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback1;)Lbolts/Task;

    .line 810
    return-void
.end method

.method synchronizeAuthData(Lcom/parse/ParseAuthenticationProvider;)V
    .locals 4
    .parameter "provider"

    .prologue
    .line 1398
    iget-object v3, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 1399
    :try_start_0
    invoke-virtual {p1}, Lcom/parse/ParseAuthenticationProvider;->getAuthType()Ljava/lang/String;

    move-result-object v0

    .line 1400
    .local v0, authType:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/parse/ParseUser;->getAuthData(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/parse/ParseAuthenticationProvider;->restoreAuthentication(Ljava/util/Map;)Z

    move-result v1

    .line 1401
    .local v1, success:Z
    if-nez v1, :cond_0

    .line 1402
    invoke-virtual {p0, v0}, Lcom/parse/ParseUser;->unlinkFromAsync(Ljava/lang/String;)Lbolts/Task;

    .line 1404
    :cond_0
    monitor-exit v3

    .line 1405
    return-void

    .line 1404
    .end local v0           #authType:Ljava/lang/String;
    .end local v1           #success:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method toJSONObjectForDataFile(Lcom/parse/ParseObject$State;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 8
    .parameter
    .parameter "objectEncoder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject$State;",
            ">(TT;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, state:Lcom/parse/ParseObject$State;,"TT;"
    iget-object v6, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v6

    .line 243
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->toJSONObjectForDataFile(Lcom/parse/ParseObject$State;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v3

    .line 245
    .local v3, objectJSON:Lorg/json/JSONObject;
    move-object v0, p1

    check-cast v0, Lcom/parse/ParseUser$State;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/parse/ParseUser$State;->sessionToken()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 246
    .local v4, sessionToken:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 248
    :try_start_1
    const-string v5, "session_token"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    :cond_0
    :try_start_2
    check-cast p1, Lcom/parse/ParseUser$State;

    .end local p1           #state:Lcom/parse/ParseObject$State;,"TT;"
    invoke-virtual {p1}, Lcom/parse/ParseUser$State;->authData()Ljava/util/Map;

    move-result-object v1

    .line 255
    .local v1, authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Map;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-lez v5, :cond_1

    .line 257
    :try_start_3
    const-string v5, "auth_data"

    invoke-virtual {p2, v1}, Lcom/parse/ParseEncoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    .line 263
    :cond_1
    :try_start_4
    monitor-exit v6

    return-object v3

    .line 249
    .end local v1           #authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local p1       #state:Lcom/parse/ParseObject$State;,"TT;"
    :catch_0
    move-exception v2

    .line 250
    .local v2, e:Lorg/json/JSONException;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "could not encode value for key: session_token"

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 264
    .end local v2           #e:Lorg/json/JSONException;
    .end local v3           #objectJSON:Lorg/json/JSONObject;
    .end local v4           #sessionToken:Ljava/lang/String;
    .end local p1           #state:Lcom/parse/ParseObject$State;,"TT;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 258
    .restart local v1       #authData:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v3       #objectJSON:Lorg/json/JSONObject;
    .restart local v4       #sessionToken:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 259
    .restart local v2       #e:Lorg/json/JSONException;
    :try_start_5
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v7, "could not attach key: auth_data"

    invoke-direct {v5, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method toRest(Lcom/parse/ParseObject$State;Ljava/util/List;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;
    .locals 5
    .parameter "state"
    .parameter
    .parameter "objectEncoder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseOperationSet;",
            ">;",
            "Lcom/parse/ParseEncoder;",
            ")",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 326
    .local p2, operationSetQueue:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    move-object v0, p2

    .line 327
    .local v0, cleanOperationSetQueue:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 328
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseOperationSet;

    .line 329
    .local v3, operations:Lcom/parse/ParseOperationSet;
    const-string v4, "password"

    invoke-virtual {v3, v4}, Lcom/parse/ParseOperationSet;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    if-ne v0, p2, :cond_0

    .line 331
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #cleanOperationSetQueue:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    invoke-direct {v0, p2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 333
    .restart local v0       #cleanOperationSetQueue:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseOperationSet;>;"
    :cond_0
    new-instance v1, Lcom/parse/ParseOperationSet;

    invoke-direct {v1, v3}, Lcom/parse/ParseOperationSet;-><init>(Lcom/parse/ParseOperationSet;)V

    .line 334
    .local v1, cleanOperations:Lcom/parse/ParseOperationSet;
    const-string v4, "password"

    invoke-virtual {v1, v4}, Lcom/parse/ParseOperationSet;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    invoke-interface {v0, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 327
    .end local v1           #cleanOperations:Lcom/parse/ParseOperationSet;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v3           #operations:Lcom/parse/ParseOperationSet;
    :cond_2
    invoke-super {p0, p1, v0, p3}, Lcom/parse/ParseObject;->toRest(Lcom/parse/ParseObject$State;Ljava/util/List;Lcom/parse/ParseEncoder;)Lorg/json/JSONObject;

    move-result-object v4

    return-object v4
.end method

.method unlinkFromAsync(Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .parameter "authType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1420
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 1421
    if-nez p1, :cond_0

    .line 1422
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    .line 1424
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    new-instance v2, Lcom/parse/ParseUser$17;

    invoke-direct {v2, p0, p1}, Lcom/parse/ParseUser$17;-><init>(Lcom/parse/ParseUser;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    monitor-exit v1

    goto :goto_0

    .line 1436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method upgradeToRevocableSessionAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1793
    iget-object v0, p0, Lcom/parse/ParseUser;->taskQueue:Lcom/parse/TaskQueue;

    new-instance v1, Lcom/parse/ParseUser$27;

    invoke-direct {v1, p0}, Lcom/parse/ParseUser$27;-><init>(Lcom/parse/ParseUser;)V

    invoke-virtual {v0, v1}, Lcom/parse/TaskQueue;->enqueue(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method validateDelete()V
    .locals 3

    .prologue
    .line 577
    iget-object v1, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v1

    .line 578
    :try_start_0
    invoke-super {p0}, Lcom/parse/ParseObject;->validateDelete()V

    .line 579
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot delete a ParseUser that is not authenticated."

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 582
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 583
    return-void
.end method

.method validateSave()V
    .locals 4

    .prologue
    .line 529
    iget-object v2, p0, Lcom/parse/ParseUser;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 530
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 531
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot save a ParseUser until it has been signed up. Call signUp first."

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 538
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 535
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/parse/ParseUser;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/parse/ParseUser;->isCurrentUser()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 536
    :cond_1
    monitor-exit v2

    .line 544
    :cond_2
    return-void

    .line 538
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v1

    if-nez v1, :cond_4

    .line 542
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUser()Lcom/parse/ParseUser;

    move-result-object v0

    .line 543
    .local v0, current:Lcom/parse/ParseUser;
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/parse/ParseUser;->getObjectId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 548
    .end local v0           #current:Lcom/parse/ParseUser;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot save a ParseUser that is not authenticated."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
