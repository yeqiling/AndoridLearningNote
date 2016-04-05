.class Lcom/easemob/chat/EMMultiUserChatRoomModelBase;
.super Lcom/easemob/chat/EMContact;


# instance fields
.field protected affiliationsCount:I

.field protected description:Ljava/lang/String;

.field protected isMsgBlocked:Z

.field protected lastModifiedTime:J

.field protected maxUsers:I

.field protected members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected owner:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/easemob/chat/EMContact;-><init>()V

    iput v1, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->maxUsers:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->affiliationsCount:I

    iput-boolean v1, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->isMsgBlocked:Z

    invoke-direct {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/easemob/chat/EMContact;-><init>()V

    iput v1, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->maxUsers:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->affiliationsCount:I

    iput-boolean v1, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->isMsgBlocked:Z

    iput-object p1, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->username:Ljava/lang/String;

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->eid:Ljava/lang/String;

    invoke-direct {p0}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->lastModifiedTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->members:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->description:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->owner:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized addMember(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected copyModel(Lcom/easemob/chat/EMMultiUserChatRoomModelBase;)V
    .locals 2

    iget-object v0, p1, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->eid:Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->eid:Ljava/lang/String;

    iget-object v0, p1, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->description:Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->description:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->lastModifiedTime:J

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->members:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->getMembers()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p1, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->nick:Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->nick:Ljava/lang/String;

    iget-object v0, p1, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->owner:Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->owner:Ljava/lang/String;

    iget-object v0, p1, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->username:Ljava/lang/String;

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->username:Ljava/lang/String;

    iget v0, p1, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->maxUsers:I

    iput v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->maxUsers:I

    iget v0, p1, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->affiliationsCount:I

    iput v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->affiliationsCount:I

    iget-boolean v0, p1, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->isMsgBlocked:Z

    iput-boolean v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->isMsgBlocked:Z

    return-void
.end method

.method public getAffiliationsCount()I
    .locals 1

    iget v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->affiliationsCount:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->description:Ljava/lang/String;

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

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->username:Ljava/lang/String;

    return-object v0
.end method

.method public getLastModifiedTime()J
    .locals 2

    iget-wide v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->lastModifiedTime:J

    return-wide v0
.end method

.method public getMaxUsers()I
    .locals 1

    iget v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->maxUsers:I

    return v0
.end method

.method public declared-synchronized getMembers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->members:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getMsgBlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->isMsgBlocked:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->nick:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->owner:Ljava/lang/String;

    return-object v0
.end method

.method public isMsgBlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->isMsgBlocked:Z

    return v0
.end method

.method public declared-synchronized removeMember(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAffiliationsCount(I)V
    .locals 0

    iput p1, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->affiliationsCount:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->username:Ljava/lang/String;

    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->eid:Ljava/lang/String;

    return-void
.end method

.method public setLastModifiedTime(J)V
    .locals 1

    iput-wide p1, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->lastModifiedTime:J

    return-void
.end method

.method public setMaxUsers(I)V
    .locals 0

    iput p1, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->maxUsers:I

    return-void
.end method

.method public declared-synchronized setMembers(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->members:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMsgBlocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->isMsgBlocked:Z

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->nick:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->owner:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMMultiUserChatRoomModelBase;->nick:Ljava/lang/String;

    return-object v0
.end method
