.class Lcom/mechat/mechatlibrary/MCClient$7;
.super Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCClient;->getMessageFromNet(Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MCClient;

.field private final synthetic val$chatMessageList:Ljava/util/List;

.field private final synthetic val$onGetMessagesCallback:Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MCClient;Ljava/util/List;Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCClient$7;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCClient$7;->val$chatMessageList:Ljava/util/List;

    iput-object p3, p0, Lcom/mechat/mechatlibrary/MCClient$7;->val$onGetMessagesCallback:Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;

    .line 761
    invoke-direct {p0}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "statusCode"
    .parameter "headers"
    .parameter "responseString"
    .parameter "throwable"

    .prologue
    .line 797
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 799
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

    .line 800
    .local v0, failureString:Ljava/lang/String;
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient$7;->val$onGetMessagesCallback:Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;

    const-string v2, "unknow"

    invoke-interface {v1, v2}, Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;->onFailure(Ljava/lang/String;)V

    .line 801
    const-string v1, "MeChatClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMessageFromNet "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 4
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 807
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    .line 808
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

    .line 809
    .local v0, failureString:Ljava/lang/String;
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient$7;->val$onGetMessagesCallback:Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;

    const-string v2, "unknow"

    invoke-interface {v1, v2}, Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;->onFailure(Ljava/lang/String;)V

    .line 810
    const-string v1, "MeChatClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getMessageFromNet "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 816
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 817
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

    .line 818
    .local v0, failureString:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 819
    .local v1, throwableStr:Ljava/lang/String;
    const-string v2, "timed out"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 820
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$7;->val$onGetMessagesCallback:Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;

    const-string v3, "timed out"

    invoke-interface {v2, v3}, Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;->onFailure(Ljava/lang/String;)V

    .line 824
    :goto_0
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getMessageFromNet "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    return-void

    .line 822
    :cond_0
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$7;->val$onGetMessagesCallback:Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;

    const-string v3, "unknow"

    invoke-interface {v2, v3}, Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 8
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 765
    invoke-super {p0, p1, p2, p3}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 769
    :try_start_0
    const-string v5, "success"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 770
    const-string v5, "MeChatClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getMessageFromNet suc response = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-string v5, "msgs"

    invoke-virtual {p3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 773
    .local v2, jsonArray:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_0

    .line 780
    iget-object v5, p0, Lcom/mechat/mechatlibrary/MCClient$7;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    #getter for: Lcom/mechat/mechatlibrary/MCClient;->mcMessageDBManager:Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;
    invoke-static {v5}, Lcom/mechat/mechatlibrary/MCClient;->access$10(Lcom/mechat/mechatlibrary/MCClient;)Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;

    move-result-object v5

    iget-object v6, p0, Lcom/mechat/mechatlibrary/MCClient$7;->val$chatMessageList:Ljava/util/List;

    invoke-virtual {v5, v6}, Lcom/mechat/mechatlibrary/dao/MCMessageDBManager;->saveMCMessageList(Ljava/util/List;)V

    .line 783
    iget-object v5, p0, Lcom/mechat/mechatlibrary/MCClient$7;->val$onGetMessagesCallback:Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;

    iget-object v6, p0, Lcom/mechat/mechatlibrary/MCClient$7;->val$chatMessageList:Ljava/util/List;

    invoke-interface {v5, v6}, Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;->onSuccess(Ljava/util/List;)V

    .line 792
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    :goto_1
    return-void

    .line 774
    .restart local v1       #i:I
    .restart local v2       #jsonArray:Lorg/json/JSONArray;
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 776
    .local v4, msgObject:Lorg/json/JSONObject;
    invoke-static {v4}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getMCMessageFromJsonObject(Lorg/json/JSONObject;)Lcom/mechat/mechatlibrary/bean/MCMessage;

    move-result-object v3

    .line 777
    .local v3, msg:Lcom/mechat/mechatlibrary/bean/MCMessage;
    iget-object v5, p0, Lcom/mechat/mechatlibrary/MCClient$7;->val$chatMessageList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 785
    .end local v1           #i:I
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .end local v3           #msg:Lcom/mechat/mechatlibrary/bean/MCMessage;
    .end local v4           #msgObject:Lorg/json/JSONObject;
    :cond_1
    iget-object v5, p0, Lcom/mechat/mechatlibrary/MCClient$7;->val$onGetMessagesCallback:Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;

    const-string v6, "unknow"

    invoke-interface {v5, v6}, Lcom/mechat/mechatlibrary/callback/OnGetMessagesCallback;->onFailure(Ljava/lang/String;)V

    .line 786
    const-string v5, "MeChatClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getMessageFromNet failed response = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 790
    const-string v5, "MeChatClient"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getMessageFromNet failed catch exception response = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
