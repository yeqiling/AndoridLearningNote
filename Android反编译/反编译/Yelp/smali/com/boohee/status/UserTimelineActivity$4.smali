.class Lcom/boohee/status/UserTimelineActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/UserTimelineActivity;->getCurrentStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/UserTimelineActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/UserTimelineActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/boohee/status/UserTimelineActivity$4;->this$0:Lcom/boohee/status/UserTimelineActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 142
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 143
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity$4;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #calls: Lcom/boohee/status/UserTimelineActivity;->refreshCurrentData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/status/UserTimelineActivity;->access$300(Lcom/boohee/status/UserTimelineActivity;Lorg/json/JSONObject;)V

    .line 144
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 149
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity$4;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/boohee/status/UserTimelineActivity;->access$400(Lcom/boohee/status/UserTimelineActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 150
    return-void
.end method
