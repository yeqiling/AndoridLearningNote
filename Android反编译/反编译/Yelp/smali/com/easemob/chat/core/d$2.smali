.class Lcom/easemob/chat/core/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/core/d;->d(Lcom/easemob/chat/core/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/easemob/chat/core/d;

.field private final synthetic b:Lcom/easemob/chat/core/e;


# direct methods
.method constructor <init>(Lcom/easemob/chat/core/d;Lcom/easemob/chat/core/e;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/d$2;->a:Lcom/easemob/chat/core/d;

    iput-object p2, p0, Lcom/easemob/chat/core/d$2;->b:Lcom/easemob/chat/core/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :goto_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/core/d$2;->b:Lcom/easemob/chat/core/e;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/d$2;->b:Lcom/easemob/chat/core/e;

    invoke-interface {v0}, Lcom/easemob/chat/core/e;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "EMCleaner"

    const-string v1, "try checking connection again after waiting 1 second."

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "EMCleaner"

    const-string v1, "should logout happend since cleaner\'s interrupted"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/easemob/chat/core/d$2;->a:Lcom/easemob/chat/core/d;

    iget-object v1, p0, Lcom/easemob/chat/core/d$2;->b:Lcom/easemob/chat/core/e;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/d;->d(Lcom/easemob/chat/core/e;)V

    goto :goto_1
.end method
