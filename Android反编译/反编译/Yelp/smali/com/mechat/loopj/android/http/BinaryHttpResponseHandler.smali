.class public abstract Lcom/mechat/loopj/android/http/BinaryHttpResponseHandler;
.super Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;
.source "BinaryHttpResponseHandler.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BinaryHttpResponseHandler"


# instance fields
.field private mAllowedContentTypes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 57
    const-string v2, "application/octet-stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 58
    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 59
    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 60
    const-string v2, "image/gif"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mechat/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 78
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3
    .parameter "allowedContentTypes"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;-><init>()V

    .line 56
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 57
    const-string v2, "application/octet-stream"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 58
    const-string v2, "image/jpeg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 59
    const-string v2, "image/png"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 60
    const-string v2, "image/gif"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/mechat/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iput-object p1, p0, Lcom/mechat/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    const-string v0, "BinaryHttpResponseHandler"

    const-string v1, "Constructor passed allowedContentTypes was null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAllowedContentTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mechat/loopj/android/http/BinaryHttpResponseHandler;->mAllowedContentTypes:[Ljava/lang/String;

    return-object v0
.end method

.method public abstract onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end method

.method public abstract onSuccess(I[Lorg/apache/http/Header;[B)V
.end method

.method public final sendResponseMessage(Lorg/apache/http/HttpResponse;)V
    .locals 13
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v6, 0x0

    .line 102
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    .line 103
    .local v5, status:Lorg/apache/http/StatusLine;
    const-string v7, "Content-Type"

    invoke-interface {p1, v7}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    .line 104
    .local v2, contentTypeHeaders:[Lorg/apache/http/Header;
    array-length v7, v2

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 107
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 108
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    .line 110
    new-instance v8, Lorg/apache/http/client/HttpResponseException;

    .line 111
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 112
    const-string v10, "None, or more than one, Content-Type Header found!"

    .line 110
    invoke-direct {v8, v9, v10}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 106
    invoke-virtual {p0, v6, v7, v12, v8}, Lcom/mechat/loopj/android/http/BinaryHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    .line 142
    :goto_0
    return-void

    .line 117
    :cond_0
    aget-object v1, v2, v6

    .line 118
    .local v1, contentTypeHeader:Lorg/apache/http/Header;
    const/4 v4, 0x0

    .line 119
    .local v4, foundAllowedContentType:Z
    invoke-virtual {p0}, Lcom/mechat/loopj/android/http/BinaryHttpResponseHandler;->getAllowedContentTypes()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    :goto_1
    if-lt v6, v8, :cond_1

    .line 128
    if-nez v4, :cond_3

    .line 131
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    .line 132
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    .line 134
    new-instance v8, Lorg/apache/http/client/HttpResponseException;

    .line 135
    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    .line 136
    const-string v10, "Content-Type not allowed!"

    .line 134
    invoke-direct {v8, v9, v10}, Lorg/apache/http/client/HttpResponseException;-><init>(ILjava/lang/String;)V

    .line 130
    invoke-virtual {p0, v6, v7, v12, v8}, Lcom/mechat/loopj/android/http/BinaryHttpResponseHandler;->sendFailureMessage(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V

    goto :goto_0

    .line 119
    :cond_1
    aget-object v0, v7, v6

    .line 121
    .local v0, anAllowedContentType:Ljava/lang/String;
    :try_start_0
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    if-eqz v9, :cond_2

    .line 122
    const/4 v4, 0x1

    .line 119
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 124
    :catch_0
    move-exception v3

    .line 125
    .local v3, e:Ljava/util/regex/PatternSyntaxException;
    const-string v9, "BinaryHttpResponseHandler"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Given pattern is not valid: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 141
    .end local v0           #anAllowedContentType:Ljava/lang/String;
    .end local v3           #e:Ljava/util/regex/PatternSyntaxException;
    :cond_3
    invoke-super {p0, p1}, Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;->sendResponseMessage(Lorg/apache/http/HttpResponse;)V

    goto :goto_0
.end method
