.class Lcom/easemob/chat/EMRosterStorageImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/RosterStorage;


# static fields
.field private static final PERF_KEY_ROSTERVER:Ljava/lang/String; = "easemob.roster.ver."

.field private static final TAG:Ljava/lang/String; = "rosterstorage"


# instance fields
.field private appContext:Landroid/content/Context;

.field private contactManager:Lcom/easemob/chat/EMContactManager;

.field private rosterItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/packet/RosterPacket$Item;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/easemob/chat/EMContactManager;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/easemob/chat/EMRosterStorageImpl;->appContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/easemob/chat/EMRosterStorageImpl;->contactManager:Lcom/easemob/chat/EMContactManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->version:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->rosterItems:Ljava/util/ArrayList;

    return-void
.end method

.method private updateRosterVersion(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/easemob/chat/EMRosterStorageImpl;->version:Ljava/lang/String;

    iget-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "easemob.roster.ver."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v2

    iget-object v2, v2, Lcom/easemob/chat/EMSessionManager;->currentUser:Lcom/easemob/chat/EMContact;

    iget-object v2, v2, Lcom/easemob/chat/EMContact;->eid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "rosterstorage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updated roster version to:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->both:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getItemType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->from:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "rosterstorage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "roster storage add new contact:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getBareEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v2

    new-instance v3, Lcom/easemob/chat/EMContact;

    invoke-direct {v3, v1, v0}, Lcom/easemob/chat/EMContact;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/easemob/chat/EMContactManager;->addContactInternal(Lcom/easemob/chat/EMContact;)V

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->version:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p2}, Lcom/easemob/chat/EMRosterStorageImpl;->updateRosterVersion(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public getEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/jivesoftware/smack/packet/RosterPacket$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->rosterItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/packet/RosterPacket$Item;
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->rosterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "rosterstorage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cant find roster entry for jid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public getEntryCount()I
    .locals 3

    const-string v0, "rosterstorage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get entry count return:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMRosterStorageImpl;->rosterItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->rosterItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRosterVersion()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->appContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "easemob.roster.ver."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v2

    iget-object v2, v2, Lcom/easemob/chat/EMSessionManager;->currentUser:Lcom/easemob/chat/EMContact;

    iget-object v2, v2, Lcom/easemob/chat/EMContact;->eid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->version:Ljava/lang/String;

    const-string v0, "rosterstorage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load roster storage for jid"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v2

    iget-object v2, v2, Lcom/easemob/chat/EMSessionManager;->currentUser:Lcom/easemob/chat/EMContact;

    iget-object v2, v2, Lcom/easemob/chat/EMContact;->eid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " version:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMRosterStorageImpl;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->version:Ljava/lang/String;

    return-object v0
.end method

.method loadEntries()V
    .locals 4

    iget-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->contactManager:Lcom/easemob/chat/EMContactManager;

    iget-object v0, v0, Lcom/easemob/chat/EMContactManager;->contactTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "rosterstorage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "roster storage load entries, roster items size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMRosterStorageImpl;->rosterItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMContact;

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    new-instance v2, Lorg/jivesoftware/smack/packet/RosterPacket$Item;

    iget-object v3, v0, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    invoke-static {v3}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->both:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/packet/RosterPacket$Item;->setItemType(Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;)V

    iget-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->rosterItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMContactManager;->deleteContactInternal(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMRosterStorageImpl;->version:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/easemob/chat/EMRosterStorageImpl;->updateRosterVersion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateLocalEntry(Lorg/jivesoftware/smack/packet/RosterPacket$Item;)V
    .locals 3

    const-string v0, "rosterstorage"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[skip]roster storage uplodateLocalEntry:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
