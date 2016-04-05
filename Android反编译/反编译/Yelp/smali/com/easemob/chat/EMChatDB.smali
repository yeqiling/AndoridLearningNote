.class public Lcom/easemob/chat/EMChatDB;
.super Ljava/lang/Object;


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/easemob/chat/EMChatDB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "chatdb"

    sput-object v0, Lcom/easemob/chat/EMChatDB;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/EMChatDB;->instance:Lcom/easemob/chat/EMChatDB;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/easemob/chat/EMChatDB;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMChatDB;->instance:Lcom/easemob/chat/EMChatDB;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMChatDB;->instance:Lcom/easemob/chat/EMChatDB;

    return-object v0
.end method

.method static initDB(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/easemob/chat/EMChatDB;

    invoke-direct {v0}, Lcom/easemob/chat/EMChatDB;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMChatDB;->instance:Lcom/easemob/chat/EMChatDB;

    invoke-static {p0}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method closeDatabase()V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i;->b()V

    return-void
.end method

.method public deleteConversions(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->d(Ljava/lang/String;)V

    return-void
.end method

.method public deleteGroup(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->g(Ljava/lang/String;)V

    return-void
.end method

.method public deleteGroupConversions(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->i(Ljava/lang/String;)V

    return-void
.end method

.method public deleteMessage(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->b(Ljava/lang/String;)V

    return-void
.end method

.method public findAllGroupsWithMsg()Ljava/util/List;
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

    invoke-virtual {v0}, Lcom/easemob/chat/core/i;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findAllParticipantsWithMsg()Ljava/util/List;
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

    invoke-virtual {v0}, Lcom/easemob/chat/core/i;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findGroupMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v0, p1, v1}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Lcom/easemob/chat/EMMessage$ChatType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findGroupMessages(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findMessages(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->Chat:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {v0, p1, v1}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Lcom/easemob/chat/EMMessage$ChatType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public findMessages(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/easemob/chat/core/i;->b(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
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

.method public getToken(Ljava/lang/String;)Lcom/easemob/chat/core/p$b;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->l(Ljava/lang/String;)Lcom/easemob/chat/core/p$b;

    move-result-object v0

    return-object v0
.end method

.method public importMessage(Lcom/easemob/chat/EMMessage;)Z
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->c(Lcom/easemob/chat/EMMessage;)Z

    move-result v0

    return v0
.end method

.method public loadAllGroups()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMGroup;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i;->f()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public loadGroup(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->e(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method saveMessage(Lcom/easemob/chat/EMMessage;)Z
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->a(Lcom/easemob/chat/EMMessage;)Z

    move-result v0

    return v0
.end method

.method public saveToken(Ljava/lang/String;Lcom/easemob/chat/core/p$b;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Lcom/easemob/chat/core/p$b;)V

    return-void
.end method

.method public updateGroup(Lcom/easemob/chat/EMGroup;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->b(Lcom/easemob/chat/EMGroup;)V

    return-void
.end method

.method public updateMessage(Ljava/lang/String;Landroid/content/ContentValues;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method

.method public updateMessageAck(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/core/i;->e(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateMessageDelivered(Ljava/lang/String;Z)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/core/i;->g(Ljava/lang/String;Z)V

    return-void
.end method
