.class Lcom/boohee/status/MyTimelineActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "MyTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/MyTimelineActivity;->getPreviousStatus()V
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
    .line 175
    iput-object p1, p0, Lcom/boohee/status/MyTimelineActivity$5;->this$0:Lcom/boohee/status/MyTimelineActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 179
    const-string v1, "posts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/status/Post;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 180
    .local v0, morePosts:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/status/Post;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity$5;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->mPosts:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/MyTimelineActivity;->access$100(Lcom/boohee/status/MyTimelineActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 182
    iget-object v1, p0, Lcom/boohee/status/MyTimelineActivity$5;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->mAdapter:Lcom/boohee/one/ui/adapter/UserTimelineAdapter;
    invoke-static {v1}, Lcom/boohee/status/MyTimelineActivity;->access$400(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/one/ui/adapter/UserTimelineAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/one/ui/adapter/UserTimelineAdapter;->notifyDataSetChanged()V

    .line 184
    :cond_0
    return-void
.end method
