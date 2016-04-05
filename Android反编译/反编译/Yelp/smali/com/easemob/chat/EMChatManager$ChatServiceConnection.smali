.class Lcom/easemob/chat/EMChatManager$ChatServiceConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMChatManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChatServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMChatManager;


# direct methods
.method private constructor <init>(Lcom/easemob/chat/EMChatManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMChatManager$ChatServiceConnection;->this$0:Lcom/easemob/chat/EMChatManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/easemob/chat/EMChatManager;Lcom/easemob/chat/EMChatManager$ChatServiceConnection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMChatManager$ChatServiceConnection;-><init>(Lcom/easemob/chat/EMChatManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    check-cast p2, Lcom/easemob/chat/EMChatService$LocalBinder;

    invoke-virtual {p2}, Lcom/easemob/chat/EMChatService$LocalBinder;->getService()Lcom/easemob/chat/EMChatService;

    const-string v0, "EMChatManager"

    const-string v1, "service connected"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "EMChatManager"

    const-string v1, "EaseMobService is disconnected"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "EMChatManager"

    const-string v1, "service disconnected"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
