.class Lcom/easemob/chat/EMChatManager$SingleInvitationListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SingleInvitationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatManager;


# direct methods
.method private constructor <init>(Lcom/easemob/chat/EMChatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$SingleInvitationListener;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/chat/EMChatManager$SingleInvitationListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMChatManager$SingleInvitationListener;-><init>(Lcom/easemob/chat/EMChatManager;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 2

    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Presence;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/jivesoftware/smack/packet/Presence;

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    iget-boolean v0, v0, Lcom/easemob/chat/EMChat;->appInited:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$SingleInvitationListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #calls: Lcom/easemob/chat/EMChatManager;->processRosterPresence(Lorg/jivesoftware/smack/packet/Presence;)V
    invoke-static {v0, p1}, Lcom/easemob/chat/EMChatManager;->access$0(Lcom/easemob/chat/EMChatManager;Lorg/jivesoftware/smack/packet/Presence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "EMChatManager"

    const-string v1, "received roster presence, but app is not ready"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$SingleInvitationListener;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->offlineRosterPresenceList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$1(Lcom/easemob/chat/EMChatManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
