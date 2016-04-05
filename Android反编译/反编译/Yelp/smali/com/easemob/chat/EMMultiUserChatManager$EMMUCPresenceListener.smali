.class Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMMultiUserChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EMMUCPresenceListener"
.end annotation


# static fields
.field private static final AFFILIATION_NONE:Ljava/lang/String; = "affiliation=\"none\""

.field private static final ITEM_DESTROY:Ljava/lang/String; = "destroy"

.field private static final ITEM_EXITMUC:Ljava/lang/String; = "<item affiliation=\"none\" role=\"none\">"

.field private static final MUC_ELEMENT_NAME:Ljava/lang/String; = "x"

.field public static final MUC_NS_USER:Ljava/lang/String; = "http://jabber.org/protocol/muc#user"

.field private static final ROLE_NONE:Ljava/lang/String; = "role=\"none\""

.field private static final ROLE_PARTICIPANT:Ljava/lang/String; = "role=\"participant\""


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMMultiUserChatManager;


# direct methods
.method public constructor <init>(Lcom/easemob/chat/EMMultiUserChatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 7

    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/jivesoftware/smack/packet/Presence;

    move-object v1, v0

    const-string v2, "x"

    const-string v3, "http://jabber.org/protocol/muc#user"

    invoke-virtual {v1, v2, v3}, Lorg/jivesoftware/smack/packet/Presence;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v2

    check-cast v2, Lorg/jivesoftware/smackx/packet/MUCUser;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCUser;->toXML()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    invoke-virtual {v5, v1}, Lcom/easemob/chat/EMMultiUserChatManager;->getRoomTypeExtension(Lorg/jivesoftware/smack/packet/Packet;)Lcom/easemob/chat/core/x;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/easemob/chat/core/x;->a()Lcom/easemob/chat/core/x$a;

    move-result-object v5

    sget-object v6, Lcom/easemob/chat/core/x$a;->a:Lcom/easemob/chat/core/x$a;

    if-ne v5, v6, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCUser;->getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCUser;->getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jivesoftware/smackx/packet/MUCUser$Status;->getCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "307"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    #getter for: Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;
    invoke-static {v1}, Lcom/easemob/chat/EMMultiUserChatManager;->access$0(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMGroupManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMGroupManager;->handleUserRemove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    #getter for: Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;
    invoke-static {v1}, Lcom/easemob/chat/EMMultiUserChatManager;->access$1(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMChatRoomManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMChatRoomManager;->handleUserRemove(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    :try_start_3
    invoke-virtual {v1}, Lorg/jivesoftware/smack/packet/Presence;->getType()Lorg/jivesoftware/smack/packet/Presence$Type;

    move-result-object v1

    sget-object v5, Lorg/jivesoftware/smack/packet/Presence$Type;->unavailable:Lorg/jivesoftware/smack/packet/Presence$Type;

    if-eq v1, v5, :cond_4

    const-string v1, "role=\"participant\""

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    #getter for: Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;
    invoke-static {v1}, Lcom/easemob/chat/EMMultiUserChatManager;->access$1(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMChatRoomManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMChatRoomManager;->onMemberJoined(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCUser;->getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v2}, Lorg/jivesoftware/smackx/packet/MUCUser;->getStatus()Lorg/jivesoftware/smackx/packet/MUCUser$Status;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jivesoftware/smackx/packet/MUCUser$Status;->getCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "110"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    #getter for: Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;
    invoke-static {v1}, Lcom/easemob/chat/EMMultiUserChatManager;->access$1(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMChatRoomManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMChatRoomManager;->onMemberExit(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v1, "destroy"

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_7

    invoke-static {v1}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    #getter for: Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;
    invoke-static {v3}, Lcom/easemob/chat/EMMultiUserChatManager;->access$1(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMChatRoomManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/easemob/chat/EMChatRoomManager;->getChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    #getter for: Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;
    invoke-static {v2}, Lcom/easemob/chat/EMMultiUserChatManager;->access$1(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMChatRoomManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/easemob/chat/EMChatRoomManager;->handleRoomDestroy(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    #getter for: Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;
    invoke-static {v2}, Lcom/easemob/chat/EMMultiUserChatManager;->access$0(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMGroupManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/easemob/chat/EMGroupManager;->handleRoomDestroy(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    #getter for: Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;
    invoke-static {v2}, Lcom/easemob/chat/EMMultiUserChatManager;->access$1(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMChatRoomManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/easemob/chat/EMChatRoomManager;->handleRoomDestroy(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v1, "affiliation=\"none\""

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "role=\"none\""

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v3, :cond_9

    iget-object v1, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    #getter for: Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;
    invoke-static {v1}, Lcom/easemob/chat/EMMultiUserChatManager;->access$1(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMChatRoomManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMChatRoomManager;->onMemberExit(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    #getter for: Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;
    invoke-static {v1}, Lcom/easemob/chat/EMMultiUserChatManager;->access$0(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMGroupManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMGroupManager;->handleUserRemove(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_a
    const-string v1, "role=\"none\""

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;->this$0:Lcom/easemob/chat/EMMultiUserChatManager;

    #getter for: Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;
    invoke-static {v1}, Lcom/easemob/chat/EMMultiUserChatManager;->access$1(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMChatRoomManager;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jivesoftware/smack/packet/Packet;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/easemob/chat/EMChatRoomManager;->onMemberExit(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0
.end method
