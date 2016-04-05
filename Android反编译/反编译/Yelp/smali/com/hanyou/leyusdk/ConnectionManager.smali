.class public Lcom/hanyou/leyusdk/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"


# static fields
.field public static final MAX_CONNECTIONS:I = 0x5

.field private static instance:Lcom/hanyou/leyusdk/ConnectionManager;


# instance fields
.field private active:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hanyou/leyusdk/ConnectionManager;->active:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hanyou/leyusdk/ConnectionManager;->queue:Ljava/util/ArrayList;

    .line 11
    return-void
.end method

.method public static getInstance()Lcom/hanyou/leyusdk/ConnectionManager;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/hanyou/leyusdk/ConnectionManager;->instance:Lcom/hanyou/leyusdk/ConnectionManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/hanyou/leyusdk/ConnectionManager;

    invoke-direct {v0}, Lcom/hanyou/leyusdk/ConnectionManager;-><init>()V

    sput-object v0, Lcom/hanyou/leyusdk/ConnectionManager;->instance:Lcom/hanyou/leyusdk/ConnectionManager;

    .line 23
    :cond_0
    sget-object v0, Lcom/hanyou/leyusdk/ConnectionManager;->instance:Lcom/hanyou/leyusdk/ConnectionManager;

    return-object v0
.end method

.method private startNext()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 33
    iget-object v2, p0, Lcom/hanyou/leyusdk/ConnectionManager;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 34
    iget-object v2, p0, Lcom/hanyou/leyusdk/ConnectionManager;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 35
    .local v0, next:Ljava/lang/Runnable;
    iget-object v2, p0, Lcom/hanyou/leyusdk/ConnectionManager;->queue:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 36
    iget-object v2, p0, Lcom/hanyou/leyusdk/ConnectionManager;->active:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 39
    .local v1, thread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 41
    .end local v0           #next:Ljava/lang/Runnable;
    .end local v1           #thread:Ljava/lang/Thread;
    :cond_0
    return-void
.end method


# virtual methods
.method public didComplete(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/hanyou/leyusdk/ConnectionManager;->active:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 45
    invoke-direct {p0}, Lcom/hanyou/leyusdk/ConnectionManager;->startNext()V

    .line 46
    return-void
.end method

.method public push(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "runnable"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/hanyou/leyusdk/ConnectionManager;->queue:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    iget-object v0, p0, Lcom/hanyou/leyusdk/ConnectionManager;->active:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/hanyou/leyusdk/ConnectionManager;->startNext()V

    .line 30
    :cond_0
    return-void
.end method
