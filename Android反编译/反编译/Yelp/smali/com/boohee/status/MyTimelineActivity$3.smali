.class Lcom/boohee/status/MyTimelineActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "MyTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/MyTimelineActivity;->getCurrentStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/MyTimelineActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/MyTimelineActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/boohee/status/MyTimelineActivity$3;->this$0:Lcom/boohee/status/MyTimelineActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "object"

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 123
    :try_start_0
    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity$3;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #calls: Lcom/boohee/status/MyTimelineActivity;->initHeader(Lorg/json/JSONObject;)V
    invoke-static {v2, p1}, Lcom/boohee/status/MyTimelineActivity;->access$300(Lcom/boohee/status/MyTimelineActivity;Lorg/json/JSONObject;)V

    .line 124
    const-string v2, "posts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 125
    .local v1, postsArray:Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/boohee/status/MyTimelineActivity$3;->this$0:Lcom/boohee/status/MyTimelineActivity;

    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1           #postsArray:Lorg/json/JSONArray;
    :goto_0
    invoke-static {v2}, Lcom/boohee/model/status/Post;->parsePosts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/boohee/status/MyTimelineActivity;->mPosts:Ljava/util/ArrayList;
    invoke-static {v3, v2}, Lcom/boohee/status/MyTimelineActivity;->access$102(Lcom/boohee/status/MyTimelineActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 126
    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity$3;->this$0:Lcom/boohee/status/MyTimelineActivity;

    new-instance v3, Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    iget-object v4, p0, Lcom/boohee/status/MyTimelineActivity$3;->this$0:Lcom/boohee/status/MyTimelineActivity;

    iget-object v5, p0, Lcom/boohee/status/MyTimelineActivity$3;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->mPosts:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/boohee/status/MyTimelineActivity;->access$100(Lcom/boohee/status/MyTimelineActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/boohee/status/MyTimelineActivity$3;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v6}, Lcom/boohee/status/MyTimelineActivity;->access$500(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/boohee/one/ui/adapter/UserTimelineAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/boohee/model/status/StatusUser;)V

    #setter for: Lcom/boohee/status/MyTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;
    invoke-static {v2, v3}, Lcom/boohee/status/MyTimelineActivity;->access$402(Lcom/boohee/status/MyTimelineActivity;Lcom/boohee/one/ui/adapter/UserTimelineAdapter;)Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    .line 127
    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity$3;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/boohee/status/MyTimelineActivity;->access$600(Lcom/boohee/status/MyTimelineActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/status/MyTimelineActivity$3;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;
    invoke-static {v3}, Lcom/boohee/status/MyTimelineActivity;->access$400(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 131
    :goto_1
    return-void

    .line 125
    .restart local v1       #postsArray:Lorg/json/JSONArray;
    :cond_0
    check-cast v1, Lorg/json/JSONArray;

    .end local v1           #postsArray:Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 136
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity$3;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/boohee/status/MyTimelineActivity;->access$700(Lcom/boohee/status/MyTimelineActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 137
    return-void
.end method
