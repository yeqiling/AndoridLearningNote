.class public Lcom/hanyou/leyusdk/HTTPClient;
.super Ljava/lang/Object;
.source "HTTPClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "ctx"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static readStream(Ljava/io/InputStream;)[B
    .locals 4
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 114
    .local v0, bout:Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v1, v3, [B

    .line 115
    .local v1, buffer:[B
    const/4 v2, 0x0

    .line 116
    .local v2, len:I
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 120
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 122
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 117
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method


# virtual methods
.method public Connect(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "httpUrl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 82
    const-string v2, ""

    .line 83
    .local v2, resultData:Ljava/lang/String;
    const/4 v4, 0x0

    .line 85
    .local v4, url:Ljava/net/URL;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v4           #url:Ljava/net/URL;
    .local v5, url:Ljava/net/URL;
    move-object v4, v5

    .line 88
    .end local v5           #url:Ljava/net/URL;
    .restart local v4       #url:Ljava/net/URL;
    :goto_0
    if-eqz v4, :cond_0

    .line 91
    :try_start_1
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v7

    invoke-static {v7}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v6

    .line 90
    check-cast v6, Ljava/net/HttpURLConnection;

    .line 92
    .local v6, urlConn:Ljava/net/HttpURLConnection;
    const/16 v7, 0x1388

    invoke-virtual {v6, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 94
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_1

    .line 95
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 96
    .local v1, is:Ljava/io/InputStream;
    invoke-static {v1}, Lcom/hanyou/leyusdk/HTTPClient;->readStream(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 97
    .local v0, data:[B
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    .end local v2           #resultData:Ljava/lang/String;
    .local v3, resultData:Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v3

    .line 103
    .end local v0           #data:[B
    .end local v1           #is:Ljava/io/InputStream;
    .end local v3           #resultData:Ljava/lang/String;
    .restart local v2       #resultData:Ljava/lang/String;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 109
    .end local v6           #urlConn:Ljava/net/HttpURLConnection;
    :cond_0
    :goto_2
    return-object v2

    .line 100
    .restart local v6       #urlConn:Ljava/net/HttpURLConnection;
    :cond_1
    const-string v2, ""
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 105
    .end local v6           #urlConn:Ljava/net/HttpURLConnection;
    :catch_0
    move-exception v7

    goto :goto_2

    .end local v2           #resultData:Ljava/lang/String;
    .restart local v0       #data:[B
    .restart local v1       #is:Ljava/io/InputStream;
    .restart local v3       #resultData:Ljava/lang/String;
    .restart local v6       #urlConn:Ljava/net/HttpURLConnection;
    :catch_1
    move-exception v7

    move-object v2, v3

    .end local v3           #resultData:Ljava/lang/String;
    .restart local v2       #resultData:Ljava/lang/String;
    goto :goto_2

    .line 86
    .end local v0           #data:[B
    .end local v1           #is:Ljava/io/InputStream;
    .end local v6           #urlConn:Ljava/net/HttpURLConnection;
    :catch_2
    move-exception v7

    goto :goto_0
.end method

.method public PostConnect(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "httpUrl"
    .parameter "str"

    .prologue
    .line 49
    const-string v4, ""

    .line 50
    .local v4, resultData:Ljava/lang/String;
    new-instance v1, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v1, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 52
    .local v1, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v3, params:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    const-string v6, "data"

    invoke-direct {v5, v6, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :try_start_0
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 59
    new-instance v5, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v5}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 60
    instance-of v6, v5, Lorg/apache/http/client/HttpClient;

    if-nez v6, :cond_1

    invoke-virtual {v5, v1}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 62
    .local v2, httpResponse:Lorg/apache/http/HttpResponse;
    :goto_0
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 64
    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .end local v2           #httpResponse:Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_1
    return-object v4

    .line 60
    :cond_1
    check-cast v5, Lorg/apache/http/client/HttpClient;

    invoke-static {v5, v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->execute(Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_1

    .line 70
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 73
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception v0

    .line 75
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public getInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "httpUrl"

    .prologue
    .line 30
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    .local v4, url:Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    invoke-static {v5}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 32
    .local v0, conn:Ljava/net/HttpURLConnection;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 33
    const/16 v5, 0x2710

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 34
    const-string v5, "GET"

    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 35
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(I)V

    .line 36
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_0

    .line 37
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 38
    .local v3, inputStream:Ljava/io/InputStream;
    invoke-static {v3}, Lcom/hanyou/leyusdk/HTTPClient;->readStream(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 39
    .local v1, data:[B
    new-instance v5, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-direct {v5, v1, v6}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v1           #data:[B
    .end local v3           #inputStream:Ljava/io/InputStream;
    .end local v4           #url:Ljava/net/URL;
    :goto_0
    return-object v5

    .line 41
    .restart local v0       #conn:Ljava/net/HttpURLConnection;
    .restart local v4       #url:Ljava/net/URL;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 43
    .end local v0           #conn:Ljava/net/HttpURLConnection;
    .end local v4           #url:Ljava/net/URL;
    :catch_0
    move-exception v2

    .line 44
    .local v2, ee:Ljava/lang/Exception;
    const-string v5, ""

    goto :goto_0
.end method
