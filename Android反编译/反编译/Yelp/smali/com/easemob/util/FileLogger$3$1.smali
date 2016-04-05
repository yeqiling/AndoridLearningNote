.class Lcom/easemob/util/FileLogger$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/util/FileLogger$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/easemob/util/FileLogger$3;


# direct methods
.method constructor <init>(Lcom/easemob/util/FileLogger$3;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/util/FileLogger$3$1;->this$1:Lcom/easemob/util/FileLogger$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/easemob/util/FileLogger$3$1;->this$1:Lcom/easemob/util/FileLogger$3;

    #getter for: Lcom/easemob/util/FileLogger$3;->this$0:Lcom/easemob/util/FileLogger;
    invoke-static {v0}, Lcom/easemob/util/FileLogger$3;->access$0(Lcom/easemob/util/FileLogger$3;)Lcom/easemob/util/FileLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/util/FileLogger;->getLogRoot()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/util/FileLogger$3$1;->this$1:Lcom/easemob/util/FileLogger$3;

    #getter for: Lcom/easemob/util/FileLogger$3;->this$0:Lcom/easemob/util/FileLogger;
    invoke-static {v0}, Lcom/easemob/util/FileLogger$3;->access$0(Lcom/easemob/util/FileLogger$3;)Lcom/easemob/util/FileLogger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/util/FileLogger;->getLogRoot()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/easemob/util/FileLogger$3$1;->this$1:Lcom/easemob/util/FileLogger$3;

    #getter for: Lcom/easemob/util/FileLogger$3;->this$0:Lcom/easemob/util/FileLogger;
    invoke-static {v0}, Lcom/easemob/util/FileLogger$3;->access$0(Lcom/easemob/util/FileLogger$3;)Lcom/easemob/util/FileLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/easemob/util/FileLogger$3$1;->this$1:Lcom/easemob/util/FileLogger$3;

    #getter for: Lcom/easemob/util/FileLogger$3;->this$0:Lcom/easemob/util/FileLogger;
    invoke-static {v1}, Lcom/easemob/util/FileLogger$3;->access$0(Lcom/easemob/util/FileLogger$3;)Lcom/easemob/util/FileLogger;

    move-result-object v1

    invoke-virtual {v1}, Lcom/easemob/util/FileLogger;->freeSpace()Z

    move-result v1

    #setter for: Lcom/easemob/util/FileLogger;->spaceAvailable:Z
    invoke-static {v0, v1}, Lcom/easemob/util/FileLogger;->access$4(Lcom/easemob/util/FileLogger;Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string v1, "FileLogger"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "FileLogger"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
