.class Lcom/easemob/chat/core/EMConnectionManager$1$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/core/EMConnectionManager$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easemob/chat/core/EMConnectionManager$1;


# direct methods
.method constructor <init>(Lcom/easemob/chat/core/EMConnectionManager$1;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/EMConnectionManager$1$1;->this$1:Lcom/easemob/chat/core/EMConnectionManager$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$1$1;->this$1:Lcom/easemob/chat/core/EMConnectionManager$1;

    #getter for: Lcom/easemob/chat/core/EMConnectionManager$1;->this$0:Lcom/easemob/chat/core/EMConnectionManager;
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager$1;->access$0(Lcom/easemob/chat/core/EMConnectionManager$1;)Lcom/easemob/chat/core/EMConnectionManager;

    move-result-object v0

    #calls: Lcom/easemob/chat/core/EMConnectionManager;->reConnect()V
    invoke-static {v0}, Lcom/easemob/chat/core/EMConnectionManager;->access$2(Lcom/easemob/chat/core/EMConnectionManager;)V

    return-void
.end method
