.class Lcom/easemob/chat/EMGroupManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMGroupManager;->asyncGetGroupsFromServer(Lcom/easemob/EMValueCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMGroupManager;

.field private final synthetic val$callback:Lcom/easemob/EMValueCallBack;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/EMValueCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMGroupManager$3;->this$0:Lcom/easemob/chat/EMGroupManager;

    iput-object p2, p0, Lcom/easemob/chat/EMGroupManager$3;->val$callback:Lcom/easemob/EMValueCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$3;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMGroupManager;->getGroupsFromServer()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/chat/EMGroupManager$3;->val$callback:Lcom/easemob/EMValueCallBack;

    invoke-interface {v1, v0}, Lcom/easemob/EMValueCallBack;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/easemob/exceptions/EaseMobException;->printStackTrace()V

    invoke-static {v1}, Lcom/easemob/exceptions/EMExceptionUtils;->fromExceptionToErrorCode(Ljava/lang/Exception;)I

    move-result v0

    const/16 v2, -0x3e7

    if-ne v0, v2, :cond_0

    const/16 v0, -0x3e6

    :cond_0
    iget-object v2, p0, Lcom/easemob/chat/EMGroupManager$3;->val$callback:Lcom/easemob/EMValueCallBack;

    invoke-virtual {v1}, Lcom/easemob/exceptions/EaseMobException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcom/easemob/EMValueCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method
