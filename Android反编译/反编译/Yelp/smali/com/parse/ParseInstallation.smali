.class public Lcom/parse/ParseInstallation;
.super Lcom/parse/ParseObject;
.source "ParseInstallation.java"


# annotations
.annotation runtime Lcom/parse/ParseClassName;
    value = "_Installation"
.end annotation


# static fields
.field static final FILENAME_CURRENT_INSTALLATION:Ljava/lang/String; = "currentInstallation"

.field private static final KEY_APP_IDENTIFIER:Ljava/lang/String; = "appIdentifier"

.field private static final KEY_APP_NAME:Ljava/lang/String; = "appName"

.field private static final KEY_APP_VERSION:Ljava/lang/String; = "appVersion"

.field private static final KEY_DEVICE_TOKEN:Ljava/lang/String; = "deviceToken"

.field private static final KEY_DEVICE_TOKEN_LAST_MODIFIED:Ljava/lang/String; = "deviceTokenLastModified"

.field private static final KEY_DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field private static final KEY_INSTALLATION_ID:Ljava/lang/String; = "installationId"

.field private static final KEY_PARSE_VERSION:Ljava/lang/String; = "parseVersion"

.field private static final KEY_PUSH_TYPE:Ljava/lang/String; = "pushType"

.field private static final KEY_TIME_ZONE:Ljava/lang/String; = "timeZone"

.field private static final MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object; = null

.field private static final PIN_CURRENT_INSTALLATION:Ljava/lang/String; = "_currentInstallation"

.field private static final READ_ONLY_FIELDS:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.parse.ParseInstallation"

.field static currentInstallation:Lcom/parse/ParseInstallation;

.field static installationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    .line 53
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "deviceType"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "installationId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "deviceToken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "pushType"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "timeZone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "appVersion"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "appName"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "parseVersion"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "deviceTokenLastModified"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "appIdentifier"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseInstallation;->READ_ONLY_FIELDS:Ljava/util/List;

    .line 59
    sput-object v3, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 62
    sput-object v3, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 184
    invoke-direct {p0}, Lcom/parse/ParseObject;-><init>()V

    .line 186
    return-void
.end method

.method static synthetic access$001(Lcom/parse/ParseInstallation;Ljava/lang/String;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 24
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->fetchAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/parse/ParseInstallation;)Lbolts/Task;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    invoke-static {p0}, Lcom/parse/ParseInstallation;->maybeFlushToDiskAsync(Lcom/parse/ParseInstallation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static clearCurrentInstallationFromDisk(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 429
    sget-object v1, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 431
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseInstallation;->installationId:Ljava/lang/String;

    .line 433
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    const-string v0, "_currentInstallation"

    invoke-static {v0}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    .line 437
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "currentInstallation"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/parse/ParseFileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 439
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->installationId()Lcom/parse/InstallationId;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/InstallationId;->clear()V

    .line 440
    monitor-exit v1

    .line 441
    return-void

    .line 440
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static clearCurrentInstallationFromMemory()V
    .locals 2

    .prologue
    .line 419
    sget-object v1, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v1

    .line 420
    const/4 v0, 0x0

    :try_start_0
    sput-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 421
    monitor-exit v1

    .line 422
    return-void

    .line 421
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getCurrentInstallation()Lcom/parse/ParseInstallation;
    .locals 8

    .prologue
    .line 94
    const/4 v3, 0x0

    .line 97
    .local v3, deserializedInstallationFromDisk:Z
    sget-object v7, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v7

    .line 98
    :try_start_0
    sget-object v1, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 99
    .local v1, current:Lcom/parse/ParseInstallation;
    monitor-exit v7

    .line 101
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 162
    .end local v1           #current:Lcom/parse/ParseInstallation;
    .local v2, current:Lcom/parse/ParseInstallation;
    :goto_0
    return-object v2

    .line 99
    .end local v2           #current:Lcom/parse/ParseInstallation;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 105
    .restart local v1       #current:Lcom/parse/ParseInstallation;
    :cond_0
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    :try_start_1
    const-class v6, Lcom/parse/ParseInstallation;

    invoke-static {v6}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v6

    const-string v7, "_currentInstallation"

    invoke-virtual {v6, v7}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParseQuery;->ignoreACLs()Lcom/parse/ParseQuery;

    move-result-object v4

    .line 111
    .local v4, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    invoke-virtual {v4}, Lcom/parse/ParseQuery;->findInBackground()Lbolts/Task;

    move-result-object v6

    new-instance v7, Lcom/parse/ParseInstallation$4;

    invoke-direct {v7}, Lcom/parse/ParseInstallation$4;-><init>()V

    invoke-virtual {v6, v7}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v6

    new-instance v7, Lcom/parse/ParseInstallation$3;

    invoke-direct {v7}, Lcom/parse/ParseInstallation$3;-><init>()V

    invoke-virtual {v6, v7}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v5

    .line 136
    .local v5, task:Lbolts/Task;,"Lbolts/Task<Lcom/parse/ParseInstallation;>;"
    invoke-static {v5}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/parse/ParseInstallation;

    move-object v1, v0
    :try_end_1
    .catch Lcom/parse/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    .line 144
    .end local v4           #query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    .end local v5           #task:Lbolts/Task;,"Lbolts/Task<Lcom/parse/ParseInstallation;>;"
    :goto_1
    if-nez v1, :cond_3

    .line 145
    const-class v6, Lcom/parse/ParseInstallation;

    invoke-static {v6}, Lcom/parse/ParseObject;->create(Ljava/lang/Class;)Lcom/parse/ParseObject;

    move-result-object v1

    .end local v1           #current:Lcom/parse/ParseInstallation;
    check-cast v1, Lcom/parse/ParseInstallation;

    .line 146
    .restart local v1       #current:Lcom/parse/ParseInstallation;
    invoke-direct {v1}, Lcom/parse/ParseInstallation;->updateDeviceInfo()V

    .line 152
    :goto_2
    if-eqz v3, :cond_1

    .line 155
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParsePlugins;->installationId()Lcom/parse/InstallationId;

    move-result-object v6

    invoke-virtual {v1}, Lcom/parse/ParseInstallation;->getInstallationId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/parse/InstallationId;->set(Ljava/lang/String;)V

    .line 158
    :cond_1
    sget-object v7, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v7

    .line 159
    :try_start_2
    sput-object v1, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    .line 160
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v1

    .line 162
    .end local v1           #current:Lcom/parse/ParseInstallation;
    .restart local v2       #current:Lcom/parse/ParseInstallation;
    goto :goto_0

    .line 141
    .end local v2           #current:Lcom/parse/ParseInstallation;
    .restart local v1       #current:Lcom/parse/ParseInstallation;
    :cond_2
    const-string v6, "currentInstallation"

    invoke-static {v6}, Lcom/parse/ParseInstallation;->getFromDisk(Ljava/lang/String;)Lcom/parse/ParseObject;

    move-result-object v1

    .end local v1           #current:Lcom/parse/ParseInstallation;
    check-cast v1, Lcom/parse/ParseInstallation;

    .restart local v1       #current:Lcom/parse/ParseInstallation;
    goto :goto_1

    .line 148
    :cond_3
    const/4 v3, 0x1

    .line 149
    const-string v6, "com.parse.ParseInstallation"

    const-string v7, "Successfully deserialized Installation object"

    invoke-static {v6, v7}, Lcom/parse/PLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 160
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .line 137
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static getQuery()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<",
            "Lcom/parse/ParseInstallation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    const-class v0, Lcom/parse/ParseInstallation;

    invoke-static {v0}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method static hasCurrentInstallationAsync()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    sget-object v2, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v2

    .line 67
    :try_start_0
    sget-object v1, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    if-eqz v1, :cond_0

    .line 68
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    .line 84
    :goto_0
    return-object v1

    .line 70
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    const-class v1, Lcom/parse/ParseInstallation;

    invoke-static {v1}, Lcom/parse/ParseQuery;->getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;

    move-result-object v1

    const-string v2, "_currentInstallation"

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseQuery;->ignoreACLs()Lcom/parse/ParseQuery;

    move-result-object v0

    .line 77
    .local v0, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    invoke-virtual {v0}, Lcom/parse/ParseQuery;->countInBackground()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseInstallation$1;

    invoke-direct {v2}, Lcom/parse/ParseInstallation$1;-><init>()V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    goto :goto_0

    .line 70
    .end local v0           #query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<Lcom/parse/ParseInstallation;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 84
    :cond_1
    new-instance v1, Lcom/parse/ParseInstallation$2;

    invoke-direct {v1}, Lcom/parse/ParseInstallation$2;-><init>()V

    sget-object v2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v2}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method private isCurrentInstallation()Z
    .locals 2

    .prologue
    .line 287
    sget-object v1, Lcom/parse/ParseInstallation;->MUTEX_CURRENT_INSTALLATION:Ljava/lang/Object;

    monitor-enter v1

    .line 288
    :try_start_0
    sget-object v0, Lcom/parse/ParseInstallation;->currentInstallation:Lcom/parse/ParseInstallation;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static maybeFlushToDiskAsync(Lcom/parse/ParseInstallation;)Lbolts/Task;
    .locals 3
    .parameter "installation"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseInstallation;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 385
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->isCurrentInstallation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 386
    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 415
    :goto_0
    return-object v0

    .line 390
    :cond_0
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    const-string v1, "_currentInstallation"

    invoke-static {v1}, Lcom/parse/ParseObject;->unpinAllInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseInstallation$10;

    invoke-direct {v2, p0}, Lcom/parse/ParseInstallation$10;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 407
    .local v0, task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :goto_1
    new-instance v1, Lcom/parse/ParseInstallation$12;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$12;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-static {}, Lcom/parse/ParseExecutors;->io()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    .line 415
    goto :goto_0

    .line 398
    .end local v0           #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :cond_1
    invoke-static {v2}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseInstallation$11;

    invoke-direct {v2, p0}, Lcom/parse/ParseInstallation$11;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .restart local v0       #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_1
.end method

.method private updateDeviceInfo()V
    .locals 3

    .prologue
    .line 336
    const-string v1, "installationId"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    const-string v1, "installationId"

    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParsePlugins;->installationId()Lcom/parse/InstallationId;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/InstallationId;->get()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 339
    :cond_0
    const-string v0, "android"

    .line 340
    .local v0, deviceType:Ljava/lang/String;
    const-string v1, "deviceType"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 341
    const-string v1, "deviceType"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    :cond_1
    return-void
.end method

.method private updateTimezone()V
    .locals 2

    .prologue
    .line 296
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, zone:Ljava/lang/String;
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gtz v1, :cond_0

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "timeZone"

    invoke-virtual {p0, v1}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 298
    const-string v1, "timeZone"

    invoke-virtual {p0, v1, v0}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 300
    :cond_1
    return-void
.end method

.method private updateVersionInfo()V
    .locals 10

    .prologue
    .line 303
    iget-object v8, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v8

    .line 305
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 306
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 307
    .local v4, packageName:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 308
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 309
    .local v5, pkgInfo:Landroid/content/pm/PackageInfo;
    iget-object v1, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 310
    .local v1, appVersion:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, appName:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v7, "appIdentifier"

    invoke-virtual {p0, v7}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 313
    const-string v7, "appIdentifier"

    invoke-virtual {p0, v7, v4}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    :cond_0
    if-eqz v0, :cond_1

    const-string v7, "appName"

    invoke-virtual {p0, v7}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 316
    const-string v7, "appName"

    invoke-virtual {p0, v7, v0}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    :cond_1
    if-eqz v1, :cond_2

    const-string v7, "appVersion"

    invoke-virtual {p0, v7}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 319
    const-string v7, "appVersion"

    invoke-virtual {p0, v7, v1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v0           #appName:Ljava/lang/String;
    .end local v1           #appVersion:Ljava/lang/String;
    .end local v2           #context:Landroid/content/Context;
    .end local v4           #packageName:Ljava/lang/String;
    .end local v5           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    :try_start_1
    const-string v7, "1.9.4"

    const-string v9, "parseVersion"

    invoke-virtual {p0, v9}, Lcom/parse/ParseInstallation;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 326
    const-string v7, "parseVersion"

    const-string v9, "1.9.4"

    invoke-virtual {p0, v7, v9}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 328
    :cond_3
    monitor-exit v8

    .line 329
    return-void

    .line 321
    :catch_0
    move-exception v3

    .line 322
    .local v3, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "com.parse.ParseInstallation"

    const-string v9, "Cannot load package info; will not be saved to installation"

    invoke-static {v7, v9}, Lcom/parse/PLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 328
    .end local v3           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method


# virtual methods
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
    .line 220
    .local p2, toAwait:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v2, p0, Lcom/parse/ParseInstallation;->mutex:Ljava/lang/Object;

    monitor-enter v2

    .line 225
    :try_start_0
    invoke-virtual {p0}, Lcom/parse/ParseInstallation;->getObjectId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/parse/ParseInstallation;->saveAsync(Ljava/lang/String;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    .line 230
    .local v0, result:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :goto_0
    new-instance v1, Lcom/parse/ParseInstallation$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/parse/ParseInstallation$5;-><init>(Lcom/parse/ParseInstallation;Ljava/lang/String;Lbolts/Task;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 228
    .end local v0           #result:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .restart local v0       #result:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    goto :goto_0

    .line 236
    .end local v0           #result:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDeviceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 360
    const-string v0, "deviceToken"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstallationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    const-string v0, "installationId"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPushType()Lcom/parse/PushType;
    .locals 1

    .prologue
    .line 346
    const-string v0, "pushType"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/PushType;->fromString(Ljava/lang/String;)Lcom/parse/PushType;

    move-result-object v0

    return-object v0
.end method

.method handleFetchResultAsync(Lcom/parse/ParseObject$State;)Lbolts/Task;
    .locals 2
    .parameter "newState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseObject$State;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 278
    invoke-super {p0, p1}, Lcom/parse/ParseObject;->handleFetchResultAsync(Lcom/parse/ParseObject$State;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseInstallation$9;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$9;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;
    .locals 3
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
    .line 242
    invoke-super {p0, p1, p2}, Lcom/parse/ParseObject;->handleSaveResultAsync(Lcom/parse/ParseObject$State;Lcom/parse/ParseOperationSet;)Lbolts/Task;

    move-result-object v0

    .line 244
    .local v0, task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    if-nez p1, :cond_0

    move-object v1, v0

    .line 268
    :goto_0
    return-object v1

    .line 250
    :cond_0
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    sget-object v2, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    if-ne v1, v2, :cond_1

    .line 251
    new-instance v1, Lcom/parse/ParseInstallation$7;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$7;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/ParseInstallation$6;

    invoke-direct {v2, p0}, Lcom/parse/ParseInstallation$6;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    .line 268
    :cond_1
    new-instance v1, Lcom/parse/ParseInstallation$8;

    invoke-direct {v1, p0}, Lcom/parse/ParseInstallation$8;-><init>(Lcom/parse/ParseInstallation;)V

    invoke-virtual {v0, v1}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    goto :goto_0
.end method

.method isDeviceTokenStale()Z
    .locals 4

    .prologue
    .line 364
    const-string v0, "deviceTokenLastModified"

    invoke-super {p0, v0}, Lcom/parse/ParseObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Lcom/parse/ManifestInfo;->getLastModified()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isKeyMutable(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 204
    sget-object v0, Lcom/parse/ParseInstallation;->READ_ONLY_FIELDS:Ljava/util/List;

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

.method needsDefaultACL()Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method removeDeviceToken()V
    .locals 1

    .prologue
    .line 380
    const-string v0, "deviceToken"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->performRemove(Ljava/lang/String;)V

    .line 381
    const-string v0, "deviceTokenLastModified"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->performRemove(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method removePushType()V
    .locals 1

    .prologue
    .line 356
    const-string v0, "pushType"

    invoke-virtual {p0, v0}, Lcom/parse/ParseInstallation;->performRemove(Ljava/lang/String;)V

    .line 357
    return-void
.end method

.method setDeviceToken(Ljava/lang/String;)V
    .locals 4
    .parameter "deviceToken"

    .prologue
    .line 373
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 374
    const-string v0, "deviceToken"

    invoke-virtual {p0, v0, p1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 375
    const-string v0, "deviceTokenLastModified"

    invoke-static {}, Lcom/parse/ManifestInfo;->getLastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 377
    :cond_0
    return-void
.end method

.method setDeviceTokenLastModified(J)V
    .locals 3
    .parameter "lastModified"

    .prologue
    .line 369
    const-string v0, "deviceTokenLastModified"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 370
    return-void
.end method

.method setPushType(Lcom/parse/PushType;)V
    .locals 2
    .parameter "pushType"

    .prologue
    .line 350
    if-eqz p1, :cond_0

    .line 351
    const-string v0, "pushType"

    invoke-virtual {p1}, Lcom/parse/PushType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/parse/ParseInstallation;->performPut(Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    :cond_0
    return-void
.end method

.method updateBeforeSave()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/parse/ParseObject;->updateBeforeSave()V

    .line 210
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->isCurrentInstallation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateTimezone()V

    .line 212
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateVersionInfo()V

    .line 213
    invoke-direct {p0}, Lcom/parse/ParseInstallation;->updateDeviceInfo()V

    .line 215
    :cond_0
    return-void
.end method
