.class Lcom/easemob/chat/EMRosterListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/RosterListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "contact"


# instance fields
.field private contactManager:Lcom/easemob/chat/EMContactManager;

.field private roster:Lorg/jivesoftware/smack/Roster;


# direct methods
.method public constructor <init>(Lcom/easemob/chat/EMContactManager;Lorg/jivesoftware/smack/Roster;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/easemob/chat/EMRosterListener;->contactManager:Lcom/easemob/chat/EMContactManager;

    iput-object p2, p0, Lcom/easemob/chat/EMRosterListener;->roster:Lorg/jivesoftware/smack/Roster;

    return-void
.end method


# virtual methods
.method public entriesAdded(Ljava/util/Collection;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contact"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on contact entries added:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMRosterListener;->contactManager:Lcom/easemob/chat/EMContactManager;

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMRosterListener;->contactManager:Lcom/easemob/chat/EMContactManager;

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    invoke-interface {v0, v1}, Lcom/easemob/chat/EMContactListener;->onContactAdded(Ljava/util/List;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/easemob/chat/EMRosterListener;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/Roster;->getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->both:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v4

    sget-object v5, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->from:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-eq v4, v5, :cond_3

    const-string v0, "contact"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ignore entry type:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v4, "contact"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "entry add: roster entry name:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/jivesoftware/smack/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " user:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getBareEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public entriesDeleted(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contact"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on contact entries deleted:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMRosterListener;->contactManager:Lcom/easemob/chat/EMContactManager;

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMRosterListener;->contactManager:Lcom/easemob/chat/EMContactManager;

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    invoke-interface {v0, v1}, Lcom/easemob/chat/EMContactListener;->onContactDeleted(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/easemob/chat/EMRosterListener;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/Roster;->getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/easemob/chat/EMRosterListener;->contactManager:Lcom/easemob/chat/EMContactManager;

    invoke-virtual {v3, v0}, Lcom/easemob/chat/EMContactManager;->removeContactByUsername(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public entriesUpdated(Ljava/util/Collection;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "contact"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "on contact entries updated:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/easemob/chat/EMRosterListener;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Roster;->getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v1

    sget-object v6, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->both:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-eq v1, v6, :cond_3

    invoke-virtual {v5}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v1

    sget-object v6, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->from:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-ne v1, v6, :cond_4

    :cond_3
    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v6, "contact"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "entry.getType() = "

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, "null"

    :goto_1
    invoke-static {v6, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v1

    sget-object v6, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->none:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-ne v1, v6, :cond_6

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMContactManager;->deleteContactsSet:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMRosterListener;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/Roster;->removeEntry(Lorg/jivesoftware/smack/RosterEntry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/easemob/chat/EMRosterListener;->contactManager:Lcom/easemob/chat/EMContactManager;

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/easemob/chat/EMRosterListener;->contactManager:Lcom/easemob/chat/EMContactManager;

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    invoke-interface {v0, v2}, Lcom/easemob/chat/EMContactListener;->onContactAdded(Ljava/util/List;)V

    :cond_7
    iget-object v0, p0, Lcom/easemob/chat/EMRosterListener;->contactManager:Lcom/easemob/chat/EMContactManager;

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/easemob/chat/EMRosterListener;->contactManager:Lcom/easemob/chat/EMContactManager;

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    invoke-interface {v0, v3}, Lcom/easemob/chat/EMContactListener;->onContactDeleted(Ljava/util/List;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v5}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    invoke-virtual {v5}, Lorg/jivesoftware/smack/RosterEntry;->getStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v1

    if-eqz v1, :cond_a

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->SUBSCRIPTION_PENDING:Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Lorg/jivesoftware/smack/RosterEntry;->getStatus()Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;

    move-result-object v6

    invoke-virtual {v6}, Lorg/jivesoftware/smack/packet/RosterPacket$ItemStatus;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_a
    iget-object v1, p0, Lcom/easemob/chat/EMRosterListener;->contactManager:Lcom/easemob/chat/EMContactManager;

    iget-object v1, v1, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/easemob/chat/EMRosterListener;->contactManager:Lcom/easemob/chat/EMContactManager;

    iget-object v1, v1, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/easemob/chat/EMContactListener;->onContactRefused(Ljava/lang/String;)V

    goto :goto_2

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/easemob/chat/EMChatManager;->deleteConversation(Ljava/lang/String;)Z

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3
.end method

.method public presenceChanged(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 0

    return-void
.end method
