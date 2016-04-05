.class Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;[BLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;

.field private final synthetic val$headers:[Lorg/apache/http/Header;

.field private final synthetic val$responseBytes:[B

.field private final synthetic val$statusCode:I

.field private final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;[BI[Lorg/apache/http/Header;Ljava/lang/Throwable;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;

    iput-object p2, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->val$responseBytes:[B

    iput p3, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iput-object p4, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iput-object p5, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;)Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;
    .locals 1
    .parameter

    .prologue
    .line 189
    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;

    iget-object v1, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->val$responseBytes:[B

    invoke-virtual {v0, v1}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->parseResponse([B)Ljava/lang/Object;

    move-result-object v2

    .line 194
    .local v2, jsonResponse:Ljava/lang/Object;
    iget-object v7, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;

    new-instance v0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2$1;

    iget v3, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v4, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    iget-object v5, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->val$throwable:Ljava/lang/Throwable;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2$1;-><init>(Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;Ljava/lang/Object;I[Lorg/apache/http/Header;Ljava/lang/Throwable;)V

    invoke-virtual {v7, v0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v2           #jsonResponse:Ljava/lang/Object;
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v6

    .line 211
    .local v6, ex:Lorg/json/JSONException;
    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->this$0:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;

    new-instance v1, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2$2;

    iget v3, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->val$statusCode:I

    iget-object v4, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;->val$headers:[Lorg/apache/http/Header;

    invoke-direct {v1, p0, v3, v4, v6}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2$2;-><init>(Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$2;I[Lorg/apache/http/Header;Lorg/json/JSONException;)V

    invoke-virtual {v0, v1}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->postRunnable(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
