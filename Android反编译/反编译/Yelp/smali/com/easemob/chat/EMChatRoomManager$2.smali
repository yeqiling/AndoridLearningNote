.class Lcom/easemob/chat/EMChatRoomManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatRoomManager;->exitChatRoom(Ljava/lang/String;Lcom/easemob/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatRoomManager;

.field private final synthetic val$callback:Lcom/easemob/EMCallBack;

.field private final synthetic val$roomId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMChatRoomManager;Ljava/lang/String;Lcom/easemob/EMCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatRoomManager$2;->this$0:Lcom/easemob/chat/EMChatRoomManager;

    iput-object p2, p0, Lcom/easemob/chat/EMChatRoomManager$2;->val$roomId:Ljava/lang/String;

    iput-object p3, p0, Lcom/easemob/chat/EMChatRoomManager$2;->val$callback:Lcom/easemob/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager$2;->this$0:Lcom/easemob/chat/EMChatRoomManager;

    iget-object v1, p0, Lcom/easemob/chat/EMChatRoomManager$2;->val$roomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMChatRoomManager;->exitChatRoom(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager$2;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager$2;->val$callback:Lcom/easemob/EMCallBack;

    invoke-interface {v0}, Lcom/easemob/EMCallBack;->onSuccess()V

    :cond_0
    return-void
.end method
