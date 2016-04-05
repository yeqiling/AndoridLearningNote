.class public Lcom/easemob/cloud/HttpClientManager;
.super Ljava/lang/Object;


# static fields
.field public static Method_DELETE:Ljava/lang/String; = null

.field public static Method_GET:Ljava/lang/String; = null

.field public static Method_POST:Ljava/lang/String; = null

.field public static Method_PUT:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HttpClientManager"

.field private static volatile isRetring:Z = false

.field public static final max_retries_times_on_connection_refused:I = 0x14

.field private static final retriveInterval:I = 0x1d4c0

.field private static volatile retrivedTokenTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "GET"

    sput-object v0, Lcom/easemob/cloud/HttpClientManager;->Method_GET:Ljava/lang/String;

    const-string v0, "POST"

    sput-object v0, Lcom/easemob/cloud/HttpClientManager;->Method_POST:Ljava/lang/String;

    const-string v0, "PUT"

    sput-object v0, Lcom/easemob/cloud/HttpClientManager;->Method_PUT:Ljava/lang/String;

    const-string v0, "DELETE"

    sput-object v0, Lcom/easemob/cloud/HttpClientManager;->Method_DELETE:Ljava/lang/String;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/easemob/cloud/HttpClientManager;->retrivedTokenTime:J

    const/4 v0, 0x0

    sput-boolean v0, Lcom/easemob/cloud/HttpClientManager;->isRetring:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addDomainToHeaders(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->c()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/easemob/chat/core/j$c;->d:Lcom/easemob/chat/core/j$b;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/easemob/chat/core/j$c;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/easemob/chat/core/j$c;->c:Ljava/lang/String;

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/easemob/chat/core/j$c;->d:Lcom/easemob/chat/core/j$b;

    iget-object v1, v1, Lcom/easemob/chat/core/j$b;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/easemob/chat/core/j$c;->d:Lcom/easemob/chat/core/j$b;

    iget-object v1, v1, Lcom/easemob/chat/core/j$b;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_0
    const-string v1, "Host"

    iget-object v0, v0, Lcom/easemob/chat/core/j$c;->d:Lcom/easemob/chat/core/j$b;

    iget-object v0, v0, Lcom/easemob/chat/core/j$b;->a:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method static checkAndProcessSSL(Ljava/lang/String;Lorg/apache/http/impl/client/DefaultHttpClient;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v1, Lcom/easemob/cloud/MySSLSocketFactory;

    invoke-direct {v1, v0}, Lcom/easemob/cloud/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    sget-object v0, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {v1, v0}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V

    invoke-virtual {p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    const/16 v4, 0x1bb

    invoke-direct {v2, v3, v1, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    :cond_0
    return-void
.end method

.method public static getHttpResponse(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
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
            Ljava/security/KeyStoreException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/easemob/cloud/HttpClientManager;->addDomainToHeaders(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/easemob/cloud/HttpClientManager;->httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method static getNewHost(Ljava/lang/String;Lcom/easemob/chat/core/j$c;)Ljava/lang/String;
    .locals 4

    iget-object v0, p1, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    iget v1, p1, Lcom/easemob/chat/core/j$c;->b:I

    iget-object v2, p1, Lcom/easemob/chat/core/j$c;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "://"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static httpExecute(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 7
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
            Lorg/apache/http/client/ClientProtocolException;,
            Ljava/io/IOException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/easemob/cloud/HttpClientConfig;->getTimeout(Ljava/util/Map;)I

    move-result v1

    invoke-static {v1}, Lcom/easemob/cloud/HttpClientConfig;->getDefaultHttpClient(I)Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v2

    if-eqz p0, :cond_0

    const-string v1, "https"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    new-instance v3, Lcom/easemob/cloud/MySSLSocketFactory;

    invoke-direct {v3, v1}, Lcom/easemob/cloud/MySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    invoke-interface {v2}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    const/16 v6, 0x1bb

    invoke-direct {v4, v5, v3, v6}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v1, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    :cond_0
    sget-object v1, Lcom/easemob/cloud/HttpClientManager;->Method_POST:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/entity/StringEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, p2, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    instance-of v0, v2, Lorg/apache/http/client/HttpClient;

    if-nez v0, :cond_7

    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    :cond_2
    :goto_2
    return-object v0

    :cond_3
    sget-object v1, Lcom/easemob/cloud/HttpClientManager;->Method_PUT:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lorg/apache/http/client/methods/HttpPut;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/apache/http/entity/StringEntity;

    const-string v4, "UTF-8"

    invoke-direct {v3, p2, v4}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/client/methods/HttpPut;->setEntity(Lorg/apache/http/HttpEntity;)V

    move-object v3, v1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/easemob/cloud/HttpClientManager;->Method_GET:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/easemob/cloud/HttpClientManager;->Method_DELETE:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lorg/apache/http/client/methods/HttpDelete;

    invoke-direct {v1, p0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    move-object v3, v1

    goto :goto_0

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    move-object v0, v2

    check-cast v0, Lorg/apache/http/client/HttpClient;

    invoke-static {v0, v3}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_2

    :cond_8
    move-object v3, v0

    goto :goto_0
.end method

.method public static sendHttpRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
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
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v6, v0

    move-object v4, p0

    move-object v3, v1

    move-object v2, v1

    move-object v0, v1

    :goto_0
    const/16 v5, 0x14

    if-lt v6, v5, :cond_1

    move-object v4, v2

    move-object v2, v0

    :cond_0
    if-eqz v3, :cond_3

    throw v3

    :cond_1
    const-string v0, "HttpClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "try send request, request url: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with number: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v4, p1, p2, p3}, Lcom/easemob/cloud/HttpClientManager;->sendHttpRequestWithCountDown(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v0

    move-object v0, v1

    :goto_1
    const-string v5, ""

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easemob/chat/core/p;->f()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easemob/chat/core/j;->h()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "refused"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/util/NetUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->g()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    if-eqz v1, :cond_2

    iget-object v5, v1, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, v1, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    iget-object v7, v0, Lcom/easemob/chat/core/j$c;->a:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_2
    invoke-static {p0, v0}, Lcom/easemob/cloud/HttpClientManager;->getNewHost(Ljava/lang/String;Lcom/easemob/chat/core/j$c;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v4, v2

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    throw v2

    :cond_4
    return-object v4

    :cond_5
    move-object v0, v5

    goto :goto_2
.end method

.method private static sendHttpRequestWithCountDown(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
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
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/easemob/exceptions/EaseMobException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/easemob/cloud/HttpClientManager;->getHttpResponse(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "UTF-8"

    invoke-static {v1, v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http request failed : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v1, "Unable to resolve host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lcom/easemob/exceptions/EMNetworkUnconnectedException;

    const/16 v1, -0x3e9

    const-string v2, "EMNetworkUnconnectedException:Unable to resolve host"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EMNetworkUnconnectedException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    const/16 v2, -0x3eb

    invoke-direct {v1, v2, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method static sendHttpRequestWithRetryToken(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 6
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
            Lcom/easemob/exceptions/EaseMobException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/easemob/cloud/HttpClientManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/easemob/cloud/HttpClientManager;->retrivedTokenTime:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/easemob/cloud/HttpClientManager;->isRetring:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/easemob/cloud/HttpClientManager;->isRetring:Z

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/p;->y()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    sput-boolean v2, Lcom/easemob/cloud/HttpClientManager;->isRetring:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/easemob/cloud/HttpClientManager;->retrivedTokenTime:J

    if-eqz v0, :cond_0

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bearer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lcom/easemob/cloud/HttpClientManager;->sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static sendRequest(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 8
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

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v6, v0

    move-object v4, p0

    move-object v3, v1

    move-object v2, v1

    move-object v0, v1

    :goto_0
    const/16 v5, 0x14

    if-lt v6, v5, :cond_1

    move-object v4, v2

    move-object v2, v0

    :cond_0
    if-eqz v3, :cond_3

    throw v3

    :cond_1
    const-string v0, "HttpClientManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "try send request, request url: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " with number: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {v4, p1, p2, p3}, Lcom/easemob/cloud/HttpClientManager;->sendRequestWithCountDown(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v4, "UTF-8"

    invoke-static {v0, v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Landroid/util/Pair;

    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/easemob/exceptions/EaseMobException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v0

    move-object v0, v1

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "failed to send request, request url: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v5

    invoke-virtual {v5}, Lcom/easemob/chat/core/p;->f()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v5, "refused"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/EMChat;->getInstance()Lcom/easemob/chat/EMChat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/EMChat;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/easemob/util/NetUtils;->hasNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/easemob/chat/core/j;->a()Lcom/easemob/chat/core/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/easemob/chat/core/j;->g()Lcom/easemob/chat/core/j$c;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/easemob/cloud/HttpClientManager;->getNewHost(Ljava/lang/String;Lcom/easemob/chat/core/j$c;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move-object v0, v2

    move-object v2, v4

    move-object v4, v5

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v4, v2

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v3, v1

    move-object v4, v2

    move-object v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    throw v2

    :cond_4
    return-object v4

    :cond_5
    move-object v0, v1

    move-object v3, v1

    move-object v4, v2

    move-object v2, v1

    goto :goto_1

    :cond_6
    move-object v0, v5

    goto :goto_2
.end method

.method private static sendRequestWithCountDown(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 3
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
            Lcom/easemob/exceptions/EaseMobException;,
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/easemob/cloud/HttpClientManager;->getHttpResponse(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "http request failed : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v1, "Unable to resolve host"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lcom/easemob/exceptions/EMNetworkUnconnectedException;

    const/16 v1, -0x3e9

    const-string v2, "EMNetworkUnconnectedException:Unable to resolve host"

    invoke-direct {v0, v1, v2}, Lcom/easemob/exceptions/EMNetworkUnconnectedException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    const/16 v2, -0x3eb

    invoke-direct {v1, v2, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method public static sendRequestWithToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
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

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Authorization"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Bearer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/easemob/chat/core/p;->c()Lcom/easemob/chat/core/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/easemob/chat/core/p;->x()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-static {p0, v0, p1, p2}, Lcom/easemob/cloud/HttpClientManager;->sendHttpRequestWithRetryToken(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, " send request : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " failed!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "HttpClientManager"

    invoke-static {v1, v0}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/easemob/exceptions/EaseMobException;

    const/16 v2, -0x3e6

    invoke-direct {v1, v2, v0}, Lcom/easemob/exceptions/EaseMobException;-><init>(ILjava/lang/String;)V

    throw v1
.end method
