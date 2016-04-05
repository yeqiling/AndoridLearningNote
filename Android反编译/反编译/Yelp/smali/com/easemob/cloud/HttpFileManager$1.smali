.class Lcom/easemob/cloud/HttpFileManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/easemob/cloud/CustomMultiPartEntity$ProgressListener;


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

.field private final synthetic b:Lcom/easemob/cloud/CloudOperationCallback;


# direct methods
.method constructor <init>(Lcom/easemob/cloud/HttpFileManager;Lcom/easemob/cloud/CloudOperationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/cloud/HttpFileManager$1;->a:Lcom/easemob/cloud/HttpFileManager;

    iput-object p2, p0, Lcom/easemob/cloud/HttpFileManager$1;->b:Lcom/easemob/cloud/CloudOperationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transferred(J)V
    .locals 5

    long-to-float v0, p1

    iget-object v1, p0, Lcom/easemob/cloud/HttpFileManager$1;->a:Lcom/easemob/cloud/HttpFileManager;

    #getter for: Lcom/easemob/cloud/HttpFileManager;->totalSize:J
    invoke-static {v1}, Lcom/easemob/cloud/HttpFileManager;->access$0(Lcom/easemob/cloud/HttpFileManager;)J

    move-result-wide v2

    long-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/easemob/cloud/HttpFileManager$1;->b:Lcom/easemob/cloud/CloudOperationCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/easemob/cloud/HttpFileManager$1;->b:Lcom/easemob/cloud/CloudOperationCallback;

    invoke-interface {v1, v0}, Lcom/easemob/cloud/CloudOperationCallback;->onProgress(I)V

    :cond_0
    return-void
.end method
