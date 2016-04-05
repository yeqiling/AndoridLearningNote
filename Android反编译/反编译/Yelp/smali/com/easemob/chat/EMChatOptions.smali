.class public Lcom/easemob/chat/EMChatOptions;
.super Ljava/lang/Object;


# instance fields
.field private acceptInvitationAlways:Z

.field private audioFileWithExt:Z

.field private autoConversationsLoaded:Z

.field private deleteMessagesAsExitGroup:Z

.field private groupsOfNotificationDisabled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isChatroomOwnerLeaveAllowed:Z

.field private noticedBySound:Z

.field private noticedByVibrate:Z

.field private notificationEnable:Z

.field private numberOfMessagesLoaded:I

.field private offlineInterval:J

.field onMessageNotifyListener:Lcom/easemob/chat/OnMessageNotifyListener;

.field onNotificationClickListener:Lcom/easemob/chat/OnNotificationClickListener;

.field private requireDeliveryAck:Z

.field private requireReadAck:Z

.field private requireServerAck:Z

.field private ringUri:Landroid/net/Uri;

.field private showNotification:Z

.field private useEncryption:Z

.field private useRoster:Z

.field private useSpeaker:Z

.field private usersOfNotificationDisabled:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/easemob/chat/EMChatOptions;->acceptInvitationAlways:Z

    iput-boolean v2, p0, Lcom/easemob/chat/EMChatOptions;->useEncryption:Z

    iput-boolean v2, p0, Lcom/easemob/chat/EMChatOptions;->useRoster:Z

    iput-boolean v1, p0, Lcom/easemob/chat/EMChatOptions;->noticedBySound:Z

    iput-boolean v1, p0, Lcom/easemob/chat/EMChatOptions;->noticedByVibrate:Z

    iput-boolean v1, p0, Lcom/easemob/chat/EMChatOptions;->notificationEnable:Z

    iput-boolean v1, p0, Lcom/easemob/chat/EMChatOptions;->useSpeaker:Z

    const/16 v0, 0x14

    iput v0, p0, Lcom/easemob/chat/EMChatOptions;->numberOfMessagesLoaded:I

    iput-boolean v1, p0, Lcom/easemob/chat/EMChatOptions;->requireReadAck:Z

    iput-boolean v2, p0, Lcom/easemob/chat/EMChatOptions;->requireDeliveryAck:Z

    iput-boolean v1, p0, Lcom/easemob/chat/EMChatOptions;->requireServerAck:Z

    iput-boolean v2, p0, Lcom/easemob/chat/EMChatOptions;->audioFileWithExt:Z

    iput-boolean v1, p0, Lcom/easemob/chat/EMChatOptions;->showNotification:Z

    iput-object v3, p0, Lcom/easemob/chat/EMChatOptions;->groupsOfNotificationDisabled:Ljava/util/List;

    iput-object v3, p0, Lcom/easemob/chat/EMChatOptions;->usersOfNotificationDisabled:Ljava/util/List;

    iput-boolean v1, p0, Lcom/easemob/chat/EMChatOptions;->autoConversationsLoaded:Z

    iput-boolean v1, p0, Lcom/easemob/chat/EMChatOptions;->deleteMessagesAsExitGroup:Z

    iput-boolean v1, p0, Lcom/easemob/chat/EMChatOptions;->isChatroomOwnerLeaveAllowed:Z

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lcom/easemob/chat/EMChatOptions;->offlineInterval:J

    return-void
.end method


# virtual methods
.method public allowChatroomOwnerLeave(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->isChatroomOwnerLeaveAllowed:Z

    return-void
.end method

.method public getAcceptInvitationAlways()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->acceptInvitationAlways:Z

    return v0
.end method

.method protected getAudioFileWithExt()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->audioFileWithExt:Z

    return v0
.end method

.method public getAutoConversationsLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->autoConversationsLoaded:Z

    return v0
.end method

.method public getGroupsOfNotificationDisabled()Ljava/util/List;
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

    iget-object v0, p0, Lcom/easemob/chat/EMChatOptions;->groupsOfNotificationDisabled:Ljava/util/List;

    return-object v0
.end method

.method public getNoticedBySound()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->noticedBySound:Z

    return v0
.end method

.method public getNoticedByVibrate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->noticedByVibrate:Z

    return v0
.end method

.method public getNotificationEnable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->notificationEnable:Z

    return v0
.end method

.method public getNotifyBySoundAndVibrate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->notificationEnable:Z

    return v0
.end method

.method public getNotifyRingUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatOptions;->ringUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getNumberOfMessagesLoaded()I
    .locals 1

    iget v0, p0, Lcom/easemob/chat/EMChatOptions;->numberOfMessagesLoaded:I

    return v0
.end method

.method public getOfflineInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/easemob/chat/EMChatOptions;->offlineInterval:J

    return-wide v0
.end method

.method public getReceiveNoNotifyGroup()Ljava/util/List;
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

    invoke-virtual {p0}, Lcom/easemob/chat/EMChatOptions;->getGroupsOfNotificationDisabled()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequireAck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->requireReadAck:Z

    return v0
.end method

.method public getRequireDeliveryAck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->requireDeliveryAck:Z

    return v0
.end method

.method public getRequireServerAck()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->requireServerAck:Z

    return v0
.end method

.method public getUseEncryption()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->useEncryption:Z

    return v0
.end method

.method public getUseRoster()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->useRoster:Z

    return v0
.end method

.method public getUseSpeaker()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->useSpeaker:Z

    return v0
.end method

.method public getUsersOfNotificationDisabled()Ljava/util/List;
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

    iget-object v0, p0, Lcom/easemob/chat/EMChatOptions;->usersOfNotificationDisabled:Ljava/util/List;

    return-object v0
.end method

.method public isChatroomOwnerLeaveAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->isChatroomOwnerLeaveAllowed:Z

    return v0
.end method

.method public isDeleteMessagesAsExitGroup()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->deleteMessagesAsExitGroup:Z

    return v0
.end method

.method public isShowNotificationInBackgroud()Z
    .locals 1

    iget-boolean v0, p0, Lcom/easemob/chat/EMChatOptions;->showNotification:Z

    return v0
.end method

.method public setAcceptInvitationAlways(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->acceptInvitationAlways:Z

    return-void
.end method

.method public setAudioFileWithExt(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->audioFileWithExt:Z

    return-void
.end method

.method public setAutoConversatonsLoaded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->autoConversationsLoaded:Z

    return-void
.end method

.method public setDeleteMessagesAsExitGroup(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->deleteMessagesAsExitGroup:Z

    return-void
.end method

.method public setGroupsOfNotificationDisabled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/easemob/chat/EMChatOptions;->groupsOfNotificationDisabled:Ljava/util/List;

    return-void
.end method

.method public setNoticeBySound(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->noticedBySound:Z

    return-void
.end method

.method public setNoticedByVibrate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->noticedByVibrate:Z

    return-void
.end method

.method public setNotificationEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->notificationEnable:Z

    return-void
.end method

.method public setNotifyBySoundAndVibrate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->notificationEnable:Z

    return-void
.end method

.method public setNotifyRingUri(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatOptions;->ringUri:Landroid/net/Uri;

    return-void
.end method

.method public setNotifyText(Lcom/easemob/chat/OnMessageNotifyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatOptions;->onMessageNotifyListener:Lcom/easemob/chat/OnMessageNotifyListener;

    return-void
.end method

.method public setNumberOfMessagesLoaded(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/easemob/chat/EMChatOptions;->numberOfMessagesLoaded:I

    :cond_0
    return-void
.end method

.method public setOfflineInterval(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-wide/16 p1, 0xbb8

    :cond_0
    iput-wide p1, p0, Lcom/easemob/chat/EMChatOptions;->offlineInterval:J

    return-void
.end method

.method public setOnNotificationClickListener(Lcom/easemob/chat/OnNotificationClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatOptions;->onNotificationClickListener:Lcom/easemob/chat/OnNotificationClickListener;

    return-void
.end method

.method public setReceiveNotNoifyGroup(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/easemob/chat/EMChatOptions;->setGroupsOfNotificationDisabled(Ljava/util/List;)V

    return-void
.end method

.method public setRequireAck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->requireReadAck:Z

    return-void
.end method

.method public setRequireDeliveryAck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->requireDeliveryAck:Z

    return-void
.end method

.method public setRequireServerAck(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->requireServerAck:Z

    return-void
.end method

.method public setShowNotificationInBackgroud(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->showNotification:Z

    return-void
.end method

.method public setUseEncryption(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->useEncryption:Z

    return-void
.end method

.method public setUseRoster(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->useRoster:Z

    return-void
.end method

.method public setUseSpeaker(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/easemob/chat/EMChatOptions;->useSpeaker:Z

    return-void
.end method

.method public setUsersOfNotificationDisabled(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/easemob/chat/EMChatOptions;->usersOfNotificationDisabled:Ljava/util/List;

    return-void
.end method
