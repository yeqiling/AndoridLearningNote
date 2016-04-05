.class Lcom/easemob/chat/EMChatManager$3;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatManager;->logout(ZLcom/easemob/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatManager;

.field private final synthetic val$callback:Lcom/easemob/EMCallBack;

.field private final synthetic val$isUnbindDeviceToken:Z


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/EMCallBack;Z)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$3;->this$0:Lcom/easemob/chat/EMChatManager;

    iput-object p2, p0, Lcom/easemob/chat/EMChatManager$3;->val$callback:Lcom/easemob/EMCallBack;

    iput-boolean p3, p0, Lcom/easemob/chat/EMChatManager$3;->val$isUnbindDeviceToken:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$3;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$3;->this$0:Lcom/easemob/chat/EMChatManager;

    iget-boolean v1, p0, Lcom/easemob/chat/EMChatManager$3;->val$isUnbindDeviceToken:Z

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatManager;->logout(Z)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$3;->val$callback:Lcom/easemob/EMCallBack;

    invoke-interface {v0}, Lcom/easemob/EMCallBack;->onSuccess()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$3;->val$callback:Lcom/easemob/EMCallBack;

    const/16 v1, -0xbb8

    const-string v2, "unbind devicetoken failed"

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method
