.class public Lcom/hanyou/leyusdk/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;
    }
.end annotation


# static fields
.field private static final BITMAP:I = 0x4

.field private static final DELETE:I = 0x3

.field public static final DID_ERROR:I = 0x1

.field public static final DID_START:I = 0x0

.field public static final DID_SUCCEED:I = 0x2

.field private static final GET:I = 0x0

.field private static final POST:I = 0x1

.field private static final PUT:I = 0x2

.field private static final handler:Landroid/os/Handler;


# instance fields
.field private data:Ljava/lang/String;

.field private httpClient:Lorg/apache/http/client/HttpClient;

.field private listener:Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;

.field private method:I

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    new-instance v0, Lcom/hanyou/leyusdk/HttpConnection$1;

    invoke-direct {v0}, Lcom/hanyou/leyusdk/HttpConnection$1;-><init>()V

    sput-object v0, Lcom/hanyou/leyusdk/HttpConnection;->handler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 3

    .prologue
    const/16 v2, 0x4e20

    .line 142
    new-instance v1, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v1}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 143
    .local v1, httpParams:Lorg/apache/http/params/HttpParams;
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 144
    invoke-static {v1, v2}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 146
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 147
    .local v0, httpClient:Lorg/apache/http/impl/client/DefaultHttpClient;
    return-object v0
.end method

.method public static isHttpSuccessExecuted(Lorg/apache/http/HttpResponse;)Z
    .locals 4
    .parameter "response"

    .prologue
    .line 151
    invoke-interface {p0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    .line 152
    .local v0, statusCode:I
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "statusCode:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 153
    const/16 v1, 0xc7

    if-le v0, v1, :cond_0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendMessage(Ljava/lang/String;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 133
    sget-object v2, Lcom/hanyou/leyusdk/HttpConnection;->handler:Landroid/os/Handler;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/hanyou/leyusdk/HttpConnection;->listener:Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 134
    .local v1, message:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    .local v0, data:Landroid/os/Bundle;
    const-string v2, "callbackkey"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 137
    sget-object v2, Lcom/hanyou/leyusdk/HttpConnection;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 139
    return-void
.end method


# virtual methods
.method public bitmap(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 71
    const/4 v0, 0x4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hanyou/leyusdk/HttpConnection;->listener:Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/hanyou/leyusdk/HttpConnection;->create(ILjava/lang/String;Ljava/lang/String;Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;)V

    .line 72
    return-void
.end method

.method public create(ILjava/lang/String;Ljava/lang/String;Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;)V
    .locals 1
    .parameter "method"
    .parameter "url"
    .parameter "data"
    .parameter "listener"

    .prologue
    .line 47
    iput p1, p0, Lcom/hanyou/leyusdk/HttpConnection;->method:I

    .line 48
    iput-object p2, p0, Lcom/hanyou/leyusdk/HttpConnection;->url:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/hanyou/leyusdk/HttpConnection;->data:Ljava/lang/String;

    .line 50
    iput-object p4, p0, Lcom/hanyou/leyusdk/HttpConnection;->listener:Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;

    .line 51
    invoke-static {}, Lcom/hanyou/leyusdk/ConnectionManager;->getInstance()Lcom/hanyou/leyusdk/ConnectionManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/hanyou/leyusdk/ConnectionManager;->push(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 67
    const/4 v0, 0x3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hanyou/leyusdk/HttpConnection;->listener:Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/hanyou/leyusdk/HttpConnection;->create(ILjava/lang/String;Ljava/lang/String;Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;)V

    .line 68
    return-void
.end method

.method public get(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 55
    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/hanyou/leyusdk/HttpConnection;->listener:Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/hanyou/leyusdk/HttpConnection;->create(ILjava/lang/String;Ljava/lang/String;Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;)V

    .line 56
    return-void
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;)V
    .locals 1
    .parameter "url"
    .parameter "data"
    .parameter "listener"

    .prologue
    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/hanyou/leyusdk/HttpConnection;->create(ILjava/lang/String;Ljava/lang/String;Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;)V

    .line 60
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "url"
    .parameter "data"

    .prologue
    .line 63
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/hanyou/leyusdk/HttpConnection;->listener:Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/hanyou/leyusdk/HttpConnection;->create(ILjava/lang/String;Ljava/lang/String;Lcom/hanyou/leyusdk/HttpConnection$CallbackListener;)V

    .line 64
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 107
    invoke-static {}, Lcom/hanyou/leyusdk/HttpConnection;->getHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v4

    iput-object v4, p0, Lcom/hanyou/leyusdk/HttpConnection;->httpClient:Lorg/apache/http/client/HttpClient;

    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    :try_start_0
    iget v4, p0, Lcom/hanyou/leyusdk/HttpConnection;->method:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v4, :pswitch_data_0

    .line 129
    :goto_0
    invoke-static {}, Lcom/hanyou/leyusdk/ConnectionManager;->getInstance()Lcom/hanyou/leyusdk/ConnectionManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/hanyou/leyusdk/ConnectionManager;->didComplete(Ljava/lang/Runnable;)V

    .line 130
    return-void

    .line 112
    :pswitch_0
    :try_start_1
    iget-object v4, p0, Lcom/hanyou/leyusdk/HttpConnection;->httpClient:Lorg/apache/http/client/HttpClient;

    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    iget-object v6, p0, Lcom/hanyou/leyusdk/HttpConnection;->url:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    instance-of v6, v4, Lorg/apache/http/client/HttpClient;

    if-nez v6, :cond_0

    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 113
    :goto_1
    goto :goto_0

    .line 112
    :cond_0
    check-cast v4, Lorg/apache/http/client/HttpClient;

    invoke-static {v4, v5}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    goto :goto_1

    .line 115
    :pswitch_1
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    iget-object v4, p0, Lcom/hanyou/leyusdk/HttpConnection;->url:Ljava/lang/String;

    invoke-direct {v1, v4}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, httpPost:Lorg/apache/http/client/methods/HttpPost;
    iget-object v4, p0, Lcom/hanyou/leyusdk/HttpConnection;->httpClient:Lorg/apache/http/client/HttpClient;

    instance-of v5, v4, Lorg/apache/http/client/HttpClient;

    if-nez v5, :cond_1

    invoke-interface {v4, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 117
    :goto_2
    invoke-static {v2}, Lcom/hanyou/leyusdk/HttpConnection;->isHttpSuccessExecuted(Lorg/apache/http/HttpResponse;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 118
    invoke-static {v4}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v3

    .line 120
    .local v3, result:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/hanyou/leyusdk/HttpConnection;->sendMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    .end local v1           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v3           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "fail"

    invoke-direct {p0, v4}, Lcom/hanyou/leyusdk/HttpConnection;->sendMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #httpPost:Lorg/apache/http/client/methods/HttpPost;
    :cond_1
    :try_start_2
    check-cast v4, Lorg/apache/http/client/HttpClient;

    invoke-static {v4, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    goto :goto_2

    .line 122
    :cond_2
    const-string v4, "fail"

    invoke-direct {p0, v4}, Lcom/hanyou/leyusdk/HttpConnection;->sendMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
