.class public Lcom/easemob/chat/EMConversation;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/EMConversation$EMConversationType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "conversation"


# instance fields
.field private isGroup:Z

.field messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation
.end field

.field msgCount:J

.field private opposite:Lcom/easemob/chat/EMContact;

.field private type:Lcom/easemob/chat/EMConversation$EMConversationType;

.field private unreadMsgCount:I

.field private username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    iput-boolean v0, p0, Lcom/easemob/chat/EMConversation;->isGroup:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMConversation;->opposite:Lcom/easemob/chat/EMContact;

    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    iput-object v0, p0, Lcom/easemob/chat/EMConversation;->type:Lcom/easemob/chat/EMConversation$EMConversationType;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easemob/chat/EMConversation;->msgCount:J

    iput-object p1, p0, Lcom/easemob/chat/EMConversation;->username:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    :cond_0
    iget v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->j(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Lcom/easemob/chat/EMConversation$EMConversationType;Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;",
            "Lcom/easemob/chat/EMConversation$EMConversationType;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    iput-boolean v0, p0, Lcom/easemob/chat/EMConversation;->isGroup:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/easemob/chat/EMConversation;->opposite:Lcom/easemob/chat/EMContact;

    sget-object v1, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    iput-object v1, p0, Lcom/easemob/chat/EMConversation;->type:Lcom/easemob/chat/EMConversation$EMConversationType;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/easemob/chat/EMConversation;->msgCount:J

    iput-object p1, p0, Lcom/easemob/chat/EMConversation;->username:Ljava/lang/String;

    iput-object p3, p0, Lcom/easemob/chat/EMConversation;->type:Lcom/easemob/chat/EMConversation$EMConversationType;

    sget-object v1, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    if-ne p3, v1, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/easemob/chat/EMConversation;->isGroup:Z

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    :cond_0
    iget v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->j(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    :cond_1
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/easemob/chat/EMConversation;->msgCount:J

    return-void

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    iput-boolean v0, p0, Lcom/easemob/chat/EMConversation;->isGroup:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMConversation;->opposite:Lcom/easemob/chat/EMContact;

    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    iput-object v0, p0, Lcom/easemob/chat/EMConversation;->type:Lcom/easemob/chat/EMConversation$EMConversationType;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easemob/chat/EMConversation;->msgCount:J

    iput-object p1, p0, Lcom/easemob/chat/EMConversation;->username:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/easemob/chat/EMConversation;->isGroup:Z

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    :cond_0
    iget v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    if-gtz v0, :cond_1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->j(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    :cond_1
    return-void
.end method

.method static synthetic access$0(Lcom/easemob/chat/EMConversation;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->username:Ljava/lang/String;

    return-object v0
.end method

.method public static msgType2ConversationType(Ljava/lang/String;Lcom/easemob/chat/EMMessage$ChatType;)Lcom/easemob/chat/EMConversation$EMConversationType;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/easemob/chat/EMCustomerService;->getInstance()Lcom/easemob/chat/EMCustomerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/easemob/chat/EMCustomerService;->isCustomServiceAgent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->HelpDesk:Lcom/easemob/chat/EMConversation$EMConversationType;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne p1, v0, :cond_2

    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->GroupChat:Lcom/easemob/chat/EMConversation$EMConversationType;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->ChatRoom:Lcom/easemob/chat/EMConversation$EMConversationType;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    goto :goto_0
.end method


# virtual methods
.method public addMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/easemob/chat/EMConversation;->addMessage(Lcom/easemob/chat/EMMessage;Z)V

    return-void
.end method

.method addMessage(Lcom/easemob/chat/EMMessage;Z)V
    .locals 5

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v2, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/easemob/chat/EMConversation;->isGroup:Z

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    iget-object v2, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v2

    :goto_1
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-wide v0, p0, Lcom/easemob/chat/EMConversation;->msgCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/easemob/chat/EMConversation;->msgCount:J

    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->direct:Lcom/easemob/chat/EMMessage$Direct;

    sget-object v1, Lcom/easemob/chat/EMMessage$Direct;->RECEIVE:Lcom/easemob/chat/EMMessage$Direct;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Lcom/easemob/chat/EMMessage;->unread:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    iget v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMConversation;->saveUnreadMsgCount(I)V

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMConversation;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/i;->k(Ljava/lang/String;)V

    return-void
.end method

.method deleteUnreadMsgCountRecord()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMChatManager;->msgCountThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/easemob/chat/EMConversation$2;

    invoke-direct {v1, p0}, Lcom/easemob/chat/EMConversation$2;-><init>(Lcom/easemob/chat/EMConversation;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public getAllMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    return-object v0
.end method

.method public getAllMsgCount()I
    .locals 2

    iget-wide v0, p0, Lcom/easemob/chat/EMConversation;->msgCount:J

    long-to-int v0, v0

    return v0
.end method

.method public getExtField()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMConversation;->username:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/easemob/chat/EMConversation;->isGroup:Z

    invoke-virtual {v0, v1, v2}, Lcom/easemob/chat/core/i;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIsGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMConversation;->isGroup:Z

    return v0
.end method

.method public getLastMessage()Lcom/easemob/chat/EMMessage;
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    iget-object v1, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    goto :goto_0
.end method

.method public getMessage(I)Lcom/easemob/chat/EMMessage;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/easemob/chat/EMConversation;->getMessage(IZ)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(IZ)Lcom/easemob/chat/EMMessage;
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    const-string v0, "conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "outofbound, messages.size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/easemob/chat/EMMessage;->unread:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/easemob/chat/EMMessage;->unread:Z

    iget v1, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    iget v1, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    invoke-virtual {p0, v1}, Lcom/easemob/chat/EMConversation;->saveUnreadMsgCount(I)V

    goto :goto_0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/easemob/chat/EMConversation;->getMessage(Ljava/lang/String;Z)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;Z)Lcom/easemob/chat/EMMessage;
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    iget-object v2, v0, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p2, :cond_0

    iget-boolean v1, v0, Lcom/easemob/chat/EMMessage;->unread:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/easemob/chat/EMMessage;->unread:Z

    iget v1, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    iget v1, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    invoke-virtual {p0, v1}, Lcom/easemob/chat/EMConversation;->saveUnreadMsgCount(I)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public getMessagePosition(Lcom/easemob/chat/EMMessage;)I
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getMsgCount()I
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getType()Lcom/easemob/chat/EMConversation$EMConversationType;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->type:Lcom/easemob/chat/EMConversation$EMConversationType;

    return-object v0
.end method

.method public getUnreadMsgCount()I
    .locals 1

    iget v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    :cond_0
    iget v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    return v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->username:Ljava/lang/String;

    return-object v0
.end method

.method public isGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMConversation;->isGroup:Z

    return v0
.end method

.method public loadMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/easemob/chat/EMConversation;->getMessage(Ljava/lang/String;Z)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->c(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    goto :goto_0
.end method

.method public loadMessages(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    move-object v0, v1

    :goto_2
    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMConversation;->loadMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v2

    goto :goto_2
.end method

.method public loadMoreGroupMsgFromDB(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMConversation;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lcom/easemob/chat/EMChatManager;->addMessage(Lcom/easemob/chat/EMMessage;Z)V

    goto :goto_0
.end method

.method public loadMoreMsgFromDB(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMConversation;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, p1, p2}, Lcom/easemob/chat/core/i;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0, v4, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lcom/easemob/chat/EMChatManager;->addMessage(Lcom/easemob/chat/EMMessage;Z)V

    goto :goto_0
.end method

.method public markAllMessagesAsRead()V
    .locals 0

    invoke-virtual {p0}, Lcom/easemob/chat/EMConversation;->resetUnreadMsgCount()V

    return-void
.end method

.method public markMessageAsRead(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMConversation;->getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    return-void
.end method

.method public removeMessage(Ljava/lang/String;)V
    .locals 4

    const-string v0, "conversation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove msg from conversation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMMessage;

    iget-object v2, v0, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Lcom/easemob/chat/EMMessage;->unread:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/easemob/chat/EMMessage;->unread:Z

    iget v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    iget v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMConversation;->saveUnreadMsgCount(I)V

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMConversation;->messages:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/easemob/chat/EMConversation;->msgCount:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/easemob/chat/EMConversation;->msgCount:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/easemob/chat/EMConversation;->msgCount:J

    :cond_2
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMConversationManager;->removeMessage(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public resetUnreadMsgCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMConversation;->saveUnreadMsgCount(I)V

    return-void
.end method

.method public resetUnsetMsgCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/EMConversation;->unreadMsgCount:I

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMConversation;->saveUnreadMsgCount(I)V

    return-void
.end method

.method saveUnreadMsgCount(I)V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMChatManager;->msgCountThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/easemob/chat/EMConversation$1;

    invoke-direct {v1, p0, p1}, Lcom/easemob/chat/EMConversation$1;-><init>(Lcom/easemob/chat/EMConversation;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setExtField(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMConversation;->username:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/easemob/chat/EMConversation;->isGroup:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public setGroup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMConversation;->isGroup:Z

    return-void
.end method

.method setType(Lcom/easemob/chat/EMConversation$EMConversationType;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMConversation;->type:Lcom/easemob/chat/EMConversation$EMConversationType;

    return-void
.end method
