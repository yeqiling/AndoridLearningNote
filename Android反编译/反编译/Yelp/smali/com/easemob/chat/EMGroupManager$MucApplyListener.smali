.class Lcom/easemob/chat/EMGroupManager$MucApplyListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MucApplyListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MucApplyListener"


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMGroupManager;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMGroupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMGroupManager$MucApplyListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 9

    instance-of v0, p1, Lorg/jivesoftware/smack/packet/Message;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    check-cast p1, Lorg/jivesoftware/smack/packet/Message;

    const-string v0, "x"

    const-string v1, "http://jabber.org/protocol/muc#user"

    invoke-virtual {p1, v0, v1}, Lorg/jivesoftware/smack/packet/Message;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Lorg/jivesoftware/smackx/packet/MUCUser;

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getApply()Lorg/jivesoftware/smackx/packet/MUCUser$Apply;

    move-result-object v6

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getAccept()Lorg/jivesoftware/smackx/packet/MUCUser$Accept;

    move-result-object v7

    invoke-virtual {v0}, Lorg/jivesoftware/smackx/packet/MUCUser;->getDecline()Lorg/jivesoftware/smackx/packet/MUCUser$Decline;

    move-result-object v8

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    iget-boolean v0, v0, Lcom/easemob/chat/EMChat;->appInited:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$MucApplyListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    iget-object v0, v0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/GroupChangeListener;

    const-string v2, "MucApplyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "fire group application received event for group:"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;->getToNick()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;->getToNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v5, v4}, Lcom/easemob/chat/GroupChangeListener;->onApplicationReceived(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "MucApplyListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aff offline group application received event for group:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;->getToNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$MucApplyListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    iget-object v7, v0, Lcom/easemob/chat/EMGroupManager;->offlineGroupEvents:Ljava/util/ArrayList;

    new-instance v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager$MucApplyListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    sget-object v2, Lcom/easemob/chat/EMGroupManager$GroupEventType;->Apply:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;->getToNick()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lorg/jivesoftware/smackx/packet/MUCUser$Apply;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;-><init>(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/chat/EMGroupManager$GroupEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/MUCUser$Accept;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/MUCUser$Accept;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    iget-boolean v0, v0, Lcom/easemob/chat/EMChat;->appInited:Z

    if-eqz v0, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$MucApplyListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/MUCUser$Accept;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMChatManager;->getInstance()Lcom/easemob/chat/EMChatManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMChatManager;->getCurrentUser()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v1, v2, v4, v6}, Lcom/easemob/chat/EMGroupManager;->getMUC(Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager$MucApplyListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v1, v0}, Lcom/easemob/chat/EMGroupManager;->createOrUpdateLocalGroup(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$MucApplyListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    iget-object v0, v0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/GroupChangeListener;

    const-string v2, "MucApplyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "fire group application accept received event for group:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/MUCUser$Accept;->getFromNick()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/MUCUser$Accept;->getFromNick()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2, v5}, Lcom/easemob/chat/GroupChangeListener;->onApplicationAccept(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/jivesoftware/smack/XMPPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/jivesoftware/smack/XMPPException;->printStackTrace()V

    goto/16 :goto_0

    :cond_4
    const-string v0, "MucApplyListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aff offline group application accetpt received event for group:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/MUCUser$Accept;->getFromNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$MucApplyListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    iget-object v8, v0, Lcom/easemob/chat/EMGroupManager;->offlineGroupEvents:Ljava/util/ArrayList;

    new-instance v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager$MucApplyListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    sget-object v2, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ApplicationAccept:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/MUCUser$Accept;->getFromNick()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lorg/jivesoftware/smackx/packet/MUCUser$Accept;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;-><init>(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/chat/EMGroupManager$GroupEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->getFrom()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->getTo()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    iget-boolean v0, v0, Lcom/easemob/chat/EMChat;->appInited:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$MucApplyListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    iget-object v0, v0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/GroupChangeListener;

    const-string v2, "MucApplyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "fire group application declind received event for group:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->getFromNick()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->getFromNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v2, v5, v4}, Lcom/easemob/chat/GroupChangeListener;->onApplicationDeclined(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v0, "MucApplyListener"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "aff offline group application declind received event for group:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->getFromNick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$MucApplyListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    iget-object v7, v0, Lcom/easemob/chat/EMGroupManager;->offlineGroupEvents:Ljava/util/ArrayList;

    new-instance v0, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager$MucApplyListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    sget-object v2, Lcom/easemob/chat/EMGroupManager$GroupEventType;->ApplicationDeclind:Lcom/easemob/chat/EMGroupManager$GroupEventType;

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->getFromNick()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8}, Lorg/jivesoftware/smackx/packet/MUCUser$Decline;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/easemob/chat/EMGroupManager$GroupChangeEvent;-><init>(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/chat/EMGroupManager$GroupEventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method
