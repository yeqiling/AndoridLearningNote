.class public Lcom/easemob/chat/EMGroup;
.super Lcom/easemob/chat/EMMultiUserChatRoomModelBase;


# instance fields
.field protected allowInvites:Z

.field protected isPublic:Z

.field protected membersOnly:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/easemob/chat/EMGroup;->username:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/easemob/chat/EMGroup;->isPublic:Z

    iput-boolean v0, p0, Lcom/easemob/chat/EMGroup;->allowInvites:Z

    iput-boolean v0, p0, Lcom/easemob/chat/EMGroup;->membersOnly:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addMember(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->addMember(Ljava/lang/String;)V

    return-void
.end method

.method copyGroup(Lcom/easemob/chat/EMGroup;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMGroup;->copyModel(Lcom/easemob/chat/EMMultiUserChatRoomModelBase;)V

    iget-boolean v0, p1, Lcom/easemob/chat/EMGroup;->isPublic:Z

    iput-boolean v0, p0, Lcom/easemob/chat/EMGroup;->isPublic:Z

    iget-boolean v0, p1, Lcom/easemob/chat/EMGroup;->allowInvites:Z

    iput-boolean v0, p0, Lcom/easemob/chat/EMGroup;->allowInvites:Z

    iget-boolean v0, p1, Lcom/easemob/chat/EMGroup;->membersOnly:Z

    iput-boolean v0, p0, Lcom/easemob/chat/EMGroup;->membersOnly:Z

    return-void
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

.method getGroupAvator()Landroid/graphics/Bitmap;
    .locals 2

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "group avator not supported yet"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getGroupId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/easemob/chat/EMGroup;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/easemob/chat/EMGroup;->getName()Ljava/lang/String;

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

.method public isAllowInvites()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMGroup;->allowInvites:Z

    return v0
.end method

.method public isMembersOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMGroup;->membersOnly:Z

    return v0
.end method

.method public bridge synthetic isMsgBlocked()Z
    .locals 1

    invoke-super {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->isMsgBlocked()Z

    move-result v0

    return v0
.end method

.method public isPublic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMGroup;->isPublic:Z

    return v0
.end method

.method public bridge synthetic removeMember(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->removeMember(Ljava/lang/String;)V

    return-void
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

.method public setGroupId(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMGroup;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public setGroupName(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMGroup;->setName(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic setId(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->setId(Ljava/lang/String;)V

    return-void
.end method

.method public setIsPublic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMGroup;->isPublic:Z

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

.method public setPublic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMGroup;->isPublic:Z

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
