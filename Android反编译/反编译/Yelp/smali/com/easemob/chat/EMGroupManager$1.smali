.class Lcom/easemob/chat/EMGroupManager$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMGroupManager;->loadAllGroups(Lcom/easemob/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMGroupManager;

.field private final synthetic val$callback:Lcom/easemob/EMCallBack;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/EMCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMGroupManager$1;->this$0:Lcom/easemob/chat/EMGroupManager;

    iput-object p2, p0, Lcom/easemob/chat/EMGroupManager$1;->val$callback:Lcom/easemob/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$1;->this$0:Lcom/easemob/chat/EMGroupManager;

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager$1;->val$callback:Lcom/easemob/EMCallBack;

    #calls: Lcom/easemob/chat/EMGroupManager;->syncLoadGroups(Lcom/easemob/EMCallBack;)V
    invoke-static {v0, v1}, Lcom/easemob/chat/EMGroupManager;->access$3(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/EMCallBack;)V

    return-void
.end method
