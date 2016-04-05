.class public Lcom/easemob/chat/EMGroupManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;,
        Lcom/easemob/chat/EMGroupManager$GroupEventType;,
        Lcom/easemob/chat/EMGroupManager$MUCSearchIQ;,
        Lcom/easemob/chat/EMGroupManager$MucApplyListener;,
        Lcom/easemob/chat/EMGroupManager$MucUserStatusListener;,
        Lcom/easemob/chat/EMGroupManager$RoomQueryIQ;,
        Lcom/easemob/chat/EMGroupManager$SearchPacketListener;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$easemob$chat$EMGroupManager$GroupEventType:[I = null

.field private static final DEFAULT_MAX_USERS:I = 0xc8

.field public static final MUC_NS_USER:Ljava/lang/String; = "http://jabber.org/protocol/muc#user"

.field private static final PERMISSION_ERROR:Ljava/lang/String; = "only group owner has this permission"

.field private static final PERMISSION_ERROR_ADD:Ljava/lang/String; = "only group owner can add member"

.field private static final PERMISSION_ERROR_DELETE:Ljava/lang/String; = "only group owner can delete group"

.field private static final PERMISSION_ERROR_REMOVE:Ljava/lang/String; = "only group owner can remove member"

.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/easemob/chat/EMGroupManager;


# instance fields
.field private allGroupLoaded:Z

.field allGroups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/easemob/chat/EMGroup;",
            ">;"
        }
    .end annotation
.end field

.field private appContext:Landroid/content/Context;

.field private final applyListener:Lcom/easemob/chat/EMGroupManager$MucApplyListener;

.field autoAcceptInvitation:Z

.field private chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

.field connection:Lorg/jivesoftware/smack/XMPPConnection;

.field groupChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/easemob/chat/GroupChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mutex:Ljava/lang/Object;

.field offlineGroupEvents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private receivedQuery:Z

.field private threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static synthetic $SWITCH_TABLE$com$easemob$chat$EMGroupManager$GroupEventType()[I
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->$SWITCH_TABLE$com$easemob$chat$EMGroupManager$GroupEventType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMGroupManager$GroupEventType;->values()[Lcom/easemob/chat/EMGroupManager$GroupEventType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ApplicationAccept:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    invoke-virtual {v1}, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ApplicationDeclind:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    invoke-virtual {v1}, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/easemob/chat/EMGroupManager$GroupEventType;->Apply:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    invoke-virtual {v1}, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/easemob/chat/EMGroupManager$GroupEventType;->Invitate:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    invoke-virtual {v1}, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/easemob/chat/EMGroupManager;->$SWITCH_TABLE$com$easemob$chat$EMGroupManager$GroupEventType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "group"

    sput-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/easemob/chat/EMGroupManager;

    invoke-direct {v0}, Lcom/easemob/chat/EMGroupManager;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMGroupManager;->instance:Lcom/easemob/chat/EMGroupManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMGroupManager;->autoAcceptInvitation:Z

    iput-boolean v1, p0, Lcom/easemob/chat/EMGroupManager;->allGroupLoaded:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMGroupManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    iput-object v2, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iput-object v2, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMGroupManager;->mutex:Ljava/lang/Object;

    iput-boolean v1, p0, Lcom/easemob/chat/EMGroupManager;->receivedQuery:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMGroupManager;->offlineGroupEvents:Ljava/util/ArrayList;

    new-instance v0, Lcom/easemob/chat/EMGroupManager$MucApplyListener;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMGroupManager$MucApplyListener;-><init>(Lcom/easemob/chat/EMGroupManager;)V

    iput-object v0, p0, Lcom/easemob/chat/EMGroupManager;->applyListener:Lcom/easemob/chat/EMGroupManager$MucApplyListener;

    new-instance v0, Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-direct {v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    return-void
.end method

.method private accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0, p3}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCUser;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCUser;-><init>()V

    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCUser$Accept;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/MUCUser$Accept;-><init>()V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Accept;->setFrom(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/packet/MUCUser$Accept;->setTo(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lorg/jivesoftware/smackx/packet/MUCUser$Accept;->setFromNick(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/MUCUser;->setAccept(Lorg/jivesoftware/smackx/packet/MUCUser$Accept;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/easemob/chat/EMGroupManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->mutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2(Lcom/easemob/chat/EMGroupManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMGroupManager;->receivedQuery:Z

    return-void
.end method

.method static synthetic access$3(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/EMCallBack;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMGroupManager;->syncLoadGroups(Lcom/easemob/EMCallBack;)V

    return-void
.end method

.method static synthetic access$4(Lcom/easemob/chat/EMGroupManager;)Lcom/easemob/chat/EMMultiUserChatProcessor;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    return-object v0
.end method

.method private addUserToMUC(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "muc add user:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to chat room:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUC(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "EaseMob-Group"

    invoke-virtual {v0, p2, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invite(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->grantMembership(Ljava/lang/String;)V

    return-void
.end method

.method private apply(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/easemob/chat/EMGroupManager;->getAllGroup()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMGroupManager;->getGroupFromRestServer(Ljava/lang/String;Z)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getOwner()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/Message;->setTo(Ljava/lang/String;)V

    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCUser;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCUser;-><init>()V

    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;-><init>()V

    invoke-virtual {v2, p3}, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;->setFrom(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;->setTo(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;->setReason(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;->setToNick(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/MUCUser;->setApply(Lorg/jivesoftware/smackx/packet/MUCUser$Apply;)V

    invoke-virtual {p1, v1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V
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

.method private blockUserMuc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUCWithoutJoin(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    :try_start_0
    const-string v1, "block"

    invoke-virtual {v0, p2, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->kickParticipant(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "easemob-block"

    invoke-virtual {v0, p2, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->banUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private checkConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->checkConnection()V

    return-void
.end method

.method private checkGroupOwner(Lcom/easemob/chat/EMGroup;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EMPermissionException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/easemob/exceptions/EMPermissionException;

    const/16 v1, -0x3fc

    invoke-direct {v0, v1, p2}, Lcom/easemob/exceptions/EMPermissionException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method private createPrivateXmppMUC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v1, v0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create muc room jid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " roomName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " owner:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " allowInvites:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1, p4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->create(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getConfigurationForm()Lorg/jivesoftware/smackx/Form;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/Form;->createAnswerForm()Lorg/jivesoftware/smackx/Form;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/Form;->getFields()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "muc#roomconfig_persistentroom"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Z)V

    const-string v0, "muc#roomconfig_membersonly"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Z)V

    const-string v0, "muc#roomconfig_moderatedroom"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Z)V

    if-lez p6, :cond_1

    const-string v0, "muc#roomconfig_maxusers"

    invoke-virtual {v2, v0, p6}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;I)V

    :cond_1
    const-string v0, "muc#roomconfig_publicroom"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Z)V

    const-string v0, "members_by_default"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Z)V

    const-string v0, "muc#roomconfig_allowinvites"

    invoke-virtual {v2, v0, p5}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Z)V

    const-string v0, "muc#roomconfig_roomname"

    invoke-virtual {v2, v0, p2}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "muc#roomconfig_roomdesc"

    invoke-virtual {v2, v0, p3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->sendConfigurationForm(Lorg/jivesoftware/smackx/Form;)V

    invoke-virtual {v1, p4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0, p1, v1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->addMuc(Ljava/lang/String;Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "muc created:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getRoom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/FormField;

    const-string v4, "hidden"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/Form;->setDefaultAnswer(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    throw v0
.end method

.method private createPublicXmppMUC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v1, Lorg/jivesoftware/smackx/muc/MultiUserChat;

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v1, v0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;-><init>(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)V

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create muc room jid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " roomName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " owner:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1, p4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->create(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getConfigurationForm()Lorg/jivesoftware/smackx/Form;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/Form;->createAnswerForm()Lorg/jivesoftware/smackx/Form;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/Form;->getFields()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "muc#roomconfig_persistentroom"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Z)V

    const-string v0, "muc#roomconfig_moderatedroom"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Z)V

    const-string v0, "muc#roomconfig_publicroom"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Z)V

    if-eqz p5, :cond_3

    const-string v0, "muc#roomconfig_membersonly"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Z)V

    :goto_1
    const-string v0, "members_by_default"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Z)V

    const-string v0, "muc#roomconfig_roomname"

    invoke-virtual {v2, v0, p2}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "muc#roomconfig_roomdesc"

    invoke-virtual {v2, v0, p3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    if-lez p6, :cond_1

    const-string v0, "muc#roomconfig_maxusers"

    invoke-virtual {v2, v0, p6}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->sendConfigurationForm(Lorg/jivesoftware/smackx/Form;)V

    invoke-virtual {v1, p4}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0, p1, v1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->addMuc(Ljava/lang/String;Lorg/jivesoftware/smackx/muc/MultiUserChat;)V

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "muc created:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getRoom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/FormField;

    const-string v4, "hidden"

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/jivesoftware/smackx/Form;->setDefaultAnswer(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    throw v0

    :cond_3
    :try_start_1
    const-string v0, "muc#roomconfig_membersonly"

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private decline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v0, p3}, Lorg/jivesoftware/smack/packet/Message;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/jivesoftware/smackx/packet/MUCUser;

    invoke-direct {v1}, Lorg/jivesoftware/smackx/packet/MUCUser;-><init>()V

    new-instance v2, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;-><init>()V

    invoke-virtual {v2, p1}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setTo(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setFrom(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setFromNick(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setReason(Ljava/lang/String;)V

    sget-object v3, Lorg/jivesoftware/smackx/packet/MUCUser$MucType;->Apply:Lorg/jivesoftware/smackx/packet/MUCUser$MucType;

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->setType(Lorg/jivesoftware/smackx/packet/MUCUser$MucType;)V

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smackx/packet/MUCUser;->setDecline(Lorg/jivesoftware/smackx/packet/MUCUser$Decline;)V

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Message;->addExtension(Lorg/jivesoftware/smack/packet/PacketExtension;)V

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method private filterOwnerFromMembers(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    move v0, v1

    move v2, v1

    :goto_1
    array-length v3, p2

    if-lt v0, v3, :cond_2

    if-eqz v2, :cond_0

    array-length v0, p2

    sub-int/2addr v0, v2

    if-nez v0, :cond_6

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const-string v1, "Please add members who should not be the owner!"

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    aget-object v3, p2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    aget-object v3, p2, v0

    if-eqz v3, :cond_4

    aget-object v3, p2, v0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const-string v1, "Your added a null number, Please add valid members!"

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    new-array v2, v0, [Ljava/lang/String;

    move v0, v1

    :goto_2
    array-length v3, p2

    if-lt v0, v3, :cond_7

    move-object p2, v2

    goto :goto_0

    :cond_7
    aget-object v3, p2, v0

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    aget-object v3, p2, v0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method private formatGroupName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private generateGroupId()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/util/DateUtils;->getTimestampStr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBlockedUsersMuc(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUCWithoutJoin(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getOutcasts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getOutcasts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_1

    :goto_2
    return-object v1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/Affiliate;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/Affiliate;->getJid()Ljava/lang/String;

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/Affiliate;

    sget-object v3, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "blocked  member jid:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/Affiliate;->getJid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/Affiliate;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private getGroupFromRestServer(Ljava/lang/String;Z)Lcom/easemob/chat/EMGroup;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v5, -0x3f9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/core/p;->L()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/chatgroups/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?version=v2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&needmembers=true"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v2, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v2}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    invoke-virtual {v2}, Lcom/easemob/analytics/EMTimeTag;->start()V

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v3

    sget-object v4, Lcom/easemob/cloud/EMHttpClient;->GET:Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v4}, Lcom/easemob/cloud/EMHttpClient;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0xc8

    if-eq v4, v3, :cond_1

    const/16 v3, 0xcc

    if-ne v4, v3, :cond_3

    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "error"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "group id doesn\'t exist"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3f9

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no group on server with groupid: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v1, v0}, Lcom/easemob/chat/EMGroupManager;->parseGroupFromData(ZLorg/json/JSONObject;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    invoke-virtual {v2}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/easemob/analytics/EMPerformanceCollector;->collectRetrieveGroupFromServer(Lcom/easemob/chat/EMGroup;J)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object v0

    :cond_3
    const/16 v1, 0x190

    if-eq v4, v1, :cond_4

    const/16 v1, 0x194

    if-ne v4, v1, :cond_5

    :cond_4
    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no group on server with groupid: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v5, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    move-object v0, v1

    goto :goto_0
.end method

.method private getGroupsFromRestServer(Z)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->L()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/users/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/joined_chatgroups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?detail=true"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Lcom/easemob/cloud/EMHttpClient;->GET:Ljava/lang/String;

    invoke-virtual {v2, v0, v3, v4}, Lcom/easemob/cloud/EMHttpClient;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v2

    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v0, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0xc8

    if-eq v3, v2, :cond_1

    const/16 v2, 0xcc

    if-ne v3, v2, :cond_4

    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v0, v3, :cond_3

    :cond_2
    return-object v1

    :cond_3
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/easemob/chat/EMGroupManager;->parseGroupFromData(ZLorg/json/JSONObject;)Lcom/easemob/chat/EMGroup;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance()Lcom/easemob/chat/EMGroupManager;
    .locals 1

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->instance:Lcom/easemob/chat/EMGroupManager;

    return-object v0
.end method

.method private getPublicGroupsFromRest(ILjava/lang/String;)Lcom/easemob/chat/EMCursorResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/easemob/chat/EMCursorResult",
            "<",
            "Lcom/easemob/chat/EMGroupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->L()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/publicchatgroups"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&cursor="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Lcom/easemob/chat/EMCursorResult;

    invoke-direct {v1}, Lcom/easemob/chat/EMCursorResult;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v3

    const/4 v4, 0x0

    sget-object v5, Lcom/easemob/cloud/EMHttpClient;->GET:Ljava/lang/String;

    invoke-virtual {v3, v0, v4, v5}, Lcom/easemob/cloud/EMHttpClient;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0xc8

    if-eq v4, v3, :cond_1

    const/16 v3, 0xcc

    if-ne v4, v3, :cond_5

    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "cursor"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "cursor"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/easemob/chat/EMCursorResult;->setCursor(Ljava/lang/String;)V

    :cond_2
    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "data"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_4

    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMCursorResult;->setData(Ljava/lang/Object;)V

    :cond_3
    return-object v1

    :cond_4
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "groupid"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "groupname"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/easemob/chat/EMGroupInfo;

    invoke-direct {v6, v5, v4}, Lcom/easemob/chat/EMGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getPublicMUCs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMGroupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    sget-object v2, Lcom/easemob/chat/EMChatConfig;->MUC_DOMAIN:Ljava/lang/String;

    invoke-static {v0, v2, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getPublicRooms(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    sget-object v2, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "public room size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " retrieved public groups from server:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/HostedRoom;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/HostedRoom;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/easemob/chat/EMGroupManager;->formatGroupName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "joined room room jid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/HostedRoom;->getJid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/easemob/chat/EMGroupInfo;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/HostedRoom;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, v3}, Lcom/easemob/chat/EMGroupInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private inviteUserMUC(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUC(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->getInstance()Lcom/easemob/chat/EMGroupManager;

    move-result-object v0

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/easemob/chat/EMGroupManager;->getGroup(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v2}, Lcom/easemob/chat/EMGroup;->getMembers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMGroup;->setAffiliationsCount(I)V

    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p3}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->invite(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/easemob/chat/EMGroup;->isAllowInvites()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMGroup;->addMember(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadGroups()V
    .locals 4

    new-instance v0, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v0}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->start()V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/i;->f()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    sget-object v1, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load all groups from db. size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/easemob/chat/EMGroupManager;->allGroupLoaded:Z

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/easemob/analytics/EMPerformanceCollector;->collectLoadAllLocalGroups(IJ)V

    :cond_0
    return-void
.end method

.method private parseGroupFromData(ZLorg/json/JSONObject;)Lcom/easemob/chat/EMGroup;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "groupid"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "groupname"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/easemob/chat/EMGroup;

    invoke-direct {v2, v0}, Lcom/easemob/chat/EMGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/easemob/chat/EMGroup;->setGroupName(Ljava/lang/String;)V

    if-eqz p1, :cond_8

    const-string v0, "owner"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "owner"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMGroup;->setOwner(Ljava/lang/String;)V

    :cond_0
    const-string v0, "membersonly"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "membersonly"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/easemob/chat/EMGroup;->membersOnly:Z

    :cond_1
    const-string v0, "allowinvites"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "allowinvites"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/easemob/chat/EMGroup;->allowInvites:Z

    :cond_2
    const-string v0, "public"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "public"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/easemob/chat/EMGroup;->isPublic:Z

    :cond_3
    const-string v0, "description"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "description"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/easemob/chat/EMGroup;->description:Ljava/lang/String;

    :cond_4
    const-string v0, "maxusers"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "maxusers"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/easemob/chat/EMGroup;->maxUsers:I

    :cond_5
    const-string v0, "shieldgroup"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "shieldgroup"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/easemob/chat/EMGroup;->isMsgBlocked:Z

    :cond_6
    const-string v0, "affiliations_count"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "affiliations_count"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v2, Lcom/easemob/chat/EMGroup;->affiliationsCount:I

    :cond_7
    const-string v0, "member"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "member"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v0, v4, :cond_9

    invoke-virtual {v2, v1}, Lcom/easemob/chat/EMGroup;->setMembers(Ljava/util/List;)V

    :cond_8
    return-object v2

    :cond_9
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private removeGroupFromCache(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->removeMuc(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/easemob/chat/EMGroupManager;->getAllGroup()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->isDeleteMessagesAsExitGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v2}, Lcom/easemob/chat/EMChatManager;->deleteConversation(Ljava/lang/String;ZZ)Z

    :cond_0
    return-void
.end method

.method private removeUserFromMUC(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "muc remove user:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from chat room:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUC(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->revokeMembership(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_0
    sget-object v2, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    const-string v3, "try to kick user if already joined"

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "RemoveFromGroup"

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->kickParticipant(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized retrieveUserMucsOnServer(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/easemob/chat/EMGroupManager$MUCSearchIQ;

    invoke-direct {v0, p0, p1, p1}, Lcom/easemob/chat/EMGroupManager$MUCSearchIQ;-><init>(Lcom/easemob/chat/EMGroupManager;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/easemob/chat/EMGroupManager$5;

    const-class v2, Lorg/jivesoftware/smack/packet/IQ;

    invoke-direct {v1, p0, v2}, Lcom/easemob/chat/EMGroupManager$5;-><init>(Lcom/easemob/chat/EMGroupManager;Ljava/lang/Class;)V

    new-instance v2, Lcom/easemob/chat/EMGroupManager$SearchPacketListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/easemob/chat/EMGroupManager$SearchPacketListener;-><init>(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/chat/EMGroupManager$SearchPacketListener;)V

    iget-object v3, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3, v2, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/easemob/chat/EMGroupManager;->receivedQuery:Z

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->mutex:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->mutex:Ljava/lang/Object;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-boolean v0, p0, Lcom/easemob/chat/EMGroupManager;->receivedQuery:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    const-string v1, "server no response for group search"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const-string v1, "server timeout"

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private syncGroupsWithRemoteGroupList(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMGroup;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->a(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/easemob/chat/EMGroupManager;->getAllGroup()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete local groups which not exists on server:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/easemob/chat/core/i;->b(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    invoke-virtual {p0}, Lcom/easemob/chat/EMGroupManager;->getAllGroup()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " group sync. local already exists:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/easemob/chat/EMGroupManager;->updateCache(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_3
    if-nez v1, :cond_0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/EMGroup;

    invoke-virtual {v1}, Lcom/easemob/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/easemob/chat/EMGroupManager;->removeGroupFromCache(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private declared-synchronized syncLoadGroups(Lcom/easemob/EMCallBack;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroupLoaded:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/easemob/EMCallBack;->onSuccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/easemob/chat/EMGroupManager;->loadGroups()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unblockUserMuc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUCWithoutJoin(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->revokeMembership(Ljava/lang/String;)V

    return-void
.end method

.method private updateCache(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;
    .locals 2

    invoke-virtual {p0}, Lcom/easemob/chat/EMGroupManager;->getAllGroup()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroup;->copyGroup(Lcom/easemob/chat/EMGroup;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/easemob/chat/EMGroupManager;->getAllGroup()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    goto :goto_0
.end method


# virtual methods
.method public acceptApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "group doesn\'t exist:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/easemob/chat/EMGroupManager;->addUserToMUC(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroup;->addMember(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getGroupName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, v2}, Lcom/easemob/chat/EMGroupManager;->accept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easemob/chat/core/i;->b(Lcom/easemob/chat/EMGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public acceptInvitation(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUCWithoutJoin(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :try_start_1
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Ljava/lang/String;)V

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    const-string v1, "join muc when acceptInvitation()"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/easemob/chat/EMGroupManager;->getGroupFromRestServer(Ljava/lang/String;Z)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMGroupManager;->createOrUpdateLocalGroup(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addGroupChangeListener(Lcom/easemob/chat/GroupChangeListener;)V
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "add group change listener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addUsersToGroup(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/easemob/chat/EMGroupManager;->getAllGroup()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3f8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "group doesn\'t exist in local:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    const-string v2, "only group owner can add member"

    invoke-direct {p0, v0, v2}, Lcom/easemob/chat/EMGroupManager;->checkGroupOwner(Lcom/easemob/chat/EMGroup;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/easemob/chat/EMGroupManager;->getMUC(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/easemob/chat/EMGroup;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMGroup;->getAffiliationsCount()I

    move-result v4

    invoke-virtual {v2}, Lcom/easemob/chat/EMGroup;->getMaxUsers()I

    move-result v2

    if-lt v4, v2, :cond_1

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3fa

    const-string v2, "the max group members are reached!"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    instance-of v1, v0, Lcom/easemob/exceptions/EaseMobException;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/easemob/exceptions/EaseMobException;

    throw v0

    :cond_1
    sub-int/2addr v2, v4

    :try_start_1
    array-length v4, p2

    if-ge v2, v4, :cond_2

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3fb

    const-string v2, "there is no room to add new members"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    array-length v4, p2

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_3

    array-length v2, p2

    :goto_1
    if-lt v1, v2, :cond_4

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMGroup;->setAffiliationsCount(I)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easemob/chat/core/i;->b(Lcom/easemob/chat/EMGroup;)V

    return-void

    :cond_3
    aget-object v5, p2, v2

    invoke-static {v5}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v3, v5, v6}, Lcom/easemob/chat/EMGroupManager;->addUserToMUC(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    aget-object v3, p2, v1

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getMembers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v0, v3}, Lcom/easemob/chat/EMGroup;->addMember(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public applyJoinToGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/jivesoftware/smack/packet/Message;

    invoke-direct {v2}, Lorg/jivesoftware/smack/packet/Message;-><init>()V

    invoke-direct {p0, v2, v0, v1, p2}, Lcom/easemob/chat/EMGroupManager;->apply(Lorg/jivesoftware/smack/packet/Message;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public asyncGetAllPublicGroupsFromServer(Lcom/easemob/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/easemob/EMValueCallBack",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMGroupInfo;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "callback is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/easemob/chat/EMGroupManager$4;

    invoke-direct {v1, p0, p1}, Lcom/easemob/chat/EMGroupManager$4;-><init>(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/EMValueCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public asyncGetGroupsFromServer(Lcom/easemob/EMValueCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/easemob/EMValueCallBack",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMGroup;",
            ">;>;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "callback is null!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/easemob/chat/EMGroupManager$3;

    invoke-direct {v1, p0, p1}, Lcom/easemob/chat/EMGroupManager$3;-><init>(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/EMValueCallBack;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method batchRemoveGroups(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public blockGroupMessage(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "try to block group msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUC(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMGroupManager;->getGroup(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3f8

    const-string v2, "group not exist in local"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Lcom/easemob/chat/EMGroup;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/easemob/exceptions/EMPermissionException;

    const/16 v1, -0x3fc

    const-string v2, "group owner can not block group messages"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EMPermissionException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->grantAdmin(Ljava/lang/String;)V

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "block group msg done:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMGroup;->setMsgBlocked(Z)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/easemob/chat/core/i;->b(Lcom/easemob/chat/EMGroup;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public blockUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "block user for groupid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3f8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "group doesn\'t exist in local:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "only group owner has this permission"

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMGroupManager;->checkGroupOwner(Lcom/easemob/chat/EMGroup;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMGroupManager;->blockUserMuc(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMGroupManager;->getGroupFromServer(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMGroupManager;->createOrUpdateLocalGroup(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public changeGroupName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3f8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "group doesn\'t exist in local:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    const-string v2, "only group owner has this permission"

    invoke-direct {p0, v0, v2}, Lcom/easemob/chat/EMGroupManager;->checkGroupOwner(Lcom/easemob/chat/EMGroup;Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v2, v1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUC(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getConfigurationForm()Lorg/jivesoftware/smackx/Form;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/Form;->createAnswerForm()Lorg/jivesoftware/smackx/Form;

    move-result-object v3

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/Form;->getFields()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "muc#roomconfig_roomname"

    invoke-virtual {v3, v1, p2}, Lorg/jivesoftware/smackx/Form;->setAnswer(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->sendConfigurationForm(Lorg/jivesoftware/smackx/Form;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->isJoined()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, p2}, Lcom/easemob/chat/EMGroup;->setGroupName(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easemob/chat/core/i;->b(Lcom/easemob/chat/EMGroup;)V

    return-void

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jivesoftware/smackx/FormField;

    const-string v5, "hidden"

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/FormField;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/FormField;->getVariable()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/jivesoftware/smackx/Form;->setDefaultAnswer(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroupLoaded:Z

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    const-string v1, "group manager clear"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/easemob/chat/EMGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/easemob/chat/EMGroupManager;->createPrivateGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method public createOrUpdateLocalGroup(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;
    .locals 2

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/easemob/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/i;->e(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->a(Lcom/easemob/chat/EMGroup;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/easemob/chat/EMGroupManager;->updateCache(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->b(Lcom/easemob/chat/EMGroup;)V

    goto :goto_0
.end method

.method public createPrivateGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/easemob/chat/EMGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/easemob/chat/EMGroupManager;->createPrivateGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method public createPrivateGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/easemob/chat/EMGroup;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/easemob/chat/EMGroupManager;->createPrivateGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method public createPrivateGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)Lcom/easemob/chat/EMGroup;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v7, 0x0

    const/16 v2, -0x3fa

    invoke-direct {p0}, Lcom/easemob/chat/EMGroupManager;->generateGroupId()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, p3}, Lcom/easemob/chat/EMGroupManager;->filterOwnerFromMembers(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    if-ge p5, v3, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const-string v1, "the max group members are reached!"

    invoke-direct {v0, v2, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    if-eqz v9, :cond_1

    array-length v0, v9

    if-lt v0, p5, :cond_1

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const-string v1, "the max group members are reached!"

    invoke-direct {v0, v2, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/easemob/chat/EMGroupManager;->createPrivateXmppMUC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    if-eqz v9, :cond_2

    array-length v2, v9

    move v0, v7

    :goto_0
    if-lt v0, v2, :cond_4

    :cond_2
    new-instance v1, Lcom/easemob/chat/EMGroup;

    invoke-direct {v1, v8}, Lcom/easemob/chat/EMGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/easemob/chat/EMGroup;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/easemob/chat/EMGroup;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, Lcom/easemob/chat/EMGroup;->setMaxUsers(I)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMGroup;->setOwner(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/easemob/chat/EMGroup;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_3

    array-length v3, v9

    move v0, v7

    :goto_1
    if-lt v0, v3, :cond_5

    :cond_3
    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMGroup;->setMembers(Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMGroup;->setAffiliationsCount(I)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/i;->a(Lcom/easemob/chat/EMGroup;)V

    invoke-virtual {p0}, Lcom/easemob/chat/EMGroupManager;->getAllGroup()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/easemob/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_4
    aget-object v3, v9, v0

    invoke-static {v3}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/easemob/chat/EMGroupManager;->addUserToMUC(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    aget-object v4, v9, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createPublicGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)Lcom/easemob/chat/EMGroup;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/16 v5, 0xc8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/easemob/chat/EMGroupManager;->createPublicGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method public createPublicGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)Lcom/easemob/chat/EMGroup;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v7, 0x0

    const/16 v3, -0x3fa

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/easemob/chat/EMGroupManager;->generateGroupId()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, p3}, Lcom/easemob/chat/EMGroupManager;->filterOwnerFromMembers(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    if-ge p5, v2, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const-string v1, "the max group members are reached!"

    invoke-direct {v0, v3, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    if-eqz v9, :cond_1

    array-length v0, v9

    if-lt v0, p5, :cond_1

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const-string v1, "the max group members are reached!"

    invoke-direct {v0, v3, v1}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    move v6, p5

    :try_start_0
    invoke-direct/range {v0 .. v6}, Lcom/easemob/chat/EMGroupManager;->createPublicXmppMUC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    if-eqz v9, :cond_2

    array-length v2, v9

    move v0, v7

    :goto_0
    if-lt v0, v2, :cond_4

    :cond_2
    new-instance v1, Lcom/easemob/chat/EMGroup;

    invoke-direct {v1, v8}, Lcom/easemob/chat/EMGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/easemob/chat/EMGroup;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lcom/easemob/chat/EMGroup;->setDescription(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMGroup;->setOwner(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMGroup;->setPublic(Z)V

    invoke-virtual {v1, p5}, Lcom/easemob/chat/EMGroup;->setMaxUsers(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1}, Lcom/easemob/chat/EMGroup;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v9, :cond_3

    array-length v3, v9

    move v0, v7

    :goto_1
    if-lt v0, v3, :cond_5

    :cond_3
    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMGroup;->setMembers(Ljava/util/List;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMGroup;->setAffiliationsCount(I)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/i;->a(Lcom/easemob/chat/EMGroup;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/easemob/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1

    :cond_4
    aget-object v3, v9, v0

    invoke-static {v3}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v1, v3, v4}, Lcom/easemob/chat/EMGroupManager;->addUserToMUC(Ljava/lang/String;Ljava/lang/String;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    aget-object v4, v9, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public declineApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    :try_start_0
    invoke-static {p2}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3f8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "group doesn\'t exist in local:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

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
    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, v2, p3}, Lcom/easemob/chat/EMGroupManager;->decline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method declineInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "decline invitation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inviter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-static {v2, v0, v1, p3}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->decline(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMGroupManager;->deleteLocalGroup(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public deleteLocalGroup(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "delete local group:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->g(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMGroupManager;->removeGroupFromCache(Ljava/lang/String;)V

    return-void
.end method

.method public exitAndDeleteGroup(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/easemob/chat/EMGroupManager;->getAllGroup()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3f8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "group doesn\'t exist in local:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "only group owner can delete group"

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMGroupManager;->checkGroupOwner(Lcom/easemob/chat/EMGroup;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->deleteMUC(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/easemob/chat/EMGroupManager;->getAllGroup()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMGroupManager;->deleteLocalGroup(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public exitFromGroup(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v2, v0, v1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->leaveMUCRemoveMember(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMGroupManager;->deleteLocalGroup(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method getAllGroup()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    return-object v0
.end method

.method public getAllGroups()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMGroup;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllPublicGroupsFromServer()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMGroupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMGroupManager;->getPublicMUCs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getBlockedUsers(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
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

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "get blocked users for group:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/easemob/chat/EMGroupManager;->getBlockedUsersMuc(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getGroup(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    return-object v0
.end method

.method public getGroupFromServer(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3f9

    const-string v2, "group id is null"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/easemob/chat/EMGroupManager;->checkConnection()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/easemob/chat/EMGroupManager;->getGroupFromRestServer(Ljava/lang/String;Z)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getGroupsFromServer()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/easemob/chat/EMGroupManager;->checkConnection()V

    new-instance v0, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v0}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->start()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/easemob/chat/EMGroupManager;->getGroupsFromRestServer(Z)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->timeSpent()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/easemob/analytics/EMPerformanceCollector;->collectRetrieveGroupsFromServerTime(IJ)V

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->start()V

    invoke-direct {p0, v1}, Lcom/easemob/chat/EMGroupManager;->syncGroupsWithRemoteGroupList(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->timeSpent()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/easemob/analytics/EMPerformanceCollector;->collectSyncWithServerGroups(IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    monitor-exit p0

    return-object v1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    instance-of v1, v0, Lcom/easemob/exceptions/EaseMobException;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/easemob/exceptions/EaseMobException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_2
    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized getJoinedGroupsFromServer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/easemob/chat/EMGroupManager;->getGroupsFromServer()Ljava/util/List;
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

.method getMUC(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/easemob/chat/EMGroup;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-static {v0, p1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getRoomInfo(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/RoomInfo;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/RoomInfo;->getRoomName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/RoomInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v2, Lcom/easemob/chat/EMGroup;

    invoke-direct {v2, v5}, Lcom/easemob/chat/EMGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/easemob/chat/EMGroup;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/easemob/chat/EMGroup;->setDescription(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/RoomInfo;->isMembersOnly()Z

    move-result v6

    iput-boolean v6, v2, Lcom/easemob/chat/EMGroup;->membersOnly:Z

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/RoomInfo;->isPublic()Z

    move-result v6

    iput-boolean v6, v2, Lcom/easemob/chat/EMGroup;->isPublic:Z

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/RoomInfo;->isAllowInvites()Z

    move-result v6

    iput-boolean v6, v2, Lcom/easemob/chat/EMGroup;->allowInvites:Z

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/RoomInfo;->getMaxUsers()I

    move-result v6

    iput v6, v2, Lcom/easemob/chat/EMGroup;->maxUsers:I

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/RoomInfo;->getAffiliationsCount()I

    move-result v6

    iput v6, v2, Lcom/easemob/chat/EMGroup;->affiliationsCount:I

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/RoomInfo;->getOwner()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/RoomInfo;->getOwner()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v2, Lcom/easemob/chat/EMGroup;->owner:Ljava/lang/String;

    :cond_1
    sget-object v6, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "get room info for roomjid:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " name:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " desc:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "owner:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/RoomInfo;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ispublic:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/easemob/chat/EMGroup;->isPublic()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ismemberonly:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/easemob/chat/EMGroup;->isMembersOnly()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isallowinvites:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/easemob/chat/EMGroup;->isAllowInvites()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " maxusers:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Lcom/easemob/chat/EMGroup;->maxUsers:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " affCounts:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Lcom/easemob/chat/EMGroup;->affiliationsCount:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " isjoin:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " owner:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v2, Lcom/easemob/chat/EMGroup;->owner:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUCWithoutJoin(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v3

    if-eqz p4, :cond_2

    invoke-virtual {v3, p2}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Ljava/lang/String;)V

    :cond_2
    if-nez p3, :cond_3

    move-object v0, v2

    goto/16 :goto_0

    :cond_3
    :try_start_0
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getOwners()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/Affiliate;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/Affiliate;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMGroup;->setOwner(Ljava/lang/String;)V

    sget-object v4, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " room owner:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v2}, Lcom/easemob/chat/EMGroup;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMGroup;->addMember(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getMembers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_5

    :try_start_1
    invoke-virtual {v3}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getAdmins()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_6

    :goto_3
    move-object v0, v2

    goto/16 :goto_0

    :cond_5
    :try_start_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/Affiliate;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/Affiliate;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMGroup;->addMember(Ljava/lang/String;)V

    sget-object v6, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "  room member:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error when retrieve group info from server:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->removeMuc(Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_6
    :try_start_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/Affiliate;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/Affiliate;->getJid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMGroup;->addMember(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, " this room is blocked group msg:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/easemob/chat/EMGroup;->isMsgBlocked:Z

    :cond_7
    sget-object v4, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  room blockedmsg member:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v0

    :try_start_4
    sget-object v3, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error when retrieve blocked members:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3
.end method

.method getMUCWithoutJoin(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUCWithoutJoin(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    return-object v0
.end method

.method getMUCs(Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMGroup;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;,
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "needJoin : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v1}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    invoke-virtual {v1}, Lcom/easemob/analytics/EMTimeTag;->start()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    sget-object v3, Lcom/easemob/chat/EMChatConfig;->MUC_DOMAIN:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->getHostedRooms(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    sget-object v3, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "joined room size:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " retrieved groups from server:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/easemob/analytics/EMPerformanceCollector;->collectRetrieveGroupsFromServerTime(IJ)V

    :cond_1
    return-object v2

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smackx/muc/HostedRoom;

    sget-object v4, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "joined room room jid:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/HostedRoom;->getJid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/HostedRoom;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/HostedRoom;->getJid()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {p0, v0, v4, v5, p2}, Lcom/easemob/chat/EMGroupManager;->getMUC(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v4, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "  get group detail:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getGroupName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public getPublicGroupsFromServer(ILjava/lang/String;)Lcom/easemob/chat/EMCursorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/easemob/chat/EMCursorResult",
            "<",
            "Lcom/easemob/chat/EMGroupInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/easemob/chat/EMGroupManager;->checkConnection()V

    invoke-direct {p0, p1, p2}, Lcom/easemob/chat/EMGroupManager;->getPublicGroupsFromRest(ILjava/lang/String;)Lcom/easemob/chat/EMCursorResult;

    move-result-object v0

    return-object v0
.end method

.method handleRoomDestroy(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "group has been destroy on server:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/easemob/chat/EMGroupManager;->deleteLocalGroup(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/GroupChangeListener;

    invoke-interface {v0, v2, v1}, Lcom/easemob/chat/GroupChangeListener;->onGroupDestroy(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method handleUserRemove(Ljava/lang/String;)V
    .locals 5

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "user "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has been removed from group:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ""

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getGroupName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/easemob/chat/EMGroupManager;->deleteLocalGroup(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/GroupChangeListener;

    invoke-interface {v0, v2, v1}, Lcom/easemob/chat/GroupChangeListener;->onUserRemoved(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public inviteUser(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "invite usernames:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to group:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-string p3, ""

    :cond_0
    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p2

    :goto_0
    if-lt v0, v3, :cond_1

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v0, v3, v4}, Lcom/easemob/chat/EMGroupManager;->getMUC(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getAffiliationsCount()I

    move-result v3

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getMaxUsers()I

    move-result v0

    if-ne v3, v0, :cond_2

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3fa

    const-string v2, "\u7fa4\u6210\u5458\u6570\u5df2\u6ee1"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    instance-of v1, v0, Lcom/easemob/exceptions/EaseMobException;

    if-eqz v1, :cond_4

    check-cast v0, Lcom/easemob/exceptions/EaseMobException;

    throw v0

    :cond_1
    :try_start_1
    aget-object v4, p2, v0

    invoke-static {v4}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sub-int/2addr v0, v3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3fb

    const-string v2, "\u8981\u52a0\u5165\u7684\u7528\u6237\u4eba\u6570\u8d85\u8fc7\u5269\u4f59\u53ef\u52a0\u5165\u7684\u4eba\u6570"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0, v1, v2, p3}, Lcom/easemob/chat/EMGroupManager;->inviteUserMUC(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :cond_4
    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public joinGroup(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "try to joinPublicGroup, current user:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " groupId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMGroupManager;->getGroupFromServer(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/easemob/chat/EMGroupManager;->createOrUpdateLocalGroup(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUC(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->isJoined()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->join(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public joinGroupsAfterLogin()V
    .locals 1

    new-instance v0, Lcom/easemob/chat/EMGroupManager$2;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMGroupManager$2;-><init>(Lcom/easemob/chat/EMGroupManager;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public loadAllGroups()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/easemob/chat/EMGroupManager;->syncLoadGroups(Lcom/easemob/EMCallBack;)V

    return-void
.end method

.method public loadAllGroups(Lcom/easemob/EMCallBack;)V
    .locals 1

    new-instance v0, Lcom/easemob/chat/EMGroupManager$1;

    invoke-direct {v0, p0, p1}, Lcom/easemob/chat/EMGroupManager$1;-><init>(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/EMCallBack;)V

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroupManager$1;->start()V

    return-void
.end method

.method onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroupLoaded:Z

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    const-string v1, "group manager logout"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->offlineGroupEvents:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->offlineGroupEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method onInit()V
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    const-string v1, "init group manager"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMGroupManager;->appContext:Landroid/content/Context;

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    new-instance v0, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;

    const-string v1, "x"

    const-string v2, "http://jabber.org/protocol/muc#user"

    invoke-direct {v0, v1, v2}, Lorg/jivesoftware/smack/filter/PacketExtensionFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v2, p0, Lcom/easemob/chat/EMGroupManager;->applyListener:Lcom/easemob/chat/EMGroupManager$MucApplyListener;

    invoke-virtual {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->onInit()V

    return-void
.end method

.method onInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/easemob/chat/EMGroup;

    invoke-direct {v0, p1}, Lcom/easemob/chat/EMGroup;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroup;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/easemob/chat/EMGroupManager;->createOrUpdateLocalGroup(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;

    iget-boolean v0, p0, Lcom/easemob/chat/EMGroupManager;->autoAcceptInvitation:Z

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "auto accept group invitation for group:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMGroupManager;->acceptInvitation(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_0
    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    iget-boolean v0, v0, Lcom/easemob/chat/EMChat;->appInited:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v4, p1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/GroupChangeListener;

    sget-object v2, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "fire group inviatation received event for group:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, p1, v4, p2, p3}, Lcom/easemob/chat/GroupChangeListener;->onInvitationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aff offline group inviatation received event for group:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/easemob/chat/EMGroupManager;->offlineGroupEvents:Ljava/util/ArrayList;

    new-instance v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;

    sget-object v2, Lcom/easemob/chat/EMGroupManager$GroupEventType;->Invitate:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;-><init>(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/chat/EMGroupManager$GroupEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method processOfflineMessages()V
    .locals 8

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "process offline group event start: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMGroupManager;->offlineGroupEvents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->offlineGroupEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->offlineGroupEvents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    const-string v1, "proess offline group event finish"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->$SWITCH_TABLE$com$easemob$chat$EMGroupManager$GroupEventType()[I

    move-result-object v1

    iget-object v2, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->type:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    invoke-virtual {v2}, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/GroupChangeListener;

    sget-object v2, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fire group inviatation received event for group:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " listener:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    iget-object v5, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupId:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/easemob/chat/EMGroup;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/easemob/chat/EMGroup;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    new-instance v2, Lcom/easemob/chat/EMGroup;

    iget-object v5, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupId:Ljava/lang/String;

    invoke-direct {v2, v5}, Lcom/easemob/chat/EMGroup;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/easemob/chat/EMGroup;->setGroupName(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/easemob/chat/EMGroupManager;->createOrUpdateLocalGroup(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;

    :cond_3
    iget-object v2, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupId:Ljava/lang/String;

    iget-object v5, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupName:Ljava/lang/String;

    iget-object v6, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->inviterUserName:Ljava/lang/String;

    iget-object v7, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->reason:Ljava/lang/String;

    invoke-interface {v1, v2, v5, v6, v7}, Lcom/easemob/chat/GroupChangeListener;->onInvitationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/GroupChangeListener;

    sget-object v4, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fire group application received event for group:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " listener:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupId:Ljava/lang/String;

    iget-object v5, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupName:Ljava/lang/String;

    iget-object v6, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->inviterUserName:Ljava/lang/String;

    iget-object v7, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->reason:Ljava/lang/String;

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/easemob/chat/GroupChangeListener;->onApplicationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    :try_start_0
    iget-object v1, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupId:Ljava/lang/String;

    invoke-static {v1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/easemob/chat/EMGroupManager;->getMUC(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/easemob/chat/EMGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/easemob/chat/EMGroupManager;->createOrUpdateLocalGroup(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/GroupChangeListener;

    sget-object v4, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fire group application accept received event for group:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " listener:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupId:Ljava/lang/String;

    iget-object v5, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupName:Ljava/lang/String;

    iget-object v6, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->inviterUserName:Ljava/lang/String;

    invoke-interface {v1, v4, v5, v6}, Lcom/easemob/chat/GroupChangeListener;->onApplicationAccept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/easemob/chat/GroupChangeListener;

    sget-object v4, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "fire group application declind received event for group:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " listener:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupId:Ljava/lang/String;

    iget-object v5, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->groupName:Ljava/lang/String;

    iget-object v6, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->inviterUserName:Ljava/lang/String;

    iget-object v7, v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;->reason:Ljava/lang/String;

    invoke-interface {v1, v4, v5, v6, v7}, Lcom/easemob/chat/GroupChangeListener;->onApplicationDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public removeGroupChangeListener(Lcom/easemob/chat/GroupChangeListener;)V
    .locals 3

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "remove group change listener:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method removeMucs()V
    .locals 0

    return-void
.end method

.method public removeUserFromGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/easemob/chat/EMGroupManager;->getAllGroup()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3f8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "group doesn\'t exist in local:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "only group owner can remove member"

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMGroupManager;->checkGroupOwner(Lcom/easemob/chat/EMGroup;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/easemob/chat/EMGroupManager;->removeUserFromMUC(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/easemob/chat/EMGroup;->removeMember(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMGroup;->setAffiliationsCount(I)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easemob/chat/core/i;->b(Lcom/easemob/chat/EMGroup;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setAutoAcceptInvitation(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMGroupManager;->autoAcceptInvitation:Z

    return-void
.end method

.method public unblockGroupMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "try to unblock group msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUC(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMGroupManager;->getGroup(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3f8

    const-string v2, "group not exist in local"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->grantMembership(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMGroup;->setMsgBlocked(Z)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/easemob/chat/core/i;->b(Lcom/easemob/chat/EMGroup;)V

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "block group msg done:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method public unblockUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    sget-object v0, Lcom/easemob/chat/EMGroupManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unblock user groupid:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " username:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager;->allGroups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x3f8

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "group doesn\'t exist in local:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    const-string v1, "only group owner has this permission"

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMGroupManager;->checkGroupOwner(Lcom/easemob/chat/EMGroup;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMGroupManager;->unblockUserMuc(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
