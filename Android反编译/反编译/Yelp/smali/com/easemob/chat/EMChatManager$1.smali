.class Lcom/easemob/chat/EMChatManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/EMCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatManager;->login(Ljava/lang/String;Ljava/lang/String;Lcom/easemob/EMCallBack;)V
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

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$1;->this$0:Lcom/easemob/chat/EMChatManager;

    iput-object p2, p0, Lcom/easemob/chat/EMChatManager$1;->val$callback:Lcom/easemob/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->j()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$1;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->doStopService()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$1;->val$callback:Lcom/easemob/EMCallBack;

    invoke-interface {v0, p1, p2}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$1;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->doStartService()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$1;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatManager;->saveAppname()V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$1;->val$callback:Lcom/easemob/EMCallBack;

    invoke-interface {v0}, Lcom/easemob/EMCallBack;->onSuccess()V

    return-void
.end method
