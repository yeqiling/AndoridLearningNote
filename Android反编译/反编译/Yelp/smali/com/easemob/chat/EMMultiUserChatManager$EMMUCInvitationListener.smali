.class Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smackx/muc/InvitationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMMultiUserChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EMMUCInvitationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMMultiUserChatManager;


# direct methods
.method private constructor <init>(Lcom/easemob/chat/EMMultiUserChatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/easemob/chat/EMMultiUserChatManager;Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;-><init>(Lcom/easemob/chat/EMMultiUserChatManager;)V

    return-void
.end method


# virtual methods
.method public invitationReceived(Lorg/jivesoftware/smack/Connection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/jivesoftware/smack/packet/Message;)V
    .locals 4

    const-string v0, "EMMultiUserChatManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invitation received room:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inviter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p6}, Lorg/jivesoftware/smack/packet/Message;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    invoke-virtual {v2, p6}, Lcom/easemob/chat/EMMultiUserChatManager;->getRoomTypeExtension(Lorg/jivesoftware/smack/packet/Packet;)Lcom/easemob/chat/core/x;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/easemob/chat/core/x;->a()Lcom/easemob/chat/core/x$a;

    move-result-object v2

    sget-object v3, Lcom/easemob/chat/core/x$a;->a:Lcom/easemob/chat/core/x$a;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    #getter for: Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;
    invoke-static {v2}, Lcom/easemob/chat/EMMultiUserChatManager;->access$1(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMChatRoomManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p4}, Lcom/easemob/chat/EMChatRoomManager;->onInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    #getter for: Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;
    invoke-static {v2}, Lcom/easemob/chat/EMMultiUserChatManager;->access$0(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMGroupManager;

    move-result-object v2

    invoke-virtual {v2, v1, v0, p4}, Lcom/easemob/chat/EMGroupManager;->onInvitation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
