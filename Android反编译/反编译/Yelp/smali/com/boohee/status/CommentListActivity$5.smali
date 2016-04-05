.class Lcom/boohee/status/CommentListActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "CommentListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/CommentListActivity;->getComments()V
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
    .line 176
    iput-object p1, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 180
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    const-string v1, "post"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/Post;->parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/status/Post;

    move-result-object v1

    #setter for: Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;
    invoke-static {v0, v1}, Lcom/boohee/status/CommentListActivity;->access$502(Lcom/boohee/status/CommentListActivity;Lcom/boohee/model/status/Post;)Lcom/boohee/model/status/Post;

    .line 181
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$500(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/model/status/Post;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$500(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/model/status/Post;

    move-result-object v0

    iget-object v0, v0, Lcom/boohee/model/status/Post;->comments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    #calls: Lcom/boohee/status/CommentListActivity;->initHeader()V
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$600(Lcom/boohee/status/CommentListActivity;)V

    .line 183
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;
    invoke-static {v1}, Lcom/boohee/status/CommentListActivity;->access$500(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/model/status/Post;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/status/Post;->comments:Ljava/util/ArrayList;

    #setter for: Lcom/boohee/status/CommentListActivity;->mComments:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/boohee/status/CommentListActivity;->access$702(Lcom/boohee/status/CommentListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 184
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    new-instance v1, Lcom/boohee/status/CommentListActivity$CommentListAdapter;

    iget-object v2, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/boohee/status/CommentListActivity$CommentListAdapter;-><init>(Lcom/boohee/status/CommentListActivity;Lcom/boohee/status/CommentListActivity$1;)V

    #setter for: Lcom/boohee/status/CommentListActivity;->mAdapter:Lcom/boohee/status/CommentListActivity$CommentListAdapter;
    invoke-static {v0, v1}, Lcom/boohee/status/CommentListActivity;->access$802(Lcom/boohee/status/CommentListActivity;Lcom/boohee/status/CommentListActivity$CommentListAdapter;)Lcom/boohee/status/CommentListActivity$CommentListAdapter;

    .line 185
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$1000(Lcom/boohee/status/CommentListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mAdapter:Lcom/boohee/status/CommentListActivity$CommentListAdapter;
    invoke-static {v1}, Lcom/boohee/status/CommentListActivity;->access$800(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/status/CommentListActivity$CommentListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 186
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mComments:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$700(Lcom/boohee/status/CommentListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->bottomText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$1100(Lcom/boohee/status/CommentListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0703c8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 192
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$1208(Lcom/boohee/status/CommentListActivity;)I

    .line 193
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->bottomText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$1100(Lcom/boohee/status/CommentListActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5171\u6709 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;
    invoke-static {v2}, Lcom/boohee/status/CommentListActivity;->access$500(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/model/status/Post;

    move-result-object v2

    iget v2, v2, Lcom/boohee/model/status/Post;->comment_count:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u6761\u8bc4\u8bba"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 197
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 198
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$5;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$000(Lcom/boohee/status/CommentListActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 199
    return-void
.end method
