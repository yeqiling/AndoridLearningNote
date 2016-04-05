.class abstract Lcom/parse/ParseRequest;
.super Ljava/lang/Object;
.source "ParseRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parse/ParseRequest$6;,
        Lcom/parse/ParseRequest$ParseRequestException;,
        Lcom/parse/ParseRequest$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Response:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final CORE_POOL_SIZE:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final CPU_COUNT:I = 0x0

.field static final DEFAULT_INITIAL_RETRY_DELAY:J = 0x3e8L

.field protected static final DEFAULT_MAX_RETRIES:I = 0x4

.field private static final KEEP_ALIVE_TIME:J = 0x1L

#the value of this static final field might be set in the static constructor
.field private static final MAX_POOL_SIZE:I = 0x0

.field private static final MAX_QUEUE_SIZE:I = 0x80

.field static final NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field private static defaultClient:Lcom/parse/ParseHttpClient;

.field private static defaultInitialRetryDelay:J

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private maxRetries:I

.field method:Lcom/parse/ParseRequest$Method;

.field url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 25
    new-instance v0, Lcom/parse/ParseRequest$1;

    invoke-direct {v0}, Lcom/parse/ParseRequest$1;-><init>()V

    sput-object v0, Lcom/parse/ParseRequest;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 37
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    .line 38
    sget v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/parse/ParseRequest;->CORE_POOL_SIZE:I

    .line 39
    sget v0, Lcom/parse/ParseRequest;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/parse/ParseRequest;->MAX_POOL_SIZE:I

    .line 54
    sget v0, Lcom/parse/ParseRequest;->CORE_POOL_SIZE:I

    sget v1, Lcom/parse/ParseRequest;->MAX_POOL_SIZE:I

    const-wide/16 v2, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v5, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    sget-object v6, Lcom/parse/ParseRequest;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static/range {v0 .. v6}, Lcom/parse/ParseRequest;->newThreadPoolExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/parse/ParseRequest;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 108
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/parse/ParseRequest;->defaultClient:Lcom/parse/ParseHttpClient;

    return-void
.end method

.method public constructor <init>(Lcom/parse/ParseRequest$Method;Ljava/lang/String;)V
    .locals 1
    .parameter "method"
    .parameter "url"

    .prologue
    .line 141
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const/4 v0, 0x4

    iput v0, p0, Lcom/parse/ParseRequest;->maxRetries:I

    .line 142
    iput-object p1, p0, Lcom/parse/ParseRequest;->method:Lcom/parse/ParseRequest$Method;

    .line 143
    iput-object p2, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 138
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    sget-object v0, Lcom/parse/ParseRequest$Method;->GET:Lcom/parse/ParseRequest$Method;

    invoke-direct {p0, v0, p1}, Lcom/parse/ParseRequest;-><init>(Lcom/parse/ParseRequest$Method;Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method static synthetic access$000(Lcom/parse/ParseRequest;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/parse/ParseRequest;->maxRetries:I

    return v0
.end method

.method static synthetic access$100(Lcom/parse/ParseRequest;Lcom/parse/ParseHttpClient;Lcom/parse/ParseHttpRequest;IJLcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 23
    invoke-direct/range {p0 .. p7}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ParseHttpRequest;IJLcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ParseHttpRequest;IJLcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 12
    .parameter "client"
    .parameter "request"
    .parameter "attemptsMade"
    .parameter "delay"
    .parameter "downloadProgressCallback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/ParseHttpRequest;",
            "IJ",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    .local p7, cancellationToken:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    if-eqz p7, :cond_0

    invoke-virtual/range {p7 .. p7}, Lbolts/Task;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 293
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v2

    .line 295
    :goto_0
    return-object v2

    :cond_0
    move-object/from16 v0, p6

    invoke-direct {p0, p1, p2, v0}, Lcom/parse/ParseRequest;->sendOneRequestAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ParseHttpRequest;Lcom/parse/ProgressCallback;)Lbolts/Task;

    move-result-object v11

    new-instance v2, Lcom/parse/ParseRequest$5;

    move-object v3, p0

    move-object/from16 v4, p7

    move v5, p3

    move-wide/from16 v6, p4

    move-object v8, p1

    move-object v9, p2

    move-object/from16 v10, p6

    invoke-direct/range {v2 .. v10}, Lcom/parse/ParseRequest$5;-><init>(Lcom/parse/ParseRequest;Lbolts/Task;IJLcom/parse/ParseHttpClient;Lcom/parse/ParseHttpRequest;Lcom/parse/ProgressCallback;)V

    invoke-virtual {v11, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v2

    goto :goto_0
.end method

.method private executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ParseHttpRequest;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 8
    .parameter "client"
    .parameter "request"
    .parameter "downloadProgressCallback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/ParseHttpRequest;",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 264
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    .local p4, cancellationToken:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    sget-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    sget-wide v2, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    long-to-double v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v6

    mul-double/2addr v2, v6

    double-to-long v2, v2

    add-long v4, v0, v2

    .line 266
    .local v4, delay:J
    if-eqz p4, :cond_0

    .line 267
    new-instance v0, Lcom/parse/ParseRequest$4;

    invoke-direct {v0, p0, p2}, Lcom/parse/ParseRequest$4;-><init>(Lcom/parse/ParseRequest;Lcom/parse/ParseHttpRequest;)V

    invoke-virtual {p4, v0}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 276
    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ParseHttpRequest;IJLcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultClient()Lcom/parse/ParseHttpClient;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 119
    sget-object v0, Lcom/parse/ParseRequest;->defaultClient:Lcom/parse/ParseHttpClient;

    if-nez v0, :cond_0

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t send Parse HTTPS request before Parse.initialize()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    sget-object v0, Lcom/parse/ParseRequest;->defaultClient:Lcom/parse/ParseHttpClient;

    return-object v0
.end method

.method public static getDefaultInitialRetryDelay()J
    .locals 2

    .prologue
    .line 129
    sget-wide v0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    return-wide v0
.end method

.method private static newThreadPoolExecutor(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10
    .parameter "corePoolSize"
    .parameter "maxPoolSize"
    .parameter "keepAliveTime"
    .parameter "timeUnit"
    .parameter
    .parameter "threadFactory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")",
            "Ljava/util/concurrent/ThreadPoolExecutor;"
        }
    .end annotation

    .prologue
    .line 46
    .local p5, workQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Runnable;>;"
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    move v2, p0

    move v3, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 48
    .local v1, executor:Ljava/util/concurrent/ThreadPoolExecutor;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_0

    .line 49
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 51
    :cond_0
    return-object v1
.end method

.method private sendOneRequestAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ParseHttpRequest;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 3
    .parameter "client"
    .parameter "request"
    .parameter "downloadProgressCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/ParseHttpRequest;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 184
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/parse/ParseRequest$3;-><init>(Lcom/parse/ParseRequest;Lcom/parse/ParseHttpClient;Lcom/parse/ParseHttpRequest;Lcom/parse/ProgressCallback;)V

    sget-object v2, Lcom/parse/ParseRequest;->NETWORK_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccessTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/parse/ParseRequest$2;

    invoke-direct {v1, p0}, Lcom/parse/ParseRequest$2;-><init>(Lcom/parse/ParseRequest;)V

    sget-object v2, Lbolts/Task;->BACKGROUND_EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public static setDefaultClient(Lcom/parse/ParseHttpClient;)V
    .locals 0
    .parameter "client"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    sput-object p0, Lcom/parse/ParseRequest;->defaultClient:Lcom/parse/ParseHttpClient;

    .line 116
    return-void
.end method

.method public static setDefaultInitialRetryDelay(J)V
    .locals 0
    .parameter "delay"

    .prologue
    .line 126
    sput-wide p0, Lcom/parse/ParseRequest;->defaultInitialRetryDelay:J

    .line 127
    return-void
.end method


# virtual methods
.method public executeAsync()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    invoke-static {}, Lcom/parse/ParseRequest;->getDefaultClient()Lcom/parse/ParseHttpClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lbolts/Task;)Lbolts/Task;
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
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    .local p1, cancellationToken:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 214
    invoke-static {}, Lcom/parse/ParseRequest;->getDefaultClient()Lcom/parse/ParseHttpClient;

    move-result-object v2

    move-object v0, v1

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, v2, v0, v1, p1}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lcom/parse/ParseHttpClient;)Lbolts/Task;
    .locals 2
    .parameter "client"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            ")",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    const/4 v1, 0x0

    .line 232
    move-object v0, v1

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lcom/parse/ParseHttpClient;Lbolts/Task;)Lbolts/Task;
    .locals 2
    .parameter "client"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    .local p2, cancellationToken:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    const/4 v1, 0x0

    .line 236
    move-object v0, v1

    check-cast v0, Lcom/parse/ProgressCallback;

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .locals 1
    .parameter "client"
    .parameter "uploadProgressCallback"
    .parameter "downloadProgressCallback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/ProgressCallback;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 3
    .parameter "client"
    .parameter "uploadProgressCallback"
    .parameter "downloadProgressCallback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpClient;",
            "Lcom/parse/ProgressCallback;",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    .local p4, cancellationToken:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    iget-object v1, p0, Lcom/parse/ParseRequest;->method:Lcom/parse/ParseRequest$Method;

    iget-object v2, p0, Lcom/parse/ParseRequest;->url:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, p2}, Lcom/parse/ParseRequest;->newRequest(Lcom/parse/ParseRequest$Method;Ljava/lang/String;Lcom/parse/ProgressCallback;)Lcom/parse/ParseHttpRequest;

    move-result-object v0

    .line 252
    .local v0, request:Lcom/parse/ParseHttpRequest;
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ParseHttpRequest;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v1

    return-object v1
.end method

.method public executeAsync(Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;
    .locals 1
    .parameter "uploadProgressCallback"
    .parameter "downloadProgressCallback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ProgressCallback;",
            "Lcom/parse/ProgressCallback;",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    .local p3, cancellationToken:Lbolts/Task;,"Lbolts/Task<Ljava/lang/Void;>;"
    invoke-static {}, Lcom/parse/ParseRequest;->getDefaultClient()Lcom/parse/ParseHttpClient;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/parse/ParseRequest;->executeAsync(Lcom/parse/ParseHttpClient;Lcom/parse/ProgressCallback;Lcom/parse/ProgressCallback;Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method protected newBody(Lcom/parse/ProgressCallback;)Lcom/parse/ParseHttpBody;
    .locals 1
    .parameter "uploadProgressCallback"

    .prologue
    .line 152
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected newPermanentException(ILjava/lang/String;)Lcom/parse/ParseException;
    .locals 2
    .parameter "code"
    .parameter "message"

    .prologue
    .line 352
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    new-instance v0, Lcom/parse/ParseRequest$ParseRequestException;

    invoke-direct {v0, p1, p2}, Lcom/parse/ParseRequest$ParseRequestException;-><init>(ILjava/lang/String;)V

    .line 353
    .local v0, e:Lcom/parse/ParseRequest$ParseRequestException;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    .line 354
    return-object v0
.end method

.method protected newRequest(Lcom/parse/ParseRequest$Method;Ljava/lang/String;Lcom/parse/ProgressCallback;)Lcom/parse/ParseHttpRequest;
    .locals 4
    .parameter "method"
    .parameter "url"
    .parameter "uploadProgressCallback"

    .prologue
    .line 159
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    new-instance v1, Lcom/parse/ParseHttpRequest$Builder;

    invoke-direct {v1}, Lcom/parse/ParseHttpRequest$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lcom/parse/ParseHttpRequest$Builder;->setMethod(Lcom/parse/ParseRequest$Method;)Lcom/parse/ParseHttpRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/parse/ParseHttpRequest$Builder;->setUrl(Ljava/lang/String;)Lcom/parse/ParseHttpRequest$Builder;

    move-result-object v0

    .line 163
    .local v0, requestBuilder:Lcom/parse/ParseHttpRequest$Builder;
    sget-object v1, Lcom/parse/ParseRequest$6;->$SwitchMap$com$parse$ParseRequest$Method:[I

    invoke-virtual {p1}, Lcom/parse/ParseRequest$Method;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 172
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :pswitch_0
    invoke-virtual {p0, p3}, Lcom/parse/ParseRequest;->newBody(Lcom/parse/ProgressCallback;)Lcom/parse/ParseHttpBody;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/parse/ParseHttpRequest$Builder;->setBody(Lcom/parse/ParseHttpBody;)Lcom/parse/ParseHttpRequest$Builder;

    .line 174
    :pswitch_1
    invoke-virtual {v0}, Lcom/parse/ParseHttpRequest$Builder;->build()Lcom/parse/ParseHttpRequest;

    move-result-object v1

    return-object v1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected newTemporaryException(ILjava/lang/String;)Lcom/parse/ParseException;
    .locals 2
    .parameter "code"
    .parameter "message"

    .prologue
    .line 361
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    new-instance v0, Lcom/parse/ParseRequest$ParseRequestException;

    invoke-direct {v0, p1, p2}, Lcom/parse/ParseRequest$ParseRequestException;-><init>(ILjava/lang/String;)V

    .line 362
    .local v0, e:Lcom/parse/ParseRequest$ParseRequestException;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    .line 363
    return-object v0
.end method

.method protected newTemporaryException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/parse/ParseException;
    .locals 2
    .parameter "message"
    .parameter "t"

    .prologue
    .line 372
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    new-instance v0, Lcom/parse/ParseRequest$ParseRequestException;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p1, p2}, Lcom/parse/ParseRequest$ParseRequestException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 374
    .local v0, e:Lcom/parse/ParseRequest$ParseRequestException;
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/parse/ParseRequest$ParseRequestException;->isPermanentFailure:Z

    .line 375
    return-object v0
.end method

.method protected abstract onResponseAsync(Lcom/parse/ParseHttpResponse;Lcom/parse/ProgressCallback;)Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/parse/ParseHttpResponse;",
            "Lcom/parse/ProgressCallback;",
            ")",
            "Lbolts/Task",
            "<TResponse;>;"
        }
    .end annotation
.end method

.method public setMaxRetries(I)V
    .locals 0
    .parameter "max"

    .prologue
    .line 147
    .local p0, this:Lcom/parse/ParseRequest;,"Lcom/parse/ParseRequest<TResponse;>;"
    iput p1, p0, Lcom/parse/ParseRequest;->maxRetries:I

    .line 148
    return-void
.end method
