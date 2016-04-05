.class public Lcom/easemob/chat/EMChatManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/EMChatManager$ChatServiceConnection;,
        Lcom/easemob/chat/EMChatManager$EMChatManagerListener;,
        Lcom/easemob/chat/EMChatManager$SingleInvitationListener;,
        Lcom/easemob/chat/EMChatManager$XmppConnectionListener;
    }
.end annotation


# static fields
.field private static final CMD_MSG_BROADCAST:Ljava/lang/String; = "easemob.cmdmsg"

.field private static final CONTACT_INVITE_EVENT_BROADCAST:Ljava/lang/String; = "easemob.contact.invite."

.field private static final DELIVERY_ACK_MSG_BROADCAST:Ljava/lang/String; = "easemob.deliverymsg."

.field private static final INCOMING_CALL_BROADCAST:Ljava/lang/String; = "easemob.incomingcall.invite"

.field private static final INCOMING_VOICE_CALL_BROADCAST:Ljava/lang/String; = "easemob.incomingvoicecall.invite"

.field private static final NEW_MSG_BROADCAST:Ljava/lang/String; = "easemob.newmsg."

.field private static final OFFLINE_MSG_BROADCAST:Ljava/lang/String; = "easemob.offlinemsg."

.field private static final READ_ACK_MSG_BROADCAST:Ljava/lang/String; = "easemob.ackmsg."

.field private static final TAG:Ljava/lang/String; = "EMChatManager"

.field private static instance:Lcom/easemob/chat/EMChatManager;


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private final chatListener:Lcom/easemob/chat/EMMessageListener;

.field private chatManagerListener:Lcom/easemob/chat/EMChatManager$EMChatManagerListener;

.field private chatOptions:Lcom/easemob/chat/EMChatOptions;

.field chatroomOfflineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

.field private chats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/jivesoftware/smack/Chat;",
            ">;"
        }
    .end annotation
.end field

.field private final connectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private cryptoUtils:Lcom/easemob/util/CryptoUtils;

.field private encryptProvider:Lcom/easemob/chat/EncryptProvider;

.field private final groupChatListener:Lcom/easemob/chat/EMGroupMessageListener;

.field private handler:Landroid/os/Handler;

.field msgCountThreadPool:Ljava/util/concurrent/ExecutorService;

.field private newConnectionListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/easemob/EMConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private notifier:Lcom/easemob/chat/EMNotifier;

.field offlineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

.field private offlineRosterPresenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/jivesoftware/smack/packet/Presence;",
            ">;"
        }
    .end annotation
.end field

.field private final recvAckListener:Lcom/easemob/chat/EMRecvAckListener;

.field stopService:Z

.field private threadPool:Ljava/util/concurrent/ExecutorService;

.field private xmppChatManager:Lorg/jivesoftware/smack/ChatManager;

.field private final xmppConnectionListener:Lcom/easemob/chat/EMChatManager$XmppConnectionListener;

.field private xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/easemob/chat/EMChatManager;

    invoke-direct {v0}, Lcom/easemob/chat/EMChatManager;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMChatManager;->instance:Lcom/easemob/chat/EMChatManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->connectionListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->newConnectionListeners:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;

    invoke-direct {v0, p0, v2}, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;-><init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/chat/EMChatManager$XmppConnectionListener;)V

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->xmppConnectionListener:Lcom/easemob/chat/EMChatManager$XmppConnectionListener;

    iput-object v2, p0, Lcom/easemob/chat/EMChatManager;->encryptProvider:Lcom/easemob/chat/EncryptProvider;

    iput-object v2, p0, Lcom/easemob/chat/EMChatManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    iput-object v2, p0, Lcom/easemob/chat/EMChatManager;->offlineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    iput-object v2, p0, Lcom/easemob/chat/EMChatManager;->chatroomOfflineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->chats:Ljava/util/Map;

    new-instance v0, Lcom/easemob/chat/EMMessageListener;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMMessageListener;-><init>(Lcom/easemob/chat/EMChatManager;)V

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatListener:Lcom/easemob/chat/EMMessageListener;

    new-instance v0, Lcom/easemob/chat/EMGroupMessageListener;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMGroupMessageListener;-><init>(Lcom/easemob/chat/EMChatManager;)V

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->groupChatListener:Lcom/easemob/chat/EMGroupMessageListener;

    new-instance v0, Lcom/easemob/chat/EMRecvAckListener;

    invoke-direct {v0}, Lcom/easemob/chat/EMRecvAckListener;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->recvAckListener:Lcom/easemob/chat/EMRecvAckListener;

    new-instance v0, Lcom/easemob/chat/EMChatManager$EMChatManagerListener;

    invoke-direct {v0, p0, v2}, Lcom/easemob/chat/EMChatManager$EMChatManagerListener;-><init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/chat/EMChatManager$EMChatManagerListener;)V

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatManagerListener:Lcom/easemob/chat/EMChatManager$EMChatManagerListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->offlineRosterPresenceList:Ljava/util/ArrayList;

    new-instance v0, Lcom/easemob/util/CryptoUtils;

    invoke-direct {v0}, Lcom/easemob/util/CryptoUtils;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->cryptoUtils:Lcom/easemob/util/CryptoUtils;

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->cryptoUtils:Lcom/easemob/util/CryptoUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/easemob/util/CryptoUtils;->init(I)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->msgCountThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/easemob/chat/EMChatOptions;

    invoke-direct {v0}, Lcom/easemob/chat/EMChatOptions;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatOptions:Lcom/easemob/chat/EMChatOptions;

    new-instance v0, Lcom/easemob/chat/EMChatManager$ChatServiceConnection;

    invoke-direct {v0, p0, v2}, Lcom/easemob/chat/EMChatManager$ChatServiceConnection;-><init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/chat/EMChatManager$ChatServiceConnection;)V

    new-instance v0, Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-direct {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->offlineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    new-instance v0, Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-direct {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatroomOfflineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatroomOfflineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/easemob/chat/EMOfflineMessageHandler;->setPublishInterval(J)V

    return-void
.end method

.method private acceptInvitation(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMPresenceHandler;->getInstance()Lcom/easemob/chat/EMPresenceHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMPresenceHandler;->acceptInvitation(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$0(Lcom/easemob/chat/EMChatManager;Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMChatManager;->processRosterPresence(Lorg/jivesoftware/smack/packet/Presence;)V

    return-void
.end method

.method static synthetic access$1(Lcom/easemob/chat/EMChatManager;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->offlineRosterPresenceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2(Lcom/easemob/chat/EMChatManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chats:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/easemob/chat/EMChatManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/easemob/chat/EMChatManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->connectionListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/easemob/chat/EMChatManager;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$6(Lcom/easemob/chat/EMChatManager;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->newConnectionListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7(Lcom/easemob/chat/EMChatManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/EMChatManager;->notifyMessageHandlerConnectionConnected()V

    return-void
.end method

.method static synthetic access$8(Lcom/easemob/chat/EMChatManager;)Lcom/easemob/chat/core/EMConnectionManager;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    return-object v0
.end method

.method static synthetic access$9(Lcom/easemob/chat/EMChatManager;)Lcom/easemob/util/CryptoUtils;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->cryptoUtils:Lcom/easemob/util/CryptoUtils;

    return-object v0
.end method

.method private addPacketListeners(Lorg/jivesoftware/smack/XMPPConnection;)V
    .locals 4

    invoke-virtual {p1}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/jivesoftware/smack/filter/MessageTypeFilter;

    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Type;->chat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/MessageTypeFilter;-><init>(Lorg/jivesoftware/smack/packet/Message$Type;)V

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->chatListener:Lcom/easemob/chat/EMMessageListener;

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    new-instance v0, Lorg/jivesoftware/smack/filter/MessageTypeFilter;

    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Type;->groupchat:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/MessageTypeFilter;-><init>(Lorg/jivesoftware/smack/packet/Message$Type;)V

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->groupChatListener:Lcom/easemob/chat/EMGroupMessageListener;

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    new-instance v0, Lorg/jivesoftware/smack/filter/MessageTypeFilter;

    sget-object v1, Lorg/jivesoftware/smack/packet/Message$Type;->normal:Lorg/jivesoftware/smack/packet/Message$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/MessageTypeFilter;-><init>(Lorg/jivesoftware/smack/packet/Message$Type;)V

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->recvAckListener:Lcom/easemob/chat/EMRecvAckListener;

    invoke-virtual {p1, v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    new-instance v0, Lcom/easemob/chat/EMChatManager$4;

    const-class v1, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v0, p0, v1}, Lcom/easemob/chat/EMChatManager$4;-><init>(Lcom/easemob/chat/EMChatManager;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v1}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    new-instance v2, Lcom/easemob/chat/EMChatManager$SingleInvitationListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/easemob/chat/EMChatManager$SingleInvitationListener;-><init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/chat/EMChatManager$SingleInvitationListener;)V

    invoke-virtual {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    goto :goto_0
.end method

.method private getBroadcastSuffix()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please setup your appkey either in AndroidManifest.xml or through EMChat.setAppkey"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    const-string v2, "#"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, "."

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    const-string v1, "#"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/easemob/chat/EMChatManager;
    .locals 3

    const-class v1, Lcom/easemob/chat/EMChatManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/EMChatManager;->instance:Lcom/easemob/chat/EMChatManager;

    iget-object v0, v0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/easemob/chat/EMChatManager;->instance:Lcom/easemob/chat/EMChatManager;

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, v0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMChatManager;->instance:Lcom/easemob/chat/EMChatManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 4

    const-string v0, "EMChatManager"

    const-string v1, "init chat manager"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "EMChatManager"

    const-string v1, "error in Chat Manage init. connection is null"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/easemob/chat/core/c;->a()Lcom/easemob/chat/core/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/c;->a(Lcom/easemob/chat/core/EMConnectionManager;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {p1}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getChatManager()Lorg/jivesoftware/smack/ChatManager;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->xmppChatManager:Lorg/jivesoftware/smack/ChatManager;

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->xmppChatManager:Lorg/jivesoftware/smack/ChatManager;

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->chatManagerListener:Lcom/easemob/chat/EMChatManager$EMChatManagerListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ChatManager;->addChatListener(Lorg/jivesoftware/smack/ChatManagerListener;)V

    invoke-static {}, Lcom/easemob/chat/EMMessageHandler;->getInstance()Lcom/easemob/chat/EMMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessageHandler;->onInit()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->xmppConnectionListener:Lcom/easemob/chat/EMChatManager$XmppConnectionListener;

    invoke-virtual {p1, v0}, Lcom/easemob/chat/core/EMConnectionManager;->setChatConnectionListener(Lcom/easemob/chat/core/q;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "com.easemob.chat.EMVoiceCallManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMVoiceCallManager;->init()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->offlineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-virtual {p0}, Lcom/easemob/chat/EMChatManager;->getChatOptions()Lcom/easemob/chat/EMChatOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatOptions;->getOfflineInterval()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/easemob/chat/EMOfflineMessageHandler;->setPublishInterval(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private notifyMessageHandlerConnectionConnected()V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMMessageHandler;->getInstance()Lcom/easemob/chat/EMMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessageHandler;->onConnected()V

    return-void
.end method

.method private processRosterPresence(Lorg/jivesoftware/smack/packet/Presence;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMPresenceHandler;->getInstance()Lcom/easemob/chat/EMPresenceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMPresenceHandler;->processRosterPresence(Lorg/jivesoftware/smack/packet/Presence;)V

    return-void
.end method


# virtual methods
.method public acceptGroupApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMMultiUserChatManager;->acceptApplication(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public acceptGroupInvitation(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->acceptInvitation(Ljava/lang/String;)V

    return-void
.end method

.method public acceptInvitation(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMChatManager;->acceptInvitation(Ljava/lang/String;Z)V

    return-void
.end method

.method public ackMessageRead(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatOptions:Lcom/easemob/chat/EMChatOptions;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getRequireAck()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "EMChatManager"

    const-string v1, "chat option reqire ack set to false. skip send out ask msg read"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/easemob/chat/EMChatManager;->checkConnection()V

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromUserName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chats:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Chat;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->xmppChatManager:Lorg/jivesoftware/smack/ChatManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/ChatManager;->createChat(Ljava/lang/String;Lorg/jivesoftware/smack/MessageListener;)Lorg/jivesoftware/smack/Chat;

    move-result-object v0

    iget-object v2, p0, Lcom/easemob/chat/EMChatManager;->chats:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/easemob/chat/EMMessageHandler;->getInstance()Lcom/easemob/chat/EMMessageHandler;

    move-result-object v0

    invoke-virtual {p0}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/easemob/chat/EMMessageHandler;->ackMessageRead(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public activityResumed()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->notifier:Lcom/easemob/chat/EMNotifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->notifier:Lcom/easemob/chat/EMNotifier;

    invoke-virtual {v0}, Lcom/easemob/chat/EMNotifier;->resetNotificationCount()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->notifier:Lcom/easemob/chat/EMNotifier;

    invoke-virtual {v0}, Lcom/easemob/chat/EMNotifier;->cancelNotificaton()V

    :cond_0
    return-void
.end method

.method public addCallStateChangeListener(Lcom/easemob/chat/EMCallStateChangeListener;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMVoiceCallManager;->addStateChangeListener(Lcom/easemob/chat/EMCallStateChangeListener;)V

    return-void
.end method

.method public addChatRoomChangeListener(Lcom/easemob/EMChatRoomChangeListener;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->addChatRoomChangeListener(Lcom/easemob/EMChatRoomChangeListener;)V

    return-void
.end method

.method public addConnectionListener(Lcom/easemob/EMConnectionListener;)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->connectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->newConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/easemob/chat/EMChatManager$7;

    invoke-direct {v1, p0, p1}, Lcom/easemob/chat/EMChatManager$7;-><init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/EMConnectionListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/easemob/chat/EMChatManager$8;

    invoke-direct {v1, p0, p1}, Lcom/easemob/chat/EMChatManager$8;-><init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/EMConnectionListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public addConnectionListener(Lcom/easemob/chat/ConnectionListener;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->connectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/easemob/chat/EMChatManager$5;

    invoke-direct {v1, p0, p1}, Lcom/easemob/chat/EMChatManager$5;-><init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/chat/ConnectionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/easemob/chat/EMChatManager$6;

    invoke-direct {v1, p0, p1}, Lcom/easemob/chat/EMChatManager$6;-><init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/chat/ConnectionListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public addGroupChangeListener(Lcom/easemob/EMGroupChangeListener;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->addGroupChangeListener(Lcom/easemob/EMGroupChangeListener;)V

    return-void
.end method

.method addMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMConversationManager;->addMessage(Lcom/easemob/chat/EMMessage;)V

    return-void
.end method

.method addMessage(Lcom/easemob/chat/EMMessage;Z)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMConversationManager;->addMessage(Lcom/easemob/chat/EMMessage;Z)V

    return-void
.end method

.method public addUsersToGroup(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMMultiUserChatManager;->addUsersToGroup(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public addVoiceCallStateChangeListener(Lcom/easemob/chat/EMCallStateChangeListener;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMVoiceCallManager;->addStateChangeListener(Lcom/easemob/chat/EMCallStateChangeListener;)V

    return-void
.end method

.method public answerCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EMNoActiveCallException;,
            Lcom/easemob/exceptions/EMNetworkUnconnectedException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMVoiceCallManager;->answerCall()V

    return-void
.end method

.method public applyJoinToGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMMultiUserChatManager;->applyJoinToGroup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public areAllConversationsLoaded()Z
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversationManager;->areAllConversationsLoaded()Z

    move-result v0

    return v0
.end method

.method public asyncFetchMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMMessageHandler;->getInstance()Lcom/easemob/chat/EMMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMessageHandler;->asyncFetchMessage(Lcom/easemob/chat/EMMessage;)V

    return-void
.end method

.method public asyncLoadAllConversations(Lcom/easemob/EMCallBack;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatOptions:Lcom/easemob/chat/EMChatOptions;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatOptions;->getNumberOfMessagesLoaded()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/easemob/chat/EMChatManager;->asyncLoadAllConversations(Lcom/easemob/EMCallBack;I)V

    return-void
.end method

.method asyncLoadAllConversations(Lcom/easemob/EMCallBack;I)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMConversationManager;->asyncloadAllConversations(Lcom/easemob/EMCallBack;I)V

    return-void
.end method

.method public blockGroupMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->blockGroupMessage(Ljava/lang/String;)V

    return-void
.end method

.method public blockGroupUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMMultiUserChatManager;->blockUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method broadcastMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 2

    const-string v0, "EMChatManager"

    const-string v1, "broad offline msg"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->notifier:Lcom/easemob/chat/EMNotifier;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMNotifier;->sendBroadcast(Lcom/easemob/chat/EMMessage;)V

    return-void
.end method

.method public changeGroupName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMMultiUserChatManager;->changeGroupName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method changePasswordOnServer(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMSessionManager;->changePasswordXMPP(Ljava/lang/String;)V

    return-void
.end method

.method checkConnection()V
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

.method public clearConversation(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMConversationManager;->clearConversation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public configureCustomService(Lcom/easemob/chat/EMCustomerServiceConfiguration;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMCustomerService;->getInstance()Lcom/easemob/chat/EMCustomerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMCustomerService;->setConfiguration(Lcom/easemob/chat/EMCustomerServiceConfiguration;)V

    return-void
.end method

.method public createAccountOnServer(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "^[a-zA-Z0-9_-]{1,}$"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v0, Lcom/easemob/exceptions/EaseMobException;

    const/16 v1, -0x401

    const-string v2, "illegal user name"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/easemob/chat/EMSessionManager;->createAccountRest(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createOrUpdateLocalGroup(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->createOrUpdateLocalGroup(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method public createPrivateGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)Lcom/easemob/chat/EMGroup;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/easemob/chat/EMMultiUserChatManager;->createPrivateGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method public createPublicGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)Lcom/easemob/chat/EMGroup;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/easemob/chat/EMMultiUserChatManager;->createPublicGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method public declineGroupApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/easemob/chat/EMMultiUserChatManager;->declineApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public deleteAllConversation()V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversationManager;->deleteAllConversations()V

    return-void
.end method

.method public deleteConversation(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMConversationManager;->deleteConversation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public deleteConversation(Ljava/lang/String;Z)Z
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMConversationManager;->deleteConversation(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public deleteConversation(Ljava/lang/String;ZZ)Z
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/easemob/chat/EMConversationManager;->deleteConversation(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public dismissGroup(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->dismissGroup(Ljava/lang/String;)V

    return-void
.end method

.method doStartService()V
    .locals 3

    const-string v0, "EMChatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "do start service: context:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/EMChatManager;->stopService:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/easemob/chat/EMChatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method doStopService()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "EMChatManager"

    const-string v1, "applicationContext is null, the server is not started before"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "EMChatManager"

    const-string v1, "do stop service"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/EMChatManager;->stopService:Z

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    const-class v2, Lcom/easemob/chat/EMChatService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/EMCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/easemob/EMCallBack;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v0

    new-instance v1, Lcom/easemob/chat/EMChatManager$13;

    invoke-direct {v1, p0, p4}, Lcom/easemob/chat/EMChatManager$13;-><init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/EMCallBack;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/easemob/cloud/EMHttpClient;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V

    return-void
.end method

.method public endCall()V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMVoiceCallManager;->endCall()V

    return-void
.end method

.method public fetchChatRoomFromServer(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->fetchChatRoomFromServer(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v0

    return-object v0
.end method

.method public fetchGroupFromServer(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->fetchGroupFromServer(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method public fetchJoinedGroupsFromServer()Ljava/util/List;
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

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMultiUserChatManager;->fetchJoinedGroupsFromServer()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public fetchPublicChatRoomsFromServer(ILjava/lang/String;)Lcom/easemob/chat/EMCursorResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lcom/easemob/chat/EMCursorResult",
            "<",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMMultiUserChatManager;->fetchPublicChatRoomsFromServer(ILjava/lang/String;)Lcom/easemob/chat/EMCursorResult;

    move-result-object v0

    return-object v0
.end method

.method public fetchPublicGroupsFromServer(ILjava/lang/String;)Lcom/easemob/chat/EMCursorResult;
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

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMMultiUserChatManager;->fetchPublicGroupsFromServer(ILjava/lang/String;)Lcom/easemob/chat/EMCursorResult;

    move-result-object v0

    return-object v0
.end method

.method forceReconnect()V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->forceReconnect()V

    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "EMChatManager"

    const-string v2, "applicationContext is null"

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "EMChatManager"

    const-string v2, "appkey is null or empty"

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->x()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "EMChatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "gettoken is error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getAckMessageBroadcastAction()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "easemob.ackmsg."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/easemob/chat/EMChatManager;->getBroadcastSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllChatRooms()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMultiUserChatManager;->getAllChatRooms()Ljava/util/List;

    move-result-object v0

    return-object v0
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

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversationManager;->getAllConversations()Ljava/util/Hashtable;

    move-result-object v0

    return-object v0
.end method

.method public getAllGroups()Ljava/util/List;
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

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMultiUserChatManager;->getAllGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBlockedGroupUsers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->getBlockedUsers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChatOptions()Lcom/easemob/chat/EMChatOptions;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatOptions:Lcom/easemob/chat/EMChatOptions;

    return-object v0
.end method

.method public getChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->getChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v0

    return-object v0
.end method

.method public getCmdMessageBroadcastAction()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "easemob.cmdmsg"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/easemob/chat/EMChatManager;->getBroadcastSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactInviteEventBroadcastAction()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "easemob.contact.invite."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/easemob/chat/EMChatManager;->getBroadcastSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMContactManager;->getRosterUserNames()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConversation(Ljava/lang/String;)Lcom/easemob/chat/EMConversation;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMConversationManager;->getConversation(Ljava/lang/String;)Lcom/easemob/chat/EMConversation;

    move-result-object v0

    return-object v0
.end method

.method public getConversation(Ljava/lang/String;Z)Lcom/easemob/chat/EMConversation;
    .locals 2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMConversation$EMConversationType;->GroupChat:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-virtual {v0, p1, p2, v1}, Lcom/easemob/chat/EMConversationManager;->getConversation(Ljava/lang/String;ZLcom/easemob/chat/EMConversation$EMConversationType;)Lcom/easemob/chat/EMConversation;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    invoke-virtual {v0, p1, p2, v1}, Lcom/easemob/chat/EMConversationManager;->getConversation(Ljava/lang/String;ZLcom/easemob/chat/EMConversation$EMConversationType;)Lcom/easemob/chat/EMConversation;

    move-result-object v0

    goto :goto_0
.end method

.method public getConversationByType(Ljava/lang/String;Lcom/easemob/chat/EMConversation$EMConversationType;)Lcom/easemob/chat/EMConversation;
    .locals 2

    sget-object v0, Lcom/easemob/chat/EMConversation$EMConversationType;->Chat:Lcom/easemob/chat/EMConversation$EMConversationType;

    if-eq p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/easemob/chat/EMConversationManager;->getConversation(Ljava/lang/String;ZLcom/easemob/chat/EMConversation$EMConversationType;)Lcom/easemob/chat/EMConversation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConversationsByType(Lcom/easemob/chat/EMConversation$EMConversationType;)Ljava/util/List;
    .locals 1
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

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMConversationManager;->getConversationsByType(Lcom/easemob/chat/EMConversation$EMConversationType;)Ljava/util/List;

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

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversationManager;->getConversationsUnread()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getCryptoUtils()Lcom/easemob/util/CryptoUtils;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->cryptoUtils:Lcom/easemob/util/CryptoUtils;

    return-object v0
.end method

.method public getCurrentUser()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMSessionManager;->currentUser:Lcom/easemob/chat/EMContact;

    iget-object v0, v0, Lcom/easemob/chat/EMContact;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getDeliveryAckMessageBroadcastAction()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "easemob.deliverymsg."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/easemob/chat/EMChatManager;->getBroadcastSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncryptProvider()Lcom/easemob/chat/EncryptProvider;
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->encryptProvider:Lcom/easemob/chat/EncryptProvider;

    if-nez v0, :cond_0

    const-string v0, "EMChatManager"

    const-string v1, "encrypt provider is not set, create default"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/easemob/chat/EMChatManager$9;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMChatManager$9;-><init>(Lcom/easemob/chat/EMChatManager;)V

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->encryptProvider:Lcom/easemob/chat/EncryptProvider;

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->encryptProvider:Lcom/easemob/chat/EncryptProvider;

    return-object v0
.end method

.method public getGroup(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->getGroup(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingCallBroadcastAction()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "easemob.incomingcall.invite"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/easemob/chat/EMChatManager;->getBroadcastSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncomingVoiceCallBroadcastAction()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "easemob.incomingvoicecall.invite"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/easemob/chat/EMChatManager;->getBroadcastSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMConversationManager;->getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    return-object v0
.end method

.method public getMessagesByMsgType(Lcom/easemob/chat/EMMessage$Type;Lcom/easemob/chat/EMMessage$ChatType;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
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

    if-nez p3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/easemob/chat/EMConversationManager;->getMessagesByMsgType(Lcom/easemob/chat/EMMessage$Type;Lcom/easemob/chat/EMMessage$ChatType;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getNewMessageBroadcastAction()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "easemob.newmsg."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/easemob/chat/EMChatManager;->getBroadcastSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineMessageBroadcastAction()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "easemob.offlinemsg."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/easemob/chat/EMChatManager;->getBroadcastSuffix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRobotsFromServer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMContact;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMExtraService;->getInstance()Lcom/easemob/chat/EMExtraService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMExtraService;->getRobotsFromServer()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTotalMessageCountByMsgType(Lcom/easemob/chat/EMMessage$Type;Lcom/easemob/chat/EMMessage$ChatType;Ljava/lang/String;)J
    .locals 2

    if-nez p3, :cond_0

    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/easemob/chat/EMConversationManager;->getTotalMessageCountByMsgType(Lcom/easemob/chat/EMMessage$Type;Lcom/easemob/chat/EMMessage$ChatType;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getUnreadMsgsCount()I
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversationManager;->getUnreadMsgsCount()I

    move-result v0

    return v0
.end method

.method public importMessage(Lcom/easemob/chat/EMMessage;Z)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->c(Lcom/easemob/chat/EMMessage;)Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMChatManager;->addMessage(Lcom/easemob/chat/EMMessage;)V

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMChatManager;->notifyMessage(Lcom/easemob/chat/EMMessage;)V

    :cond_0
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized importMessages(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMMessage;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->c(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method initDB(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/easemob/chat/EMChatDB;->initDB(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public inviteGroupUsers(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/easemob/chat/EMMultiUserChatManager;->inviteUser(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isDirectCall()Z
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMVoiceCallManager;->isDirectCall()Z

    move-result v0

    return v0
.end method

.method public isSlientMessage(Lcom/easemob/chat/EMMessage;)Z
    .locals 2

    const-string v0, "em_ignore_notification"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/easemob/chat/EMMessage;->getBooleanAttribute(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public joinChatRoom(Ljava/lang/String;Lcom/easemob/EMValueCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/easemob/EMValueCallBack",
            "<",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMMultiUserChatManager;->joinChatRoom(Ljava/lang/String;Lcom/easemob/EMValueCallBack;)V

    return-void
.end method

.method public joinGroup(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->joinGroup(Ljava/lang/String;)V

    return-void
.end method

.method public leaveChatRoom(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->leaveChatRoom(Ljava/lang/String;)V

    return-void
.end method

.method public leaveGroup(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->leaveGroup(Ljava/lang/String;)V

    return-void
.end method

.method public loadAllConversations()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->chatOptions:Lcom/easemob/chat/EMChatOptions;

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatOptions;->getNumberOfMessagesLoaded()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMConversationManager;->loadAllConversations(I)V

    return-void
.end method

.method public loadAllConversations(Lcom/easemob/EMCallBack;)V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->chatOptions:Lcom/easemob/chat/EMChatOptions;

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatOptions;->getNumberOfMessagesLoaded()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/easemob/chat/EMConversationManager;->asyncloadAllConversations(Lcom/easemob/EMCallBack;I)V

    return-void
.end method

.method public loadAllLocalGroups()V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMultiUserChatManager;->loadLocalData()V

    return-void
.end method

.method loadDB()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMultiUserChatManager;->clearRooms()V

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversationManager;->clear()V

    new-instance v0, Lcom/easemob/chat/EMChatManager$12;

    invoke-direct {v0, p0}, Lcom/easemob/chat/EMChatManager$12;-><init>(Lcom/easemob/chat/EMChatManager;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;Lcom/easemob/EMCallBack;)V
    .locals 4

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->isSDKInited()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "SDK is not initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please setup your appkey either in AndroidManifest.xml or through EMChat.setAppkey"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "username or password is null or empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string v0, "EMChatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "emchat manager login in process:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Lcom/easemob/chat/EMChatManager$1;

    invoke-direct {v3, p0, p3}, Lcom/easemob/chat/EMChatManager$1;-><init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/EMCallBack;)V

    invoke-virtual {v1, v0, p2, v2, v3}, Lcom/easemob/chat/EMSessionManager;->login(Ljava/lang/String;Ljava/lang/String;ZLcom/easemob/EMCallBack;)V

    return-void
.end method

.method public logout(Z)I
    .locals 2

    const/16 v0, -0xbb8

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMPushNotificationHelper;->getInstance()Lcom/easemob/chat/EMPushNotificationHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/easemob/chat/EMPushNotificationHelper;->onDestroy(Z)V
    :try_end_0
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Lcom/easemob/chat/EMChatManager;->logout()V

    const/4 v0, 0x0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public logout()V
    .locals 2

    const-string v0, "EMChatManager"

    const-string v1, " SDK Logout"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->clearLastLoginUser()V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->clearLastLoginPwd()V

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->clear()V

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMContactManager;->reset()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->groupChatListener:Lcom/easemob/chat/EMGroupMessageListener;

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroupMessageListener;->clear()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatListener:Lcom/easemob/chat/EMMessageListener;

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessageListener;->clear()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->offlineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-virtual {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;->reset()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatroomOfflineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-virtual {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;->reset()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversationManager;->clear()V

    invoke-static {}, Lcom/easemob/chat/EMMessageHandler;->getInstance()Lcom/easemob/chat/EMMessageHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMessageHandler;->onDestroy()V

    invoke-static {}, Lcom/easemob/chat/EMCustomerService;->getInstance()Lcom/easemob/chat/EMCustomerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMCustomerService;->onDestroy()V

    invoke-static {}, Lcom/easemob/chat/core/c;->a()Lcom/easemob/chat/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/c;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMultiUserChatManager;->onDestroy()V

    :try_start_1
    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/i;->b()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->syncLogout()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->j()V

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/easemob/chat/EMChat;->appInited:Z

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->isDebugTrafficMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/easemob/b/a;->c()V

    :cond_1
    invoke-static {}, Lcom/easemob/chat/EMMonitor;->getInstance()Lcom/easemob/chat/EMMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMonitor;->getMonitorDB()Lcom/easemob/chat/core/s;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/s;->b(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/easemob/chat/EMChatManager;->doStopService()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public logout(Lcom/easemob/EMCallBack;)V
    .locals 2

    new-instance v0, Lcom/easemob/chat/EMChatManager$2;

    invoke-direct {v0, p0, p1}, Lcom/easemob/chat/EMChatManager$2;-><init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/EMCallBack;)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public logout(ZLcom/easemob/EMCallBack;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/easemob/chat/EMChatManager$3;

    invoke-direct {v0, p0, p2, p1}, Lcom/easemob/chat/EMChatManager$3;-><init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/EMCallBack;Z)V

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public makeVideoCall(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EMServiceNotReadyException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMVoiceCallManager$CallType;->video:Lcom/easemob/chat/EMVoiceCallManager$CallType;

    invoke-virtual {v0, p1, v1}, Lcom/easemob/chat/EMVoiceCallManager;->makeCall(Ljava/lang/String;Lcom/easemob/chat/EMVoiceCallManager$CallType;)V

    return-void
.end method

.method public makeVoiceCall(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EMServiceNotReadyException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMVoiceCallManager$CallType;->audio:Lcom/easemob/chat/EMVoiceCallManager$CallType;

    invoke-virtual {v0, p1, v1}, Lcom/easemob/chat/EMVoiceCallManager;->makeCall(Ljava/lang/String;Lcom/easemob/chat/EMVoiceCallManager$CallType;)V

    return-void
.end method

.method public markAllConversationsAsRead()V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversationManager;->resetAllUnreadMsgCount()V

    return-void
.end method

.method notifiyReadAckMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->notifier:Lcom/easemob/chat/EMNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMNotifier;->sendReadAckMsgBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method notifyCmdMsg(Lcom/easemob/chat/EMMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->notifier:Lcom/easemob/chat/EMNotifier;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMNotifier;->sendCmdMsgBroadcast(Lcom/easemob/chat/EMMessage;)V

    return-void
.end method

.method notifyDeliveryAckMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->notifier:Lcom/easemob/chat/EMNotifier;

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMNotifier;->sendDeliveryAckMsgBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method notifyIncomingCall(Ljava/lang/String;Lcom/easemob/chat/EMVoiceCallManager$CallType;)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->notifier:Lcom/easemob/chat/EMNotifier;

    invoke-virtual {p2}, Lcom/easemob/chat/EMVoiceCallManager$CallType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/easemob/chat/EMNotifier;->sendIncomingVoiceCallBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method notifyMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->offlineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-virtual {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;->stop()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatroomOfflineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-virtual {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;->stop()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->notifier:Lcom/easemob/chat/EMNotifier;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMNotifier;->notifyChatMsg(Lcom/easemob/chat/EMMessage;)V

    return-void
.end method

.method notifyMessageChanged(Lcom/easemob/EMMessageChangeEventData;)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->notifier:Lcom/easemob/chat/EMNotifier;

    sget-object v1, Lcom/easemob/EMNotifierEvent$Event;->EventMessageChanged:Lcom/easemob/EMNotifierEvent$Event;

    invoke-virtual {v0, v1, p1}, Lcom/easemob/chat/EMNotifier;->publishEvent(Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)Z

    return-void
.end method

.method onAppInited()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/easemob/chat/EMChatManager;->processOfflinePresenceMessages()V

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMultiUserChatManager;->onAppReady()V

    invoke-virtual {p0}, Lcom/easemob/chat/EMChatManager;->processOfflineMessages()V

    invoke-virtual {p0}, Lcom/easemob/chat/EMChatManager;->processOfflineCmdMessages()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method declared-synchronized onInit()Lcom/easemob/chat/EMChatManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "EMChatManager"

    const-string v1, "init chat manager"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/easemob/chat/EMNotifier;->getInstance(Landroid/content/Context;)Lcom/easemob/chat/EMNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMChatManager;->notifier:Lcom/easemob/chat/EMNotifier;

    invoke-static {}, Lcom/easemob/chat/core/c;->a()Lcom/easemob/chat/core/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/c;->onInit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onNewConnectionCreated(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 3

    const-string v0, "EMChatManager"

    const-string v1, "on new connection created"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMChatManager;->init(Lcom/easemob/chat/core/EMConnectionManager;)V

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMultiUserChatManager;->onInit()V

    invoke-static {}, Lcom/easemob/chat/EMPushNotificationHelper;->getInstance()Lcom/easemob/chat/EMPushNotificationHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMPushNotificationHelper;->onInit()V

    invoke-static {}, Lcom/easemob/chat/EMCustomerService;->getInstance()Lcom/easemob/chat/EMCustomerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMCustomerService;->onInit()V

    invoke-virtual {p1}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/easemob/chat/EMChatManager;->addPacketListeners(Lorg/jivesoftware/smack/XMPPConnection;)V

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/easemob/chat/EMContactManager;->enableRosterVersion:Z

    if-eqz v0, :cond_0

    const-string v0, "EMChatManager"

    const-string v1, "enable roster version. set roster storage"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/core/EMConnectionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMContactManager;->getRosterStorage(Landroid/content/Context;)Lorg/jivesoftware/smack/RosterStorage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->setRosterStorage(Lorg/jivesoftware/smack/RosterStorage;)V

    invoke-static {}, Lcom/easemob/chat/EMContactManager;->getInstance()Lcom/easemob/chat/EMContactManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMContactManager;->loadContacts()V

    :cond_0
    invoke-virtual {p0}, Lcom/easemob/chat/EMChatManager;->doStartService()V

    return-void
.end method

.method onNewOfflineCmdMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatroomOfflineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMOfflineMessageHandler;->addOfflineCmdMessage(Lcom/easemob/chat/EMMessage;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->offlineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMOfflineMessageHandler;->addOfflineCmdMessage(Lcom/easemob/chat/EMMessage;)V

    goto :goto_0
.end method

.method onNewOfflineMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 2

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatroomOfflineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMOfflineMessageHandler;->onNewOfflineMessage(Lcom/easemob/chat/EMMessage;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->offlineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMOfflineMessageHandler;->onNewOfflineMessage(Lcom/easemob/chat/EMMessage;)V

    goto :goto_0
.end method

.method public onReconnectionSuccessful()V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/easemob/chat/EMChatManager$10;

    invoke-direct {v1, p0}, Lcom/easemob/chat/EMChatManager$10;-><init>(Lcom/easemob/chat/EMChatManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->threadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/easemob/chat/EMChatManager$11;

    invoke-direct {v1, p0}, Lcom/easemob/chat/EMChatManager$11;-><init>(Lcom/easemob/chat/EMChatManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method processOfflineCmdMessages()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->offlineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-virtual {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;->processOfflineCmdMessages()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatroomOfflineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-virtual {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;->processOfflineCmdMessages()V

    return-void
.end method

.method processOfflineMessages()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->offlineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-virtual {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;->onAppReady()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chatroomOfflineHandler:Lcom/easemob/chat/EMOfflineMessageHandler;

    invoke-virtual {v0}, Lcom/easemob/chat/EMOfflineMessageHandler;->onAppReady()V

    return-void
.end method

.method processOfflinePresenceMessages()V
    .locals 2

    const-string v0, "EMChatManager"

    const-string v1, "process offline RosterPresence msg start"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->offlineRosterPresenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->offlineRosterPresenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const-string v0, "EMChatManager"

    const-string v1, "proess offline RosterPresence msg finish"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {p0, v0}, Lcom/easemob/chat/EMChatManager;->processRosterPresence(Lorg/jivesoftware/smack/packet/Presence;)V

    goto :goto_0
.end method

.method public refuseInvitation(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMPresenceHandler;->getInstance()Lcom/easemob/chat/EMPresenceHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMPresenceHandler;->refuseInvitation(Ljava/lang/String;)V

    return-void
.end method

.method public registerEventListener(Lcom/easemob/EMEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/easemob/chat/EMNotifier;->getInstance(Landroid/content/Context;)Lcom/easemob/chat/EMNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMNotifier;->registerEventListener(Lcom/easemob/EMEventListener;)V

    return-void
.end method

.method public registerEventListener(Lcom/easemob/EMEventListener;[Lcom/easemob/EMNotifierEvent$Event;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/easemob/chat/EMNotifier;->getInstance(Landroid/content/Context;)Lcom/easemob/chat/EMNotifier;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMNotifier;->registerEventListener(Lcom/easemob/EMEventListener;[Lcom/easemob/EMNotifierEvent$Event;)V

    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EMNoActiveCallException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMVoiceCallManager;->rejectCall()V

    return-void
.end method

.method public removeCallStateChangeListener(Lcom/easemob/chat/EMCallStateChangeListener;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMVoiceCallManager;->getInstance()Lcom/easemob/chat/EMVoiceCallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMVoiceCallManager;->removeStateChangeListener(Lcom/easemob/chat/EMCallStateChangeListener;)V

    return-void
.end method

.method public removeChatRoomChangeListener(Lcom/easemob/EMChatRoomChangeListener;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->removeChatRoomChangeListener(Lcom/easemob/EMChatRoomChangeListener;)V

    return-void
.end method

.method public removeConnectionListener(Lcom/easemob/EMConnectionListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->newConnectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeConnectionListener(Lcom/easemob/chat/ConnectionListener;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->connectionListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeGroupChangeListener(Lcom/easemob/EMGroupChangeListener;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->removeGroupChangeListener(Lcom/easemob/EMGroupChangeListener;)V

    return-void
.end method

.method public removeUserFromGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMMultiUserChatManager;->removeUserFromGroup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method replaceMessageId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMConversationManager;->replaceMessageId(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetAllUnreadMsgCount()V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMConversationManager;->resetAllUnreadMsgCount()V

    return-void
.end method

.method saveAppname()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMMonitor;->getInstance()Lcom/easemob/chat/EMMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMonitor;->getMonitorDB()Lcom/easemob/chat/core/s;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/s;->a(Ljava/lang/String;)V

    return-void
.end method

.method public saveMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMConversationManager;->saveMessage(Lcom/easemob/chat/EMMessage;)V

    return-void
.end method

.method public saveMessage(Lcom/easemob/chat/EMMessage;Z)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMConversationManager;->getInstance()Lcom/easemob/chat/EMConversationManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMConversationManager;->saveMessage(Lcom/easemob/chat/EMMessage;Z)V

    return-void
.end method

.method public sendGroupMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMMessageHandler;->getInstance()Lcom/easemob/chat/EMMessageHandler;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMMessageHandler;->sendGroupMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V

    return-void
.end method

.method public sendMessage(Lcom/easemob/chat/EMMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/easemob/chat/EMChatManager;->sendMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V

    return-void
.end method

.method public sendMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V
    .locals 5

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->xmppConnectionManager:Lcom/easemob/chat/core/EMConnectionManager;

    if-nez v0, :cond_1

    const/16 v0, -0x3fe

    const-string v1, "connection init is failed due to failed login"

    invoke-static {p2, v0, v1}, Lcom/easemob/chat/EMMessageUtils;->asyncCallback(Lcom/easemob/EMCallBack;ILjava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/easemob/chat/EMMessageUtils;->checkMessageError(Lcom/easemob/chat/EMMessage;)I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v1, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "status"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v4}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v2

    iget-object v3, p1, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    if-eqz p2, :cond_0

    const-string v1, "send message error"

    invoke-static {p2, v0, v1}, Lcom/easemob/chat/EMMessageUtils;->asyncCallback(Lcom/easemob/EMCallBack;ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getChatType()Lcom/easemob/chat/EMMessage$ChatType;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne v0, v1, :cond_4

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/easemob/chat/EMChatManager;->sendGroupMessage(Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/easemob/chat/EMMessage;->to:Lcom/easemob/chat/EMContact;

    iget-object v0, v0, Lcom/easemob/chat/EMContact;->eid:Ljava/lang/String;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "@"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    sget-object v1, Lcom/easemob/chat/EMChatConfig;->DOMAIN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_1
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->chats:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jivesoftware/smack/Chat;

    if-nez v0, :cond_5

    const-string v0, "EMChatManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create a new chat for jid:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->xmppChatManager:Lorg/jivesoftware/smack/ChatManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/ChatManager;->createChat(Ljava/lang/String;Lorg/jivesoftware/smack/MessageListener;)Lorg/jivesoftware/smack/Chat;

    move-result-object v0

    :cond_5
    invoke-static {}, Lcom/easemob/chat/EMMessageHandler;->getInstance()Lcom/easemob/chat/EMMessageHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/easemob/chat/EMMessageHandler;->sendMessage(Lorg/jivesoftware/smack/Chat;Lcom/easemob/chat/EMMessage;Lcom/easemob/EMCallBack;)V

    goto/16 :goto_0

    :cond_6
    move-object v1, v0

    goto :goto_1
.end method

.method public setAutoAcceptInvitation(Z)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->setAutoAcceptInvitation(Z)V

    return-void
.end method

.method public setChatOptions(Lcom/easemob/chat/EMChatOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager;->chatOptions:Lcom/easemob/chat/EMChatOptions;

    return-void
.end method

.method public setEncryptProvider(Lcom/easemob/chat/EncryptProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager;->encryptProvider:Lcom/easemob/chat/EncryptProvider;

    return-void
.end method

.method public setGCMProjectNumber(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/p;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setMessageListened(Lcom/easemob/chat/EMMessage;)V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/easemob/chat/EMMessage;->setListened(Z)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {p1}, Lcom/easemob/chat/EMMessage;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/easemob/chat/core/i;->f(Ljava/lang/String;Z)V

    return-void
.end method

.method public unblockGroupMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMMultiUserChatManager;->unblockGroupMessage(Ljava/lang/String;)V

    return-void
.end method

.method public unblockGroupUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMMultiUserChatManager;->unblockUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterEventListener(Lcom/easemob/EMEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/easemob/chat/EMNotifier;->getInstance(Landroid/content/Context;)Lcom/easemob/chat/EMNotifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMNotifier;->removeEventListener(Lcom/easemob/EMEventListener;)V

    return-void
.end method

.method public updateCurrentUserNick(Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EMChatManager"

    const-string v2, "nick name is null or empty"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "EMChatManager"

    const-string v2, "currentUser is null or empty"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/easemob/chat/EMChatManager;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "EMChatManager"

    const-string v2, "token is null or empty"

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/easemob/cloud/HttpClientConfig;->getBaseUrlByAppKey()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "users/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Authorization"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Bearer "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "nickname"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    instance-of v5, v0, Lorg/json/JSONObject;

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v5, Lcom/easemob/cloud/EMHttpClient;->PUT:Ljava/lang/String;

    invoke-virtual {v2, v4, v3, v0, v5}, Lcom/easemob/cloud/EMHttpClient;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "error"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "EMChatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "response error : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_3
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "EMChatManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_4
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public updateMessageBody(Lcom/easemob/chat/EMMessage;)Z
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/core/i;->b(Lcom/easemob/chat/EMMessage;)Z

    move-result v0

    return v0
.end method

.method updateMessageState(Lcom/easemob/chat/EMMessage;)V
    .locals 4

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v3}, Lcom/easemob/chat/EMMessage$Status;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v1

    iget-object v2, p1, Lcom/easemob/chat/EMMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    return-void
.end method
