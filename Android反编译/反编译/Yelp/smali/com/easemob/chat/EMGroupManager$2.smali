.class Lcom/easemob/chat/EMGroupManager$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMGroupManager;->joinGroupsAfterLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMGroupManager;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMGroupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMGroupManager$2;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$2;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroupManager;->getAllGroups()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "join groups. size:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMGroupManager;->access$0()Ljava/lang/String;

    move-result-object v0

    const-string v1, "join groups thread finished."

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMGroup;

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroup;->getGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/chat/EMContactManager;->getEidFromGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/easemob/chat/EMGroupManager$2;->this$0:Lcom/easemob/chat/EMGroupManager;

    #getter for: Lcom/easemob/chat/EMGroupManager;->chatProcessor:Lcom/easemob/chat/EMMultiUserChatProcessor;
    invoke-static {v2}, Lcom/easemob/chat/EMGroupManager;->access$4(Lcom/easemob/chat/EMGroupManager;)Lcom/easemob/chat/EMMultiUserChatProcessor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/easemob/chat/EMMultiUserChatProcessor;->getMUC(Ljava/lang/String;)Lorg/jivesoftware/smackx/muc/MultiUserChat;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
