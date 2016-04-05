.class Lcom/easemob/chat/EMGroupManager$SearchPacketListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jivesoftware/smack/PacketListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/easemob/chat/EMGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchPacketListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMGroupManager;


# direct methods
.method private constructor <init>(Lcom/easemob/chat/EMGroupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMGroupManager$SearchPacketListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/easemob/chat/EMGroupManager;Lcom/easemob/chat/EMGroupManager$SearchPacketListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/easemob/chat/EMGroupManager$SearchPacketListener;-><init>(Lcom/easemob/chat/EMGroupManager;)V

    return-void
.end method


# virtual methods
.method public processPacket(Lorg/jivesoftware/smack/packet/Packet;)V
    .locals 3

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$SearchPacketListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    #getter for: Lcom/easemob/chat/EMGroupManager;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/easemob/chat/EMGroupManager;->access$1(Lcom/easemob/chat/EMGroupManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$SearchPacketListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    const/4 v2, 0x1

    #setter for: Lcom/easemob/chat/EMGroupManager;->receivedQuery:Z
    invoke-static {v0, v2}, Lcom/easemob/chat/EMGroupManager;->access$2(Lcom/easemob/chat/EMGroupManager;Z)V

    iget-object v0, p0, Lcom/easemob/chat/EMGroupManager$SearchPacketListener;->this$0:Lcom/easemob/chat/EMGroupManager;

    #getter for: Lcom/easemob/chat/EMGroupManager;->mutex:Ljava/lang/Object;
    invoke-static {v0}, Lcom/easemob/chat/EMGroupManager;->access$1(Lcom/easemob/chat/EMGroupManager;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
