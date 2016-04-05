.class Lcom/easemob/chat/EMChatManager$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatManager;->onReconnectionSuccessful()V
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

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$11;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$11;->this$0:Lcom/easemob/chat/EMChatManager;

    #getter for: Lcom/easemob/chat/EMChatManager;->newConnectionListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$6(Lcom/easemob/chat/EMChatManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/EMConnectionListener;

    invoke-interface {v0}, Lcom/easemob/EMConnectionListener;->onConnected()V

    goto :goto_0
.end method
