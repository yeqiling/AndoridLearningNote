.class Lcom/easemob/chat/EMSessionManager$3;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMSessionManager;->logout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMSessionManager;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMSessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMSessionManager$3;->this$0:Lcom/easemob/chat/EMSessionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "Session"

    const-string v1, "Session logout"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/chat/EMSessionManager$3;->this$0:Lcom/easemob/chat/EMSessionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/EMSessionManager;->syncLogout()V

    return-void
.end method
