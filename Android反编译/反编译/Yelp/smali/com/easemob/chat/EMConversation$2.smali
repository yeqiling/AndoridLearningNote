.class Lcom/easemob/chat/EMConversation$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMConversation;->deleteUnreadMsgCountRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMConversation;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMConversation;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMConversation$2;->this$0:Lcom/easemob/chat/EMConversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMConversation$2;->this$0:Lcom/easemob/chat/EMConversation;

    #getter for: Lcom/easemob/chat/EMConversation;->username:Ljava/lang/String;
    invoke-static {v1}, Lcom/easemob/chat/EMConversation;->access$0(Lcom/easemob/chat/EMConversation;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/easemob/chat/core/i;->k(Ljava/lang/String;)V

    return-void
.end method
