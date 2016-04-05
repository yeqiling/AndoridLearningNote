.class Lcom/easemob/chat/EMChatManager$4;
.super Lorg/jivesoftware/smack/filter/PacketTypeFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatManager;->addPacketListeners(Lorg/jivesoftware/smack/XMPPConnection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatManager;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMChatManager;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$4;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-direct {p0, p2}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/jivesoftware/smack/packet/Packet;)Z
    .locals 2

    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Presence;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/jivesoftware/smack/packet/Presence;

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->subscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribed:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v0

    sget-object v1, Lorg/jivesoftware/smack/packet/Presence$Type;->unsubscribe:Lorg/jivesoftware/smack/packet/Presence$Type;

    invoke-virtual {v0, v1}, Lorg/jivesoftware/smack/packet/Presence$Type;->equals(Ljava/lang/Object;)Z

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
