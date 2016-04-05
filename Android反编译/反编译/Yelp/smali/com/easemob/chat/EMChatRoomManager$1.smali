.class Lcom/easemob/chat/EMChatRoomManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatRoomManager;->joinChatRoom(Ljava/lang/String;Lcom/easemob/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatRoomManager;

.field private final synthetic val$callback:Lcom/easemob/EMValueCallBack;

.field private final synthetic val$roomId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMChatRoomManager;Ljava/lang/String;Lcom/easemob/EMValueCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatRoomManager$1;->this$0:Lcom/easemob/chat/EMChatRoomManager;

    iput-object p2, p0, Lcom/easemob/chat/EMChatRoomManager$1;->val$roomId:Ljava/lang/String;

    iput-object p3, p0, Lcom/easemob/chat/EMChatRoomManager$1;->val$callback:Lcom/easemob/EMValueCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager$1;->this$0:Lcom/easemob/chat/EMChatRoomManager;

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager$1;->val$roomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatRoomManager;->joinChatRoom(Ljava/lang/String;)Lcom/easemob/chat/EMChatRoom;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager$1;->val$callback:Lcom/easemob/EMValueCallBack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager$1;->val$callback:Lcom/easemob/EMValueCallBack;

    invoke-interface {v1, v0}, Lcom/easemob/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager$1;->val$callback:Lcom/easemob/EMValueCallBack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager$1;->val$callback:Lcom/easemob/EMValueCallBack;

    invoke-virtual {v0}, Lcom/easemob/exceptions/EaseMobException;->getErrorCode()I

    move-result v2

    invoke-virtual {v0}, Lcom/easemob/exceptions/EaseMobException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/easemob/EMValueCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method
