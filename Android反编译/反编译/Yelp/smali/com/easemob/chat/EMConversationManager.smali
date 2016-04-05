.class Lcom/easemob/chat/EMConversationManager;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_LOAD_MESSAGE_COUNT:I = 0x14

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/easemob/chat/EMConversationManager;


# instance fields
.field private allConversationsLoaded:Z

.field private allMessages:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation
.end field

.field private conversations:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMConversation;",
            ">;"
        }
    .end annotation
.end field

.field private tempConversations:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMConversation;",
            ">;"
        }
    .end annotation
.end field

.field private typeConversations:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Lcom/easemob/chat/EMConversation$EMConversationType;",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMConversation;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/easemob/chat/EMConversationManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/EMConversationManager;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/easemob/chat/EMConversationManager;

    invoke-direct {v0}, Lcom/easemob/chat/EMConversationManager;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMConversationManager;->instance:Lcom/easemob/chat/EMConversationManager;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMConversationManager;->tempConversations:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMConversationManager;->typeConversations:Ljava/util/Hashtable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/EMConversationManager;->allConversationsLoaded:Z

    return-void
.end method

.method private addConversationToDB(Lcom/easemob/chat/EMMessage;)V
    .locals 3

    const-string v0, ""

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/chat/EMConversation;->msgType2ConversationType(Ljava/lang/String;Lcom/easemob/chat/EMMessage$ChatType;)Lcom/easemob/chat/EMConversation$EMConversationType;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Lcom/easemob/chat/EMConversation$EMConversationType;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public static getInstance()Lcom/easemob/chat/EMConversationManager;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMConversationManager;->instance:Lcom/easemob/chat/EMConversationManager;

    return-object v0
.end method


# virtual methods
.method addMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/easemob/chat/EMConversationManager;->addMessage(Lcom/easemob/chat/EMMessage;Z)V

    return-void
.end method

.method addMessage(Lcom/easemob/chat/EMMessage;Z)V
    .locals 3

    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    iget-object v1, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v1

    sget-object v2, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v1, v2, :cond_2

    iget-object v1, p1, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v2, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v1, v2, :cond_1

    iget-object v1, p1, Lcom/easemob/chat/EMMessage;->from:Lcom/easemob/chat/EMContact;

    iget-object v1, v1, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/chat/EMConversation;->msgType2ConversationType(Ljava/lang/String;Lcom/easemob/chat/EMMessage$ChatType;)Lcom/easemob/chat/EMConversation$EMConversationType;

    move-result-object v2

    invoke-virtual {p0, v1, v0, v2}, Lcom/easemob/chat/EMConversationManager;->getConversation(Ljava/lang/String;ZLcom/easemob/chat/EMConversation$EMConversationType;)Lcom/easemob/chat/EMConversation;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMConversation;->addMessage(Lcom/easemob/chat/EMMessage;Z)V

    iget-object v2, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    iget-object v1, p1, Lcom/easemob/chat/EMMessage;->to:Lcom/easemob/chat/EMContact;

    iget-object v1, v1, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getTo()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    goto :goto_0
.end method

.method areAllConversationsLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMConversationManager;->allConversationsLoaded:Z

    return v0
.end method

.method public asyncloadAllConversations(Lcom/easemob/EMCallBack;)V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, p1, v0}, Lcom/easemob/chat/EMConversationManager;->asyncloadAllConversations(Lcom/easemob/EMCallBack;I)V

    return-void
.end method

.method public asyncloadAllConversations(Lcom/easemob/EMCallBack;I)V
    .locals 1

    new-instance v0, Lcom/easemob/chat/EMConversationManager$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/easemob/chat/EMConversationManager$1;-><init>(Lcom/easemob/chat/EMConversationManager;ILcom/easemob/EMCallBack;)V

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversationManager$1;->start()V

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->tempConversations:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->tempConversations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/EMConversationManager;->allConversationsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public clearConversation(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/easemob/chat/EMConversationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "clear conversation for user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMConversation;

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMConversationManager;->getConversation(Ljava/lang/String;)Lcom/easemob/chat/EMConversation;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/easemob/chat/EMConversation;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->i(Ljava/lang/String;)V

    :goto_2
    :try_start_0
    invoke-virtual {v1}, Lcom/easemob/chat/EMConversation;->getAllMessages()Ljava/util/List;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {v1}, Lcom/easemob/chat/EMConversation;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/easemob/chat/EMConversation;->msgCount:J

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    iget-object v4, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_4
    move-object v1, v0

    goto :goto_0
.end method

.method deleteAllConversations()V
    .locals 3

    iget-object v1, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMConversationManager;->deleteConversation(Ljava/lang/String;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteConversation(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMConversationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove conversation for user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMConversation;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMConversationManager;->getConversation(Ljava/lang/String;)Lcom/easemob/chat/EMConversation;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-virtual {v0}, Lcom/easemob/chat/EMConversation;->isGroup()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/easemob/chat/EMConversationManager;->deleteConversation(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public deleteConversation(Ljava/lang/String;Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/easemob/chat/EMConversationManager;->deleteConversation(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public deleteConversation(Ljava/lang/String;ZZ)Z
    .locals 6

    sget-object v0, Lcom/easemob/chat/EMConversationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove conversation for user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMConversation;

    if-nez v0, :cond_6

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMConversationManager;->getConversation(Ljava/lang/String;)Lcom/easemob/chat/EMConversation;

    move-result-object v0

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    if-eqz p3, :cond_1

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->i(Ljava/lang/String;)V

    :cond_1
    :goto_2
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/core/i;->c(Ljava/lang/String;Z)V

    :try_start_0
    invoke-virtual {v1}, Lcom/easemob/chat/EMConversation;->getAllMessages()Ljava/util/List;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    invoke-virtual {v1}, Lcom/easemob/chat/EMConversation;->clear()V

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->tempConversations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->tempConversations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMNotifier;->getInstance(Landroid/content/Context;)Lcom/easemob/chat/EMNotifier;

    move-result-object v0

    sget-object v1, Lcom/easemob/EMNotifierEvent$Event;->EventConversationListChanged:Lcom/easemob/EMNotifierEvent$Event;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/easemob/chat/EMNotifier;->publishEvent(Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->d(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    :try_start_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    iget-object v4, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_6
    move-object v1, v0

    goto :goto_0
.end method

.method public getAllConversations()Ljava/util/Hashtable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMConversation;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    return-object v0
.end method

.method public getConversation(Ljava/lang/String;)Lcom/easemob/chat/EMConversation;
    .locals 6

    const/4 v4, 0x0

    const/16 v3, 0x14

    sget-object v0, Lcom/easemob/chat/EMConversationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get conversation for user:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMConversation;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->tempConversations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMConversation;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->getRoom(Ljava/lang/String;)Lcom/easemob/chat/EMMultiUserChatRoomModelBase;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1, v4, v3}, Lcom/easemob/chat/core/i;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Z)J

    move-result-wide v2

    invoke-static {}, Lcom/easemob/chat/EMCustomerService;->getInstance()Lcom/easemob/chat/EMCustomerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMCustomerService;->isCustomServiceAgent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/easemob/chat/EMConversation;

    sget-object v4, Lcom/easemob/chat/EMConversation$EMConversationType;->HelpDesk:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p1, v1, v4, v2}, Lcom/easemob/chat/EMConversation;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/easemob/chat/EMConversation$EMConversationType;Ljava/lang/Long;)V

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/easemob/chat/EMConversationManager;->tempConversations:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/easemob/chat/EMConversation;

    sget-object v4, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v0, p1, v1, v4, v2}, Lcom/easemob/chat/EMConversation;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/easemob/chat/EMConversation$EMConversationType;Ljava/lang/Long;)V

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v2

    invoke-virtual {v2, p1, v4, v3}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Z)J

    move-result-wide v4

    instance-of v3, v1, Lcom/easemob/chat/EMGroup;

    if-eqz v3, :cond_5

    new-instance v0, Lcom/easemob/chat/EMConversation;

    sget-object v1, Lcom/easemob/chat/EMConversation$EMConversationType;->GroupChat:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/easemob/chat/EMConversation;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/easemob/chat/EMConversation$EMConversationType;Ljava/lang/Long;)V

    goto :goto_1

    :cond_5
    instance-of v1, v1, Lcom/easemob/chat/EMChatRoom;

    if-eqz v1, :cond_2

    new-instance v0, Lcom/easemob/chat/EMConversation;

    sget-object v1, Lcom/easemob/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v0, p1, v2, v1, v3}, Lcom/easemob/chat/EMConversation;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/easemob/chat/EMConversation$EMConversationType;Ljava/lang/Long;)V

    goto :goto_1
.end method

.method getConversation(Ljava/lang/String;ZLcom/easemob/chat/EMConversation$EMConversationType;)Lcom/easemob/chat/EMConversation;
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x14

    sget-object v0, Lcom/easemob/chat/EMConversationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get conversation for user:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMConversation;

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->tempConversations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMConversation;

    if-nez v0, :cond_0

    if-nez p2, :cond_2

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1, v4, v3}, Lcom/easemob/chat/core/i;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Z)J

    move-result-wide v0

    :goto_1
    new-instance v3, Lcom/easemob/chat/EMConversation;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v3, p1, v2, p3, v0}, Lcom/easemob/chat/EMConversation;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/easemob/chat/EMConversation$EMConversationType;Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->tempConversations:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1, v4, v3}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v2

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Z)J

    move-result-wide v0

    goto :goto_1
.end method

.method public getConversationsByType(Lcom/easemob/chat/EMConversation$EMConversationType;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/easemob/chat/EMConversation$EMConversationType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMConversation;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    monitor-exit v2

    return-object v1

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMConversation;

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversation;->getType()Lcom/easemob/chat/EMConversation$EMConversationType;

    move-result-object v4

    if-ne v4, p1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConversationsUnread()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i;->h()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    return-object v0
.end method

.method declared-synchronized getMessagesByMsgType(Lcom/easemob/chat/EMMessage$Type;Lcom/easemob/chat/EMMessage$ChatType;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/easemob/chat/EMMessage$Type;",
            "Lcom/easemob/chat/EMMessage$ChatType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/easemob/chat/core/i;->a(Lcom/easemob/chat/EMMessage$Type;Lcom/easemob/chat/EMMessage$ChatType;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getTotalMessageCountByMsgType(Lcom/easemob/chat/EMMessage$Type;Lcom/easemob/chat/EMMessage$ChatType;Ljava/lang/String;)J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/easemob/chat/core/i;->a(Lcom/easemob/chat/EMMessage$Type;Lcom/easemob/chat/EMMessage$ChatType;Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getUnreadMsgsCount()I
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/easemob/chat/EMConversationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getunreadmsgcount return:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMConversation;

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversation;->getUnreadMsgCount()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method loadAllConversations()V
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMConversationManager;->loadAllConversations(I)V

    return-void
.end method

.method declared-synchronized loadAllConversations(I)V
    .locals 8

    const/4 v3, 0x1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/easemob/chat/EMConversationManager;->allConversationsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->tempConversations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    new-instance v1, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v1}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    invoke-virtual {v1}, Lcom/easemob/analytics/EMTimeTag;->start()V

    sget-object v0, Lcom/easemob/chat/EMConversationManager;->TAG:Ljava/lang/String;

    const-string v2, "start to load converstations:"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v3, :cond_3

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i;->c()Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    :goto_1
    iget-object v2, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    iget-object v2, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->size()I

    move-result v2

    invoke-virtual {v1}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v4

    invoke-static {v0, v2, v4, v5}, Lcom/easemob/analytics/EMPerformanceCollector;->collectLoadingAllConversations(IIJ)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMConversationManager;->allConversationsLoaded:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    :try_start_6
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->a(I)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :cond_4
    :try_start_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMConversation;

    sget-object v4, Lcom/easemob/chat/EMConversationManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loaded user "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversation;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_5
    :try_start_9
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMConversation;

    iget-object v0, v0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    iget-object v5, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    monitor-enter v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    iget-object v6, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    iget-object v7, v0, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v6, v7, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    goto :goto_3

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method removeMessage(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method replaceMessageId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, v0, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    iget-object v1, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method resetAllUnreadMsgCount()V
    .locals 4

    iget-object v1, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/easemob/chat/EMConversationManager;->conversations:Ljava/util/Hashtable;

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMConversation;

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversation;->resetUnreadMsgCount()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public saveMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMConversationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save message:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager;->allMessages:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMConversationManager;->addMessage(Lcom/easemob/chat/EMMessage;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->a(Lcom/easemob/chat/EMMessage;)Z

    :cond_0
    invoke-direct {p0, p1}, Lcom/easemob/chat/EMConversationManager;->addConversationToDB(Lcom/easemob/chat/EMMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public saveMessage(Lcom/easemob/chat/EMMessage;Z)V
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMConversationManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "save message:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/easemob/chat/EMConversationManager;->addMessage(Lcom/easemob/chat/EMMessage;Z)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->a(Lcom/easemob/chat/EMMessage;)Z

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMConversationManager;->addConversationToDB(Lcom/easemob/chat/EMMessage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
