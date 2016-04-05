.class Lcom/easemob/chat/EMChatManager$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/chat/EMCloudOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/EMCallBack;)V
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

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$13;->this$0:Lcom/easemob/chat/EMChatManager;

    iput-object p2, p0, Lcom/easemob/chat/EMChatManager$13;->val$callback:Lcom/easemob/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$13;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$13;->val$callback:Lcom/easemob/EMCallBack;

    const/16 v1, -0x3e6

    invoke-interface {v0, v1, p1}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onProgress(I)V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$13;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$13;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/easemob/EMCallBack;->onProgress(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$13;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$13;->val$callback:Lcom/easemob/EMCallBack;

    invoke-interface {v0}, Lcom/easemob/EMCallBack;->onSuccess()V

    :cond_0
    return-void
.end method
