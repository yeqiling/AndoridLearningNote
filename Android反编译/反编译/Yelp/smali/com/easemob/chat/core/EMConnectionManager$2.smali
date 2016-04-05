.class Lcom/easemob/chat/core/EMConnectionManager$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/core/EMConnectionManager;->reconnectASync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/core/EMConnectionManager;


# direct methods
.method constructor <init>(Lcom/easemob/chat/core/EMConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/core/EMConnectionManager$2;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/core/EMConnectionManager$2;->this$0:Lcom/easemob/chat/core/EMConnectionManager;

    invoke-virtual {v0}, Lcom/easemob/chat/core/EMConnectionManager;->reconnectSync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
