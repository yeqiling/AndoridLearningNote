.class public Lcom/easemob/media/EIce;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/media/EIce$EIceListener;,
        Lcom/easemob/media/EIce$LogListener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "EIce_Java"

.field private static sLogListener:Lcom/easemob/media/EIce$LogListener;


# instance fields
.field protected localContent:Ljava/lang/String;

.field protected nativeHandle:J

.field protected negoResult:Ljava/lang/String;

.field protected queryThread:Ljava/lang/Thread;

.field protected stopReq:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "easemob_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/media/EIce;->nativeInitEIce()V

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/media/EIce;->sLogListener:Lcom/easemob/media/EIce$LogListener;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easemob/media/EIce;->nativeHandle:J

    iput-object v2, p0, Lcom/easemob/media/EIce;->localContent:Ljava/lang/String;

    iput-object v2, p0, Lcom/easemob/media/EIce;->negoResult:Ljava/lang/String;

    iput-object v2, p0, Lcom/easemob/media/EIce;->queryThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/media/EIce;->stopReq:Z

    return-void
.end method

.method protected static callbackLog(ILjava/lang/String;)V
    .locals 2

    const-class v1, Lcom/easemob/media/EIce;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/media/EIce;->sLogListener:Lcom/easemob/media/EIce$LogListener;

    invoke-interface {v0, p0, p1}, Lcom/easemob/media/EIce$LogListener;->onLog(ILjava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static native nativeInitEIce()V
.end method

.method public static newCallee(Ljava/lang/String;Ljava/lang/String;)Lcom/easemob/media/EIce;
    .locals 4

    new-instance v0, Lcom/easemob/media/EIce;

    invoke-direct {v0}, Lcom/easemob/media/EIce;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/easemob/media/EIce;->nativeNewCallee(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/easemob/media/EIce;->nativeHandle:J

    iget-wide v2, v0, Lcom/easemob/media/EIce;->nativeHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/easemob/media/EIce;->nativeGetLocalContent(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/easemob/media/EIce;->localContent:Ljava/lang/String;

    return-object v0
.end method

.method public static newCaller(Ljava/lang/String;)Lcom/easemob/media/EIce;
    .locals 4

    new-instance v0, Lcom/easemob/media/EIce;

    invoke-direct {v0}, Lcom/easemob/media/EIce;-><init>()V

    invoke-virtual {v0, p0}, Lcom/easemob/media/EIce;->nativeNewCaller(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/easemob/media/EIce;->nativeHandle:J

    iget-wide v2, v0, Lcom/easemob/media/EIce;->nativeHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/easemob/media/EIce;->nativeGetLocalContent(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/easemob/media/EIce;->localContent:Ljava/lang/String;

    return-object v0
.end method

.method public static registerLogListener(Lcom/easemob/media/EIce$LogListener;)V
    .locals 2

    const-class v1, Lcom/easemob/media/EIce;

    monitor-enter v1

    :try_start_0
    sput-object p0, Lcom/easemob/media/EIce;->sLogListener:Lcom/easemob/media/EIce$LogListener;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public calleeNego(Lcom/easemob/media/EIce$EIceListener;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/easemob/media/EIce;->startQueryResult(Lcom/easemob/media/EIce$EIceListener;)V

    return-void
.end method

.method public callerNego(Ljava/lang/String;Lcom/easemob/media/EIce$EIceListener;)V
    .locals 2

    iget-wide v0, p0, Lcom/easemob/media/EIce;->nativeHandle:J

    invoke-virtual {p0, v0, v1, p1}, Lcom/easemob/media/EIce;->nativeCallerNego(JLjava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/easemob/media/EIce;->startQueryResult(Lcom/easemob/media/EIce$EIceListener;)V

    return-void
.end method

.method public freeCall()V
    .locals 2

    iget-wide v0, p0, Lcom/easemob/media/EIce;->nativeHandle:J

    invoke-virtual {p0, v0, v1}, Lcom/easemob/media/EIce;->nativeFreeCall(J)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easemob/media/EIce;->nativeHandle:J

    iget-object v0, p0, Lcom/easemob/media/EIce;->queryThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/media/EIce;->stopReq:Z

    :try_start_0
    iget-object v0, p0, Lcom/easemob/media/EIce;->queryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/media/EIce;->queryThread:Ljava/lang/Thread;

    :cond_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public getLocalContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/media/EIce;->localContent:Ljava/lang/String;

    return-object v0
.end method

.method public getNegoResult()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/media/EIce;->negoResult:Ljava/lang/String;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected native nativeCallerNego(JLjava/lang/String;)V
.end method

.method protected native nativeFreeCall(J)V
.end method

.method protected native nativeGetLocalContent(J)Ljava/lang/String;
.end method

.method protected native nativeGetNegoResult(J)Ljava/lang/String;
.end method

.method protected native nativeNewCallee(Ljava/lang/String;Ljava/lang/String;)J
.end method

.method protected native nativeNewCaller(Ljava/lang/String;)J
.end method

.method protected startQueryResult(Lcom/easemob/media/EIce$EIceListener;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/easemob/media/EIce$1;

    invoke-direct {v1, p0, p1}, Lcom/easemob/media/EIce$1;-><init>(Lcom/easemob/media/EIce;Lcom/easemob/media/EIce$EIceListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/easemob/media/EIce;->queryThread:Ljava/lang/Thread;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/media/EIce;->stopReq:Z

    iget-object v0, p0, Lcom/easemob/media/EIce;->queryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public waitforNegoResult()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/easemob/media/EIce;->getNegoResult()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    monitor-exit p0

    :goto_1
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/easemob/media/EIce;->getNegoResult()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method
