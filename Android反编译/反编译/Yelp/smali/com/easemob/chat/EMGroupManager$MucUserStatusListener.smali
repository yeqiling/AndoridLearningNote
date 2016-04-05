.class Lcom/easemob/chat/EMGroupManager$MucUserStatusListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smackx/muc/UserStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MucUserStatusListener"
.end annotation


# instance fields
.field private roomJid:Ljava/lang/String;

.field final synthetic this$0:Lcom/easemob/chat/EMGroupManager;


# direct methods
.method public constructor <init>(Lcom/easemob/chat/EMGroupManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMGroupManager$MucUserStatusListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/easemob/chat/EMGroupManager$MucUserStatusListener;->roomJid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public adminGranted()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "admin granted"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public adminRevoked()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "admin revoked"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public banned(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "banned actor:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public kicked(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/easemob/chat/EMContactManager;->getUserNameFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "kicked actor:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$MucUserStatusListener;->roomJid:Ljava/lang/String;

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current user has been revoked membership. delete local group:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$MucUserStatusListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMGroupManager;->deleteLocalGroup(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$MucUserStatusListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    iget-object v0, v0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_1
    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/GroupChangeListener;

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Lcom/easemob/chat/GroupChangeListener;->onUserRemoved(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public membershipGranted()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "membership granted"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public membershipRevoked()V
    .locals 4

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "membership revoked"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$MucUserStatusListener;->roomJid:Ljava/lang/String;

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getGroupIdFromEid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "current user has been revoked membership. delete local group:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$MucUserStatusListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMGroupManager;->deleteLocalGroup(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$MucUserStatusListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    iget-object v0, v0, Lcom/easemob/chat/EMGroupManager;->groupChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/GroupChangeListener;

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Lcom/easemob/chat/GroupChangeListener;->onUserRemoved(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public moderatorGranted()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moderator granted"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public moderatorRevoked()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "moderator revoked"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ownershipGranted()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ownership granted"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public ownershipRevoked()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ownership revoked"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public voiceGranted()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "voice granted"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public voiceRevoked()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "voice revoked"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
