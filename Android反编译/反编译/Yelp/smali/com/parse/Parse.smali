.class public Lcom/parse/Parse;
.super Ljava/lang/Object;
.source "Parse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/Parse$ParseCallbacks;
    }
.end annotation


# static fields
.field public static final LOG_LEVEL_DEBUG:I = 0x3

.field public static final LOG_LEVEL_ERROR:I = 0x6

.field public static final LOG_LEVEL_INFO:I = 0x4

.field public static final LOG_LEVEL_NONE:I = 0x7fffffff

.field public static final LOG_LEVEL_VERBOSE:I = 0x2

.field public static final LOG_LEVEL_WARNING:I = 0x5

.field private static final MUTEX:Ljava/lang/Object; = null

.field private static final MUTEX_CALLBACKS:Ljava/lang/Object; = null

.field private static final PARSE_APPLICATION_ID:Ljava/lang/String; = "com.parse.APPLICATION_ID"

.field private static final PARSE_CLIENT_KEY:Ljava/lang/String; = "com.parse.CLIENT_KEY"

.field private static callbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/parse/Parse$ParseCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

.field private static interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseNetworkInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field private static isLocalDatastoreEnabled:Z

.field private static offlineStore:Lcom/parse/OfflineStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 461
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    .line 462
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method static addParseNetworkInterceptor(Lcom/parse/ParseNetworkInterceptor;)V
    .locals 2
    .parameter "interceptor"

    .prologue
    .line 601
    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 602
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`Parse#addParseNetworkInterceptor(ParseNetworkInterceptor)` must be invoked before `Parse#initialize(Context)`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 605
    :cond_0
    sget-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    if-nez v0, :cond_1

    .line 606
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    .line 608
    :cond_1
    sget-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 609
    return-void
.end method

.method private static allParsePushIntentReceiversInternal()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 285
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const-string v6, "com.parse.push.intent.RECEIVE"

    aput-object v6, v5, v3

    const-string v6, "com.parse.push.intent.DELETE"

    aput-object v6, v5, v4

    const/4 v6, 0x2

    const-string v7, "com.parse.push.intent.OPEN"

    aput-object v7, v5, v6

    invoke-static {v5}, Lcom/parse/ManifestInfo;->getIntentReceivers([Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 290
    .local v1, intentReceivers:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 291
    .local v2, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v5, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-eqz v5, :cond_0

    .line 295
    .end local v2           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0
.end method

.method static checkCacheApplicationId()V
    .locals 12

    .prologue
    .line 340
    sget-object v9, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v9

    .line 341
    :try_start_0
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v8

    invoke-virtual {v8}, Lcom/parse/ParsePlugins;->applicationId()Ljava/lang/String;

    move-result-object v0

    .line 342
    .local v0, applicationId:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 343
    invoke-static {}, Lcom/parse/Parse;->getParseCacheDir()Ljava/io/File;

    move-result-object v3

    .line 346
    .local v3, dir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v8, "applicationId"

    invoke-direct {v1, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    .local v1, applicationIdFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    if-eqz v8, :cond_0

    .line 349
    const/4 v6, 0x0

    .line 351
    .local v6, matches:Z
    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v8, "r"

    invoke-direct {v5, v1, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 352
    .local v5, f:Ljava/io/RandomAccessFile;
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v10

    long-to-int v8, v10

    new-array v2, v8, [B

    .line 353
    .local v2, bytes:[B
    invoke-virtual {v5, v2}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 354
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    .line 355
    new-instance v4, Ljava/lang/String;

    const-string v8, "UTF-8"

    invoke-direct {v4, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 356
    .local v4, diskApplicationId:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v6

    .line 365
    .end local v2           #bytes:[B
    .end local v4           #diskApplicationId:Ljava/lang/String;
    .end local v5           #f:Ljava/io/RandomAccessFile;
    :goto_0
    if-nez v6, :cond_0

    .line 367
    :try_start_2
    invoke-static {v3}, Lcom/parse/ParseFileUtils;->deleteDirectory(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 375
    .end local v6           #matches:Z
    :cond_0
    :goto_1
    :try_start_3
    new-instance v1, Ljava/io/File;

    .end local v1           #applicationIdFile:Ljava/io/File;
    const-string v8, "applicationId"

    invoke-direct {v1, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 377
    .restart local v1       #applicationIdFile:Ljava/io/File;
    :try_start_4
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 378
    .local v7, out:Ljava/io/FileOutputStream;
    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 379
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 389
    .end local v1           #applicationIdFile:Ljava/io/File;
    .end local v3           #dir:Ljava/io/File;
    .end local v7           #out:Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    :try_start_5
    monitor-exit v9

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v8

    .line 368
    .restart local v1       #applicationIdFile:Ljava/io/File;
    .restart local v3       #dir:Ljava/io/File;
    .restart local v6       #matches:Z
    :catch_0
    move-exception v8

    goto :goto_1

    .line 385
    .end local v6           #matches:Z
    :catch_1
    move-exception v8

    goto :goto_2

    .line 382
    :catch_2
    move-exception v8

    goto :goto_2

    .line 380
    :catch_3
    move-exception v8

    goto :goto_2

    .line 359
    .restart local v6       #matches:Z
    :catch_4
    move-exception v8

    goto :goto_0

    .line 357
    :catch_5
    move-exception v8

    goto :goto_0
.end method

.method static checkContext()V
    .locals 2

    .prologue
    .line 440
    invoke-static {}, Lcom/parse/ParsePlugins$Android;->get()Lcom/parse/ParsePlugins$Android;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins$Android;->applicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 441
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationContext is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 445
    :cond_0
    return-void
.end method

.method static checkInit()V
    .locals 2

    .prologue
    .line 422
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->applicationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 428
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "applicationId is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_1
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->clientKey()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 433
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "clientKey is null. You must call Parse.initialize(Context) before using the Parse library."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 437
    :cond_2
    return-void
.end method

.method private static collectParseCallbacks()[Lcom/parse/Parse$ParseCallbacks;
    .locals 3

    .prologue
    .line 510
    sget-object v2, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v2

    .line 511
    :try_start_0
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v1, :cond_0

    .line 512
    const/4 v0, 0x0

    monitor-exit v2

    .line 519
    .local v0, callbacks:[Lcom/parse/Parse$ParseCallbacks;
    :goto_0
    return-object v0

    .line 514
    .end local v0           #callbacks:[Lcom/parse/Parse$ParseCallbacks;
    :cond_0
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v0, v1, [Lcom/parse/Parse$ParseCallbacks;

    .line 515
    .restart local v0       #callbacks:[Lcom/parse/Parse$ParseCallbacks;
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 516
    sget-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0           #callbacks:[Lcom/parse/Parse$ParseCallbacks;
    check-cast v0, [Lcom/parse/Parse$ParseCallbacks;

    .line 518
    .restart local v0       #callbacks:[Lcom/parse/Parse$ParseCallbacks;
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #callbacks:[Lcom/parse/Parse$ParseCallbacks;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static destroy()V
    .locals 3

    .prologue
    .line 250
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 251
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 252
    .local v0, queue:Lcom/parse/ParseEventuallyQueue;
    const/4 v1, 0x0

    sput-object v1, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 253
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/parse/ParseEventuallyQueue;->onDestroy()V

    .line 258
    :cond_0
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseCorePlugins;->reset()V

    .line 259
    invoke-static {}, Lcom/parse/ParsePlugins;->reset()V

    .line 260
    return-void

    .line 253
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static disableLocalDatastore()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/Parse;->setLocalDatastore(Lcom/parse/OfflineStore;)V

    .line 66
    return-void
.end method

.method private static dispatchOnParseInitialized()V
    .locals 5

    .prologue
    .line 500
    invoke-static {}, Lcom/parse/Parse;->collectParseCallbacks()[Lcom/parse/Parse$ParseCallbacks;

    move-result-object v2

    .line 501
    .local v2, callbacks:[Lcom/parse/Parse$ParseCallbacks;
    if-eqz v2, :cond_0

    .line 502
    move-object v0, v2

    .local v0, arr$:[Lcom/parse/Parse$ParseCallbacks;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 503
    .local v1, callback:Lcom/parse/Parse$ParseCallbacks;
    invoke-interface {v1}, Lcom/parse/Parse$ParseCallbacks;->onParseInitialized()V

    .line 502
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 506
    .end local v0           #arr$:[Lcom/parse/Parse$ParseCallbacks;
    .end local v1           #callback:Lcom/parse/Parse$ParseCallbacks;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method public static enableLocalDatastore(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 57
    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`Parse#enableLocalDatastore(Context)` must be invoked before `Parse#initialize(Context)`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    .line 62
    return-void
.end method

.method static getApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 271
    invoke-static {}, Lcom/parse/ParsePlugins$Android;->get()Lcom/parse/ParsePlugins$Android;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins$Android;->applicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static getEventuallyQueue()Lcom/parse/ParseEventuallyQueue;
    .locals 4

    .prologue
    .line 399
    invoke-static {}, Lcom/parse/ParsePlugins$Android;->get()Lcom/parse/ParsePlugins$Android;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParsePlugins$Android;->applicationContext()Landroid/content/Context;

    move-result-object v0

    .line 400
    .local v0, context:Landroid/content/Context;
    sget-object v3, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v3

    .line 401
    :try_start_0
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v1

    .line 402
    .local v1, isLocalDatastoreEnabled:Z
    sget-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    sget-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    instance-of v2, v2, Lcom/parse/ParseCommandCache;

    if-nez v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    sget-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    instance-of v2, v2, Lcom/parse/ParsePinningEventuallyQueue;

    if-eqz v2, :cond_2

    .line 405
    :cond_1
    invoke-static {}, Lcom/parse/Parse;->checkContext()V

    .line 406
    if-eqz v1, :cond_3

    new-instance v2, Lcom/parse/ParsePinningEventuallyQueue;

    invoke-direct {v2, v0}, Lcom/parse/ParsePinningEventuallyQueue;-><init>(Landroid/content/Context;)V

    :goto_0
    sput-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    .line 413
    if-eqz v1, :cond_2

    invoke-static {}, Lcom/parse/ParseCommandCache;->getPendingCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 414
    new-instance v2, Lcom/parse/ParseCommandCache;

    invoke-direct {v2, v0}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;)V

    .line 417
    :cond_2
    sget-object v2, Lcom/parse/Parse;->eventuallyQueue:Lcom/parse/ParseEventuallyQueue;

    monitor-exit v3

    return-object v2

    .line 406
    :cond_3
    new-instance v2, Lcom/parse/ParseCommandCache;

    invoke-direct {v2, v0}, Lcom/parse/ParseCommandCache;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 418
    .end local v1           #isLocalDatastoreEnabled:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static getLocalDatastore()Lcom/parse/OfflineStore;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/parse/Parse;->offlineStore:Lcom/parse/OfflineStore;

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .prologue
    .line 562
    invoke-static {}, Lcom/parse/PLog;->getLogLevel()I

    move-result v0

    return v0
.end method

.method static getParseCacheDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 308
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getParseCacheDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "subDir"

    .prologue
    .line 312
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 313
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 314
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 315
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 317
    :cond_0
    monitor-exit v2

    return-object v0

    .line 318
    .end local v0           #dir:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static getParseDir()Ljava/io/File;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 304
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->getParseDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getParseFilesDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 322
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParsePlugins;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getParseFilesDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "subDir"

    .prologue
    .line 326
    sget-object v2, Lcom/parse/Parse;->MUTEX:Ljava/lang/Object;

    monitor-enter v2

    .line 327
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/parse/Parse;->getParseFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 328
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 331
    :cond_0
    monitor-exit v2

    return-object v0

    .line 332
    .end local v0           #dir:Ljava/io/File;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static hasPermission(Ljava/lang/String;)Z
    .locals 1
    .parameter "permission"

    .prologue
    .line 448
    invoke-static {}, Lcom/parse/Parse;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 126
    .local v0, applicationContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/parse/ManifestInfo;->getApplicationMetadata(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v3

    .line 127
    .local v3, metaData:Landroid/os/Bundle;
    if-eqz v3, :cond_1

    .line 128
    const-string v4, "com.parse.APPLICATION_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, applicationId:Ljava/lang/String;
    const-string v4, "com.parse.CLIENT_KEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, clientKey:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 132
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ApplicationId not defined. You must provide ApplicationId in AndroidManifest.xml.\n<meta-data\n    android:name=\"com.parse.APPLICATION_ID\"\n    android:value=\"<Your Application Id>\" />"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    :cond_0
    if-nez v2, :cond_2

    .line 139
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "ClientKey not defined. You must provide ClientKey in AndroidManifest.xml.\n<meta-data\n    android:name=\"com.parse.CLIENT_KEY\"\n    android:value=\"<Your Client Key>\" />"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 146
    .end local v1           #applicationId:Ljava/lang/String;
    .end local v2           #clientKey:Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Can\'t get Application Metadata"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 148
    .restart local v1       #applicationId:Ljava/lang/String;
    .restart local v2       #clientKey:Ljava/lang/String;
    :cond_2
    invoke-static {p0, v1, v2}, Lcom/parse/Parse;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "applicationId"
    .parameter "clientKey"

    .prologue
    .line 178
    invoke-static {p0, p1, p2}, Lcom/parse/ParsePlugins$Android;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 181
    .local v0, applicationContext:Landroid/content/Context;
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/parse/ParseHttpClient;->setKeepAlive(Z)V

    .line 182
    const/16 v1, 0x14

    invoke-static {v1}, Lcom/parse/ParseHttpClient;->setMaxConnections(I)V

    .line 183
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v1

    invoke-static {v1}, Lcom/parse/ParseRequest;->setDefaultClient(Lcom/parse/ParseHttpClient;)V

    .line 185
    sget-object v1, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 186
    invoke-static {}, Lcom/parse/Parse;->initializeParseHttpClientsWithParseNetworkInterceptors()V

    .line 189
    :cond_0
    invoke-static {}, Lcom/parse/ParseObject;->registerParseSubclasses()V

    .line 191
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 192
    new-instance v1, Lcom/parse/OfflineStore;

    invoke-direct {v1, p0}, Lcom/parse/OfflineStore;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/parse/Parse;->offlineStore:Lcom/parse/OfflineStore;

    .line 199
    :goto_0
    invoke-static {}, Lcom/parse/Parse;->checkCacheApplicationId()V

    .line 200
    new-instance v1, Lcom/parse/Parse$1;

    const-string v2, "Parse.initialize Disk Check & Starting Command Cache"

    invoke-direct {v1, v2}, Lcom/parse/Parse$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/parse/Parse$1;->start()V

    .line 208
    invoke-static {}, Lcom/parse/ParseFieldOperations;->registerDefaultDecoders()V

    .line 210
    invoke-static {}, Lcom/parse/Parse;->allParsePushIntentReceiversInternal()Z

    move-result v1

    if-nez v1, :cond_2

    .line 211
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "To prevent external tampering to your app\'s notifications, all receivers registered to handle the following actions must have their exported attributes set to false: com.parse.push.intent.RECEIVE, com.parse.push.intent.OPEN, com.parse.push.intent.DELETE"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_1
    invoke-static {p0}, Lcom/parse/ParseKeyValueCache;->initialize(Landroid/content/Context;)V

    goto :goto_0

    .line 219
    :cond_2
    invoke-static {}, Lcom/parse/GcmRegistrar;->getInstance()Lcom/parse/GcmRegistrar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/GcmRegistrar;->registerAsync()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/Parse$3;

    invoke-direct {v2}, Lcom/parse/Parse$3;-><init>()V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/parse/Parse$2;

    invoke-direct {v2}, Lcom/parse/Parse$2;-><init>()V

    sget-object v3, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v1, v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    .line 236
    invoke-static {}, Lcom/parse/ManifestInfo;->getPushUsesBroadcastReceivers()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/parse/ManifestInfo;->getPushType()Lcom/parse/PushType;

    move-result-object v1

    sget-object v2, Lcom/parse/PushType;->PPNS:Lcom/parse/PushType;

    if-ne v1, v2, :cond_3

    .line 237
    invoke-static {v0}, Lcom/parse/PushService;->startServiceIfRequired(Landroid/content/Context;)V

    .line 240
    :cond_3
    invoke-static {}, Lcom/parse/Parse;->dispatchOnParseInitialized()V

    .line 243
    sget-object v2, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v2

    .line 244
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    .line 245
    monitor-exit v2

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static initializeParseHttpClientsWithParseNetworkInterceptors()V
    .locals 6

    .prologue
    .line 577
    sget-object v5, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    if-nez v5, :cond_0

    .line 597
    .local v0, clients:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseHttpClient;>;"
    :goto_0
    return-void

    .line 581
    .end local v0           #clients:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseHttpClient;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 584
    .restart local v0       #clients:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseHttpClient;>;"
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParsePlugins;->restClient()Lcom/parse/ParseHttpClient;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseCorePlugins;->getFileController()Lcom/parse/ParseFileController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/parse/ParseFileController;->awsClient()Lcom/parse/ParseHttpClient;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/parse/ParseHttpClient;

    .line 590
    .local v4, parseHttpClient:Lcom/parse/ParseHttpClient;
    sget-object v5, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/parse/ParseNetworkInterceptor;

    .line 591
    .local v3, interceptor:Lcom/parse/ParseNetworkInterceptor;
    invoke-virtual {v4, v3}, Lcom/parse/ParseHttpClient;->addExternalInterceptor(Lcom/parse/ParseNetworkInterceptor;)V

    goto :goto_1

    .line 596
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #interceptor:Lcom/parse/ParseNetworkInterceptor;
    .end local v4           #parseHttpClient:Lcom/parse/ParseHttpClient;
    :cond_2
    const/4 v5, 0x0

    sput-object v5, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    goto :goto_0
.end method

.method static isInitialized()Z
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/parse/ParsePlugins;->get()Lcom/parse/ParsePlugins;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isLocalDatastoreEnabled()Z
    .locals 1

    .prologue
    .line 78
    sget-boolean v0, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    return v0
.end method

.method static registerParseCallbacks(Lcom/parse/Parse$ParseCallbacks;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 472
    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must register callbacks before Parse.initialize(Context)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 477
    :cond_0
    sget-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v1

    .line 478
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v0, :cond_1

    .line 479
    monitor-exit v1

    .line 483
    :goto_0
    return-void

    .line 481
    :cond_1
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 482
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static removeParseNetworkInterceptor(Lcom/parse/ParseNetworkInterceptor;)V
    .locals 2
    .parameter "interceptor"

    .prologue
    .line 613
    invoke-static {}, Lcom/parse/Parse;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`Parse#addParseNetworkInterceptor(ParseNetworkInterceptor)` must be invoked before `Parse#initialize(Context)`"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 617
    :cond_0
    sget-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    if-nez v0, :cond_1

    .line 621
    :goto_0
    return-void

    .line 620
    :cond_1
    sget-object v0, Lcom/parse/Parse;->interceptors:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static requirePermission(Ljava/lang/String;)V
    .locals 3
    .parameter "permission"

    .prologue
    .line 453
    invoke-static {p0}, Lcom/parse/Parse;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To use this functionality, add this to your AndroidManifest.xml:\n<uses-permission android:name=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_0
    return-void
.end method

.method static setLocalDatastore(Lcom/parse/OfflineStore;)V
    .locals 1
    .parameter "offlineStore"

    .prologue
    .line 73
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/parse/Parse;->isLocalDatastoreEnabled:Z

    .line 74
    sput-object p0, Lcom/parse/Parse;->offlineStore:Lcom/parse/OfflineStore;

    .line 75
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setLogLevel(I)V
    .locals 0
    .parameter "logLevel"

    .prologue
    .line 555
    invoke-static {p0}, Lcom/parse/PLog;->setLogLevel(I)V

    .line 556
    return-void
.end method

.method static unregisterParseCallbacks(Lcom/parse/Parse$ParseCallbacks;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 491
    sget-object v1, Lcom/parse/Parse;->MUTEX_CALLBACKS:Ljava/lang/Object;

    monitor-enter v1

    .line 492
    :try_start_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 493
    monitor-exit v1

    .line 497
    :goto_0
    return-void

    .line 495
    :cond_0
    sget-object v0, Lcom/parse/Parse;->callbacks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 496
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
