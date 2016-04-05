.class Lcom/easemob/chat/EMChatManager$12;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatManager;->loadDB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatManager;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMChatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$12;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "EMChatManager"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/EMMultiUserChatManager;->getInstance()Lcom/easemob/chat/EMMultiUserChatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMMultiUserChatManager;->loadLocalData()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$12;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->loadAllConversations()V

    return-void
.end method
