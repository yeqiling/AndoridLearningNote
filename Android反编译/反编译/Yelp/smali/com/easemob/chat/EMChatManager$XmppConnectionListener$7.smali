.class Lcom/easemob/chat/EMChatManager$XmppConnectionListener$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->onConnectionSuccessful()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easemob/chat/EMChatManager$XmppConnectionListener;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMChatManager$XmppConnectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$7;->this$1:Lcom/easemob/chat/EMChatManager$XmppConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$7;->this$1:Lcom/easemob/chat/EMChatManager$XmppConnectionListener;

    #getter for: Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->access$1(Lcom/easemob/chat/EMChatManager$XmppConnectionListener;)Lcom/easemob/chat/EMChatManager;

    move-result-object v0

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

    invoke-interface {v0}, Lcom/easemob/chat/ConnectionListener;->onConnected()V

    goto :goto_0
.end method
