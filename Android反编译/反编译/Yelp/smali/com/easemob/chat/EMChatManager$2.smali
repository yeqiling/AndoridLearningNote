.class Lcom/easemob/chat/EMChatManager$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatManager;->logout(Lcom/easemob/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatManager;

.field private final synthetic val$callback:Lcom/easemob/EMCallBack;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/EMCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$2;->this$0:Lcom/easemob/chat/EMChatManager;

    iput-object p2, p0, Lcom/easemob/chat/EMChatManager$2;->val$callback:Lcom/easemob/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$2;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$2;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$2;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->logout()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$2;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$2;->val$callback:Lcom/easemob/EMCallBack;

    invoke-interface {v0}, Lcom/easemob/EMCallBack;->onSuccess()V

    :cond_1
    return-void
.end method
