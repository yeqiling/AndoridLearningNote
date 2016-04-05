.class Lcom/easemob/chat/core/EMConnectionManager$PingListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/core/EMConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/core/EMConnectionManager;


# direct methods
.method private constructor <init>(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/EMConnectionManager$PingListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/easemob/chat/core/EMConnectionManager;Lcom/easemob/chat/core/EMConnectionManager$PingListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/core/EMConnectionManager$PingListener;-><init>(Lcom/easemob/chat/core/EMConnectionManager;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3

    invoke-static {}, Lcom/easemob/chat/core/EMConnectionManager;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "received ping packet from :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/easemob/chat/a/a/a;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lcom/easemob/chat/a/a/a;

    invoke-virtual {p1}, Lcom/easemob/chat/a/a/a;->getType()Lorg/jivesoftware/smack/packet/IQ$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->GET:Lorg/jivesoftware/smack/packet/IQ$Type;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/easemob/chat/a/a/a;

    invoke-direct {v0}, Lcom/easemob/chat/a/a/a;-><init>()V

    sget-object v1, Lorg/jivesoftware/smack/packet/IQ$Type;->RESULT:Lorg/jivesoftware/smack/packet/IQ$Type;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/a/a/a;->setType(Lorg/jivesoftware/smack/packet/IQ$Type;)V

    invoke-virtual {p1}, Lcom/easemob/chat/a/a/a;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/a/a/a;->setTo(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/easemob/chat/a/a/a;->getPacketID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/a/a/a;->setPacketID(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/chat/core/EMConnectionManager$PingListener;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager;->connection:Lorg/jivesoftware/smack/XMPPConnection;
    invoke-static {v1}, Lcom/easemob/chat/core/EMConnectionManager;->access$5(Lcom/easemob/chat/core/EMConnectionManager;)Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->sendPacket(Lorg/jivesoftware/smack/packet/Packet;)V

    goto :goto_0
.end method
