.class Lcom/boohee/status/RecommendTimelineActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "RecommendTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/RecommendTimelineActivity;->getCurrentTopic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/RecommendTimelineActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/RecommendTimelineActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/boohee/status/RecommendTimelineActivity$3;->this$0:Lcom/boohee/status/RecommendTimelineActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 73
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity$3;->this$0:Lcom/boohee/status/RecommendTimelineActivity;

    const-string v1, "posts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/Post;->parsePosts(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/boohee/status/RecommendTimelineActivity;->mPosts:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/boohee/status/RecommendTimelineActivity;->access$302(Lcom/boohee/status/RecommendTimelineActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 74
    sget-object v0, Lcom/boohee/status/RecommendTimelineActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/status/RecommendTimelineActivity$3;->this$0:Lcom/boohee/status/RecommendTimelineActivity;

    #getter for: Lcom/boohee/status/RecommendTimelineActivity;->mPosts:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/status/RecommendTimelineActivity;->access$300(Lcom/boohee/status/RecommendTimelineActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity$3;->this$0:Lcom/boohee/status/RecommendTimelineActivity;

    #calls: Lcom/boohee/status/RecommendTimelineActivity;->initUI()V
    invoke-static {v0}, Lcom/boohee/status/RecommendTimelineActivity;->access$400(Lcom/boohee/status/RecommendTimelineActivity;)V

    .line 76
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 81
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity$3;->this$0:Lcom/boohee/status/RecommendTimelineActivity;

    #getter for: Lcom/boohee/status/RecommendTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/boohee/status/RecommendTimelineActivity;->access$500(Lcom/boohee/status/RecommendTimelineActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 82
    return-void
.end method
