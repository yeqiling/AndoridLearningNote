.class public Lcom/mechat/mechatlibrary/utils/HttpUtils;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field public static final BASE_URL:Ljava/lang/String; = "https://android.meiqia.com/"

.field public static final CHAT_BASE_URL:Ljava/lang/String; = "https://chat.meiqia.com/"

.field public static final PIC_TOKEN_URL:Ljava/lang/String; = "https://chat.meiqia.com/qiniu/image/uptoken/"

.field public static final PIC_UPLOAD:Ljava/lang/String; = "http://upload.qiniu.com/"

.field public static final POLL_URL:Ljava/lang/String; = "https://chat.meiqia.com/"

.field public static final QI_NIU_BASE:Ljava/lang/String; = "https://dn-zmec.qbox.me/"

.field private static USER_AGENT:Ljava/lang/String; = null

.field public static final VISIT_URL:Ljava/lang/String; = "https://stat.meiqia.com/sdk/"

.field public static final VOICE_UPLOAD:Ljava/lang/String; = "https://voiceupload.meiqia.com/"

.field private static client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

.field private static syscClient:Lcom/mechat/loopj/android/http/SyncHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "Mozilla/5.0 (Linux; U; Android 4.3; zh-CN; NokiaX2DS Build/JLS36C) AppleWebKit/533.1 (KHTML, like Gecko) Version/4.0 UCBrowser/9.9.3.478 U3/0.8.0 Mobile Safari/533.1"

    sput-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->USER_AGENT:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/mechat/loopj/android/http/AsyncHttpClient;

    invoke-direct {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;-><init>()V

    sput-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    .line 52
    new-instance v0, Lcom/mechat/loopj/android/http/SyncHttpClient;

    invoke-direct {v0}, Lcom/mechat/loopj/android/http/SyncHttpClient;-><init>()V

    sput-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->syscClient:Lcom/mechat/loopj/android/http/SyncHttpClient;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;Lcom/mechat/loopj/android/http/FileAsyncHttpResponseHandler;)V
    .locals 2
    .parameter "url"
    .parameter "responseHandler"

    .prologue
    .line 64
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->removeAllHeaders()V

    .line 66
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 67
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0, p0, p1}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    .line 68
    return-void
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 3
    .parameter "baseUrl"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 55
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->removeAllHeaders()V

    .line 56
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    const-string v1, "User-Agent"

    sget-object v2, Lcom/mechat/mechatlibrary/utils/HttpUtils;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.allow-circular-redirects"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 58
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    invoke-static {p0, p1}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->get(Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    .line 60
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 61
    return-void
.end method

.method private static getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "baseUrl"
    .parameter "relativeUrl"

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVoiceUploadHeaders()[Lorg/apache/http/Header;
    .locals 5

    .prologue
    .line 103
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    .line 104
    const-string v3, "Authorization"

    .line 105
    const-string v4, "ErHe-7QlmVKBIH_zTfwjmHdOjIFy3wGnA63CpN5q:C269eEI_gDkqUYylK7YE4GEDczw=:eyJzY29wZSI6Im1lY2hhdC1tZWRpYSIsInBlcnNpc3RlbnRPcHMiOiJhdnRodW1iL21wMyIsImRlYWRsaW5lIjoxNDI3NDg3NjcyfQ=="

    .line 103
    invoke-direct {v0, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .local v0, header1:Lorg/apache/http/Header;
    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v3, "Content-Type"

    const-string v4, "application/octet-stream"

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .local v1, header2:Lorg/apache/http/Header;
    const/4 v3, 0x2

    new-array v2, v3, [Lorg/apache/http/Header;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 108
    .local v2, headers:[Lorg/apache/http/Header;
    return-object v2
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;[Lorg/apache/http/Header;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"
    .parameter "headers"

    .prologue
    .line 90
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->removeAllHeaders()V

    .line 91
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    const-string v1, "User-Agent"

    sget-object v2, Lcom/mechat/mechatlibrary/utils/HttpUtils;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.allow-circular-redirects"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 93
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    .line 95
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 96
    return-void
.end method

.method public static post(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V
    .locals 3
    .parameter "baseUrl"
    .parameter "url"
    .parameter "params"
    .parameter "responseHandler"

    .prologue
    .line 71
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->removeAllHeaders()V

    .line 72
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    const-string v1, "User-Agent"

    sget-object v2, Lcom/mechat/mechatlibrary/utils/HttpUtils;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    invoke-virtual {v0}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->getHttpClient()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    const-string v1, "http.protocol.allow-circular-redirects"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/apache/http/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/params/HttpParams;

    .line 74
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    invoke-static {p0, p1}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->getAbsoluteUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->post(Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    .line 76
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->client:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->setTimeout(I)V

    .line 77
    return-void
.end method

.method public static postSysc(Landroid/content/Context;Ljava/lang/String;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;[Lorg/apache/http/Header;)V
    .locals 7
    .parameter "context"
    .parameter "url"
    .parameter "entity"
    .parameter "contentType"
    .parameter "responseHandler"
    .parameter "headers"

    .prologue
    .line 81
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->syscClient:Lcom/mechat/loopj/android/http/SyncHttpClient;

    invoke-virtual {v0}, Lcom/mechat/loopj/android/http/SyncHttpClient;->removeAllHeaders()V

    .line 82
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->syscClient:Lcom/mechat/loopj/android/http/SyncHttpClient;

    const-string v1, "User-Agent"

    sget-object v2, Lcom/mechat/mechatlibrary/utils/HttpUtils;->USER_AGENT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/mechat/loopj/android/http/SyncHttpClient;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->syscClient:Lcom/mechat/loopj/android/http/SyncHttpClient;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/mechat/loopj/android/http/SyncHttpClient;->post(Landroid/content/Context;Ljava/lang/String;[Lorg/apache/http/Header;Lorg/apache/http/HttpEntity;Ljava/lang/String;Lcom/mechat/loopj/android/http/ResponseHandlerInterface;)Lcom/mechat/loopj/android/http/RequestHandle;

    .line 85
    sget-object v0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->syscClient:Lcom/mechat/loopj/android/http/SyncHttpClient;

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Lcom/mechat/loopj/android/http/SyncHttpClient;->setTimeout(I)V

    .line 86
    return-void
.end method

.method public static final setUserAgent(Ljava/lang/String;)V
    .locals 0
    .parameter "userAgent"

    .prologue
    .line 48
    sput-object p0, Lcom/mechat/mechatlibrary/utils/HttpUtils;->USER_AGENT:Ljava/lang/String;

    .line 49
    return-void
.end method
