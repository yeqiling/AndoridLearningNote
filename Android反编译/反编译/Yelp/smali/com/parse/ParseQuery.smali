.class public Lcom/parse/ParseQuery;
.super Ljava/lang/Object;
.source "ParseQuery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseQuery$CacheThenNetworkCallable;,
        Lcom/parse/ParseQuery$State;,
        Lcom/parse/ParseQuery$CachePolicy;,
        Lcom/parse/ParseQuery$RelationConstraint;,
        Lcom/parse/ParseQuery$KeyConstraints;,
        Lcom/parse/ParseQuery$QueryConstraints;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/parse/ParseObject;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final builder:Lcom/parse/ParseQuery$State$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation
.end field

.field private cts:Lbolts/Task$TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">.TaskCompletionSource;"
        }
    .end annotation
.end field

.field private isRunning:Z

.field private final lock:Ljava/lang/Object;

.field private user:Lcom/parse/ParseUser;


# direct methods
.method constructor <init>(Lcom/parse/ParseQuery$State$Builder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 889
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, builder:Lcom/parse/ParseQuery$State$Builder;,"Lcom/parse/ParseQuery$State$Builder<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 863
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/parse/ParseQuery;->lock:Ljava/lang/Object;

    .line 864
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    .line 890
    iput-object p1, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    .line 891
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 875
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, subclass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/parse/ParseObject;->getClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "theClassName"

    .prologue
    .line 886
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$State$Builder;

    invoke-direct {v0, p1}, Lcom/parse/ParseQuery$State$Builder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    .line 887
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 81
    invoke-static {}, Lcom/parse/ParseQuery;->throwIfLDSEnabled()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 81
    invoke-static {}, Lcom/parse/ParseQuery;->throwIfLDSDisabled()V

    return-void
.end method

.method static synthetic access$1700(Lcom/parse/ParseQuery;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parse/ParseQuery;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/parse/ParseQuery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-boolean p1, p0, Lcom/parse/ParseQuery;->isRunning:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/parse/ParseQuery;)Lbolts/Task$TaskCompletionSource;
    .locals 1
    .parameter "x0"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/parse/ParseQuery;->cts:Lbolts/Task$TaskCompletionSource;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/parse/ParseQuery;Lbolts/Task$TaskCompletionSource;)Lbolts/Task$TaskCompletionSource;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 81
    iput-object p1, p0, Lcom/parse/ParseQuery;->cts:Lbolts/Task$TaskCompletionSource;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseQuery;->getFirstAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/parse/ParseQuery;->countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private checkIfRunning()V
    .locals 1

    .prologue
    .line 918
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 919
    return-void
.end method

.method private checkIfRunning(Z)V
    .locals 3
    .parameter "grabLock"

    .prologue
    .line 922
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseQuery;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 923
    :try_start_0
    iget-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    if-eqz v0, :cond_0

    .line 924
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "This query has an outstanding network connection. You have to wait until it\'s done."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 930
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 926
    :cond_0
    if-eqz p1, :cond_1

    .line 927
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    .line 928
    invoke-static {}, Lbolts/Task;->create()Lbolts/Task$TaskCompletionSource;

    move-result-object v0

    iput-object v0, p0, Lcom/parse/ParseQuery;->cts:Lbolts/Task$TaskCompletionSource;

    .line 930
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 931
    return-void
.end method

.method public static clearAllCachedResults()V
    .locals 0

    .prologue
    .line 1407
    invoke-static {}, Lcom/parse/ParseQuery;->throwIfLDSEnabled()V

    .line 1409
    invoke-static {}, Lcom/parse/ParseKeyValueCache;->clearKeyValueCacheDir()V

    .line 1410
    return-void
.end method

.method private countAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1313
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$8;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$8;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter
    .parameter "user"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1328
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    .local p3, cancellationToken:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->getQueryController()Lcom/parse/ParseQueryController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/parse/ParseQueryController;->countAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private doCacheThenNetwork(Lcom/parse/ParseQuery$State;Lcom/parse/ParseCallback2;Lcom/parse/ParseQuery$CacheThenNetworkCallable;)Lbolts/Task;
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseCallback2",
            "<TTResult;",
            "Lcom/parse/ParseException;",
            ">;",
            "Lcom/parse/ParseQuery$CacheThenNetworkCallable",
            "<TT;",
            "Lbolts/Task",
            "<TTResult;>;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 1480
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    .local p2, callback:Lcom/parse/ParseCallback2;,"Lcom/parse/ParseCallback2<TTResult;Lcom/parse/ParseException;>;"
    .local p3, delegate:Lcom/parse/ParseQuery$CacheThenNetworkCallable;,"Lcom/parse/ParseQuery$CacheThenNetworkCallable<TT;Lbolts/Task<TTResult;>;>;"
    new-instance v0, Lcom/parse/ParseQuery$10;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/parse/ParseQuery$10;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;Lcom/parse/ParseQuery$CacheThenNetworkCallable;Lcom/parse/ParseCallback2;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable",
            "<",
            "Lbolts/Task",
            "<TTResult;>;>;)",
            "Lbolts/Task",
            "<TTResult;>;"
        }
    .end annotation

    .prologue
    .line 1105
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, runnable:Ljava/util/concurrent/Callable;,"Ljava/util/concurrent/Callable<Lbolts/Task<TTResult;>;>;"
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/parse/ParseQuery;->checkIfRunning(Z)V

    .line 1108
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbolts/Task;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    .local v1, task:Lbolts/Task;,"Lbolts/Task<TTResult;>;"
    :goto_0
    new-instance v2, Lcom/parse/ParseQuery$1;

    invoke-direct {v2, p0}, Lcom/parse/ParseQuery$1;-><init>(Lcom/parse/ParseQuery;)V

    invoke-virtual {v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    return-object v2

    .line 1109
    .end local v1           #task:Lbolts/Task;,"Lbolts/Task<TTResult;>;"
    :catch_0
    move-exception v0

    .line 1110
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lbolts/Task;->forError(Ljava/lang/Exception;)Lbolts/Task;

    move-result-object v1

    .restart local v1       #task:Lbolts/Task;,"Lbolts/Task<TTResult;>;"
    goto :goto_0
.end method

.method private findAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1169
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$3;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$3;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private getFirstAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1236
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$5;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$5;-><init>(Lcom/parse/ParseQuery;Lcom/parse/ParseQuery$State;)V

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->doWithRunningCheck(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private getFirstAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter
    .parameter "user"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1251
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    .local p3, cancellationToken:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->getQueryController()Lcom/parse/ParseQueryController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/parse/ParseQueryController;->getFirstAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getQuery(Ljava/lang/Class;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, subclass:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static getQuery(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 196
    new-instance v0, Lcom/parse/ParseQuery;

    invoke-direct {v0, p0}, Lcom/parse/ParseQuery;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static getQueryController()Lcom/parse/ParseQueryController;
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/parse/ParseCorePlugins;->getInstance()Lcom/parse/ParseCorePlugins;

    move-result-object v0

    invoke-virtual {v0}, Lcom/parse/ParseCorePlugins;->getQueryController()Lcom/parse/ParseQueryController;

    move-result-object v0

    return-object v0
.end method

.method public static getUserQuery()Lcom/parse/ParseQuery;
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Lcom/parse/ParseUser;->getQuery()Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public static or(Ljava/util/List;)Lcom/parse/ParseQuery;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/parse/ParseObject;",
            ">(",
            "Ljava/util/List",
            "<",
            "Lcom/parse/ParseQuery",
            "<TT;>;>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, queries:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseQuery<TT;>;>;"
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 165
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Can\'t take an or of an empty list of queries"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 168
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, builders:Ljava/util/List;,"Ljava/util/List<Lcom/parse/ParseQuery$State$Builder<TT;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/parse/ParseQuery;

    .line 170
    .local v2, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {v2}, Lcom/parse/ParseQuery;->getBuilder()Lcom/parse/ParseQuery$State$Builder;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    .end local v2           #query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    :cond_1
    new-instance v3, Lcom/parse/ParseQuery;

    invoke-static {v0}, Lcom/parse/ParseQuery$State$Builder;->or(Ljava/util/List;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/parse/ParseQuery;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    return-object v3
.end method

.method private static throwIfLDSDisabled()V
    .locals 1

    .prologue
    .line 273
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/parse/ParseQuery;->throwIfLDSEnabled(Z)V

    .line 274
    return-void
.end method

.method private static throwIfLDSEnabled()V
    .locals 1

    .prologue
    .line 269
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/parse/ParseQuery;->throwIfLDSEnabled(Z)V

    .line 270
    return-void
.end method

.method private static throwIfLDSEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 277
    invoke-static {}, Lcom/parse/Parse;->isLocalDatastoreEnabled()Z

    move-result v0

    .line 278
    .local v0, ldsEnabled:Z
    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    .line 279
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Method requires Local Datastore. Please refer to `Parse#enableLocalDatastore(Context)`."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 282
    :cond_0
    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    .line 283
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unsupported method when Local Datastore is enabled."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 285
    :cond_1
    return-void
.end method


# virtual methods
.method public addAscendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2015
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2016
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->addAscendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 2017
    return-object p0
.end method

.method public addDescendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2043
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2044
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->addDescendingOrder(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 2045
    return-object p0
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 938
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseQuery;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->cts:Lbolts/Task$TaskCompletionSource;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lcom/parse/ParseQuery;->cts:Lbolts/Task$TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/Task$TaskCompletionSource;->trySetCancelled()Z

    .line 941
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/parse/ParseQuery;->cts:Lbolts/Task$TaskCompletionSource;

    .line 943
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/parse/ParseQuery;->isRunning:Z

    .line 944
    monitor-exit v1

    .line 945
    return-void

    .line 944
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearCachedResult()V
    .locals 5

    .prologue
    .line 1383
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->throwIfLDSEnabled()V

    .line 1387
    iget-object v4, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v4}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v2

    .line 1389
    .local v2, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    const/4 v3, 0x0

    .line 1391
    .local v3, user:Lcom/parse/ParseUser;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/parse/ParseQuery;->getUserAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v4

    invoke-static {v4}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/parse/ParseUser;

    move-object v3, v0
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1395
    :goto_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v1

    .line 1398
    .local v1, sessionToken:Ljava/lang/String;
    :goto_1
    invoke-static {v2, v1}, Lcom/parse/ParseRESTQueryCommand;->findCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseRESTQueryCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/parse/ParseKeyValueCache;->clearFromKeyValueCache(Ljava/lang/String;)V

    .line 1401
    return-void

    .line 1395
    .end local v1           #sessionToken:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 1392
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public count()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1261
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->countInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public countInBackground()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1271
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    new-instance v0, Lcom/parse/ParseQuery$State$Builder;

    iget-object v2, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-direct {v0, v2}, Lcom/parse/ParseQuery$State$Builder;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    .line 1272
    .local v0, copy:Lcom/parse/ParseQuery$State$Builder;,"Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/parse/ParseQuery$State$Builder;->setLimit(I)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v1

    .line 1273
    .local v1, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    invoke-direct {p0, v1}, Lcom/parse/ParseQuery;->countAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v2

    return-object v2
.end method

.method public countInBackground(Lcom/parse/CountCallback;)V
    .locals 6
    .parameter "callback"

    .prologue
    .line 1284
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    new-instance v1, Lcom/parse/ParseQuery$State$Builder;

    iget-object v4, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-direct {v1, v4}, Lcom/parse/ParseQuery$State$Builder;-><init>(Lcom/parse/ParseQuery$State$Builder;)V

    .line 1285
    .local v1, copy:Lcom/parse/ParseQuery$State$Builder;,"Lcom/parse/ParseQuery$State$Builder<TT;>;"
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/parse/ParseQuery$State$Builder;->setLimit(I)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v2

    .line 1288
    .local v2, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    if-eqz p1, :cond_1

    new-instance v0, Lcom/parse/ParseQuery$6;

    invoke-direct {v0, p0, p1}, Lcom/parse/ParseQuery$6;-><init>(Lcom/parse/ParseQuery;Lcom/parse/CountCallback;)V

    .line 1298
    .local v0, c:Lcom/parse/ParseCallback2;,"Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    :goto_0
    invoke-virtual {v2}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v4

    sget-object v5, Lcom/parse/ParseQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1300
    :cond_0
    invoke-direct {p0, v2}, Lcom/parse/ParseQuery;->countAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v3

    .line 1309
    .local v3, task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Integer;>;"
    :goto_1
    invoke-static {v3, v0}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1310
    return-void

    .line 1288
    .end local v0           #c:Lcom/parse/ParseCallback2;,"Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    .end local v3           #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1302
    .restart local v0       #c:Lcom/parse/ParseCallback2;,"Lcom/parse/ParseCallback2<Ljava/lang/Integer;Lcom/parse/ParseException;>;"
    :cond_2
    new-instance v4, Lcom/parse/ParseQuery$7;

    invoke-direct {v4, p0}, Lcom/parse/ParseQuery$7;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v2, v0, v4}, Lcom/parse/ParseQuery;->doCacheThenNetwork(Lcom/parse/ParseQuery$State;Lcom/parse/ParseCallback2;Lcom/parse/ParseQuery$CacheThenNetworkCallable;)Lbolts/Task;

    move-result-object v3

    .restart local v3       #task:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Integer;>;"
    goto :goto_1
.end method

.method public find()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 957
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->findInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter
    .parameter "user"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;",
            "Lcom/parse/ParseUser;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1184
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    .local p3, cancellationToken:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->getQueryController()Lcom/parse/ParseQueryController;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/parse/ParseQueryController;->findAsync(Lcom/parse/ParseQuery$State;Lcom/parse/ParseUser;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public findInBackground()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 1137
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->findAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public findInBackground(Lcom/parse/FindCallback;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/FindCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1151
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, callback:Lcom/parse/FindCallback;,"Lcom/parse/FindCallback<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v2}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    .line 1154
    .local v0, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v2

    sget-object v3, Lcom/parse/ParseQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1156
    :cond_0
    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->findAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v1

    .line 1165
    .local v1, task:Lbolts/Task;,"Lbolts/Task<Ljava/util/List<TT;>;>;"
    :goto_0
    invoke-static {v1, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1166
    return-void

    .line 1158
    .end local v1           #task:Lbolts/Task;,"Lbolts/Task<Ljava/util/List<TT;>;>;"
    :cond_1
    new-instance v2, Lcom/parse/ParseQuery$2;

    invoke-direct {v2, p0}, Lcom/parse/ParseQuery$2;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v0, p1, v2}, Lcom/parse/ParseQuery;->doCacheThenNetwork(Lcom/parse/ParseQuery$State;Lcom/parse/ParseCallback2;Lcom/parse/ParseQuery$CacheThenNetworkCallable;)Lbolts/Task;

    move-result-object v1

    .restart local v1       #task:Lbolts/Task;,"Lbolts/Task<Ljava/util/List<TT;>;>;"
    goto :goto_0
.end method

.method public fromLocalDatastore()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1030
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->fromLocalDatastore()Lcom/parse/ParseQuery$State$Builder;

    .line 1031
    return-object p0
.end method

.method fromNetwork()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1010
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1012
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->fromNetwork()Lcom/parse/ParseQuery$State$Builder;

    .line 1013
    return-object p0
.end method

.method public fromPin()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1045
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1046
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->fromPin()Lcom/parse/ParseQuery$State$Builder;

    .line 1047
    return-object p0
.end method

.method public fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1062
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1063
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->fromPin(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 1064
    return-object p0
.end method

.method public get(Ljava/lang/String;)Lcom/parse/ParseObject;
    .locals 1
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 1345
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {p0, p1}, Lcom/parse/ParseQuery;->getInBackground(Ljava/lang/String;)Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method getBuilder()Lcom/parse/ParseQuery$State$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery$State$Builder",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 894
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    return-object v0
.end method

.method public getCachePolicy()Lcom/parse/ParseQuery$CachePolicy;
    .locals 1

    .prologue
    .line 997
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->getCachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2095
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->getClassName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFirst()Lcom/parse/ParseObject;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/parse/ParseException;
        }
    .end annotation

    .prologue
    .line 972
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-virtual {p0}, Lcom/parse/ParseQuery;->getFirstInBackground()Lbolts/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parse/ParseObject;

    return-object v0
.end method

.method public getFirstInBackground()Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1199
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery$State$Builder;->setLimit(I)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    .line 1201
    .local v0, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->getFirstAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public getFirstInBackground(Lcom/parse/GetCallback;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1217
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, callback:Lcom/parse/GetCallback;,"Lcom/parse/GetCallback<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/parse/ParseQuery$State$Builder;->setLimit(I)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    .line 1221
    .local v0, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v2

    sget-object v3, Lcom/parse/ParseQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1223
    :cond_0
    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->getFirstAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v1

    .line 1232
    .local v1, task:Lbolts/Task;,"Lbolts/Task<TT;>;"
    :goto_0
    invoke-static {v1, p1}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1233
    return-void

    .line 1225
    .end local v1           #task:Lbolts/Task;,"Lbolts/Task<TT;>;"
    :cond_1
    new-instance v2, Lcom/parse/ParseQuery$4;

    invoke-direct {v2, p0}, Lcom/parse/ParseQuery$4;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v0, p1, v2}, Lcom/parse/ParseQuery;->doCacheThenNetwork(Lcom/parse/ParseQuery$State;Lcom/parse/ParseCallback2;Lcom/parse/ParseQuery$CacheThenNetworkCallable;)Lbolts/Task;

    move-result-object v1

    .restart local v1       #task:Lbolts/Task;,"Lbolts/Task<TT;>;"
    goto :goto_0
.end method

.method public getInBackground(Ljava/lang/String;)Lbolts/Task;
    .locals 3
    .parameter "objectId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lbolts/Task",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1427
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iget-object v1, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/parse/ParseQuery$State$Builder;->setSkip(I)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/parse/ParseQuery$State$Builder;->whereObjectIdEquals(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    .line 1430
    .local v0, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->getFirstAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public getInBackground(Ljava/lang/String;Lcom/parse/GetCallback;)V
    .locals 4
    .parameter "objectId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/GetCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1448
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p2, callback:Lcom/parse/GetCallback;,"Lcom/parse/GetCallback<TT;>;"
    iget-object v2, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/parse/ParseQuery$State$Builder;->setSkip(I)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/parse/ParseQuery$State$Builder;->whereObjectIdEquals(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v0

    .line 1453
    .local v0, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    invoke-virtual {v0}, Lcom/parse/ParseQuery$State;->cachePolicy()Lcom/parse/ParseQuery$CachePolicy;

    move-result-object v2

    sget-object v3, Lcom/parse/ParseQuery$CachePolicy;->CACHE_THEN_NETWORK:Lcom/parse/ParseQuery$CachePolicy;

    if-ne v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State;->isFromLocalDatastore()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1455
    :cond_0
    invoke-direct {p0, v0}, Lcom/parse/ParseQuery;->getFirstAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v1

    .line 1464
    .local v1, task:Lbolts/Task;,"Lbolts/Task<TT;>;"
    :goto_0
    invoke-static {v1, p2}, Lcom/parse/ParseTaskUtils;->callbackOnMainThreadAsync(Lbolts/Task;Lcom/parse/ParseCallback2;)Lbolts/Task;

    .line 1465
    return-void

    .line 1457
    .end local v1           #task:Lbolts/Task;,"Lbolts/Task<TT;>;"
    :cond_1
    new-instance v2, Lcom/parse/ParseQuery$9;

    invoke-direct {v2, p0}, Lcom/parse/ParseQuery$9;-><init>(Lcom/parse/ParseQuery;)V

    invoke-direct {p0, v0, p2, v2}, Lcom/parse/ParseQuery;->doCacheThenNetwork(Lcom/parse/ParseQuery$State;Lcom/parse/ParseCallback2;Lcom/parse/ParseQuery$CacheThenNetworkCallable;)Lbolts/Task;

    move-result-object v1

    .restart local v1       #task:Lbolts/Task;,"Lbolts/Task<TT;>;"
    goto :goto_0
.end method

.method public getLimit()I
    .locals 1

    .prologue
    .line 2067
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->getLimit()I

    move-result v0

    return v0
.end method

.method public getMaxCacheAge()J
    .locals 2

    .prologue
    .line 1098
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->getMaxCacheAge()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSkip()I
    .locals 1

    .prologue
    .line 2088
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->getSkip()I

    move-result v0

    return v0
.end method

.method getUserAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$State",
            "<TT;>;)",
            "Lbolts/Task",
            "<",
            "Lcom/parse/ParseUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 908
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    invoke-virtual {p1}, Lcom/parse/ParseQuery$State;->ignoreACLs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    .line 914
    :goto_0
    return-object v0

    .line 911
    :cond_0
    iget-object v0, p0, Lcom/parse/ParseQuery;->user:Lcom/parse/ParseUser;

    if-eqz v0, :cond_1

    .line 912
    iget-object v0, p0, Lcom/parse/ParseQuery;->user:Lcom/parse/ParseUser;

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 914
    :cond_1
    invoke-static {}, Lcom/parse/ParseUser;->getCurrentUserAsync()Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public hasCachedResult()Z
    .locals 10

    .prologue
    .line 1353
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-static {}, Lcom/parse/ParseQuery;->throwIfLDSEnabled()V

    .line 1357
    iget-object v6, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v6}, Lcom/parse/ParseQuery$State$Builder;->build()Lcom/parse/ParseQuery$State;

    move-result-object v4

    .line 1359
    .local v4, state:Lcom/parse/ParseQuery$State;,"Lcom/parse/ParseQuery$State<TT;>;"
    const/4 v5, 0x0

    .line 1361
    .local v5, user:Lcom/parse/ParseUser;
    :try_start_0
    invoke-virtual {p0, v4}, Lcom/parse/ParseQuery;->getUserAsync(Lcom/parse/ParseQuery$State;)Lbolts/Task;

    move-result-object v6

    invoke-static {v6}, Lcom/parse/ParseTaskUtils;->wait(Lbolts/Task;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/parse/ParseUser;

    move-object v5, v0
    :try_end_0
    .catch Lcom/parse/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1365
    :goto_0
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/parse/ParseUser;->getSessionToken()Ljava/lang/String;

    move-result-object v3

    .line 1371
    .local v3, sessionToken:Ljava/lang/String;
    :goto_1
    invoke-static {v4, v3}, Lcom/parse/ParseRESTQueryCommand;->findCommand(Lcom/parse/ParseQuery$State;Ljava/lang/String;)Lcom/parse/ParseRESTQueryCommand;

    move-result-object v6

    invoke-virtual {v6}, Lcom/parse/ParseRESTQueryCommand;->getCacheKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/parse/ParseQuery$State;->maxCacheAge()J

    move-result-wide v8

    invoke-static {v6, v8, v9}, Lcom/parse/ParseKeyValueCache;->loadFromKeyValueCache(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 1374
    .local v2, raw:Ljava/lang/String;
    if-eqz v2, :cond_1

    const/4 v6, 0x1

    :goto_2
    return v6

    .line 1365
    .end local v2           #raw:Ljava/lang/String;
    .end local v3           #sessionToken:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1374
    .restart local v2       #raw:Ljava/lang/String;
    .restart local v3       #sessionToken:Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 1362
    .end local v2           #raw:Ljava/lang/String;
    .end local v3           #sessionToken:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public ignoreACLs()Lcom/parse/ParseQuery;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1075
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1077
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->ignoreACLs()Lcom/parse/ParseQuery$State$Builder;

    .line 1078
    return-object p0
.end method

.method public include(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1939
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1940
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->include(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 1941
    return-object p0
.end method

.method isFromNetwork()Z
    .locals 1

    .prologue
    .line 1017
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0}, Lcom/parse/ParseQuery$State$Builder;->isFromNetwork()Z

    move-result v0

    return v0
.end method

.method public orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2000
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2001
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->orderByAscending(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 2002
    return-object p0
.end method

.method public orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2028
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2029
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->orderByDescending(Ljava/lang/String;)Lcom/parse/ParseQuery$State$Builder;

    .line 2030
    return-object p0
.end method

.method public selectKeys(Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1959
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p1, keys:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1960
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->selectKeys(Ljava/util/Collection;)Lcom/parse/ParseQuery$State$Builder;

    .line 1961
    return-object p0
.end method

.method public setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "newCachePolicy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseQuery$CachePolicy;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 987
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 989
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->setCachePolicy(Lcom/parse/ParseQuery$CachePolicy;)Lcom/parse/ParseQuery$State$Builder;

    .line 990
    return-object p0
.end method

.method public setLimit(I)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "newLimit"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2058
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2059
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->setLimit(I)Lcom/parse/ParseQuery$State$Builder;

    .line 2060
    return-object p0
.end method

.method public setMaxCacheAge(J)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "maxAgeInMilliseconds"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1087
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1089
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseQuery$State$Builder;->setMaxCacheAge(J)Lcom/parse/ParseQuery$State$Builder;

    .line 1090
    return-object p0
.end method

.method public setSkip(I)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "newSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2079
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2080
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->setSkip(I)Lcom/parse/ParseQuery$State$Builder;

    .line 2081
    return-object p0
.end method

.method public setTrace(Z)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "shouldTrace"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 2106
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 2107
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1}, Lcom/parse/ParseQuery$State$Builder;->setTracingEnabled(Z)Lcom/parse/ParseQuery$State$Builder;

    .line 2108
    return-object p0
.end method

.method setUser(Lcom/parse/ParseUser;)Lcom/parse/ParseQuery;
    .locals 0
    .parameter "user"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseUser;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 898
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    iput-object p1, p0, Lcom/parse/ParseQuery;->user:Lcom/parse/ParseUser;

    .line 899
    return-object p0
.end method

.method public whereContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1624
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1625
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$in"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery$State$Builder;

    .line 1626
    return-object p0
.end method

.method public whereContains(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "substring"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1890
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1891
    .local v0, regex:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1892
    return-object p0
.end method

.method public whereContainsAll(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1644
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1645
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$all"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery$State$Builder;

    .line 1646
    return-object p0
.end method

.method public whereDoesNotExist(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1987
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1988
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$exists"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1989
    return-object p0
.end method

.method public whereDoesNotMatchKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter "keyInQuery"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1717
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p3, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<*>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1718
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {p3}, Lcom/parse/ParseQuery;->getBuilder()Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/parse/ParseQuery$State$Builder;->whereDoesNotMatchKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;

    .line 1719
    return-object p0
.end method

.method public whereDoesNotMatchQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1680
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p2, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<*>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1681
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {p2}, Lcom/parse/ParseQuery;->getBuilder()Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/parse/ParseQuery$State$Builder;->whereDoesNotMatchQuery(Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;

    .line 1682
    return-object p0
.end method

.method public whereEndsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .parameter "key"
    .parameter "suffix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1924
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1925
    .local v0, regex:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1926
    return-object p0
.end method

.method public whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 1
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1528
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1529
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/parse/ParseQuery$State$Builder;->whereEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1530
    return-object p0
.end method

.method public whereExists(Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1973
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1974
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$exists"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1975
    return-object p0
.end method

.method public whereGreaterThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1576
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1577
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$gt"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1578
    return-object p0
.end method

.method public whereGreaterThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1608
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1609
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$gte"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1610
    return-object p0
.end method

.method public whereLessThan(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1544
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1545
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$lt"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1546
    return-object p0
.end method

.method public whereLessThanOrEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1592
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1593
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$lte"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1594
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter "regex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1848
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1849
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$regex"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1850
    return-object p0
.end method

.method public whereMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter "regex"
    .parameter "modifiers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1870
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1871
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$regex"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1872
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1873
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$options"

    invoke-virtual {v0, p1, v1, p3}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1875
    :cond_0
    return-object p0
.end method

.method public whereMatchesKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter "keyInQuery"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1698
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p3, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<*>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1699
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {p3}, Lcom/parse/ParseQuery;->getBuilder()Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/parse/ParseQuery$State$Builder;->whereMatchesKeyInQuery(Ljava/lang/String;Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;

    .line 1700
    return-object p0
.end method

.method public whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseQuery",
            "<*>;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1662
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p2, query:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<*>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1663
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    invoke-virtual {p2}, Lcom/parse/ParseQuery;->getBuilder()Lcom/parse/ParseQuery$State$Builder;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/parse/ParseQuery$State$Builder;->whereMatchesQuery(Ljava/lang/String;Lcom/parse/ParseQuery$State$Builder;)Lcom/parse/ParseQuery$State$Builder;

    .line 1664
    return-object p0
.end method

.method public whereNear(Ljava/lang/String;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter "point"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1749
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1750
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$nearSphere"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1751
    return-object p0
.end method

.method public whereNotContainedIn(Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1733
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    .local p2, values:Ljava/util/Collection;,"Ljava/util/Collection<+Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1734
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$nin"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)Lcom/parse/ParseQuery$State$Builder;

    .line 1735
    return-object p0
.end method

.method public whereNotEqualTo(Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery;
    .locals 2
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1560
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1561
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$ne"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1562
    return-object p0
.end method

.method public whereStartsWith(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;
    .locals 3
    .parameter "key"
    .parameter "prefix"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1907
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "^"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1908
    .local v0, regex:Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/parse/ParseQuery;->whereMatches(Ljava/lang/String;Ljava/lang/String;)Lcom/parse/ParseQuery;

    .line 1909
    return-object p0
.end method

.method public whereWithinGeoBox(Ljava/lang/String;Lcom/parse/ParseGeoPoint;Lcom/parse/ParseGeoPoint;)Lcom/parse/ParseQuery;
    .locals 4
    .parameter "key"
    .parameter "southwest"
    .parameter "northeast"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "Lcom/parse/ParseGeoPoint;",
            ")",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1825
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1826
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1827
    .local v0, array:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1828
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1829
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1830
    .local v1, dictionary:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Object;>;>;"
    const-string v2, "$box"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1831
    iget-object v2, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v3, "$within"

    invoke-virtual {v2, p1, v3, v1}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1832
    return-object p0
.end method

.method public whereWithinKilometers(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 3
    .parameter "key"
    .parameter "point"
    .parameter "maxDistance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "D)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1788
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1789
    sget-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_KM:D

    div-double v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parse/ParseQuery;->whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereWithinMiles(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 3
    .parameter "key"
    .parameter "point"
    .parameter "maxDistance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "D)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1769
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1770
    sget-wide v0, Lcom/parse/ParseGeoPoint;->EARTH_MEAN_RADIUS_MILE:D

    div-double v0, p3, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/parse/ParseQuery;->whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;

    move-result-object v0

    return-object v0
.end method

.method public whereWithinRadians(Ljava/lang/String;Lcom/parse/ParseGeoPoint;D)Lcom/parse/ParseQuery;
    .locals 3
    .parameter "key"
    .parameter "point"
    .parameter "maxDistance"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/parse/ParseGeoPoint;",
            "D)",
            "Lcom/parse/ParseQuery",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1805
    .local p0, this:Lcom/parse/ParseQuery;,"Lcom/parse/ParseQuery<TT;>;"
    invoke-direct {p0}, Lcom/parse/ParseQuery;->checkIfRunning()V

    .line 1806
    iget-object v0, p0, Lcom/parse/ParseQuery;->builder:Lcom/parse/ParseQuery$State$Builder;

    const-string v1, "$nearSphere"

    invoke-virtual {v0, p1, v1, p2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    move-result-object v0

    const-string v1, "$maxDistance"

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/parse/ParseQuery$State$Builder;->addCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/parse/ParseQuery$State$Builder;

    .line 1808
    return-object p0
.end method
