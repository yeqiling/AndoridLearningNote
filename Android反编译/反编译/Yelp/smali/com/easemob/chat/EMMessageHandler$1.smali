.class Lcom/easemob/chat/EMMessageHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMMessageHandler;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMMessageHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMMessageHandler$1;->this$0:Lcom/easemob/chat/EMMessageHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private updateMessage(Ljava/lang/String;I)V
    .locals 4

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v0, p2}, Lcom/easemob/chat/EMMessage;->setError(I)V

    sget-object v2, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    iput-object v2, v0, Lcom/easemob/chat/EMMessage;->status:Lcom/easemob/chat/EMMessage$Status;

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMChatManager;->updateMessageState(Lcom/easemob/chat/EMMessage;)V

    invoke-static {p1}, Lcom/easemob/chat/EMSendMessageRunnable;->notifyErrorMsgWaitLock(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/easemob/EMMessageChangeEventData;

    invoke-direct {v2}, Lcom/easemob/EMMessageChangeEventData;-><init>()V

    sget-object v3, Lcom/easemob/EMMessageChangeEventData$EMChangeSource;->MessageState:Lcom/easemob/EMMessageChangeEventData$EMChangeSource;

    iput-object v3, v2, Lcom/easemob/EMMessageChangeEventData;->source:Lcom/easemob/EMMessageChangeEventData$EMChangeSource;

    iput-object v0, v2, Lcom/easemob/EMMessageChangeEventData;->changedMsg:Lcom/easemob/chat/EMMessage;

    sget-object v0, Lcom/easemob/chat/EMMessage$Status;->FAIL:Lcom/easemob/chat/EMMessage$Status;

    invoke-virtual {v2, v0}, Lcom/easemob/EMMessageChangeEventData;->setNewValue(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcom/easemob/EMMessageChangeEventData;->setOldValue(Ljava/lang/Object;)V

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/easemob/chat/EMChatManager;->notifyMessageChanged(Lcom/easemob/EMMessageChangeEventData;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 4

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getPacketID()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMMessageHandler;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "received error, id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getError()Lorg/jivesoftware/smack/packet/XMPPError;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/XMPPError;->getCode()I

    move-result v1

    const/16 v2, 0x196

    if-ne v1, v2, :cond_1

    const/16 v1, -0x7d0

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMMessageHandler$1;->updateMessage(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v2, 0x198

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMChatManager;->getMessage(Ljava/lang/String;)Lcom/easemob/chat/EMMessage;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/easemob/chat/EMMessageHandler;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "the message : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not found in sdk!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v1, -0x7d1

    invoke-direct {p0, v0, v1}, Lcom/easemob/chat/EMMessageHandler$1;->updateMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method
