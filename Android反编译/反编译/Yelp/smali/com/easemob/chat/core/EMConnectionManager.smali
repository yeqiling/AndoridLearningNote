.class public Lcom/easemob/chat/core/EMConnectionManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/core/EMConnectionManager$PingListener;,
        Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;
    }
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/String; = "easemoblock"

.field private static final PERF:Ljava/lang/String; = "perf"

.field private static final RESOURCE:Ljava/lang/String; = "mobile"

.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/easemob/chat/core/EMConnectionManager;

.field private static xmppResource:Ljava/lang/String;


# instance fields
.field private attempts:I

.field private bareJid:Ljava/lang/String;

.field private chatConnectionListener:Lcom/easemob/chat/core/q;

.field private chatTag:Lcom/easemob/analytics/EMTimeTag;

.field connectDisabled:Z

.field private connection:Lorg/jivesoftware/smack/XMPPConnection;

.field private connectionConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;

.field private final connectionListener:Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;

.field private connectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private context:Landroid/content/Context;

.field currentHost:Lcom/easemob/chat/core/j$c;

.field enableWakeLock:Z

.field private imTag:Lcom/easemob/analytics/EMTimeTag;

.field isConnectivityRegistered:Z

.field isDone:Z

.field private password:Ljava/lang/String;

.field private final pingListener:Lcom/easemob/chat/core/EMConnectionManager$PingListener;

.field private randomBase:I

.field private reconnectionThread:Ljava/lang/Thread;

.field wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/easemob/chat/core/EMConnectionManager;->xmppResource:Ljava/lang/String;

    sput-object v1, Lcom/easemob/chat/core/EMConnectionManager;->instance:Lcom/easemob/chat/core/EMConnectionManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/easemob/chat/core/EMConnectionManager$PingListener;

    invoke-direct {v0, p0, v1}, Lcom/easemob/chat/core/EMConnectionManager$PingListener;-><init>(Lcom/easemob/chat/core/EMConnectionManager;Lcom/easemob/chat/core/EMConnectionManager$PingListener;)V

    iput-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->pingListener:Lcom/easemob/chat/core/EMConnectionManager$PingListener;

    new-instance v0, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;

    invoke-direct {v0, p0, v1}, Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;-><init>(Lcom/easemob/chat/core/EMConnectionManager;Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;)V

    iput-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionListener:Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;

    iput-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->chatConnectionListener:Lcom/easemob/chat/core/q;

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->randomBase:I

    iput v2, p0, Lcom/easemob/chat/core/EMConnectionManager;->attempts:I

    iput-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;

    iput-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->currentHost:Lcom/easemob/chat/core/j$c;

    iput-boolean v2, p0, Lcom/easemob/chat/core/EMConnectionManager;->enableWakeLock:Z

    iput-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iput-boolean v2, p0, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z

    iput-boolean v2, p0, Lcom/easemob/chat/core/EMConnectionManager;->isConnectivityRegistered:Z

    iput-boolean v2, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectDisabled:Z

    new-instance v0, Lcom/easemob/chat/core/EMConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/easemob/chat/core/EMConnectionManager$1;-><init>(Lcom/easemob/chat/core/EMConnectionManager;)V

    iput-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/easemob/chat/core/EMConnectionManager;)Ljava/lang/Thread;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$10(Lcom/easemob/chat/core/EMConnectionManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$11(Lcom/easemob/chat/core/EMConnectionManager;)I
    .locals 1

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->timeDelay()I

    move-result v0

    return v0
.end method

.method static synthetic access$12(Lcom/easemob/chat/core/EMConnectionManager;)Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionListener:Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->reConnect()V

    return-void
.end method

.method static synthetic access$3(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->resetAttempts()V

    return-void
.end method

.method static synthetic access$4(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->startReconnectionThread()V

    return-void
.end method

.method static synthetic access$5(Lcom/easemob/chat/core/EMConnectionManager;)Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method static synthetic access$6(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->onDisconnected()V

    return-void
.end method

.method static synthetic access$7(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->registerConnectivityReceiver()V

    return-void
.end method

.method static synthetic access$8(Lcom/easemob/chat/core/EMConnectionManager;)Lcom/easemob/chat/core/q;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->chatConnectionListener:Lcom/easemob/chat/core/q;

    return-object v0
.end method

.method static synthetic access$9(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->sendVersionIQ()V

    return-void
.end method

.method private configure(Lorg/jivesoftware/smack/provider/ProviderManager;)V
    .locals 3

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "configure"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "com.xonami.javaBells.JingleManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xonami/javaBells/JingleManager;->enableJingle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "query"

    const-string v1, "http://jabber.org/protocol/disco#items"

    new-instance v2, Lorg/jivesoftware/smackx/provider/DiscoverItemsProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/provider/DiscoverItemsProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "query"

    const-string v1, "http://jabber.org/protocol/disco#info"

    new-instance v2, Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "query"

    const-string v1, "jabber:iq:privacy"

    new-instance v2, Lorg/jivesoftware/smack/provider/PrivacyProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smack/provider/PrivacyProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "delay"

    const-string v1, "urn:xmpp:delay"

    new-instance v2, Lorg/jivesoftware/smackx/provider/DelayInfoProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/provider/DelayInfoProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ts"

    const-string v1, "urn:xmpp:timestamp"

    new-instance v2, Lcom/easemob/chat/core/aa;

    invoke-direct {v2}, Lcom/easemob/chat/core/aa;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "query"

    const-string v1, "http://jabber.org/protocol/disco#items"

    new-instance v2, Lorg/jivesoftware/smackx/provider/DiscoverItemsProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/provider/DiscoverItemsProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "query"

    const-string v1, "http://jabber.org/protocol/disco#info"

    new-instance v2, Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/provider/DiscoverInfoProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;

    invoke-direct {v0}, Lorg/jivesoftware/smackx/packet/ChatStateExtension$Provider;-><init>()V

    const-string v1, "active"

    const-string v2, "http://jabber.org/protocol/chatstates"

    invoke-virtual {p1, v1, v2, v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "composing"

    const-string v2, "http://jabber.org/protocol/chatstates"

    invoke-virtual {p1, v1, v2, v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "paused"

    const-string v2, "http://jabber.org/protocol/chatstates"

    invoke-virtual {p1, v1, v2, v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "inactive"

    const-string v2, "http://jabber.org/protocol/chatstates"

    invoke-virtual {p1, v1, v2, v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "gone"

    const-string v2, "http://jabber.org/protocol/chatstates"

    invoke-virtual {p1, v1, v2, v0}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "ping"

    const-string v1, "urn:xmpp:ping"

    const-class v2, Lcom/easemob/chat/a/a/a;

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "x"

    const-string v1, "http://jabber.org/protocol/muc#user"

    new-instance v2, Lorg/jivesoftware/smackx/provider/MUCUserProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/provider/MUCUserProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "query"

    const-string v1, "http://jabber.org/protocol/muc#admin"

    new-instance v2, Lorg/jivesoftware/smackx/provider/MUCAdminProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/provider/MUCAdminProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "query"

    const-string v1, "http://jabber.org/protocol/muc#owner"

    new-instance v2, Lorg/jivesoftware/smackx/provider/MUCOwnerProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/provider/MUCOwnerProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "x"

    const-string v1, "jabber:x:conference"

    new-instance v2, Lorg/jivesoftware/smackx/GroupChatInvitation$Provider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/GroupChatInvitation$Provider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "roomtype"

    const-string v1, "easemob:x:roomtype"

    new-instance v2, Lcom/easemob/chat/core/y;

    invoke-direct {v2}, Lcom/easemob/chat/core/y;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "offline"

    const-string v1, "http://jabber.org/protocol/offline"

    new-instance v2, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Provider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/OfflineMessageRequest$Provider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "offline"

    const-string v1, "http://jabber.org/protocol/offline"

    new-instance v2, Lorg/jivesoftware/smackx/packet/OfflineMessageInfo$Provider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/packet/OfflineMessageInfo$Provider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "x"

    const-string v1, "jabber:x:data"

    new-instance v2, Lorg/jivesoftware/smackx/provider/DataFormProvider;

    invoke-direct {v2}, Lorg/jivesoftware/smackx/provider/DataFormProvider;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "received"

    const-string v1, "urn:xmpp:receipts"

    new-instance v2, Lcom/easemob/chat/core/b;

    invoke-direct {v2}, Lcom/easemob/chat/core/b;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addExtensionProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "query"

    const-string v1, "urn:xmpp:media-conference"

    new-instance v2, Lcom/easemob/chat/core/u;

    invoke-direct {v2}, Lcom/easemob/chat/core/u;-><init>()V

    invoke-virtual {p1, v0, v1, v2}, Lorg/jivesoftware/smack/provider/ProviderManager;->addIQProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method private discoverServerFeatures()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->discoverInfo(Ljava/lang/String;)Lorg/jivesoftware/smackx/packet/DiscoverInfo;
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "Unable to discover server features"

    invoke-static {v1, v2, v0}, Lcom/easemob/util/EMLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static getXmppResource(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->xmppResource:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "mobile"

    sput-object v0, Lcom/easemob/chat/core/EMConnectionManager;->xmppResource:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->xmppResource:Ljava/lang/String;

    return-object v0
.end method

.method private initConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EMNetworkUnconnectedException;
        }
    .end annotation

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "enter initConnection()"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "Connection is not connected as expected"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/easemob/exceptions/EMNetworkUnconnectedException;

    const-string v1, "Connection is not connected as expected"

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EMNetworkUnconnectedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionListener:Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->initFeatures()V

    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lcom/easemob/chat/a/a/a;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v2, p0, Lcom/easemob/chat/core/EMConnectionManager;->pingListener:Lcom/easemob/chat/core/EMConnectionManager$PingListener;

    invoke-virtual {v1, v2, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    return-void
.end method

.method private initConnectionConfig()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-static {}, Lorg/jivesoftware/smack/provider/ProviderManager;->getInstance()Lorg/jivesoftware/smack/provider/ProviderManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/easemob/chat/core/EMConnectionManager;->configure(Lorg/jivesoftware/smack/provider/ProviderManager;)V

    sget-object v0, Lorg/jivesoftware/smack/Roster$SubscriptionMode;->manual:Lorg/jivesoftware/smack/Roster$SubscriptionMode;

    invoke-static {v0}, Lorg/jivesoftware/smack/Roster;->setDefaultSubscriptionMode(Lorg/jivesoftware/smack/Roster$SubscriptionMode;)V

    const-string v0, "PLAIN"

    invoke-static {v0}, Lorg/jivesoftware/smack/SASLAuthentication;->supportSASLMechanism(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->j()Z

    move-result v0

    sput-boolean v0, Lorg/jivesoftware/smack/XMPPConnection;->DEBUG_ENABLED:Z

    const v0, 0xea60

    invoke-static {v0}, Lorg/jivesoftware/smack/SmackConfiguration;->setPacketReplyTimeout(I)V

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->b()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->currentHost:Lcom/easemob/chat/core/j$c;

    new-instance v0, Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->currentHost:Lcom/easemob/chat/core/j$c;

    iget-object v1, v1, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/easemob/chat/core/EMConnectionManager;->currentHost:Lcom/easemob/chat/core/j$c;

    iget v2, v2, Lcom/easemob/chat/core/j$c;->b:I

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/EMChatConfig;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setRosterLoadedAtLogin(Z)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setSendPresence(Z)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0, v4}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setReconnectionAllowed(Z)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setCompressionEnabled(Z)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;

    const-string v1, "AndroidCAStore"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setTruststoreType(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setTruststorePassword(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v0, v5}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setTruststorePath(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;

    const-string v1, "BKS"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setTruststoreType(Ljava/lang/String;)V

    const-string v0, "javax.net.ssl.trustStore"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "java.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "security"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "cacerts.bks"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/ConnectionConfiguration;->setTruststorePath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initFeatures()V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;-><init>(Lorg/jivesoftware/smack/Connection;)V

    :cond_0
    const-string v1, "EaseMob"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->setIdentityName(Ljava/lang/String;)V

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->setIdentityType(Ljava/lang/String;)V

    const-string v1, "http://jabber.org/protocol/disco#info"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "jabber:iq:privacy"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "urn:xmpp:avatar:metadata"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "urn:xmpp:avatar:metadata+notify"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "urn:xmpp:avatar:data"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "http://jabber.org/protocol/nick"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "http://jabber.org/protocol/nick+notify"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "http://jabber.org/protocol/muc"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "http://jabber.org/protocol/muc#rooms"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "urn:xmpp:ping"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "easemob:x:roomtype"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "http://jabber.org/protocol/disco#info"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "urn:xmpp:jingle:1"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "urn:xmpp:jingle:transports:ice-udp:1"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "urn:xmpp:jingle:apps:rtp:1"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "urn:xmpp:jingle:apps:rtp:audio"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    const-string v1, "urn:xmpp:jingle:apps:rtp:video"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smackx/ServiceDiscoveryManager;->addFeature(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized login()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    :try_start_1
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "already login. skip"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "Connection is not connected as expected"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/easemob/exceptions/EMNetworkUnconnectedException;

    const-string v1, "Connection is not connected as expected"

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EMNetworkUnconnectedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "illegalState in connection.login:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, " Already logged in to server"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_4
    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "try to login with barejid"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/easemob/chat/core/EMConnectionManager;->bareJid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->bareJid:Ljava/lang/String;

    iget-object v4, p0, Lcom/easemob/chat/core/EMConnectionManager;->password:Ljava/lang/String;

    iget-object v5, p0, Lcom/easemob/chat/core/EMConnectionManager;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/easemob/chat/core/EMConnectionManager;->getXmppResource(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Lorg/jivesoftware/smack/XMPPConnection;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "login successfully"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->enableWakeLock:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    const-string v4, "easemoblock"

    invoke-virtual {v0, v1, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "acquire lock"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :try_start_5
    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->sendVersionIQ()V

    new-instance v0, Lorg/jivesoftware/smack/packet/Presence;

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->available:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/packet/Presence;-><init>(Lorg/jivesoftware/smack/packet/Presence$Type;)V

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->imTag:Lcom/easemob/analytics/EMTimeTag;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->imTag:Lcom/easemob/analytics/EMTimeTag;

    invoke-virtual {v1}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/packet/Presence;->setImLoginTime(J)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->imTag:Lcom/easemob/analytics/EMTimeTag;

    :cond_4
    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->chatTag:Lcom/easemob/analytics/EMTimeTag;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->chatTag:Lcom/easemob/analytics/EMTimeTag;

    invoke-virtual {v1}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lorg/jivesoftware/smack/packet/Presence;->setChatLoginTime(J)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->chatTag:Lcom/easemob/analytics/EMTimeTag;

    :cond_5
    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    const-string v0, "perf"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[perf] login time(ms)"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->isDebugTrafficMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/b/a;->d()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    sget-object v1, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to login to xmpp server. Caused by: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "401"

    const-string v2, "not-authorized"

    const-string v3, "SASL authentication failed using mechanism PLAIN"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v0, Lcom/easemob/exceptions/EMAuthenticationException;

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EMAuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v0, Lcom/easemob/exceptions/EMAuthenticationException;

    invoke-direct {v0, v2}, Lcom/easemob/exceptions/EMAuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Lcom/easemob/exceptions/EMAuthenticationException;

    invoke-direct {v0, v3}, Lcom/easemob/exceptions/EMAuthenticationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method private onDisconnected()V
    .locals 2

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "on disconnected"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "lock release"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized reConnect()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "enter reConnect"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->disconnect()V

    iget-boolean v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->registerConnectivityReceiver()V

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->startReconnectionThread()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private registerConnectivityReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "context is null!......"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->isConnectivityRegistered:Z

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v2, "register connectivity receiver."

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->isConnectivityRegistered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private resetAttempts()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->attempts:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->randomBase:I

    return-void
.end method

.method private sendVersionIQ()V
    .locals 3

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "send version iq"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/easemob/chat/core/ab;

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChat;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/easemob/chat/core/ab;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatConfig;->getDomain()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/ab;->setTo(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/easemob/chat/EMChatConfig;->APPKEY:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMChatConfig;->getInstance()Lcom/easemob/chat/EMChatConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatConfig;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/ab;->setFrom(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    return-void
.end method

.method private declared-synchronized startReconnectionThread()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " : enter startReconnectionThread()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "start reconnectionThread()"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->resetAttempts()V

    new-instance v0, Lcom/easemob/chat/core/EMConnectionManager$3;

    invoke-direct {v0, p0}, Lcom/easemob/chat/core/EMConnectionManager$3;-><init>(Lcom/easemob/chat/core/EMConnectionManager;)V

    iput-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;

    const-string v1, "EASEMOB Reconnection Thread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private timeDelay()I
    .locals 4

    const/16 v3, 0x9

    const/4 v2, 0x5

    iget v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->randomBase:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->randomBase:I

    :cond_0
    iget v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->attempts:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->attempts:I

    iget v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->attempts:I

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->attempts:I

    if-gt v0, v3, :cond_1

    iget v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->randomBase:I

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->attempts:I

    if-le v0, v3, :cond_3

    iget v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->randomBase:I

    mul-int/lit8 v0, v0, 0x3

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x19

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->randomBase:I

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->randomBase:I

    goto :goto_0
.end method

.method private unregisterConnectivityReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "context is null!......"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "unregisterConnectivityReceiver()"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->isConnectivityRegistered:Z

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EMNetworkUnconnectedException;
        }
    .end annotation

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "connection manager:connect"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v0, :cond_0

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "fail to setup connection"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/easemob/exceptions/EMNetworkUnconnectedException;

    const-string v1, "fail to setup connection"

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EMNetworkUnconnectedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "connection is connected, skip reconnect"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "before connect"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->connect()V

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "after connect"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/NoRouteToHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unknow host exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/easemob/util/NetUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Lcom/easemob/exceptions/EMNetworkUnconnectedException;

    const-string v1, "no network available"

    invoke-direct {v0, v1}, Lcom/easemob/exceptions/EMNetworkUnconnectedException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lcom/easemob/exceptions/EMNetworkUnconnectedException;

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EMNetworkUnconnectedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    sget-object v1, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "NoRouteToHostException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/NoRouteToHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/easemob/exceptions/EMNetworkUnconnectedException;

    invoke-virtual {v0}, Ljava/net/NoRouteToHostException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EMNetworkUnconnectedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/net/ConnectException;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ConnectException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/j;->h()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "refused"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/j;->f()Lcom/easemob/chat/core/j$c;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->currentHost:Lcom/easemob/chat/core/j$c;

    :cond_3
    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/core/EMConnectionManager;->currentHost:Lcom/easemob/chat/core/j$c;

    iget-object v2, v2, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/easemob/chat/core/EMConnectionManager;->currentHost:Lcom/easemob/chat/core/j$c;

    iget v3, v3, Lcom/easemob/chat/core/j$c;->b:I

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->initHostAddresses(Ljava/lang/String;I)V

    :cond_4
    new-instance v1, Lcom/easemob/exceptions/EMNetworkUnconnectedException;

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EMNetworkUnconnectedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_3
    move-exception v0

    sget-object v1, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SocketException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/easemob/exceptions/EMNetworkUnconnectedException;

    invoke-virtual {v0}, Ljava/net/SocketException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EMNetworkUnconnectedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_4
    move-exception v0

    sget-object v1, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SocketTimeoutException:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/easemob/exceptions/EMNetworkUnconnectedException;

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EMNetworkUnconnectedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, ""

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/p;->e()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/j;->h()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "refused"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/easemob/util/NetUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/j;->f()Lcom/easemob/chat/core/j$c;

    move-result-object v1

    if-eqz v1, :cond_5

    iput-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->currentHost:Lcom/easemob/chat/core/j$c;

    :cond_5
    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/core/EMConnectionManager;->currentHost:Lcom/easemob/chat/core/j$c;

    iget-object v2, v2, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/easemob/chat/core/EMConnectionManager;->currentHost:Lcom/easemob/chat/core/j$c;

    iget v3, v3, Lcom/easemob/chat/core/j$c;->b:I

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/ConnectionConfiguration;->initHostAddresses(Ljava/lang/String;I)V

    :cond_6
    sget-object v1, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "connection.connect() failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/easemob/exceptions/EMNetworkUnconnectedException;

    invoke-direct {v1, v0}, Lcom/easemob/exceptions/EMNetworkUnconnectedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public declared-synchronized connectSync(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "enter connectSync"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/easemob/analytics/EMTimeTag;

    invoke-direct {v0}, Lcom/easemob/analytics/EMTimeTag;-><init>()V

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->start()V

    iput-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->imTag:Lcom/easemob/analytics/EMTimeTag;

    invoke-virtual {p0}, Lcom/easemob/chat/core/EMConnectionManager;->connect()V

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->initConnection()V

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->login()V

    invoke-virtual {v0}, Lcom/easemob/analytics/EMTimeTag;->stop()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/easemob/analytics/EMLoginCollector;->collectIMLoginTime(J)V

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->chatConnectionListener:Lcom/easemob/chat/core/q;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->chatConnectionListener:Lcom/easemob/chat/core/q;

    invoke-interface {v0}, Lcom/easemob/chat/core/q;->onConnectionSuccessful()V

    :cond_3
    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->resetAttempts()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lcom/easemob/exceptions/EaseMobException;->getMessage()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "connectSync with error = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_4

    instance-of v1, v0, Lcom/easemob/exceptions/EMAuthenticationException;

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->reConnect()V

    :goto_1
    invoke-virtual {v0}, Lcom/easemob/exceptions/EaseMobException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/easemob/analytics/EMLoginCollector;->collectConnectionError(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    :try_start_4
    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/chat/core/j;->j()V

    invoke-virtual {p0}, Lcom/easemob/chat/core/EMConnectionManager;->disconnect()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method

.method public disconnect()Z
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " : enter disconnect()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->reconnectionThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->unregisterConnectivityReceiver()V

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionListener:Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v2, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionListener:Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;

    invoke-virtual {v1, v2}, Lorg/jivesoftware/smack/XMPPConnection;->removeConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    :cond_1
    sget-object v1, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "trying to disconnect connection \uff08"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v1}, Lorg/jivesoftware/smack/XMPPConnection;->disconnect()V

    :cond_2
    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method enableConnect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectDisabled:Z

    return-void
.end method

.method public forceReconnect()V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->reConnect()V

    return-void
.end method

.method public getConnection()Lorg/jivesoftware/smack/XMPPConnection;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    return-object v0
.end method

.method public getCurrentPwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUser()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->bareJid:Ljava/lang/String;

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAuthentificated()Z
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isAuthenticated()Z

    move-result v0

    goto :goto_0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->isConnected()Z

    move-result v0

    goto :goto_0
.end method

.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z

    return v0
.end method

.method onDnsConfigChanged()V
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->disconnect()V

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->f()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->currentHost:Lcom/easemob/chat/core/j$c;

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPConnection;->getConfiguration()Lorg/jivesoftware/smack/ConnectionConfiguration;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->currentHost:Lcom/easemob/chat/core/j$c;

    iget-object v1, v1, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/easemob/chat/core/EMConnectionManager;->currentHost:Lcom/easemob/chat/core/j$c;

    iget v2, v2, Lcom/easemob/chat/core/j$c;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/jivesoftware/smack/ConnectionConfiguration;->initHostAddresses(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->reConnect()V

    return-void
.end method

.method public onInit()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/easemob/chat/core/EMConnectionManager;->initConnectionConfig()V

    new-instance v0, Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionConfig:Lorg/jivesoftware/smack/ConnectionConfiguration;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;-><init>(Lorg/jivesoftware/smack/ConnectionConfiguration;)V

    iput-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/entitycaps/EntityCapsManager;->disableEntityCaps()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z

    return-void
.end method

.method public onInit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0}, Lcom/easemob/chat/core/EMConnectionManager;->onInit()V

    iput-object p1, p0, Lcom/easemob/chat/core/EMConnectionManager;->bareJid:Ljava/lang/String;

    iput-object p2, p0, Lcom/easemob/chat/core/EMConnectionManager;->password:Ljava/lang/String;

    return-void
.end method

.method public reconnectASync()V
    .locals 2

    iget-boolean v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "try to reconnectASync"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/easemob/chat/core/EMConnectionManager$2;

    invoke-direct {v0, p0}, Lcom/easemob/chat/core/EMConnectionManager$2;-><init>(Lcom/easemob/chat/core/EMConnectionManager;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public reconnectSync()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/easemob/chat/core/EMConnectionManager;->TAG:Ljava/lang/String;

    const-string v1, "try to reconnectSync"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/easemob/chat/core/EMConnectionManager;->connectSync(Z)V

    goto :goto_0
.end method

.method public reuse()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->isDone:Z

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager;->connectionListener:Lcom/easemob/chat/core/EMConnectionManager$XmppConnectionListener;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/XMPPConnection;->addConnectionListener(Lorg/jivesoftware/smack/ConnectionListener;)V

    return-void
.end method

.method setBlackListActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;

    invoke-static {v0}, Lorg/jivesoftware/smack/PrivacyListManager;->getInstanceFor(Lorg/jivesoftware/smack/Connection;)Lorg/jivesoftware/smack/PrivacyListManager;

    move-result-object v0

    const-string v1, "special"

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/PrivacyListManager;->setActiveListName(Ljava/lang/String;)V

    return-void
.end method

.method public setChatConnectionListener(Lcom/easemob/chat/core/q;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/EMConnectionManager;->chatConnectionListener:Lcom/easemob/chat/core/q;

    return-void
.end method

.method public setChatTag(Lcom/easemob/analytics/EMTimeTag;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/EMConnectionManager;->chatTag:Lcom/easemob/analytics/EMTimeTag;

    return-void
.end method
