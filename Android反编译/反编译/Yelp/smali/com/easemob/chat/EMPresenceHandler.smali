.class Lcom/easemob/chat/EMPresenceHandler;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static me:Lcom/easemob/chat/EMPresenceHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/easemob/chat/EMPresenceHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/EMPresenceHandler;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/easemob/chat/EMPresenceHandler;

    invoke-direct {v0}, Lcom/easemob/chat/EMPresenceHandler;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMPresenceHandler;->me:Lcom/easemob/chat/EMPresenceHandler;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getInstance()Lcom/easemob/chat/EMPresenceHandler;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMPresenceHandler;->me:Lcom/easemob/chat/EMPresenceHandler;

    return-object v0
.end method


# virtual methods
.method acceptInvitation(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->checkConnection()V

    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[resp:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    if-eqz p2, :cond_0

    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    const-string v1, "[resp:true]"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method processRosterPresence(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v0

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Presence$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getStatus()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v3, "[resp:"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "]"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-le v3, v4, :cond_1

    const-string v3, "]1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move v6, v2

    move-object v2, v0

    move v0, v6

    :goto_1
    sget-object v3, Lcom/easemob/chat/EMPresenceHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isresp:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/easemob/chat/EMPresenceHandler;->acceptInvitation(Ljava/lang/String;Z)V

    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getContactInviteEventBroadcastAction()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "username"

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "isResponse"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/easemob/chat/EMContactListener;->onContactAgreed(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    move-object v2, v1

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/easemob/chat/EMPresenceHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/easemob/exceptions/EaseMobException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/easemob/exceptions/EaseMobException;->printStackTrace()V

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatOptions;->getAcceptInvitationAlways()Z

    move-result v3

    if-eqz v3, :cond_3

    :try_start_1
    sget-object v0, Lcom/easemob/chat/EMPresenceHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auto acceptance inviation from:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/easemob/chat/EMPresenceHandler;->acceptInvitation(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v1, Lcom/easemob/chat/EMPresenceHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/easemob/exceptions/EaseMobException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/easemob/exceptions/EaseMobException;->printStackTrace()V

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easemob/chat/EMChatManager;->getContactInviteEventBroadcastAction()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "username"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "reason"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "isResponse"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v4, v1}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v1, Lcom/easemob/chat/EMPresenceHandler;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "send roster broadcast username:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "resp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    invoke-interface {v0, v3, v2}, Lcom/easemob/chat/EMContactListener;->onContactInvited(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v0

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Presence$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->deleteContactsSet:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Mode;->available:Lorg/jivesoftware/smack/packet/Presence$Mode;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setMode(Lorg/jivesoftware/smack/packet/Presence$Mode;)V

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setPriority(I)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v0

    sget-object v3, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v0, v3}, Lorg/jivesoftware/smack/packet/Presence$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getStatus()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getStatus()Ljava/lang/String;

    move-result-object v1

    :cond_6
    const-string v0, "[resp:"

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_7
    if-eqz v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getContactInviteEventBroadcastAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "username"

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "isResponse"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/easemob/chat/EMContactListener;->onContactAgreed(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    move v6, v2

    move-object v2, v0

    move v0, v6

    goto/16 :goto_1

    :cond_9
    move-object v0, v1

    goto/16 :goto_0
.end method

.method refuseInvitation(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->checkConnection()V

    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
