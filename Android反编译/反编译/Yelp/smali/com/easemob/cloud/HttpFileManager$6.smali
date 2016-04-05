.class Lcom/easemob/cloud/HttpFileManager$6;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/cloud/HttpFileManager;->uploadFileInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/easemob/cloud/HttpFileManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/util/Map;

.field private final synthetic g:Lcom/easemob/cloud/CloudOperationCallback;


# direct methods
.method constructor <init>(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/cloud/HttpFileManager$6;->a:Lcom/easemob/cloud/HttpFileManager;

    iput-object p2, p0, Lcom/easemob/cloud/HttpFileManager$6;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/easemob/cloud/HttpFileManager$6;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/easemob/cloud/HttpFileManager$6;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/easemob/cloud/HttpFileManager$6;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/easemob/cloud/HttpFileManager$6;->f:Ljava/util/Map;

    iput-object p7, p0, Lcom/easemob/cloud/HttpFileManager$6;->g:Lcom/easemob/cloud/CloudOperationCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/easemob/cloud/HttpFileManager$6;->a:Lcom/easemob/cloud/HttpFileManager;

    iget-object v1, p0, Lcom/easemob/cloud/HttpFileManager$6;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/easemob/cloud/HttpFileManager$6;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/easemob/cloud/HttpFileManager$6;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/easemob/cloud/HttpFileManager$6;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/easemob/cloud/HttpFileManager$6;->f:Ljava/util/Map;

    iget-object v6, p0, Lcom/easemob/cloud/HttpFileManager$6;->g:Lcom/easemob/cloud/CloudOperationCallback;

    #calls: Lcom/easemob/cloud/HttpFileManager;->sendFiletoServerHttp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V
    invoke-static/range {v0 .. v6}, Lcom/easemob/cloud/HttpFileManager;->access$2(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "CloudFileManager"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/easemob/util/EMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/easemob/cloud/HttpFileManager$6;->g:Lcom/easemob/cloud/CloudOperationCallback;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/easemob/cloud/HttpFileManager$6;->g:Lcom/easemob/cloud/CloudOperationCallback;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to upload the file : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/easemob/cloud/HttpFileManager$6;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remote path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/easemob/cloud/HttpFileManager$6;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method
