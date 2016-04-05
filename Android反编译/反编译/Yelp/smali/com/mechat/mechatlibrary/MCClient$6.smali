.class Lcom/mechat/mechatlibrary/MCClient$6;
.super Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;
.source "MCClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/MCClient;->getEventFromNet(Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/MCClient;

.field private final synthetic val$eventList:Ljava/util/List;

.field private final synthetic val$onGetEventCallback:Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/MCClient;Ljava/util/List;Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/MCClient$6;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    iput-object p2, p0, Lcom/mechat/mechatlibrary/MCClient$6;->val$eventList:Ljava/util/List;

    iput-object p3, p0, Lcom/mechat/mechatlibrary/MCClient$6;->val$onGetEventCallback:Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;

    .line 611
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
    .line 645
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 647
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

    .line 648
    .local v0, failureString:Ljava/lang/String;
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient$6;->val$onGetEventCallback:Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;

    const-string v2, "unknow"

    invoke-interface {v1, v2}, Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;->onFailure(Ljava/lang/String;)V

    .line 649
    const-string v1, "MeChatClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEventFromNet "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V
    .locals 4
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 655
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONArray;)V

    .line 656
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

    .line 657
    .local v0, failureString:Ljava/lang/String;
    iget-object v1, p0, Lcom/mechat/mechatlibrary/MCClient$6;->val$onGetEventCallback:Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;

    const-string v2, "unknow"

    invoke-interface {v1, v2}, Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;->onFailure(Ljava/lang/String;)V

    .line 658
    const-string v1, "MeChatClient"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getEventFromNet "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-void
.end method

.method public onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "statusCode"
    .parameter "headers"
    .parameter "throwable"
    .parameter "errorResponse"

    .prologue
    .line 664
    invoke-super {p0, p1, p2, p3, p4}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onFailure(I[Lorg/apache/http/Header;Ljava/lang/Throwable;Lorg/json/JSONObject;)V

    .line 665
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

    .line 666
    .local v0, failureString:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, throwableStr:Ljava/lang/String;
    const-string v2, "timed out"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$6;->val$onGetEventCallback:Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;

    const-string v3, "timed out"

    invoke-interface {v2, v3}, Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;->onFailure(Ljava/lang/String;)V

    .line 672
    :goto_0
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getEventFromNet "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-void

    .line 670
    :cond_0
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$6;->val$onGetEventCallback:Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;

    const-string v3, "unknow"

    invoke-interface {v2, v3}, Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;->onFailure(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V
    .locals 5
    .parameter "statusCode"
    .parameter "headers"
    .parameter "response"

    .prologue
    .line 615
    invoke-super {p0, p1, p2, p3}, Lcom/mechat/loopj/android/http/JsonHttpResponseHandler;->onSuccess(I[Lorg/apache/http/Header;Lorg/json/JSONObject;)V

    .line 619
    :try_start_0
    const-string v2, "success"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 620
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getEventFromNet suc response = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const-string v2, "events"

    invoke-virtual {p3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 623
    .local v1, jsonArray:Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$6;->val$eventList:Ljava/util/List;

    invoke-static {v1}, Lcom/mechat/mechatlibrary/utils/JsonObjectUtils;->getEventListFromJsonObject(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 625
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$6;->val$eventList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 626
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$6;->val$eventList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 628
    :cond_0
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$6;->val$eventList:Ljava/util/List;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/MCClient$6;->this$0:Lcom/mechat/mechatlibrary/MCClient;

    #getter for: Lcom/mechat/mechatlibrary/MCClient;->mcEventDBManger:Lcom/mechat/mechatlibrary/dao/MCEventDBManger;
    invoke-static {v3}, Lcom/mechat/mechatlibrary/MCClient;->access$9(Lcom/mechat/mechatlibrary/MCClient;)Lcom/mechat/mechatlibrary/dao/MCEventDBManger;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/mechat/mechatlibrary/dao/MCEventDBManger;->getRecentMCEvents(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 631
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$6;->val$onGetEventCallback:Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;

    iget-object v3, p0, Lcom/mechat/mechatlibrary/MCClient$6;->val$eventList:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;->onSuccess(Ljava/util/List;)V

    .line 640
    .end local v1           #jsonArray:Lorg/json/JSONArray;
    :goto_0
    return-void

    .line 633
    :cond_1
    iget-object v2, p0, Lcom/mechat/mechatlibrary/MCClient$6;->val$onGetEventCallback:Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;

    const-string v3, "unknow"

    invoke-interface {v2, v3}, Lcom/mechat/mechatlibrary/callback/OnGetEventsCallback;->onFailure(Ljava/lang/String;)V

    .line 634
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getEventFromNet failed response = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 636
    :catch_0
    move-exception v0

    .line 637
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 638
    const-string v2, "MeChatClient"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getEventFromNet failed catch exception response = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mechat/mechatlibrary/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
