.class public Lcom/easemob/chat/EMChatRoom;
.super Lcom/easemob/chat/EMMultiUserChatRoomModelBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/easemob/chat/EMChatRoom;->nick:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized addMember(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatRoom;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoom;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/easemob/chat/EMChatRoom;->affiliationsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/easemob/chat/EMChatRoom;->affiliationsCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic getAffiliationsCount()I
    .locals 1

    invoke-super {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->getAffiliationsCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDescription()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->getDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getId()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getLastModifiedTime()J
    .locals 2

    invoke-super {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->getLastModifiedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getMaxUsers()I
    .locals 1

    invoke-super {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->getMaxUsers()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getMembers()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->getMembers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMsgBlocked()Z
    .locals 1

    invoke-super {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->getMsgBlocked()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getOwner()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->getOwner()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isMsgBlocked()Z
    .locals 1

    invoke-super {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->isMsgBlocked()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized removeMember(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatRoom;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoom;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/easemob/chat/EMChatRoom;->affiliationsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/easemob/chat/EMChatRoom;->affiliationsCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic setAffiliationsCount(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->setAffiliationsCount(I)V

    return-void
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setId(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setLastModifiedTime(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->setLastModifiedTime(J)V

    return-void
.end method

.method public bridge synthetic setMaxUsers(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->setMaxUsers(I)V

    return-void
.end method

.method public bridge synthetic setMembers(Ljava/util/List;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->setMembers(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic setMsgBlocked(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->setMsgBlocked(Z)V

    return-void
.end method

.method public bridge synthetic setName(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setOwner(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->setOwner(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
