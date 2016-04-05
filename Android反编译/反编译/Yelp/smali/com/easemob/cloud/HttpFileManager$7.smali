.class Lcom/easemob/cloud/HttpFileManager$7;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/cloud/HttpFileManager;->downloadFileWithCountDown(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/easemob/cloud/HttpFileManager;

.field private final synthetic b:Lcom/easemob/cloud/CloudOperationCallback;

.field private final synthetic c:Ljava/util/Map;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/easemob/cloud/HttpFileManager;Lcom/easemob/cloud/CloudOperationCallback;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/cloud/HttpFileManager$7;->a:Lcom/easemob/cloud/HttpFileManager;

    iput-object p2, p0, Lcom/easemob/cloud/HttpFileManager$7;->b:Lcom/easemob/cloud/CloudOperationCallback;

    iput-object p3, p0, Lcom/easemob/cloud/HttpFileManager$7;->c:Ljava/util/Map;

    iput-object p4, p0, Lcom/easemob/cloud/HttpFileManager$7;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/easemob/cloud/HttpFileManager$7;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->y()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/easemob/cloud/HttpFileManager$7;->b:Lcom/easemob/cloud/CloudOperationCallback;

    const-string v1, "unauthorized token is null"

    invoke-interface {v0, v1}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/easemob/cloud/HttpFileManager$7;->a:Lcom/easemob/cloud/HttpFileManager;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/easemob/cloud/HttpFileManager;->tokenRetrieved:Z

    iget-object v1, p0, Lcom/easemob/cloud/HttpFileManager$7;->c:Ljava/util/Map;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/easemob/cloud/HttpFileManager$7;->c:Ljava/util/Map;

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Bearer "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/easemob/cloud/HttpFileManager$7;->a:Lcom/easemob/cloud/HttpFileManager;

    iget-object v1, p0, Lcom/easemob/cloud/HttpFileManager$7;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/easemob/cloud/HttpFileManager$7;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/easemob/cloud/HttpFileManager$7;->c:Ljava/util/Map;

    iget-object v4, p0, Lcom/easemob/cloud/HttpFileManager$7;->b:Lcom/easemob/cloud/CloudOperationCallback;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/easemob/cloud/HttpFileManager;->downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/easemob/cloud/HttpFileManager$7;->a:Lcom/easemob/cloud/HttpFileManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/easemob/cloud/HttpFileManager;->tokenRetrieved:Z

    iget-object v0, p0, Lcom/easemob/cloud/HttpFileManager$7;->b:Lcom/easemob/cloud/CloudOperationCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/easemob/cloud/HttpFileManager$7;->b:Lcom/easemob/cloud/CloudOperationCallback;

    const-string v1, "unauthorized token is null"

    invoke-interface {v0, v1}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto :goto_0
.end method
