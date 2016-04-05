.class Lcom/easemob/chat/EMMessageUtils$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMMessageUtils;->asyncCallback(Lcom/easemob/EMCallBack;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/easemob/EMCallBack;

.field private final synthetic val$error:I

.field private final synthetic val$errorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easemob/EMCallBack;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMMessageUtils$1;->val$callback:Lcom/easemob/EMCallBack;

    iput p2, p0, Lcom/easemob/chat/EMMessageUtils$1;->val$error:I

    iput-object p3, p0, Lcom/easemob/chat/EMMessageUtils$1;->val$errorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/EMMessageUtils$1;->val$callback:Lcom/easemob/EMCallBack;

    iget v1, p0, Lcom/easemob/chat/EMMessageUtils$1;->val$error:I

    iget-object v2, p0, Lcom/easemob/chat/EMMessageUtils$1;->val$errorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    return-void
.end method
