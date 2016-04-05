.class Lcom/mechat/loopj/android/http/AsyncHttpClient$1;
.super Ljava/lang/Object;
.source "AsyncHttpClient.java"

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/loopj/android/http/AsyncHttpClient;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/loopj/android/http/AsyncHttpClient;


# direct methods
.method constructor <init>(Lcom/mechat/loopj/android/http/AsyncHttpClient;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 8
    .parameter "request"
    .parameter "context"

    .prologue
    .line 250
    const-string v2, "Accept-Encoding"

    invoke-interface {p1, v2}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    invoke-interface {p1, v2, v3}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    :cond_0
    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    #getter for: Lcom/mechat/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->access$0(Lcom/mechat/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 264
    return-void

    .line 253
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 254
    .local v0, header:Ljava/lang/String;
    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->containsHeader(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 255
    invoke-interface {p1, v0}, Lorg/apache/http/HttpRequest;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 256
    .local v1, overwritten:Lorg/apache/http/Header;
    const-string v2, "AsyncHttpClient"

    .line 257
    const-string v4, "Headers were overwritten! (%s | %s) overwrites (%s | %s)"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 258
    aput-object v0, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    #getter for: Lcom/mechat/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {v7}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->access$0(Lcom/mechat/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    .line 259
    invoke-interface {v1}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 257
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 256
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v1           #overwritten:Lorg/apache/http/Header;
    :cond_2
    iget-object v2, p0, Lcom/mechat/loopj/android/http/AsyncHttpClient$1;->this$0:Lcom/mechat/loopj/android/http/AsyncHttpClient;

    #getter for: Lcom/mechat/loopj/android/http/AsyncHttpClient;->clientHeaderMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/mechat/loopj/android/http/AsyncHttpClient;->access$0(Lcom/mechat/loopj/android/http/AsyncHttpClient;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v0, v2}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
