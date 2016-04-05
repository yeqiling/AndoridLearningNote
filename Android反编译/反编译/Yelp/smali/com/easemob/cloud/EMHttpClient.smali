.class public Lcom/easemob/cloud/EMHttpClient;
.super Ljava/lang/Object;


# static fields
.field public static DELETE:Ljava/lang/String; = null

.field public static GET:Ljava/lang/String; = null

.field public static POST:Ljava/lang/String; = null

.field public static PUT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "EMHttpClient"

.field private static instance:Lcom/easemob/cloud/EMHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "GET"

    sput-object v0, Lcom/easemob/cloud/EMHttpClient;->GET:Ljava/lang/String;

    const-string v0, "POST"

    sput-object v0, Lcom/easemob/cloud/EMHttpClient;->POST:Ljava/lang/String;

    const-string v0, "PUT"

    sput-object v0, Lcom/easemob/cloud/EMHttpClient;->PUT:Ljava/lang/String;

    const-string v0, "DELETE"

    sput-object v0, Lcom/easemob/cloud/EMHttpClient;->DELETE:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/easemob/cloud/EMHttpClient;->instance:Lcom/easemob/cloud/EMHttpClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/easemob/cloud/EMHttpClient;
    .locals 2

    const-class v1, Lcom/easemob/cloud/EMHttpClient;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/easemob/cloud/EMHttpClient;->instance:Lcom/easemob/cloud/EMHttpClient;

    if-nez v0, :cond_0

    new-instance v0, Lcom/easemob/cloud/EMHttpClient;

    invoke-direct {v0}, Lcom/easemob/cloud/EMHttpClient;-><init>()V

    sput-object v0, Lcom/easemob/cloud/EMHttpClient;->instance:Lcom/easemob/cloud/EMHttpClient;

    :cond_0
    sget-object v0, Lcom/easemob/cloud/EMHttpClient;->instance:Lcom/easemob/cloud/EMHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/easemob/chat/EMCloudOperationCallback;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/easemob/cloud/EMHttpClient$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/easemob/cloud/EMHttpClient$1;-><init>(Lcom/easemob/cloud/EMHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V

    invoke-virtual {v0}, Lcom/easemob/cloud/EMHttpClient$1;->start()V

    return-void
.end method

.method public httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/http/HttpResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;,
            Ljava/security/UnrecoverableKeyException;,
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/easemob/cloud/HttpClientManager;->httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {p1, p2, p3, p4}, Lcom/easemob/cloud/HttpClientManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/easemob/cloud/HttpClientManager;->sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/easemob/chat/EMCloudOperationCallback;",
            ")V"
        }
    .end annotation

    const-string v0, "EMHttpClient"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "upload file :  localFilePath : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " remoteUrl : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/easemob/cloud/EMHttpClient$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/easemob/cloud/EMHttpClient$2;-><init>(Lcom/easemob/cloud/EMHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/easemob/chat/EMCloudOperationCallback;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
