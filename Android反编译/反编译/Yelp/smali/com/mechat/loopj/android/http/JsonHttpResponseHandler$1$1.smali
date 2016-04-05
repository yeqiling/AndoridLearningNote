.class Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;
.super Ljava/lang/Object;
.source "JsonHttpResponseHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;

.field private final synthetic val$headers:[Lorg/apache/http/Header;

.field private final synthetic val$jsonResponse:Ljava/lang/Object;

.field private final synthetic val$statusCode:I


# direct methods
.method constructor <init>(Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;Ljava/lang/Object;I[Lorg/apache/http/Header;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;

    iput-object p2, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    iput p3, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$statusCode:I

    iput-object p4, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$headers:[Lorg/apache/http/Header;

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;

    #getter for: Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;
    invoke-static {v0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;->access$0(Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;)Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;

    move-result-object v1

    iget v2, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$statusCode:I

    iget-object v3, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3, v0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 163
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;

    #getter for: Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;
    invoke-static {v0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;->access$0(Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;)Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;

    move-result-object v1

    iget v2, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$statusCode:I

    iget-object v3, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v1, v2, v3, v0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 155
    :cond_1
    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 156
    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;

    #getter for: Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;
    invoke-static {v0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;->access$0(Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;)Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;

    move-result-object v1

    iget v2, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$statusCode:I

    iget-object v3, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$headers:[Lorg/apache/http/Header;

    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONException;

    .line 157
    const-string v5, "Response cannot be parsed as JSON data"

    invoke-direct {v4, v5}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v0, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->this$1:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;

    #getter for: Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;->this$0:Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;
    invoke-static {v0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;->access$0(Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1;)Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;

    move-result-object v0

    iget v1, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$statusCode:I

    iget-object v2, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$headers:[Lorg/apache/http/Header;

    new-instance v3, Lorg/json/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unexpected response type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    iget-object v5, p0, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler$1$1;->val$jsonResponse:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 159
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
