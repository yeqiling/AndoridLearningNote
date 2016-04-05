.class Lcom/easemob/chat/EMGroupMessageListener;
.super Lcom/easemob/chat/EMMessageListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "groupchatlistener"


# instance fields
.field extension:Lcom/easemob/chat/core/x;


# direct methods
.method public constructor <init>(Lcom/easemob/chat/EMChatManager;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMMessageListener;-><init>(Lcom/easemob/chat/EMChatManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMGroupMessageListener;->extension:Lcom/easemob/chat/core/x;

    return-void
.end method

.method private processGroupMessage(Lorg/jivesoftware/smack/packet/Message;Lcom/easemob/chat/EMMessage;)V
    .locals 6

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v1

    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "groupchatlistener"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "group msg groupjid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " groupid:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " usrname:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {p2, v0}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    :try_start_0
    const-string v0, "roomtype"

    const-string v1, "easemob:x:roomtype"

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/core/x;

    iput-object v0, p0, Lcom/easemob/chat/EMGroupMessageListener;->extension:Lcom/easemob/chat/core/x;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/easemob/chat/EMGroupMessageListener;->extension:Lcom/easemob/chat/core/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMGroupMessageListener;->extension:Lcom/easemob/chat/core/x;

    invoke-virtual {v0}, Lcom/easemob/chat/core/x;->a()Lcom/easemob/chat/core/x$a;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/core/x$a;->a:Lcom/easemob/chat/core/x$a;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    invoke-virtual {p2, v0}, Lcom/easemob/chat/EMMessage;->setChatType(Lcom/easemob/chat/EMMessage$ChatType;)V

    :cond_0
    invoke-virtual {p2, v2}, Lcom/easemob/chat/EMMessage;->setTo(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "groupchatlistener"

    const-string v2, "the message is from muc itself"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EaseMobGroup"

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected processMessage(Lorg/jivesoftware/smack/packet/Message;)Z
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/easemob/chat/EMGroupMessageListener;->ackMessage(Lorg/jivesoftware/smack/packet/Message;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMGroupMessageListener;->getRoomType(Lorg/jivesoftware/smack/packet/Packet;)Lcom/easemob/chat/core/x$a;

    move-result-object v3

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/easemob/chat/core/x$a;->a:Lcom/easemob/chat/core/x$a;

    if-eq v3, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMGroupMessageListener;->isDuplicateMsg(Lorg/jivesoftware/smack/packet/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "groupchatlistener"

    const-string v2, "ignore duplicate msg"

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jivesoftware/smack/util/StringUtils;->parseBareAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "groupchatlistener"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "groupchat listener receive msg from:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " body:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Message;->getType()Lorg/jivesoftware/smack/packet/Message$Type;

    move-result-object v2

    sget-object v4, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    if-eq v2, v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {p1}, Lcom/easemob/chat/MessageEncoder;->parseXmppMsg(Lorg/jivesoftware/smack/packet/Message;)Lcom/easemob/chat/EMMessage;

    move-result-object v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->getFrom()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v4, Lcom/easemob/chat/core/x$a;->a:Lcom/easemob/chat/core/x$a;

    if-eq v3, v4, :cond_5

    const-string v0, "groupchatlistener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "igore group msg sent from myself:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/easemob/chat/EMMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0, p1, v2}, Lcom/easemob/chat/EMGroupMessageListener;->processGroupMessage(Lorg/jivesoftware/smack/packet/Message;Lcom/easemob/chat/EMMessage;)V

    const-string v1, "encrypt"

    const-string v3, "jabber:client"

    invoke-virtual {p1, v1, v3}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string v1, "isencrypted"

    invoke-virtual {v2, v1, v0}, Lcom/easemob/chat/EMMessage;->setAttribute(Ljava/lang/String;Z)V

    :cond_6
    invoke-virtual {p0, v2}, Lcom/easemob/chat/EMGroupMessageListener;->processEMMessage(Lcom/easemob/chat/EMMessage;)Z

    move-result v0

    goto/16 :goto_0
.end method
