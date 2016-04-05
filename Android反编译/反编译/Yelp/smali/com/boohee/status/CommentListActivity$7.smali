.class Lcom/boohee/status/CommentListActivity$7;
.super Ljava/lang/Object;
.source "CommentListActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/CommentListActivity;->initHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/CommentListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/CommentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/boohee/status/CommentListActivity$7;->this$0:Lcom/boohee/status/CommentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$7;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$1400(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity$7;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;
    invoke-static {v1}, Lcom/boohee/status/CommentListActivity;->access$500(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/model/status/Post;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/status/Post;->body:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/utility/TimeLineUtility;->copyText(Landroid/content/Context;Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$7;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$1500(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    const-string v1, "\u5185\u5bb9\u5df2\u590d\u5236\u5230\u526a\u5207\u677f"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 226
    const/4 v0, 0x1

    return v0
.end method
