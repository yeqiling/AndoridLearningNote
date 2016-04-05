.class public Lcom/easemob/chat/EMMessageDispatcher;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/core/r;


# static fields
.field private static final TAG:Ljava/lang/String; = "EMMessageDispatcher"

.field private static instance:Lcom/easemob/chat/EMMessageDispatcher;


# instance fields
.field sendThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/EMMessageDispatcher;->instance:Lcom/easemob/chat/EMMessageDispatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMMessageDispatcher;->sendThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method getInstance()Lcom/easemob/chat/EMMessageDispatcher;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMMessageDispatcher;->instance:Lcom/easemob/chat/EMMessageDispatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMMessageDispatcher;

    invoke-direct {v0}, Lcom/easemob/chat/EMMessageDispatcher;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMMessageDispatcher;->instance:Lcom/easemob/chat/EMMessageDispatcher;

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMMessageDispatcher;->instance:Lcom/easemob/chat/EMMessageDispatcher;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onInit()V
    .locals 0

    return-void
.end method

.method postRunnable(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMessageDispatcher;->sendThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
