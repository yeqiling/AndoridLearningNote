.class Lcom/easemob/chat/EMConversationManager$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMConversationManager;->asyncloadAllConversations(Lcom/easemob/EMCallBack;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMConversationManager;

.field private final synthetic val$callback:Lcom/easemob/EMCallBack;

.field private final synthetic val$initMessagesToBeLoaded:I


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMConversationManager;ILcom/easemob/EMCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMConversationManager$1;->this$0:Lcom/easemob/chat/EMConversationManager;

    iput p2, p0, Lcom/easemob/chat/EMConversationManager$1;->val$initMessagesToBeLoaded:I

    iput-object p3, p0, Lcom/easemob/chat/EMConversationManager$1;->val$callback:Lcom/easemob/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager$1;->this$0:Lcom/easemob/chat/EMConversationManager;

    iget v1, p0, Lcom/easemob/chat/EMConversationManager$1;->val$initMessagesToBeLoaded:I

    invoke-virtual {v0, v1}, Lcom/easemob/chat/EMConversationManager;->loadAllConversations(I)V

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager$1;->val$callback:Lcom/easemob/EMCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMConversationManager$1;->val$callback:Lcom/easemob/EMCallBack;

    invoke-interface {v0}, Lcom/easemob/EMCallBack;->onSuccess()V

    :cond_0
    return-void
.end method
