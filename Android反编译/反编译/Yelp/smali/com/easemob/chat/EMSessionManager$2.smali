.class Lcom/easemob/chat/EMSessionManager$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMSessionManager;->login(Ljava/lang/String;Ljava/lang/String;ZLcom/easemob/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMSessionManager;

.field private final synthetic val$callback:Lcom/easemob/EMCallBack;

.field private final synthetic val$fromLoginLayout:Z

.field private final synthetic val$password:Ljava/lang/String;

.field private final synthetic val$username:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMSessionManager;Ljava/lang/String;Ljava/lang/String;ZLcom/easemob/EMCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMSessionManager$2;->this$0:Lcom/easemob/chat/EMSessionManager;

    iput-object p2, p0, Lcom/easemob/chat/EMSessionManager$2;->val$username:Ljava/lang/String;

    iput-object p3, p0, Lcom/easemob/chat/EMSessionManager$2;->val$password:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/easemob/chat/EMSessionManager$2;->val$fromLoginLayout:Z

    iput-object p5, p0, Lcom/easemob/chat/EMSessionManager$2;->val$callback:Lcom/easemob/EMCallBack;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/easemob/chat/EMSessionManager$2;->this$0:Lcom/easemob/chat/EMSessionManager;

    iget-object v1, p0, Lcom/easemob/chat/EMSessionManager$2;->val$username:Ljava/lang/String;

    iget-object v2, p0, Lcom/easemob/chat/EMSessionManager$2;->val$password:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/easemob/chat/EMSessionManager$2;->val$fromLoginLayout:Z

    iget-object v4, p0, Lcom/easemob/chat/EMSessionManager$2;->val$callback:Lcom/easemob/EMCallBack;

    #calls: Lcom/easemob/chat/EMSessionManager;->loginSync(Ljava/lang/String;Ljava/lang/String;ZLcom/easemob/EMCallBack;)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/easemob/chat/EMSessionManager;->access$2(Lcom/easemob/chat/EMSessionManager;Ljava/lang/String;Ljava/lang/String;ZLcom/easemob/EMCallBack;)V

    return-void
.end method
