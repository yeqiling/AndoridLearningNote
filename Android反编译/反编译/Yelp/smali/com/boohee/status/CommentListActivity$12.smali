.class Lcom/boohee/status/CommentListActivity$12;
.super Lcom/boohee/one/http/JsonCallback;
.source "CommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/CommentListActivity;->sendComment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/CommentListActivity;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boohee/status/CommentListActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lcom/boohee/status/CommentListActivity$12;->this$0:Lcom/boohee/status/CommentListActivity;

    iput-object p3, p0, Lcom/boohee/status/CommentListActivity$12;->val$content:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 397
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 398
    const v0, 0x7f0702fd

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 399
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$12;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->commentEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$200(Lcom/boohee/status/CommentListActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity$12;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 400
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 387
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$12;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->commentEdit:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$200(Lcom/boohee/status/CommentListActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 388
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$12;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$2400(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "status_addCommentOK"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$12;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$2500(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "mine_allRecordOK"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$12;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$2600(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "status_addInteractOK"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$12;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$2700(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity$12;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->commentEdit:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/boohee/status/CommentListActivity;->access$200(Lcom/boohee/status/CommentListActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Keyboard;->close(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 392
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$12;->this$0:Lcom/boohee/status/CommentListActivity;

    #calls: Lcom/boohee/status/CommentListActivity;->getComments()V
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$300(Lcom/boohee/status/CommentListActivity;)V

    .line 393
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 404
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 405
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$12;->this$0:Lcom/boohee/status/CommentListActivity;

    invoke-virtual {v0}, Lcom/boohee/status/CommentListActivity;->dismissLoading()V

    .line 406
    return-void
.end method
