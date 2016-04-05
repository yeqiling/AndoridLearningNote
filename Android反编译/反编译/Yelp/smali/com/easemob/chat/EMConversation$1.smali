.class Lcom/easemob/chat/EMConversation$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMConversation;->saveUnreadMsgCount(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMConversation;

.field private final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMConversation;I)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMConversation$1;->this$0:Lcom/easemob/chat/EMConversation;

    iput p2, p0, Lcom/easemob/chat/EMConversation$1;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/easemob/chat/core/i;->a()Lcom/easemob/chat/core/i;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMConversation$1;->this$0:Lcom/easemob/chat/EMConversation;

    #getter for: Lcom/easemob/chat/EMConversation;->username:Ljava/lang/String;
    invoke-static {v1}, Lcom/easemob/chat/EMConversation;->access$0(Lcom/easemob/chat/EMConversation;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/easemob/chat/EMConversation$1;->val$count:I

    invoke-virtual {v0, v1, v2}, Lcom/easemob/chat/core/i;->a(Ljava/lang/String;I)V

    return-void
.end method
