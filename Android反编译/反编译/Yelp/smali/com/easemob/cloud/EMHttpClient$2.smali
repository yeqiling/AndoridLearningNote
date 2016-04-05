.class Lcom/easemob/cloud/EMHttpClient$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/cloud/EMHttpClient;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/easemob/cloud/EMHttpClient;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/util/Map;

.field private final synthetic e:Lcom/easemob/chat/EMCloudOperationCallback;


# direct methods
.method constructor <init>(Lcom/easemob/cloud/EMHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/cloud/EMHttpClient$2;->a:Lcom/easemob/cloud/EMHttpClient;

    iput-object p2, p0, Lcom/easemob/cloud/EMHttpClient$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/easemob/cloud/EMHttpClient$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/easemob/cloud/EMHttpClient$2;->d:Ljava/util/Map;

    iput-object p5, p0, Lcom/easemob/cloud/EMHttpClient$2;->e:Lcom/easemob/chat/EMCloudOperationCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    const-string v0, "EMHttpClient"

    const-string v1, "run HttpFileManager().uploadFile"

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/easemob/cloud/HttpFileManager;

    invoke-direct {v0}, Lcom/easemob/cloud/HttpFileManager;-><init>()V

    iget-object v1, p0, Lcom/easemob/cloud/EMHttpClient$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/easemob/cloud/EMHttpClient$2;->c:Ljava/lang/String;

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/core/p;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v4

    invoke-virtual {v4}, Lcom/easemob/chat/core/p;->w()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/easemob/cloud/EMHttpClient$2;->d:Ljava/util/Map;

    iget-object v6, p0, Lcom/easemob/cloud/EMHttpClient$2;->e:Lcom/easemob/chat/EMCloudOperationCallback;

    invoke-virtual/range {v0 .. v6}, Lcom/easemob/cloud/HttpFileManager;->uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/easemob/cloud/EMHttpClient$2;->e:Lcom/easemob/chat/EMCloudOperationCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/cloud/EMHttpClient$2;->e:Lcom/easemob/chat/EMCloudOperationCallback;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {v1, v0}, Lcom/easemob/chat/EMCloudOperationCallback;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "failed to upload the file : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/cloud/EMHttpClient$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
