.class Lcom/easemob/chat/core/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/core/d;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/easemob/chat/core/d;


# direct methods
.method constructor <init>(Lcom/easemob/chat/core/d;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/d$1;->a:Lcom/easemob/chat/core/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/easemob/chat/core/d$1;->a:Lcom/easemob/chat/core/d;

    invoke-static {v0}, Lcom/easemob/chat/core/d;->a(Lcom/easemob/chat/core/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    :goto_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/d$1;->a:Lcom/easemob/chat/core/d;

    invoke-static {v0}, Lcom/easemob/chat/core/d;->a(Lcom/easemob/chat/core/d;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v0

    if-gtz v0, :cond_2

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

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/easemob/chat/core/d$1;->a:Lcom/easemob/chat/core/d;

    invoke-static {v0}, Lcom/easemob/chat/core/d;->a(Lcom/easemob/chat/core/d;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/core/e;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-interface {v0}, Lcom/easemob/chat/core/e;->run()V

    iget-object v1, p0, Lcom/easemob/chat/core/d$1;->a:Lcom/easemob/chat/core/d;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/core/d;->b(Lcom/easemob/chat/core/e;)V

    iget-object v1, p0, Lcom/easemob/chat/core/d$1;->a:Lcom/easemob/chat/core/d;

    invoke-static {v1}, Lcom/easemob/chat/core/d;->a(Lcom/easemob/chat/core/d;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/core/d$1;->a:Lcom/easemob/chat/core/d;

    invoke-static {v1}, Lcom/easemob/chat/core/d;->b(Lcom/easemob/chat/core/d;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    const-string v2, "EMCleaner"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cmd : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with exception : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/d$1;->a:Lcom/easemob/chat/core/d;

    invoke-static {v0}, Lcom/easemob/chat/core/d;->b(Lcom/easemob/chat/core/d;)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2
.end method
