.class Lcom/easemob/media/EIce$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/media/EIce;->startQueryResult(Lcom/easemob/media/EIce$EIceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/media/EIce;

.field private final synthetic val$listener:Lcom/easemob/media/EIce$EIceListener;


# direct methods
.method constructor <init>(Lcom/easemob/media/EIce;Lcom/easemob/media/EIce$EIceListener;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/media/EIce$1;->this$0:Lcom/easemob/media/EIce;

    iput-object p2, p0, Lcom/easemob/media/EIce$1;->val$listener:Lcom/easemob/media/EIce$EIceListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    iget-object v0, p0, Lcom/easemob/media/EIce$1;->this$0:Lcom/easemob/media/EIce;

    iget-object v1, p0, Lcom/easemob/media/EIce$1;->this$0:Lcom/easemob/media/EIce;

    iget-wide v2, v1, Lcom/easemob/media/EIce;->nativeHandle:J

    invoke-virtual {v0, v2, v3}, Lcom/easemob/media/EIce;->nativeGetNegoResult(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/easemob/media/EIce$1;->this$0:Lcom/easemob/media/EIce;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/easemob/media/EIce$1;->this$0:Lcom/easemob/media/EIce;

    iput-object v0, v2, Lcom/easemob/media/EIce;->negoResult:Ljava/lang/String;

    iget-object v2, p0, Lcom/easemob/media/EIce$1;->this$0:Lcom/easemob/media/EIce;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "EIce_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "got nego result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/easemob/media/EIce$1;->val$listener:Lcom/easemob/media/EIce$EIceListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/easemob/media/EIce$1;->val$listener:Lcom/easemob/media/EIce$EIceListener;

    invoke-interface {v1, v0}, Lcom/easemob/media/EIce$EIceListener;->onNegoResult(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "EIce_Java"

    const-string v1, "queryThread exit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    const-wide/16 v0, 0xc8

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object v0, p0, Lcom/easemob/media/EIce$1;->this$0:Lcom/easemob/media/EIce;

    iget-boolean v0, v0, Lcom/easemob/media/EIce;->stopReq:Z

    if-eqz v0, :cond_0

    const-string v0, "EIce_Java"

    const-string v1, "queryThread got stop req"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "EIce_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "queryThread got InterruptedException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
