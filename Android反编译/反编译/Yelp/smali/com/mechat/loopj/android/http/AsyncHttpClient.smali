.class public Lcom/mechat/loopj/android/http/AsyncHttpClient;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/loopj/android/http/AsyncHttpClient$InflatingEntity;
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_CONNECTIONS:I = 0xa

.field public static final DEFAULT_MAX_RETRIES:I = 0x5

.field public static final DEFAULT_RETRY_SLEEP_TIME_MILLIS:I = 0x5dc

.field public static final DEFAULT_SOCKET_BUFFER_SIZE:I = 0x2000

.field public static final DEFAULT_SOCKET_TIMEOUT:I = 0x2710

.field public static final ENCODING_GZIP:Ljava/lang/String; = "gzip"

.field public static final HEADER_ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field public static final HEADER_CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"

.field public static final HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field public static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final LOG_TAG:Ljava/lang/String; = "AsyncHttpClient"


# instance fields
.field private final clientHeaderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field private final httpContext:Lorg/apache/http/protocol/HttpContext;

.field private isUrlEncodingEnabled:Z

.field private maxConnections:I

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/mechat/loopj/android/http/RequestHandle;",
            ">;>;"
        }
    .end annotation
.end field

.field private threadPool:Ljava/util/concurrent/ExecutorService;

.field private timeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x0

    const/16 v1, 0x50

    const/16 v2, 0x1bb

    invoke-direct {p0, v0, v1, v2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 149
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "httpPort"

    .prologue
    .line 157
    const/4 v0, 0x0

    const/16 v1, 0x1bb

    invoke-direct {p0, v0, p1, v1}, Lcom/mechat/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 158
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "httpPort"
    .parameter "httpsPort"

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;-><init>(ZII)V

    .line 168
    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
    .locals 6
    .parameter "schemeRegistry"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput v5, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->maxConnections:I

    .line 135
    const/16 v2, 0x2710

    iput v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->timeout:I

    .line 142
    iput-boolean v4, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    .line 226
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 228
    .local v1, httpParams:Lorg/apache/http/params/BasicHttpParams;
    iget v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->timeout:I

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 229
    new-instance v2, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v3, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v2, v3}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v1, v2}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 230
    invoke-static {v1, v5}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxTotalConnections(Lorg/apache/http/params/HttpParams;I)V

    .line 232
    iget v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->timeout:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 233
    iget v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->timeout:I

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 234
    invoke-static {v1, v4}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    .line 235
    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 237
    sget-object v2, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v1, v2}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 239
    new-instance v0, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v0, v1, p1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 241
    .local v0, cm:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->getDefaultThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    iput-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 242
    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    .line 243
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    .line 245
    new-instance v2, Lorg/apache/http/protocol/SyncBasicHttpContext;

    new-instance v3, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v3}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    invoke-direct {v2, v3}, Lorg/apache/http/protocol/SyncBasicHttpContext;-><init>(Lorg/apache/http/protocol/HttpContext;)V

    iput-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    .line 246
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    iput-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 247
    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/mechat/loopj/android/http/AsyncHttpClient$1;

    invoke-direct {v3, p0}, Lcom/mechat/loopj/android/http/AsyncHttpClient$1;-><init>(Lcom/mechat/loopj/android/http/AsyncHttpClient;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    .line 267
    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/mechat/loopj/android/http/AsyncHttpClient$2;

    invoke-direct {v3, p0}, Lcom/mechat/loopj/android/http/AsyncHttpClient$2;-><init>(Lcom/mechat/loopj/android/http/AsyncHttpClient;)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->addResponseInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 286
    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/mechat/loopj/android/http/AsyncHttpClient$3;

    invoke-direct {v3, p0}, Lcom/mechat/loopj/android/http/AsyncHttpClient$3;-><init>(Lcom/mechat/loopj/android/http/AsyncHttpClient;)V

    .line 303
    const/4 v4, 0x0

    .line 286
    invoke-virtual {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    .line 305
    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lcom/mechat/loopj/android/http/RetryHandler;

    const/4 v4, 0x5

    const/16 v5, 0x5dc

    invoke-direct {v3, v4, v5}, Lcom/mechat/loopj/android/http/RetryHandler;-><init>(II)V

    invoke-virtual {v2, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 306
    return-void
.end method

.method public constructor <init>(ZII)V
    .locals 1
    .parameter "fixNoHttpResponseException"
    .parameter "httpPort"
    .parameter "httpsPort"

    .prologue
    .line 178
    invoke-static {p1, p2, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->getDefaultSchemeRegistry(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 179
    return-void
.end method

.method static synthetic access$0(Lcom/mechat/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mechat/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    return-object v0
.end method

.method private addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    .locals 0
    .parameter "requestBase"
    .parameter "entity"

    .prologue
    .line 1264
    if-eqz p2, :cond_0

    .line 1265
    invoke-virtual {p1, p2}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 1268
    :cond_0
    return-object p1
.end method

.method public static allowRetryExceptionClass(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 309
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    .line 310
    invoke-static {p0}, Lcom/mechat/loopj/android/http/RetryHandler;->addClassToWhitelist(Ljava/lang/Class;)V

    .line 312
    :cond_0
    return-void
.end method

.method public static blockRetryExceptionClass(Ljava/lang/Class;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p0, cls:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    .line 316
    invoke-static {p0}, Lcom/mechat/loopj/android/http/RetryHandler;->addClassToBlacklist(Ljava/lang/Class;)V

    .line 318
    :cond_0
    return-void
.end method

.method public static endEntityViaReflection(Lorg/apache/http/HttpEntity;)V
    .locals 9
    .parameter "entity"

    .prologue
    .line 1278
    instance-of v5, p0, Lorg/apache/http/entity/HttpEntityWrapper;

    if-eqz v5, :cond_0

    .line 1280
    const/4 v0, 0x0

    .line 1281
    .local v0, f:Ljava/lang/reflect/Field;
    :try_start_0
    const-class v5, Lorg/apache/http/entity/HttpEntityWrapper;

    invoke-virtual {v5}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 1282
    .local v2, fields:[Ljava/lang/reflect/Field;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_1

    .line 1288
    :goto_1
    if-eqz v0, :cond_0

    .line 1289
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1290
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/http/HttpEntity;

    .line 1291
    .local v4, wrapped:Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_0

    .line 1292
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->consumeContent()V

    .line 1299
    .end local v0           #f:Ljava/lang/reflect/Field;
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    .end local v4           #wrapped:Lorg/apache/http/HttpEntity;
    :cond_0
    :goto_2
    return-void

    .line 1282
    .restart local v0       #f:Ljava/lang/reflect/Field;
    .restart local v2       #fields:[Ljava/lang/reflect/Field;
    :cond_1
    aget-object v1, v2, v5

    .line 1283
    .local v1, ff:Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "wrappedEntity"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_2

    .line 1284
    move-object v0, v1

    .line 1285
    goto :goto_1

    .line 1282
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1295
    .end local v1           #ff:Ljava/lang/reflect/Field;
    .end local v2           #fields:[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    .line 1296
    .local v3, t:Ljava/lang/Throwable;
    const-string v5, "AsyncHttpClient"

    const-string v6, "wrappedEntity consume"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method private static getDefaultSchemeRegistry(ZII)Lorg/apache/http/conn/scheme/SchemeRegistry;
    .locals 5
    .parameter "fixNoHttpResponseException"
    .parameter "httpPort"
    .parameter "httpsPort"

    .prologue
    const/4 v4, 0x1

    .line 190
    if-eqz p0, :cond_0

    .line 191
    const-string v2, "AsyncHttpClient"

    const-string v3, "Beware! Using the fix is insecure, as it doesn\'t verify SSL certificates."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    if-ge p1, v4, :cond_1

    .line 195
    const/16 p1, 0x50

    .line 196
    const-string v2, "AsyncHttpClient"

    const-string v3, "Invalid HTTP port number specified, defaulting to 80"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :cond_1
    if-ge p2, v4, :cond_2

    .line 200
    const/16 p2, 0x1bb

    .line 201
    const-string v2, "AsyncHttpClient"

    const-string v3, "Invalid HTTPS port number specified, defaulting to 443"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_2
    if-eqz p0, :cond_3

    .line 208
    invoke-static {}, Lcom/mechat/loopj/android/http/MySSLSocketFactory;->getFixedSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    .line 212
    .local v1, sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :goto_0
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 213
    .local v0, schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v4

    invoke-direct {v2, v3, v4, p1}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 214
    new-instance v2, Lorg/apache/http/conn/scheme/Scheme;

    const-string v3, "https"

    invoke-direct {v2, v3, v1, p2}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v2}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 216
    return-object v0

    .line 210
    .end local v0           #schemeRegistry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    .end local v1           #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    :cond_3
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v1

    .restart local v1       #sslSocketFactory:Lorg/apache/http/conn/ssl/SSLSocketFactory;
    goto :goto_0
.end method

.method public static getUrlWithQueryString(ZLjava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;)Ljava/lang/String;
    .locals 3
    .parameter "shouldEncodeUrl"
    .parameter "url"
    .parameter "params"

    .prologue
    .line 1158
    if-nez p1, :cond_0

    .line 1159
    const/4 v1, 0x0

    .line 1177
    :goto_0
    return-object v1

    .line 1161
    :cond_0
    if-eqz p0, :cond_1

    .line 1162
    const-string v1, " "

    const-string v2, "%20"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 1164
    :cond_1
    if-eqz p2, :cond_2

    .line 1167
    invoke-virtual {p2}, Lcom/mechat/loopj/android/http/RequestParams;->getParamString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1171
    .local v0, paramString:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "?"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "&"

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local v0           #paramString:Ljava/lang/String;
    :cond_2
    move-object v1, p1

    .line 1177
    goto :goto_0

    .line 1172
    .restart local v0       #paramString:Ljava/lang/String;
    :cond_3
    const-string v1, "?"

    goto :goto_1
.end method

.method public static isInputStreamGZIPCompressed(Ljava/io/PushbackInputStream;)Z
    .locals 9
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1188
    if-nez p0, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return v3

    .line 1191
    :cond_1
    new-array v1, v8, [B

    .line 1192
    .local v1, signature:[B
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v0

    .line 1193
    .local v0, readStatus:I
    invoke-virtual {p0, v1}, Ljava/io/PushbackInputStream;->unread([B)V

    .line 1194
    aget-byte v5, v1, v3

    and-int/lit16 v5, v5, 0xff

    aget-byte v6, v1, v4

    shl-int/lit8 v6, v6, 0x8

    const v7, 0xff00

    and-int/2addr v6, v7

    or-int v2, v5, v6

    .line 1195
    .local v2, streamHeader:I
    if-ne v0, v8, :cond_0

    const v5, 0x8b1f

    if-ne v5, v2, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private paramsToEntity(Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    .locals 4
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    const/4 v3, 0x0

    .line 1236
    const/4 v1, 0x0

    .line 1239
    .local v1, entity:Lorg/apache/http/HttpEntity;
    if-eqz p1, :cond_0

    .line 1240
    :try_start_0
    invoke-virtual {p1, p2}, Lcom/mechat/loopj/android/http/RequestParams;->getEntity(Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1249
    :cond_0
    :goto_0
    return-object v1

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    .local v0, e:Ljava/io/IOException;
    if-eqz p2, :cond_1

    .line 1244
    const/4 v2, 0x0

    invoke-interface {p2, v2, v3, v3, v0}, Lcom/mechat/loopj/android/http/ResponseHandlerInterface;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 1246
    :cond_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static silentCloseInputStream(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"

    .prologue
    .line 1205
    if-eqz p0, :cond_0

    .line 1206
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 1208
    :catch_0
    move-exception v0

    .line 1209
    .local v0, e:Ljava/io/IOException;
    const-string v1, "AsyncHttpClient"

    const-string v2, "Cannot close input stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static silentCloseOutputStream(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "os"

    .prologue
    .line 1220
    if-eqz p0, :cond_0

    .line 1221
    :try_start_0
    invoke-virtual {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1226
    :cond_0
    :goto_0
    return-void

    .line 1223
    :catch_0
    move-exception v0

    .line 1224
    .local v0, e:Ljava/io/IOException;
    const-string v1, "AsyncHttpClient"

    const-string v2, "Cannot close output stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "header"
    .parameter "value"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    return-void
.end method

.method public cancelAllRequests(Z)V
    .locals 5
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 674
    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 681
    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 682
    return-void

    .line 674
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 675
    .local v1, requestList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/loopj/android/http/RequestHandle;>;"
    if-eqz v1, :cond_0

    .line 676
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mechat/loopj/android/http/RequestHandle;

    .line 677
    .local v0, requestHandle:Lcom/mechat/loopj/android/http/RequestHandle;
    invoke-virtual {v0, p1}, Lcom/mechat/loopj/android/http/RequestHandle;->cancel(Z)Z

    goto :goto_0
.end method

.method public cancelRequests(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "mayInterruptIfRunning"

    .prologue
    .line 641
    if-nez p1, :cond_0

    .line 642
    const-string v1, "AsyncHttpClient"

    const-string v2, "Passed null Context to cancelRequests"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :goto_0
    return-void

    .line 645
    :cond_0
    new-instance v0, Lcom/mechat/loopj/android/http/AsyncHttpClient$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/mechat/loopj/android/http/AsyncHttpClient$4;-><init>(Lcom/mechat/loopj/android/http/AsyncHttpClient;Landroid/content/Context;Z)V

    .line 657
    .local v0, r:Ljava/lang/Runnable;
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 658
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 660
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public clearBasicAuth()V
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/CredentialsProvider;->clear()V

    .line 628
    return-void
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 1024
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    .line 1025
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p3

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 1054
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/lang/String;)V

    .line 1055
    .local v3, httpDelete:Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 1056
    :cond_0
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "responseHandler"

    .prologue
    .line 1038
    new-instance v3, Lorg/apache/http/client/methods/HttpDelete;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpDelete;-><init>(Ljava/net/URI;)V

    .line 1039
    .local v3, delete:Lorg/apache/http/client/methods/HttpDelete;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpDelete;->setHeaders([Lorg/apache/http/Header;)V

    .line 1040
    :cond_0
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public delete(Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 1012
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->delete(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 802
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 789
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 817
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 818
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 819
    :cond_0
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 776
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 764
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->get(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 378
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public getHttpClient()Lorg/apache/http/client/HttpClient;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    return-object v0
.end method

.method public getHttpContext()Lorg/apache/http/protocol/HttpContext;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    return-object v0
.end method

.method public getMaxConnections()I
    .locals 1

    .prologue
    .line 443
    iget v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->maxConnections:I

    return v0
.end method

.method public getThreadPool()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 465
    iget v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->timeout:I

    return v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 732
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p4

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 1
    .parameter "context"
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 719
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 747
    new-instance v3, Lorg/apache/http/client/methods/HttpHead;

    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    invoke-static {v0, p2, p4}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->getUrlWithQueryString(ZLjava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpHead;-><init>(Ljava/lang/String;)V

    .line 748
    .local v3, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-eqz p3, :cond_0

    invoke-interface {v3, p3}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeaders([Lorg/apache/http/Header;)V

    .line 749
    :cond_0
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public head(Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 694
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->head(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public isUrlEncodingEnabled()Z
    .locals 1

    .prologue
    .line 1253
    iget-boolean v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    return v0
.end method

.method protected newAsyncHttpRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/AsyncHttpRequest;
    .locals 1
    .parameter "client"
    .parameter "httpContext"
    .parameter "uriRequest"
    .parameter "contentType"
    .parameter "responseHandler"
    .parameter "context"

    .prologue
    .line 1074
    new-instance v0, Lcom/mechat/loopj/android/http/AsyncHttpRequest;

    invoke-direct {v0, p1, p2, p3, p5}, Lcom/mechat/loopj/android/http/AsyncHttpRequest;-><init>(Lorg/apache/http/impl/client/AbstractHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)V

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 859
    invoke-direct {p0, p3, p4}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 876
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lcom/mechat/loopj/android/http/RequestParams;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "params"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 894
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 895
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p4, :cond_0

    invoke-direct {p0, p4, p6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 896
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 897
    :cond_1
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 918
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 919
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 846
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 834
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 6
    .parameter "context"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 959
    invoke-direct {p0, p3, p4}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->paramsToEntity(Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lorg/apache/http/HttpEntity;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 977
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    move-object v0, p0

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "headers"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"

    .prologue
    .line 996
    new-instance v0, Lorg/apache/http/client/methods/HttpPut;

    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpPut;-><init>(Ljava/net/URI;)V

    invoke-direct {p0, v0, p4}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->addEntityToRequestBase(Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;Lorg/apache/http/HttpEntity;)Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;

    move-result-object v3

    .line 997
    .local v3, request:Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
    if-eqz p3, :cond_0

    invoke-virtual {v3, p3}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;->setHeaders([Lorg/apache/http/Header;)V

    .line 998
    :cond_0
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    move-object v0, p0

    move-object v4, p5

    move-object v5, p6

    move-object v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 946
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 1
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    const/4 v0, 0x0

    .line 934
    invoke-virtual {p0, v0, p1, v0, p2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->put(Landroid/content/Context;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    move-result-object v0

    return-object v0
.end method

.method public removeAllHeaders()V
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 538
    return-void
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 556
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    return-void
.end method

.method protected sendRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/RequestHandle;
    .locals 6
    .parameter "client"
    .parameter "httpContext"
    .parameter "uriRequest"
    .parameter "contentType"
    .parameter "responseHandler"
    .parameter "context"

    .prologue
    .line 1090
    if-nez p3, :cond_0

    .line 1091
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "HttpUriRequest must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1094
    :cond_0
    if-nez p5, :cond_1

    .line 1095
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ResponseHandler must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1098
    :cond_1
    invoke-interface {p5}, Lcom/mechat/loopj/android/http/ResponseHandlerInterface;->getUseSynchronousMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1099
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Synchronous ResponseHandler used in AsyncHttpClient. You should create your response handler in a looper thread or use SyncHttpClient instead."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1102
    :cond_2
    if-eqz p4, :cond_3

    .line 1103
    const-string v4, "Content-Type"

    invoke-interface {p3, v4, p4}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1106
    :cond_3
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v4

    invoke-interface {p5, v4}, Lcom/mechat/loopj/android/http/ResponseHandlerInterface;->setRequestHeaders([Lorg/apache/http/Header;)V

    .line 1107
    invoke-interface {p3}, Lorg/apache/http/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object v4

    invoke-interface {p5, v4}, Lcom/mechat/loopj/android/http/ResponseHandlerInterface;->setRequestURI(Ljava/net/URI;)V

    .line 1109
    invoke-virtual/range {p0 .. p6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->newAsyncHttpRequest(Lorg/apache/http/impl/client/DefaultHttpClient;Lorg/apache/http/protocol/HttpContext;Lorg/apache/http/client/methods/HttpUriRequest;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;Landroid/content/Context;)Lcom/mechat/loopj/android/http/AsyncHttpRequest;

    move-result-object v1

    .line 1110
    .local v1, request:Lcom/mechat/loopj/android/http/AsyncHttpRequest;
    iget-object v4, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1111
    new-instance v2, Lcom/mechat/loopj/android/http/RequestHandle;

    invoke-direct {v2, v1}, Lcom/mechat/loopj/android/http/RequestHandle;-><init>(Lcom/mechat/loopj/android/http/AsyncHttpRequest;)V

    .line 1113
    .local v2, requestHandle:Lcom/mechat/loopj/android/http/RequestHandle;
    if-eqz p6, :cond_7

    .line 1115
    iget-object v4, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v4, p6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 1116
    .local v3, requestList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/loopj/android/http/RequestHandle;>;"
    iget-object v5, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    monitor-enter v5

    .line 1117
    if-nez v3, :cond_4

    .line 1118
    :try_start_0
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 1119
    iget-object v4, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->requestMap:Ljava/util/Map;

    invoke-interface {v4, p6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    :cond_4
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    instance-of v4, p5, Lcom/mechat/loopj/android/http/RangeFileAsyncHttpResponseHandler;

    if-eqz v4, :cond_5

    .line 1124
    check-cast p5, Lcom/mechat/loopj/android/http/RangeFileAsyncHttpResponseHandler;

    .end local p5
    invoke-virtual {p5, p3}, Lcom/mechat/loopj/android/http/RangeFileAsyncHttpResponseHandler;->updateRequestHeaders(Lorg/apache/http/client/methods/HttpUriRequest;)V

    .line 1126
    :cond_5
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1128
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1129
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mechat/loopj/android/http/RequestHandle;>;"
    :cond_6
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1136
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mechat/loopj/android/http/RequestHandle;>;"
    .end local v3           #requestList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/loopj/android/http/RequestHandle;>;"
    :cond_7
    return-object v2

    .line 1116
    .restart local v3       #requestList:Ljava/util/List;,"Ljava/util/List<Lcom/mechat/loopj/android/http/RequestHandle;>;"
    .restart local p5
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1130
    .end local p5
    .restart local v0       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/mechat/loopj/android/http/RequestHandle;>;"
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mechat/loopj/android/http/RequestHandle;

    invoke-virtual {v4}, Lcom/mechat/loopj/android/http/RequestHandle;->shouldBeGarbageCollected()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1131
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method public setAuthenticationPreemptive(Z)V
    .locals 3
    .parameter "isPreemtive"

    .prologue
    .line 616
    if-eqz p1, :cond_0

    .line 617
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/mechat/loopj/android/http/PreemtiveAuthorizationHttpRequestInterceptor;

    invoke-direct {v1}, Lcom/mechat/loopj/android/http/PreemtiveAuthorizationHttpRequestInterceptor;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->addRequestInterceptor(Lorg/apache/http/HttpRequestInterceptor;I)V

    .line 621
    :goto_0
    return-void

    .line 619
    :cond_0
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    const-class v1, Lcom/mechat/loopj/android/http/PreemtiveAuthorizationHttpRequestInterceptor;

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->removeRequestInterceptorByClass(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "username"
    .parameter "password"

    .prologue
    .line 567
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 568
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;)V
    .locals 1
    .parameter "username"
    .parameter "password"
    .parameter "scope"

    .prologue
    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;Z)V

    .line 592
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;Z)V
    .locals 2
    .parameter "username"
    .parameter "password"
    .parameter "scope"
    .parameter "preemtive"

    .prologue
    .line 604
    new-instance v0, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v0, p1, p2}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .local v0, credentials:Lorg/apache/http/auth/UsernamePasswordCredentials;
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v1

    if-nez p3, :cond_0

    sget-object p3, Lorg/apache/http/auth/AuthScope;->ANY:Lorg/apache/http/auth/AuthScope;

    .end local p3
    :cond_0
    invoke-interface {v1, p3, v0}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 606
    invoke-virtual {p0, p4}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->setAuthenticationPreemptive(Z)V

    .line 607
    return-void
.end method

.method public setBasicAuth(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .parameter "username"
    .parameter "password"
    .parameter "preemtive"

    .prologue
    .line 579
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->setBasicAuth(Ljava/lang/String;Ljava/lang/String;Lorg/apache/http/auth/AuthScope;Z)V

    .line 580
    return-void
.end method

.method public setCookieStore(Lorg/apache/http/client/CookieStore;)V
    .locals 2
    .parameter "cookieStore"

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpContext:Lorg/apache/http/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lorg/apache/http/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public setEnableRedirects(Z)V
    .locals 0
    .parameter "enableRedirects"

    .prologue
    .line 412
    invoke-virtual {p0, p1, p1, p1}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->setEnableRedirects(ZZZ)V

    .line 413
    return-void
.end method

.method public setEnableRedirects(ZZ)V
    .locals 1
    .parameter "enableRedirects"
    .parameter "enableRelativeRedirects"

    .prologue
    .line 404
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->setEnableRedirects(ZZZ)V

    .line 405
    return-void
.end method

.method public setEnableRedirects(ZZZ)V
    .locals 3
    .parameter "enableRedirects"
    .parameter "enableRelativeRedirects"
    .parameter "enableCircularRedirects"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v1

    const-string v2, "http.protocol.reject-relative-redirect"

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {v1, v2, v0}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 392
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.allow-circular-redirects"

    invoke-interface {v0, v1, p3}, Lorg/apache/http/params/HttpParams;->setBooleanParameter(Ljava/lang/String;Z)Lorg/apache/http/params/HttpParams;

    .line 393
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/mechat/loopj/android/http/MyRedirectHandler;

    invoke-direct {v1, p1}, Lcom/mechat/loopj/android/http/MyRedirectHandler;-><init>(Z)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 394
    return-void

    .line 391
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMaxConnections(I)V
    .locals 3
    .parameter "maxConnections"

    .prologue
    .line 452
    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    .line 453
    const/16 p1, 0xa

    .line 454
    :cond_0
    iput p1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->maxConnections:I

    .line 455
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 456
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    iget v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->maxConnections:I

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    .line 457
    return-void
.end method

.method public setMaxRetriesAndTimeout(II)V
    .locals 2
    .parameter "retries"
    .parameter "timeout"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v1, Lcom/mechat/loopj/android/http/RetryHandler;

    invoke-direct {v1, p1, p2}, Lcom/mechat/loopj/android/http/RetryHandler;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 530
    return-void
.end method

.method public setProxy(Ljava/lang/String;I)V
    .locals 3
    .parameter "hostname"
    .parameter "port"

    .prologue
    .line 490
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 491
    .local v1, proxy:Lorg/apache/http/HttpHost;
    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 492
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 493
    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "hostname"
    .parameter "port"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 504
    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getCredentialsProvider()Lorg/apache/http/client/CredentialsProvider;

    move-result-object v2

    .line 505
    new-instance v3, Lorg/apache/http/auth/AuthScope;

    invoke-direct {v3, p1, p2}, Lorg/apache/http/auth/AuthScope;-><init>(Ljava/lang/String;I)V

    .line 506
    new-instance v4, Lorg/apache/http/auth/UsernamePasswordCredentials;

    invoke-direct {v4, p3, p4}, Lorg/apache/http/auth/UsernamePasswordCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    invoke-interface {v2, v3, v4}, Lorg/apache/http/client/CredentialsProvider;->setCredentials(Lorg/apache/http/auth/AuthScope;Lorg/apache/http/auth/Credentials;)V

    .line 507
    new-instance v1, Lorg/apache/http/HttpHost;

    invoke-direct {v1, p1, p2}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;I)V

    .line 508
    .local v1, proxy:Lorg/apache/http/HttpHost;
    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 509
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    const-string v2, "http.route.default-proxy"

    invoke-interface {v0, v2, v1}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 510
    return-void
.end method

.method public setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V
    .locals 1
    .parameter "customRedirectHandler"

    .prologue
    .line 423
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;->setRedirectHandler(Lorg/apache/http/client/RedirectHandler;)V

    .line 424
    return-void
.end method

.method public setSSLSocketFactory(Lorg/apache/http/conn/ssl/SSLSocketFactory;)V
    .locals 4
    .parameter "sslSocketFactory"

    .prologue
    .line 519
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    const/16 v3, 0x1bb

    invoke-direct {v1, v2, p1, v3}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 520
    return-void
.end method

.method public setThreadPool(Ljava/util/concurrent/ExecutorService;)V
    .locals 0
    .parameter "threadPool"

    .prologue
    .line 359
    iput-object p1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 360
    return-void
.end method

.method public setTimeout(I)V
    .locals 4
    .parameter "timeout"

    .prologue
    .line 474
    const/16 v1, 0x3e8

    if-ge p1, v1, :cond_0

    .line 475
    const/16 p1, 0x2710

    .line 476
    :cond_0
    iput p1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->timeout:I

    .line 477
    iget-object v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 478
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    iget v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->timeout:I

    int-to-long v2, v1

    invoke-static {v0, v2, v3}, Lorg/apache/http/conn/params/ConnManagerParams;->setTimeout(Lorg/apache/http/params/HttpParams;J)V

    .line 479
    iget v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->timeout:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 480
    iget v1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->timeout:I

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 481
    return-void
.end method

.method public setURLEncodingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 1146
    iput-boolean p1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->isUrlEncodingEnabled:Z

    .line 1147
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 1
    .parameter "userAgent"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient;->httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-virtual {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 434
    return-void
.end method
