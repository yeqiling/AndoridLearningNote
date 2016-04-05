.class public Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;
.super Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;
.source "MyJsonHttpResponseHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseString"
    .parameter "throwable"

    .prologue
    .line 36
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, failureString:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "unknow"

    invoke-virtual {p0, v1, v2, v0}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;->onFailure(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 3
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    .line 30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, failureString:Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "unknow"

    invoke-virtual {p0, v1, v2, v0}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;->onFailure(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 4
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    .local v0, failureString:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, throwableStr:Ljava/lang/String;
    const-string v2, "timed out"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    const-string v2, "timed out"

    invoke-virtual {p0, p4, v2, v0}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;->onFailure(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    const-string v2, "unknow"

    invoke-virtual {p0, p4, v2, v0}, Lcom/mechat/mechatlibrary/callback/MyJsonHttpResponseHandler;->onFailure(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onFailure(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "errorResponse"
    .parameter "responseString"
    .parameter "responseWithThrowable"

    .prologue
    .line 43
    return-void
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 13
    invoke-super {p0, p1, p2, p3}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 14
    return-void
.end method
