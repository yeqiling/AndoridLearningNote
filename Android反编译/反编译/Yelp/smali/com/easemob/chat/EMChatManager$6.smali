.class Lcom/easemob/chat/EMChatManager$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatManager;->addConnectionListener(Lcom/easemob/chat/ConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatManager;

.field private final synthetic val$listener:Lcom/easemob/chat/ConnectionListener;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/chat/ConnectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$6;->this$0:Lcom/easemob/chat/EMChatManager;

    iput-object p2, p0, Lcom/easemob/chat/EMChatManager$6;->val$listener:Lcom/easemob/chat/ConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$6;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->connectionListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$4(Lcom/easemob/chat/EMChatManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/chat/ConnectionListener;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/easemob/chat/EMChatManager$6;->val$listener:Lcom/easemob/chat/ConnectionListener;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "connection is disconnected"

    invoke-interface {v0, v2}, Lcom/easemob/chat/ConnectionListener;->onDisConnected(Ljava/lang/String;)V

    goto :goto_0
.end method
