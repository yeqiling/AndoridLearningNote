.class Lcom/easemob/debug/DebugHelper$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/debug/DebugHelper;->uploadLog(Landroid/content/Context;Ljava/lang/String;Lcom/easemob/EMCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$callback:Lcom/easemob/EMCallBack;

.field private final synthetic val$remoteServer:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easemob/EMCallBack;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/debug/DebugHelper$1;->val$callback:Lcom/easemob/EMCallBack;

    iput-object p2, p0, Lcom/easemob/debug/DebugHelper$1;->val$remoteServer:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/easemob/util/EMLog;->getLogRoot()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v0, "DebugHelper"

    const-string v1, "log root did not exist"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/easemob/debug/DebugHelper$1;->val$callback:Lcom/easemob/EMCallBack;

    invoke-interface {v0}, Lcom/easemob/EMCallBack;->onSuccess()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/easemob/util/EMLog;->freeLogFiles()V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "easemoblog.zip"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    const-string v1, "EMChat"

    const-string v3, "zipFile was deleted!"

    invoke-static {v1, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v0, v2}, Lcom/easemob/util/ZipUtils;->zip(Ljava/io/File;Ljava/io/File;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/debug/DebugHelper$1;->val$remoteServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "easemob#logger"

    const-string v3, "#"

    const-string v4, "/"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/chatfiles/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/easemob/cloud/EMHttpClient;->getInstance()Lcom/easemob/cloud/EMHttpClient;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/easemob/debug/DebugHelper$1$1;

    iget-object v5, p0, Lcom/easemob/debug/DebugHelper$1;->val$callback:Lcom/easemob/EMCallBack;

    iget-object v6, p0, Lcom/easemob/debug/DebugHelper$1;->val$remoteServer:Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6}, Lcom/easemob/debug/DebugHelper$1$1;-><init>(Lcom/easemob/debug/DebugHelper$1;Lcom/easemob/EMCallBack;Ljava/lang/String;)V

    invoke-virtual {v3, v2, v0, v1, v4}, Lcom/easemob/cloud/EMHttpClient;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    iget-object v1, p0, Lcom/easemob/debug/DebugHelper$1;->val$callback:Lcom/easemob/EMCallBack;

    const/4 v2, 0x5

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/easemob/EMCallBack;->onError(ILjava/lang/String;)V

    goto :goto_0
.end method
