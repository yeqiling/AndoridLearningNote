.class Lcom/easemob/chat/EMMultiUserChatProcessor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/core/r;


# static fields
.field private static final TAG:Ljava/lang/String; = "EMMultiUserChatProcessor"


# instance fields
.field connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private multiUserChats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smackx/muc/MultiUserChat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatProcessor;->multiUserChats:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatProcessor;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    return-void
.end method


# virtual methods
.method addMuc(Ljava/lang/String;Lorg/jivesoftware/smackx/muc/MultiUserChat;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatProcessor;->multiUserChats:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method deleteMUC(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUC(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    const-string v1, "delete-group"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->destroy(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized getMUC(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/easemob/chat/EMChatConfig;->MUC_DOMAIN_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatProcessor;->multiUserChats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;

    if-nez v0, :cond_1

    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iget-object v1, p0, Lcom/easemob/chat/EMMultiUserChatProcessor;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v0, v1, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->addMuc(Ljava/lang/String;Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    :cond_1
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->isJoined()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Ljava/lang/String;)V

    const-string v2, "EMMultiUserChatProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "joined muc:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getRoom()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with eid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getMUCWithoutJoin(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/easemob/chat/EMChatConfig;->MUC_DOMAIN_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatProcessor;->multiUserChats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;

    if-nez v0, :cond_1

    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iget-object v1, p0, Lcom/easemob/chat/EMMultiUserChatProcessor;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v0, v1, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->addMuc(Ljava/lang/String;Lorg/jivesoftware/smackx/muc/MultiUserChat;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method joinMUC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatProcessor;->multiUserChats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;

    if-nez v0, :cond_0

    new-instance v0, Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iget-object v1, p0, Lcom/easemob/chat/EMMultiUserChatProcessor;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v0, v1, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Ljava/lang/String;)V

    const-string v1, "EMMultiUserChatProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "joined muc:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getMembers()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "EMMultiUserChatProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  room members size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/Affiliate;

    const-string v2, "EMMultiUserChatProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "  member jid:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/Affiliate;->getJid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " role:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/Affiliate;->getRole()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method leaveMUC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUC(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->leave()V

    return-void
.end method

.method leaveMUCRemoveMember(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUC(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->grantMembership(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->leave()V

    :try_start_2
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->revokeMembership(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "403"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "407"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/jivesoftware/smack/XMPPException;

    invoke-direct {v1, v0}, Lorg/jivesoftware/smack/XMPPException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method leaveMUCWithoutJoin(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUCWithoutJoin(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->leaveAndWait()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatProcessor;->multiUserChats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public onInit()V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatProcessor;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatProcessor;->multiUserChats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method removeMuc(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatProcessor;->multiUserChats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
