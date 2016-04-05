.class Lcom/easemob/chat/EMChatManager$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMChatManager;->addConnectionListener(Lcom/easemob/EMConnectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatManager;

.field private final synthetic val$listener:Lcom/easemob/EMConnectionListener;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/EMConnectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$7;->this$0:Lcom/easemob/chat/EMChatManager;

    iput-object p2, p0, Lcom/easemob/chat/EMChatManager$7;->val$listener:Lcom/easemob/EMConnectionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/easemob/chat/EMChatManager$7;->val$listener:Lcom/easemob/EMConnectionListener;

    invoke-interface {v0}, Lcom/easemob/EMConnectionListener;->onConnected()V

    return-void
.end method
