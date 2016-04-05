.class public abstract Lcom/mechat/loopj/android/http/TextHttpResponseHandler;
.super Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;
.source "TextHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextHttpResponseHandler"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    const-string v0, "UTF-8"

    invoke-direct {p0, v0}, Lcom/mechat/loopj/android/http/TextHttpResponseHandler;-><init>(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "encoding"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/mechat/loopj/android/http/TextHttpResponseHandler;->setCharset(Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static getResponseString([BLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "stringBytes"
    .parameter "charset"

    .prologue
    const/4 v1, 0x0

    .line 116
    if-nez p0, :cond_0

    .line 119
    :goto_0
    return-object v1

    .line 116
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    const-string v2, "TextHttpResponseHandler"

    const-string v3, "Encoding response into string failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public abstract onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
.end method

.method public onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
    .locals 1
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBytes"
    .parameter "throwable"

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/mechat/loopj/android/http/TextHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/mechat/loopj/android/http/TextHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 105
    return-void
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V
.end method

.method public onSuccess(I[Lorg/apache/http/Header;[B)V
    .locals 1
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseBytes"

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/TextHttpResponseHandler;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/mechat/loopj/android/http/TextHttpResponseHandler;->getResponseString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/mechat/loopj/android/http/TextHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Ljava/lang/String;)V

    .line 100
    return-void
.end method
