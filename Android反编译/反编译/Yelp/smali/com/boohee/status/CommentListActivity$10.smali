.class Lcom/boohee/status/CommentListActivity$10;
.super Ljava/lang/Object;
.source "CommentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/CommentListActivity;->initMenu(Landroid/view/View;Lcom/boohee/model/status/Post;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/CommentListActivity;

.field final synthetic val$post:Lcom/boohee/model/status/Post;


# direct methods
.method constructor <init>(Lcom/boohee/status/CommentListActivity;Lcom/boohee/model/status/Post;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 261
    iput-object p1, p0, Lcom/boohee/status/CommentListActivity$10;->this$0:Lcom/boohee/status/CommentListActivity;

    iput-object p2, p0, Lcom/boohee/status/CommentListActivity$10;->val$post:Lcom/boohee/model/status/Post;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 264
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$10;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$1800(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity$10;->val$post:Lcom/boohee/model/status/Post;

    const/4 v2, 0x0

    new-instance v3, Lcom/boohee/status/CommentListActivity$10$1;

    invoke-direct {v3, p0}, Lcom/boohee/status/CommentListActivity$10$1;-><init>(Lcom/boohee/status/CommentListActivity$10;)V

    invoke-static {v0, p1, v1, v2, v3}, Lcom/boohee/utility/TimeLineUtility;->showCommentPopView(Landroid/app/Activity;Landroid/view/View;Lcom/boohee/model/status/Post;Lcom/boohee/model/status/StatusUser;Lcom/boohee/utility/TimeLineUtility$PostMenuListener;)V

    .line 271
    return-void
.end method
