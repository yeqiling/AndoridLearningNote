.class Lcom/easemob/cloud/HttpFileManager$9;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/easemob/cloud/HttpFileManager;->deleteFileInBackground(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/easemob/cloud/CloudOperationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/easemob/cloud/HttpFileManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/easemob/cloud/CloudOperationCallback;


# direct methods
.method constructor <init>(Lcom/easemob/cloud/HttpFileManager;Ljava/lang/String;Ljava/lang/String;Lcom/easemob/cloud/CloudOperationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/easemob/cloud/HttpFileManager$9;->a:Lcom/easemob/cloud/HttpFileManager;

    iput-object p2, p0, Lcom/easemob/cloud/HttpFileManager$9;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/easemob/cloud/HttpFileManager$9;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/easemob/cloud/HttpFileManager$9;->d:Lcom/easemob/cloud/CloudOperationCallback;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v1, "\r\n"

    const-string v2, "--"

    const-string v3, "*****"

    const-string v0, ""

    iget-object v0, p0, Lcom/easemob/cloud/HttpFileManager$9;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/easemob/cloud/HttpClientConfig;->getFileRemoteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v4, "POST"

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v4, "Connection"

    const-string v5, "Keep-Alive"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "ENCTYPE"

    const-string v5, "multipart/form-data"

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "Content-Type"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "multipart/form-data;boundary="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "file"

    iget-object v5, p0, Lcom/easemob/cloud/HttpFileManager$9;->b:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/easemob/cloud/HttpFileManager$9;->c:Ljava/lang/String;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Content-Disposition: form-data; name=\"app\""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/easemob/cloud/HttpFileManager$9;->c:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Content-Disposition: form-data; name=\"file\";filename=\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/easemob/cloud/HttpFileManager$9;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    iget-object v0, p0, Lcom/easemob/cloud/HttpFileManager$9;->d:Lcom/easemob/cloud/CloudOperationCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/easemob/cloud/HttpFileManager$9;->d:Lcom/easemob/cloud/CloudOperationCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/easemob/cloud/CloudOperationCallback;->onSuccess(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const-string v3, "CloudFileManager"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "RESULT Message: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v1, p0, Lcom/easemob/cloud/HttpFileManager$9;->d:Lcom/easemob/cloud/CloudOperationCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/easemob/cloud/HttpFileManager$9;->d:Lcom/easemob/cloud/CloudOperationCallback;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/easemob/cloud/CloudOperationCallback;->onError(Ljava/lang/String;)V

    goto :goto_1
.end method
