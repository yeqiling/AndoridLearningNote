.class Lcom/easemob/util/FileLogger$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/util/FileLogger;->startCleanUpTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/easemob/util/FileLogger;


# direct methods
.method constructor <init>(Lcom/easemob/util/FileLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/util/FileLogger$3;->this$0:Lcom/easemob/util/FileLogger;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/easemob/util/FileLogger$3;)Lcom/easemob/util/FileLogger;
    .locals 1

    iget-object v0, p0, Lcom/easemob/util/FileLogger$3;->this$0:Lcom/easemob/util/FileLogger;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/easemob/util/FileLogger$3;->this$0:Lcom/easemob/util/FileLogger;

    #getter for: Lcom/easemob/util/FileLogger;->singleThreadService:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lcom/easemob/util/FileLogger;->access$3(Lcom/easemob/util/FileLogger;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/easemob/util/FileLogger$3$1;

    invoke-direct {v1, p0}, Lcom/easemob/util/FileLogger$3$1;-><init>(Lcom/easemob/util/FileLogger$3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
