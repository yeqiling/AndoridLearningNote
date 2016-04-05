.class public Lcom/easemob/chat/core/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/core/r;


# static fields
.field private static final a:Ljava/lang/String; = "EMCleaner"


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/core/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/concurrent/ExecutorService;

.field private d:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/d;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/core/d;->c:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x1

    iput v0, p0, Lcom/easemob/chat/core/d;->d:I

    return-void
.end method

.method public static a(I)Lcom/easemob/chat/core/d;
    .locals 1

    new-instance v0, Lcom/easemob/chat/core/d;

    invoke-direct {v0}, Lcom/easemob/chat/core/d;-><init>()V

    iput p0, v0, Lcom/easemob/chat/core/d;->d:I

    return-object v0
.end method

.method static synthetic a(Lcom/easemob/chat/core/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/d;->b:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/d;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/easemob/chat/core/d$1;

    invoke-direct {v1, p0}, Lcom/easemob/chat/core/d$1;-><init>(Lcom/easemob/chat/core/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/easemob/chat/core/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/core/d;->a()V

    return-void
.end method


# virtual methods
.method public a(Lcom/easemob/chat/core/e;)V
    .locals 1

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/easemob/chat/core/d;->c(Lcom/easemob/chat/core/e;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/easemob/chat/core/d;->a()V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/core/e;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/core/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/easemob/chat/core/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/easemob/chat/core/d;->a()V

    return-void
.end method

.method public b(Lcom/easemob/chat/core/e;)V
    .locals 3

    iget-object v1, p0, Lcom/easemob/chat/core/d;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/core/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public c(Lcom/easemob/chat/core/e;)Z
    .locals 3

    iget-object v1, p0, Lcom/easemob/chat/core/d;->b:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/core/e;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method d(Lcom/easemob/chat/core/e;)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/core/d;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/easemob/chat/core/d$2;

    invoke-direct {v1, p0, p1}, Lcom/easemob/chat/core/d$2;-><init>(Lcom/easemob/chat/core/d;Lcom/easemob/chat/core/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/d;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/d;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onInit()V
    .locals 1

    iget v0, p0, Lcom/easemob/chat/core/d;->d:I

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/d;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method
