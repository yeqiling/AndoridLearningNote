.class Lcom/boohee/status/PunchCommentListActivity$7;
.super Lcom/boohee/one/http/JsonCallback;
.source "PunchCommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/PunchCommentListActivity;->sendComment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/PunchCommentListActivity;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boohee/status/PunchCommentListActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 278
    iput-object p1, p0, Lcom/boohee/status/PunchCommentListActivity$7;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    iput-object p3, p0, Lcom/boohee/status/PunchCommentListActivity$7;->val$content:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 300
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 301
    const v0, 0x7f0702fd

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 302
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$7;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    iget-object v0, v0, Lcom/boohee/status/PunchCommentListActivity;->et_comment:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity$7;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 303
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    const/4 v2, 0x1

    .line 281
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 282
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$7;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    iget-object v0, v0, Lcom/boohee/status/PunchCommentListActivity;->et_comment:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$7;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #getter for: Lcom/boohee/status/PunchCommentListActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/status/PunchCommentListActivity;->access$900(Lcom/boohee/status/PunchCommentListActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity$7;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    iget-object v1, v1, Lcom/boohee/status/PunchCommentListActivity;->et_comment:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/boohee/utils/Keyboard;->close(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 284
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$7;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #setter for: Lcom/boohee/status/PunchCommentListActivity;->mPage:I
    invoke-static {v0, v2}, Lcom/boohee/status/PunchCommentListActivity;->access$102(Lcom/boohee/status/PunchCommentListActivity;I)I

    .line 285
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$7;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity$7;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #getter for: Lcom/boohee/status/PunchCommentListActivity;->mPage:I
    invoke-static {v1}, Lcom/boohee/status/PunchCommentListActivity;->access$100(Lcom/boohee/status/PunchCommentListActivity;)I

    move-result v1

    #setter for: Lcom/boohee/status/PunchCommentListActivity;->mCurrentPage:I
    invoke-static {v0, v1}, Lcom/boohee/status/PunchCommentListActivity;->access$202(Lcom/boohee/status/PunchCommentListActivity;I)I

    .line 286
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$7;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #setter for: Lcom/boohee/status/PunchCommentListActivity;->hasMore:Z
    invoke-static {v0, v2}, Lcom/boohee/status/PunchCommentListActivity;->access$302(Lcom/boohee/status/PunchCommentListActivity;Z)Z

    .line 287
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$7;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #calls: Lcom/boohee/status/PunchCommentListActivity;->requestComments()V
    invoke-static {v0}, Lcom/boohee/status/PunchCommentListActivity;->access$400(Lcom/boohee/status/PunchCommentListActivity;)V

    .line 288
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 292
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 293
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$7;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    invoke-virtual {v0}, Lcom/boohee/status/PunchCommentListActivity;->dismissLoading()V

    .line 294
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$7;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    iget-object v0, v0, Lcom/boohee/status/PunchCommentListActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 296
    return-void
.end method
