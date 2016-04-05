.class public Lcom/easemob/chat/EMCmdManager;
.super Ljava/lang/Object;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "cmdmgr"

.field private static instance:Lcom/easemob/chat/EMCmdManager;


# instance fields
.field cmdProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/CmdMsgProcessor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/EMCmdManager;->instance:Lcom/easemob/chat/EMCmdManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMCmdManager;->cmdProcessors:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMCmdManager;->cmdProcessors:Ljava/util/List;

    new-instance v0, Lcom/easemob/chat/SwipeCmdProcessor;

    invoke-direct {v0}, Lcom/easemob/chat/SwipeCmdProcessor;-><init>()V

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMCmdManager;->addCmdProcessor(Lcom/easemob/chat/CmdMsgProcessor;)V

    return-void
.end method

.method public static getInstance()Lcom/easemob/chat/EMCmdManager;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMCmdManager;->instance:Lcom/easemob/chat/EMCmdManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMCmdManager;

    invoke-direct {v0}, Lcom/easemob/chat/EMCmdManager;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMCmdManager;->instance:Lcom/easemob/chat/EMCmdManager;

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMCmdManager;->instance:Lcom/easemob/chat/EMCmdManager;

    return-object v0
.end method


# virtual methods
.method public addCmdProcessor(Lcom/easemob/chat/CmdMsgProcessor;)V
    .locals 3

    const-string v0, "cmdmgr"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add cmd processor for action:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/easemob/chat/CmdMsgProcessor;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cls:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMCmdManager;->cmdProcessors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public processCmd(Lcom/easemob/chat/EMMessage;)V
    .locals 6

    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->body:Lcom/easemob/chat/MessageBody;

    check-cast v0, Lcom/easemob/chat/CmdMessageBody;

    const-string v1, "cmdmgr"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "process cmd msg. action:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/easemob/chat/CmdMessageBody;->action:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " params:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/easemob/chat/CmdMessageBody;->params:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/easemob/chat/EMCmdManager;->cmdProcessors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/easemob/chat/EMCmdManager;->cmdProcessors:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/CmdMsgProcessor;

    invoke-interface {v1}, Lcom/easemob/chat/CmdMsgProcessor;->getAction()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/easemob/chat/CmdMessageBody;->action:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "cmdmgr"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "process cmd action:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/easemob/chat/CmdMessageBody;->action:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with processor:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v1, p1}, Lcom/easemob/chat/CmdMsgProcessor;->processCmd(Lcom/easemob/chat/EMMessage;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "cmdmgr"

    const-string v3, "process cmd return true. stop"

    invoke-static {v1, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
