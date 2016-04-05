.class Lcom/boohee/status/CommentListActivity$11;
.super Lcom/boohee/one/http/JsonCallback;
.source "CommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/CommentListActivity;->getNextComments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/CommentListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/CommentListActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 276
    iput-object p1, p0, Lcom/boohee/status/CommentListActivity$11;->this$0:Lcom/boohee/status/CommentListActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 279
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 280
    const-string v1, "post"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/Post;->parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/status/Post;

    move-result-object v0

    .line 281
    .local v0, post:Lcom/boohee/model/status/Post;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/boohee/model/status/Post;->comments:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/boohee/model/status/Post;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/boohee/status/CommentListActivity$11;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mComments:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/CommentListActivity;->access$700(Lcom/boohee/status/CommentListActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v0, Lcom/boohee/model/status/Post;->comments:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 283
    iget-object v1, p0, Lcom/boohee/status/CommentListActivity$11;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mAdapter:Lcom/boohee/status/CommentListActivity$CommentListAdapter;
    invoke-static {v1}, Lcom/boohee/status/CommentListActivity;->access$800(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/status/CommentListActivity$CommentListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/status/CommentListActivity$CommentListAdapter;->notifyDataSetChanged()V

    .line 284
    iget-object v1, p0, Lcom/boohee/status/CommentListActivity$11;->this$0:Lcom/boohee/status/CommentListActivity;

    invoke-static {v1}, Lcom/boohee/status/CommentListActivity;->access$1208(Lcom/boohee/status/CommentListActivity;)I

    .line 286
    :cond_0
    return-void
.end method
