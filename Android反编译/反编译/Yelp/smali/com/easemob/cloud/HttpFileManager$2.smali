.class Lcom/easemob/cloud/HttpFileManager$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/cloud/HttpFileManager;->sendFiletoServerHttpWithCountDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;IZ)V
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

    iput-object p1, p0, Lcom/easemob/cloud/HttpFileManager$2;->a:Lcom/easemob/cloud/HttpFileManager;

    iput-object p2, p0, Lcom/easemob/cloud/HttpFileManager$2;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/easemob/cloud/HttpFileManager$2;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/easemob/cloud/HttpFileManager$2;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/easemob/cloud/HttpFileManager$2;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/easemob/cloud/HttpFileManager$2;->f:Ljava/util/Map;

    iput-object p7, p0, Lcom/easemob/cloud/HttpFileManager$2;->g:Lcom/easemob/cloud/CloudOperationCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/easemob/cloud/HttpFileManager$2;->a:Lcom/easemob/cloud/HttpFileManager;

    iget-object v1, p0, Lcom/easemob/cloud/HttpFileManager$2;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/easemob/cloud/HttpFileManager$2;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/easemob/cloud/HttpFileManager$2;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/easemob/cloud/HttpFileManager$2;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/easemob/cloud/HttpFileManager$2;->f:Ljava/util/Map;

    iget-object v6, p0, Lcom/easemob/cloud/HttpFileManager$2;->g:Lcom/easemob/cloud/CloudOperationCallback;

    const/4 v7, 0x3

    const/4 v8, 0x1

    #calls: Lcom/easemob/cloud/HttpFileManager;->sendFiletoServerHttpWithCountDown(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;IZ)V
    invoke-static/range {v0 .. v8}, Lcom/easemob/cloud/HttpFileManager;->access$1(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/cloud/CloudOperationCallback;IZ)V

    return-void
.end method
