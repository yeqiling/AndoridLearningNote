.class Lcom/boohee/status/PunchCommentListActivity$6;
.super Lcom/boohee/one/http/JsonCallback;
.source "PunchCommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/PunchCommentListActivity;->requestComments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/PunchCommentListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/PunchCommentListActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 253
    iput-object p1, p0, Lcom/boohee/status/PunchCommentListActivity$6;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 256
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 257
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$6;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #calls: Lcom/boohee/status/PunchCommentListActivity;->refreshData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/status/PunchCommentListActivity;->access$800(Lcom/boohee/status/PunchCommentListActivity;Lorg/json/JSONObject;)V

    .line 258
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 262
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 263
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$6;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    invoke-virtual {v0}, Lcom/boohee/status/PunchCommentListActivity;->dismissLoading()V

    .line 264
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$6;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    iget-object v0, v0, Lcom/boohee/status/PunchCommentListActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 265
    return-void
.end method
