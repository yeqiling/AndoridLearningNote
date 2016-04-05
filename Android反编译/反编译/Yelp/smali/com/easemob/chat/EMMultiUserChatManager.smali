.class final Lcom/easemob/chat/EMMultiUserChatManager;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/core/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;,
        Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EMMultiUserChatManager"

.field private static instance:Lcom/easemob/chat/EMMultiUserChatManager;


# instance fields
.field private chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

.field private groupChatManager:Lcom/easemob/chat/EMGroupManager;

.field private invitationListener:Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/chat/EMMultiUserChatManager;->instance:Lcom/easemob/chat/EMMultiUserChatManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->invitationListener:Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    new-instance v0, Lcom/easemob/chat/EMChatRoomManager;

    invoke-direct {v0}, Lcom/easemob/chat/EMChatRoomManager;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->getInstance()Lcom/easemob/chat/EMGroupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    return-void
.end method

.method static synthetic access$0(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMGroupManager;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    return-object v0
.end method

.method static synthetic access$1(Lcom/easemob/chat/EMMultiUserChatManager;)Lcom/easemob/chat/EMChatRoomManager;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/easemob/chat/EMMultiUserChatManager;
    .locals 2

    const-class v1, Lcom/easemob/chat/EMMultiUserChatManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/chat/EMMultiUserChatManager;->instance:Lcom/easemob/chat/EMMultiUserChatManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/chat/EMMultiUserChatManager;

    invoke-direct {v0}, Lcom/easemob/chat/EMMultiUserChatManager;-><init>()V

    sput-object v0, Lcom/easemob/chat/EMMultiUserChatManager;->instance:Lcom/easemob/chat/EMMultiUserChatManager;

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMMultiUserChatManager;->instance:Lcom/easemob/chat/EMMultiUserChatManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public acceptApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMGroupManager;->acceptApplication(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public acceptInvitation(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->acceptInvitation(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    return-void
.end method

.method public addChatRoomChangeListener(Lcom/easemob/EMChatRoomChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatRoomManager;->addChangeListener(Lcom/easemob/EMChatRoomChangeListener;)V

    return-void
.end method

.method public addGroupChangeListener(Lcom/easemob/EMGroupChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->addGroupChangeListener(Lcom/easemob/chat/GroupChangeListener;)V

    return-void
.end method

.method public addUsersToGroup(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMGroupManager;->addUsersToGroup(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public applyJoinToGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMGroupManager;->applyJoinToGroup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public blockGroupMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->blockGroupMessage(Ljava/lang/String;)V

    return-void
.end method

.method public blockUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMGroupManager;->blockUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public changeGroupName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMGroupManager;->changeGroupName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method clearRooms()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroupManager;->clear()V

    return-void
.end method

.method public createOrUpdateLocalGroup(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->createOrUpdateLocalGroup(Lcom/easemob/chat/EMGroup;)Lcom/easemob/chat/EMGroup;

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

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/easemob/chat/EMGroupManager;->createPrivateGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)Lcom/easemob/chat/EMGroup;

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

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/easemob/chat/EMGroupManager;->createPublicGroup(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZI)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method public declineApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/easemob/chat/EMGroupManager;->declineApplication(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dismissGroup(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->exitAndDeleteGroup(Ljava/lang/String;)V

    return-void
.end method

.method public fetchChatRoomFromServer(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatRoomManager;->getChatRoomFromServer(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;

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

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->getGroupFromServer(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method fetchJoinedChatRoomsFromServer()Ljava/util/List;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatRoomManager;->getJoinedChatRooms()Ljava/util/List;

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

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroupManager;->getGroupsFromServer()Ljava/util/List;

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

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMChatRoomManager;->getChatRoomsFromServer(ILjava/lang/String;)Lcom/easemob/chat/EMCursorResult;

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

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMGroupManager;->getPublicGroupsFromServer(ILjava/lang/String;)Lcom/easemob/chat/EMCursorResult;

    move-result-object v0

    return-object v0
.end method

.method public getAllChatRooms()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/easemob/chat/EMChatRoom;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v1}, Lcom/easemob/chat/EMChatRoomManager;->getAllChatRoom()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

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

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroupManager;->getAllGroups()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBlockedUsers(Ljava/lang/String;)Ljava/util/List;
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

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->getBlockedUsers(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatRoomManager;->getChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v0

    return-object v0
.end method

.method public getGroup(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->getGroup(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    return-object v0
.end method

.method getMUCWithoutJoin(Ljava/lang/String;Lcom/easemob/chat/EMMessage$ChatType;)Lorg/jivesoftware/smackx/muc/MultiUserChat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jivesoftware/smack/XMPPException;
        }
    .end annotation

    sget-object v0, Lcom/easemob/chat/EMMessage$ChatType;->ChatRoom:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatRoomManager;->getMUCWithoutJoin(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/easemob/chat/EMMessage$ChatType;->GroupChat:Lcom/easemob/chat/EMMessage$ChatType;

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->getMUCWithoutJoin(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getRoom(Ljava/lang/String;)Lcom/easemob/chat/EMMultiUserChatRoomModelBase;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatRoomManager;->getChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->getGroup(Ljava/lang/String;)Lcom/easemob/chat/EMGroup;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getRoomTypeExtension(Lorg/jivesoftware/smack/packet/Packet;)Lcom/easemob/chat/core/x;
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "roomtype"

    const-string v2, "easemob:x:roomtype"

    invoke-virtual {p1, v0, v2}, Lorg/jivesoftware/smack/packet/Packet;->getExtension(Ljava/lang/String;Ljava/lang/String;)Lorg/jivesoftware/smack/packet/PacketExtension;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/core/x;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method

.method public inviteUser(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/easemob/chat/EMGroupManager;->inviteUser(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method joinChatRoom(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatRoomManager;->joinChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;

    return-void
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

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMChatRoomManager;->joinChatRoom(Ljava/lang/String;Lcom/easemob/EMValueCallBack;)V

    return-void
.end method

.method public joinGroup(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->joinGroup(Ljava/lang/String;)V

    return-void
.end method

.method leaveChatRoom(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/easemob/chat/EMChatRoomManager;->exitChatRoom(Ljava/lang/String;Lcom/easemob/EMCallBack;)V

    return-void
.end method

.method public leaveGroup(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->exitFromGroup(Ljava/lang/String;)V

    return-void
.end method

.method public loadLocalData()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroupManager;->loadAllGroups()V

    return-void
.end method

.method public onAppReady()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatRoomManager;->processOfflineMessages()V

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroupManager;->processOfflineMessages()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->invitationListener:Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMMultiUserChatManager;->invitationListener:Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->removeInvitationListener(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/muc/InvitationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatRoomManager;->onDestroy()V

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroupManager;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onInit()V
    .locals 3

    const-string v0, "EMMultiUserChatManager"

    const-string v1, "init EMMultiUserChatManager"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;-><init>(Lcom/easemob/chat/EMMultiUserChatManager;Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;)V

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->invitationListener:Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMMultiUserChatManager;->invitationListener:Lcom/easemob/chat/EMMultiUserChatManager$EMMUCInvitationListener;

    invoke-static {v0, v1}, Lorg/jivesoftware/smackx/muc/MultiUserChat;->addInvitationListener(Lorg/jivesoftware/smack/Connection;Lorg/jivesoftware/smackx/muc/InvitationListener;)V

    new-instance v0, Lorg/jivesoftware/smack/filter/PacketTypeFilter;

    const-class v1, Lorg/jivesoftware/smack/packet/Presence;

    invoke-direct {v0, v1}, Lorg/jivesoftware/smack/filter/PacketTypeFilter;-><init>(Ljava/lang/Class;)V

    new-instance v1, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;

    invoke-direct {v1, p0}, Lcom/easemob/chat/EMMultiUserChatManager$EMMUCPresenceListener;-><init>(Lcom/easemob/chat/EMMultiUserChatManager;)V

    invoke-static {}, Lcom/easemob/chat/EMSessionManager;->getInstance()Lcom/easemob/chat/EMSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/easemob/chat/EMSessionManager;->getConnection()Lorg/jivesoftware/smack/XMPPConnection;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lorg/jivesoftware/smack/XMPPConnection;->addPacketListener(Lorg/jivesoftware/smack/PacketListener;Lorg/jivesoftware/smack/filter/PacketFilter;)V

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatRoomManager;->onInit()V

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroupManager;->onInit()V

    return-void
.end method

.method parseRoom(Lcom/easemob/chat/EMMultiUserChatRoomModelBase;ZLorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/easemob/chat/EMRestResultParser;->parseRoom(Lcom/easemob/chat/EMMultiUserChatRoomModelBase;ZLorg/json/JSONObject;)V

    return-void
.end method

.method public removeChatRoomChangeListener(Lcom/easemob/EMChatRoomChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->chatRoomManager:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMChatRoomManager;->removeChangeListener(Lcom/easemob/EMChatRoomChangeListener;)V

    return-void
.end method

.method public removeGroupChangeListener(Lcom/easemob/EMGroupChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->removeGroupChangeListener(Lcom/easemob/chat/GroupChangeListener;)V

    return-void
.end method

.method public removeUserFromGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMGroupManager;->removeUserFromGroup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAutoAcceptInvitation(Z)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->setAutoAcceptInvitation(Z)V

    return-void
.end method

.method public unblockGroupMessage(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1}, Lcom/easemob/chat/EMGroupManager;->unblockGroupMessage(Ljava/lang/String;)V

    return-void
.end method

.method public unblockUser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatManager;->groupChatManager:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, p1, p2}, Lcom/easemob/chat/EMGroupManager;->unblockUser(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
