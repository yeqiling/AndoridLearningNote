.class Lcom/easemob/chat/EMNotifier$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/chat/EMNotifier;->publishEvent(Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/chat/EMNotifier;

.field private final synthetic val$event:Lcom/easemob/EMNotifierEvent$Event;

.field private final synthetic val$obj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/easemob/chat/EMNotifier;Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/chat/EMNotifier$1;->this$0:Lcom/easemob/chat/EMNotifier;

    iput-object p2, p0, Lcom/easemob/chat/EMNotifier$1;->val$event:Lcom/easemob/EMNotifierEvent$Event;

    iput-object p3, p0, Lcom/easemob/chat/EMNotifier$1;->val$obj:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier$1;->this$0:Lcom/easemob/chat/EMNotifier;

    #getter for: Lcom/easemob/chat/EMNotifier;->filteredEventListeners:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/easemob/chat/EMNotifier;->access$0(Lcom/easemob/chat/EMNotifier;)Ljava/util/Hashtable;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/easemob/chat/EMNotifier$1;->this$0:Lcom/easemob/chat/EMNotifier;

    iget-object v2, p0, Lcom/easemob/chat/EMNotifier$1;->val$event:Lcom/easemob/EMNotifierEvent$Event;

    #calls: Lcom/easemob/chat/EMNotifier;->containsType(Lcom/easemob/EMNotifierEvent$Event;)Z
    invoke-static {v0, v2}, Lcom/easemob/chat/EMNotifier;->access$1(Lcom/easemob/chat/EMNotifier;Lcom/easemob/EMNotifierEvent$Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/chat/EMNotifier$1;->this$0:Lcom/easemob/chat/EMNotifier;

    #getter for: Lcom/easemob/chat/EMNotifier;->filteredEventListeners:Ljava/util/Hashtable;
    invoke-static {v0}, Lcom/easemob/chat/EMNotifier;->access$0(Lcom/easemob/chat/EMNotifier;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v2, p0, Lcom/easemob/chat/EMNotifier$1;->val$event:Lcom/easemob/EMNotifierEvent$Event;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v2, p0, Lcom/easemob/chat/EMNotifier$1;->this$0:Lcom/easemob/chat/EMNotifier;

    iget-object v3, p0, Lcom/easemob/chat/EMNotifier$1;->val$event:Lcom/easemob/EMNotifierEvent$Event;

    iget-object v4, p0, Lcom/easemob/chat/EMNotifier$1;->val$obj:Ljava/lang/Object;

    #calls: Lcom/easemob/chat/EMNotifier;->publishEvent(Ljava/util/Iterator;Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)V
    invoke-static {v2, v0, v3, v4}, Lcom/easemob/chat/EMNotifier;->access$2(Lcom/easemob/chat/EMNotifier;Ljava/util/Iterator;Lcom/easemob/EMNotifierEvent$Event;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
