.class Lcom/easemob/chat/EMChatManager$XmppConnectionListener$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->reconnectionFailed(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easemob/chat/EMChatManager$XmppConnectionListener;

.field private final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMChatManager$XmppConnectionListener;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$6;->this$1:Lcom/easemob/chat/EMChatManager$XmppConnectionListener;

    iput-object p2, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$6;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/16 v1, -0x3f5

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$6;->val$exception:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$6;->val$exception:Ljava/lang/Exception;

    invoke-static {v0}, Lcom/easemob/exceptions/EMExceptionUtils;->fromExceptionToErrorCode(Ljava/lang/Exception;)I

    move-result v0

    const/16 v2, -0x3e7

    if-eq v0, v2, :cond_0

    move v1, v0

    :cond_0
    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$XmppConnectionListener$6;->this$1:Lcom/easemob/chat/EMChatManager$XmppConnectionListener;

    #getter for: Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->this$0:Lcom/easemob/chat/EMChatManager;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager$XmppConnectionListener;->access$1(Lcom/easemob/chat/EMChatManager$XmppConnectionListener;)Lcom/easemob/chat/EMChatManager;

    move-result-object v0

    #getter for: Lcom/easemob/chat/EMChatManager;->newConnectionListeners:Ljava/util/List;
    invoke-static {v0}, Lcom/easemob/chat/EMChatManager;->access$6(Lcom/easemob/chat/EMChatManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/easemob/EMConnectionListener;

    :try_start_0
    invoke-interface {v0, v1}, Lcom/easemob/EMConnectionListener;->onDisconnected(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
