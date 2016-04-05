.class Lcom/easemob/chat/EMChatRoomManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/EMConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatRoomManager;->onInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatRoomManager;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMChatRoomManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatRoomManager$3;->this$0:Lcom/easemob/chat/EMChatRoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 5

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager$3;->this$0:Lcom/easemob/chat/EMChatRoomManager;

    #getter for: Lcom/easemob/chat/EMChatRoomManager;->deadRoomLoaded:Z
    invoke-static {v0}, Lcom/easemob/chat/EMChatRoomManager;->access$1(Lcom/easemob/chat/EMChatRoomManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager$3;->this$0:Lcom/easemob/chat/EMChatRoomManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatRoomManager;->getAllChatRooms()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager$3;->this$0:Lcom/easemob/chat/EMChatRoomManager;

    #getter for: Lcom/easemob/chat/EMChatRoomManager;->cleaner:Lcom/easemob/chat/core/d;
    invoke-static {v0}, Lcom/easemob/chat/EMChatRoomManager;->access$2(Lcom/easemob/chat/EMChatRoomManager;)Lcom/easemob/chat/core/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/d;->a(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lcom/easemob/chat/EMChatRoomManager$3;->this$0:Lcom/easemob/chat/EMChatRoomManager;

    const/4 v1, 0x1

    #setter for: Lcom/easemob/chat/EMChatRoomManager;->deadRoomLoaded:Z
    invoke-static {v0, v1}, Lcom/easemob/chat/EMChatRoomManager;->access$3(Lcom/easemob/chat/EMChatRoomManager;Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/EMChatRoom;

    new-instance v3, Lcom/easemob/chat/EMLeaveRoom;

    invoke-virtual {v0}, Lcom/easemob/chat/EMChatRoom;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/easemob/chat/EMChatRoomManager$3;->this$0:Lcom/easemob/chat/EMChatRoomManager;

    invoke-direct {v3, v0, v4}, Lcom/easemob/chat/EMLeaveRoom;-><init>(Ljava/lang/String;Lcom/easemob/chat/EMChatRoomManager;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onDisconnected(I)V
    .locals 0

    return-void
.end method
