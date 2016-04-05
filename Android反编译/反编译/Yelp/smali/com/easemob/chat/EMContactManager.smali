.class public Lcom/easemob/chat/EMContactManager;
.super Ljava/lang/Object;


# static fields
.field private static final BROADCAST_CONTACT_CHANGED_ACTION:Ljava/lang/String; = "com.easemob.contact.changed"

.field private static final TAG:Ljava/lang/String; = "contact"

.field private static final black_list_name:Ljava/lang/String; = "special"

.field private static instance:Lcom/easemob/chat/EMContactManager;


# instance fields
.field blackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field contactListener:Lcom/easemob/chat/EMContactListener;

.field contactTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMContact;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field deleteContactsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field enableRosterVersion:Z

.field private hasGetBlacklist:Z

.field private isIntied:Z

.field private roster:Lorg/jivesoftware/smack/Roster;

.field private rosterListener:Lcom/easemob/chat/EMRosterListener;

.field rosterStorage:Lcom/easemob/chat/EMRosterStorageImpl;

.field private xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/EMContactManager;->instance:Lcom/easemob/chat/EMContactManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/easemob/chat/EMContactManager;->rosterListener:Lcom/easemob/chat/EMRosterListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMContactManager;->enableRosterVersion:Z

    iput-object v1, p0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    iput-object v1, p0, Lcom/easemob/chat/EMContactManager;->deleteContactsSet:Ljava/util/Set;

    iput-object v1, p0, Lcom/easemob/chat/EMContactManager;->blackList:Ljava/util/List;

    iput-boolean v2, p0, Lcom/easemob/chat/EMContactManager;->hasGetBlacklist:Z

    iput-boolean v2, p0, Lcom/easemob/chat/EMContactManager;->isIntied:Z

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lcom/easemob/chat/EMContactManager;->contactTable:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMContactManager;->blackList:Ljava/util/List;

    return-void
.end method

.method private addToPrivacyList(Ljava/lang/String;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/PrivacyListManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/PrivacyListManager;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const-string v1, "PrivacyListManager is null"

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {v3}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyLists()[Lorg/jivesoftware/smack/PrivacyList;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lorg/jivesoftware/smack/packet/PrivacyItem;

    const-string v2, "jid"

    const/4 v4, 0x0

    const/16 v5, 0x64

    invoke-direct {v1, v2, v4, v5}, Lorg/jivesoftware/smack/packet/PrivacyItem;-><init>(Ljava/lang/String;ZI)V

    if-nez p2, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setFilterMessage(Z)V

    :cond_1
    invoke-virtual {v1, p1}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setValue(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "special"

    invoke-virtual {v3, v1, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->updatePrivacyList(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "special"

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setDefaultListName(Ljava/lang/String;)V

    const-string v0, "special"

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setActiveListName(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "special"

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyList(Ljava/lang/String;)Lorg/jivesoftware/smack/PrivacyList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PrivacyList;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_1
    if-eqz v0, :cond_6

    const-string v0, "contact"

    const-string v1, "current user is already in black list"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/PrivacyItem;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getValue()Ljava/lang/String;

    move-result-object v6

    const-string v7, "contact"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "addToPrivacyList item.getValue="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_6
    new-instance v0, Lorg/jivesoftware/smack/packet/PrivacyItem;

    const-string v1, "jid"

    const/4 v2, 0x0

    const/16 v5, 0x64

    invoke-direct {v0, v1, v2, v5}, Lorg/jivesoftware/smack/packet/PrivacyItem;-><init>(Ljava/lang/String;ZI)V

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setValue(Ljava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p2, :cond_7

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/PrivacyItem;->setFilterMessage(Z)V

    :cond_7
    const-string v1, "contact"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "addToPrivacyList item.getValue="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->toXML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "special"

    invoke-virtual {v3, v0, v4}, Lorg/jivesoftware/smack/PrivacyListManager;->updatePrivacyList(Ljava/lang/String;Ljava/util/List;)V

    const-string v0, "special"

    invoke-virtual {v3, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setActiveListName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private deleteFromPrivacyList(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const-string v1, "connection is null, please login first"

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/PrivacyListManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/PrivacyListManager;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const-string v1, "PrivacyListManager is null"

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :try_start_0
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyLists()[Lorg/jivesoftware/smack/PrivacyList;

    move-result-object v0

    array-length v0, v0

    if-eqz v0, :cond_4

    const-string v0, "special"

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyList(Ljava/lang/String;)Lorg/jivesoftware/smack/PrivacyList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PrivacyList;->getItems()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    if-nez v0, :cond_6

    const-string v0, "contact"

    const-string v1, "current user is not exsit in the black list"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/PrivacyItem;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "contact"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "PrivacyList item.getValue="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getValue()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Lorg/jivesoftware/smack/PrivacyListManager;->declineDefaultList()V

    const-string v0, "special"

    invoke-virtual {v2, v0, v3}, Lorg/jivesoftware/smack/PrivacyListManager;->updatePrivacyList(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const-string v0, "special"

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setDefaultListName(Ljava/lang/String;)V

    const-string v0, "special"

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smack/PrivacyListManager;->setActiveListName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :try_start_1
    const-string v0, "contact"

    const-string v1, "current user is not exsit in the black list"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method static getBareEidFromUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getContactChangeAction()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "com.easemob.contact.changed_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMChatConfig;->MUC_DOMAIN_SUFFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const-string v0, "bot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "bot@echo.easemob.com"

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMChatConfig;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_1
    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    move-object v0, p0

    goto :goto_0

    :cond_3
    move-object p0, v0

    goto :goto_1
.end method

.method public static getInstance()Lcom/easemob/chat/EMContactManager;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMContactManager;->instance:Lcom/easemob/chat/EMContactManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMContactManager;

    invoke-direct {v0}, Lcom/easemob/chat/EMContactManager;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMContactManager;->instance:Lcom/easemob/chat/EMContactManager;

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMContactManager;->instance:Lcom/easemob/chat/EMContactManager;

    return-object v0
.end method

.method public static getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "@"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "@"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_1
    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0

    :cond_2
    move-object v0, p0

    goto :goto_0

    :cond_3
    move-object p0, v0

    goto :goto_1
.end method


# virtual methods
.method public addContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/easemob/chat/EMContactManager;->addContactToRosterThroughPresence(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method addContactInternal(Lcom/easemob/chat/EMContact;)V
    .locals 3

    const-string v0, "contact"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "internal add contact:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/easemob/chat/EMContact;->eid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->contactTable:Ljava/util/Map;

    iget-object v1, p1, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    iget-object v1, p1, Lcom/easemob/chat/EMContact;->eid:Ljava/lang/String;

    iget-object v2, p1, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/easemob/chat/core/i;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method addContactToRosterThroughPresence(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->checkConnection()V

    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;->setTo(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smack/packet/Presence;->setStatus(Ljava/lang/String;)V

    :cond_0
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

.method public addUserToBlackList(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/easemob/chat/EMContactManager;->addToPrivacyList(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->o(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->blackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->blackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method checkConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    const-string v0, "contact"

    const-string v1, "network unconnected"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/util/NetUtils;->hasDataConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "contact"

    const-string v1, "try to reconnect after check connection failed"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteContact(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMContactManager;->removeContactFromRoster(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatManager;->deleteConversation(Ljava/lang/String;)Z

    return-void
.end method

.method deleteContactInternal(Ljava/lang/String;)V
    .locals 3

    const-string v0, "contact"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete contact:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->contactTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMContact;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    iget-object v0, v0, Lcom/easemob/chat/EMContact;->eid:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/core/i;->m(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/easemob/chat/EMChatManager;->deleteConversation(Ljava/lang/String;Z)Z

    return-void

    :cond_0
    const-string v0, "contact"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "local contact doesnt exists will try to delete:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteUserFromBlackList(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/easemob/chat/EMContactManager;->deleteFromPrivacyList(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->n(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->blackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->blackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getBlackListUsernames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->blackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i;->j()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/EMContactManager;->blackList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->blackList:Ljava/util/List;

    return-object v0
.end method

.method public getBlackListUsernamesFromServer()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const-string v1, "connetion is not connected"

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {v0}, Lorg/jivesoftware/smack/PrivacyListManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/PrivacyListManager;

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string v2, "special"

    invoke-virtual {v0, v2}, Lorg/jivesoftware/smack/PrivacyListManager;->getPrivacyList(Ljava/lang/String;)Lorg/jivesoftware/smack/PrivacyList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/jivesoftware/smack/PrivacyList;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    return-object v1

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/PrivacyItem;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/PrivacyItem;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item-not-found"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_4
    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getContactByUserName(Ljava/lang/String;)Lcom/easemob/chat/EMContact;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->contactTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMContact;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMContact;

    invoke-direct {v0, p1}, Lcom/easemob/chat/EMContact;-><init>(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getContactUserNames()Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/easemob/chat/EMContactManager;->getRosterUserNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getCurrentUserFullJid()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMSessionManager;->currentUser:Lcom/easemob/chat/EMContact;

    iget-object v0, v0, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    iget-object v1, p0, Lcom/easemob/chat/EMContactManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/easemob/chat/core/EMConnectionManager;->getXmppResource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRosterStorage(Landroid/content/Context;)Lorg/jivesoftware/smack/RosterStorage;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->rosterStorage:Lcom/easemob/chat/EMRosterStorageImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMRosterStorageImpl;

    invoke-direct {v0, p1, p0}, Lcom/easemob/chat/EMRosterStorageImpl;-><init>(Landroid/content/Context;Lcom/easemob/chat/EMContactManager;)V

    iput-object v0, p0, Lcom/easemob/chat/EMContactManager;->rosterStorage:Lcom/easemob/chat/EMRosterStorageImpl;

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->rosterStorage:Lcom/easemob/chat/EMRosterStorageImpl;

    return-object v0
.end method

.method getRosterUserNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->checkConnection()V

    iget-boolean v0, p0, Lcom/easemob/chat/EMContactManager;->enableRosterVersion:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/easemob/chat/EMContactManager;->loadContacts()V

    :cond_0
    const-string v0, "contact"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start to get roster for user:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMSessionManager;->getLoginUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v0}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->start()V

    iget-object v1, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v1}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getRoster()Lorg/jivesoftware/smack/Roster;

    move-result-object v1

    iput-object v1, p0, Lcom/easemob/chat/EMContactManager;->roster:Lorg/jivesoftware/smack/Roster;

    iget-object v1, p0, Lcom/easemob/chat/EMContactManager;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Roster;->getEntries()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/easemob/analytics/EMPerformanceCollector;->collectRetrieveRoster(IJ)V

    :cond_1
    const-string v0, "contact"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get roster return size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    return-object v2

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/RosterEntry;

    const-string v1, "contact"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "entry name:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v1

    sget-object v4, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->both:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-eq v1, v4, :cond_4

    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getType()Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    move-result-object v1

    sget-object v4, Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;->from:Lorg/jivesoftware/smack/packet/RosterPacket$ItemType;

    if-ne v1, v4, :cond_2

    :cond_4
    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    invoke-virtual {v0}, Lorg/jivesoftware/smack/RosterEntry;->getUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v4

    iget-object v4, v4, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v1, "contact"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "get roster contact:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_1
.end method

.method init(Landroid/content/Context;Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 4

    iget-boolean v0, p0, Lcom/easemob/chat/EMContactManager;->isIntied:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "contact"

    const-string v1, "try to init contact manager"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/easemob/chat/EMContactManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/easemob/chat/EMContactManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMContactManager;->deleteContactsSet:Ljava/util/Set;

    iget-boolean v0, p0, Lcom/easemob/chat/EMContactManager;->enableRosterVersion:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/easemob/chat/EMContactManager;->loadContacts()V

    :cond_1
    invoke-virtual {p0}, Lcom/easemob/chat/EMContactManager;->needGetRosterFromServer()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v0}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->start()V

    invoke-virtual {p2}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getRoster()Lorg/jivesoftware/smack/Roster;

    move-result-object v1

    iput-object v1, p0, Lcom/easemob/chat/EMContactManager;->roster:Lorg/jivesoftware/smack/Roster;

    iget-object v1, p0, Lcom/easemob/chat/EMContactManager;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/Roster;->getEntries()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/easemob/analytics/EMPerformanceCollector;->collectRetrieveRoster(IJ)V

    :goto_1
    new-instance v0, Lcom/easemob/chat/EMRosterListener;

    iget-object v1, p0, Lcom/easemob/chat/EMContactManager;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-direct {v0, p0, v1}, Lcom/easemob/chat/EMRosterListener;-><init>(Lcom/easemob/chat/EMContactManager;Lorg/jivesoftware/smack/Roster;)V

    iput-object v0, p0, Lcom/easemob/chat/EMContactManager;->rosterListener:Lcom/easemob/chat/EMRosterListener;

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->roster:Lorg/jivesoftware/smack/Roster;

    iget-object v1, p0, Lcom/easemob/chat/EMContactManager;->rosterListener:Lcom/easemob/chat/EMRosterListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Roster;->addRosterListener(Lorg/jivesoftware/smack/RosterListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMContactManager;->isIntied:Z

    const-string v0, "contact"

    const-string v1, "created contact manager"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getRosterWithoutLoad()Lorg/jivesoftware/smack/Roster;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMContactManager;->roster:Lorg/jivesoftware/smack/Roster;

    goto :goto_1
.end method

.method loadContacts()V
    .locals 4

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getUseRoster()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/easemob/chat/EMContactManager;->enableRosterVersion:Z

    if-nez v0, :cond_1

    const-string v0, "contact"

    const-string v1, "roster is disabled, skip load contacts from db"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "contact"

    const-string v1, "first time exec. no contact db"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i;->i()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "contact"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "loaded contacts:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMContactManager;->contactTable:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->rosterStorage:Lcom/easemob/chat/EMRosterStorageImpl;

    if-eqz v0, :cond_0

    const-string v0, "contact"

    const-string v1, "sync roster storage with db"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->rosterStorage:Lcom/easemob/chat/EMRosterStorageImpl;

    invoke-virtual {v0}, Lcom/easemob/chat/EMRosterStorageImpl;->loadEntries()V

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMContact;

    iget-object v2, p0, Lcom/easemob/chat/EMContactManager;->contactTable:Ljava/util/Map;

    iget-object v3, v0, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method needGetRosterFromServer()Z
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i;->k()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getUseRoster()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method removeContactByUsername(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->contactTable:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMContact;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    iget-object v2, v0, Lcom/easemob/chat/EMContact;->eid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/easemob/chat/core/i;->m(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/easemob/chat/EMChatManager;->deleteConversation(Ljava/lang/String;Z)Z

    const-string v1, "contact"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "removed contact:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method removeContactFromRoster(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/Roster;->getEntry(Ljava/lang/String;)Lorg/jivesoftware/smack/RosterEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/EMContactManager;->roster:Lorg/jivesoftware/smack/Roster;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/Roster;->removeEntry(Lorg/jivesoftware/smack/RosterEntry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "contact"

    const-string v2, "Failed to delete contact:"

    invoke-static {v1, v2, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to delete contact:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeContactListener()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->contactTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->blackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Lcom/easemob/chat/EMContactManager;->hasGetBlacklist:Z

    iput-object v2, p0, Lcom/easemob/chat/EMContactManager;->roster:Lorg/jivesoftware/smack/Roster;

    iput-object v2, p0, Lcom/easemob/chat/EMContactManager;->rosterStorage:Lcom/easemob/chat/EMRosterStorageImpl;

    invoke-virtual {p0}, Lcom/easemob/chat/EMContactManager;->removeContactListener()V

    iput-boolean v1, p0, Lcom/easemob/chat/EMContactManager;->isIntied:Z

    return-void
.end method

.method public saveBlackList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->blackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/easemob/chat/EMContactManager;->blackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->d(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setContactListener(Lcom/easemob/chat/EMContactListener;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMContactManager;->contactListener:Lcom/easemob/chat/EMContactListener;

    return-void
.end method
