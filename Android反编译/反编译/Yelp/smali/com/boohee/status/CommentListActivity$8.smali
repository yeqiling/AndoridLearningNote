.class Lcom/boohee/status/CommentListActivity$8;
.super Ljava/lang/Object;
.source "CommentListActivity.java"

# interfaces
.implements Lcom/boohee/myview/NineGridLayout$OnItemClickListerner;


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
    .line 234
    iput-object p1, p0, Lcom/boohee/status/CommentListActivity$8;->this$0:Lcom/boohee/status/CommentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "position"

    .prologue
    .line 237
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$8;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$1600(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity$8;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;
    invoke-static {v1}, Lcom/boohee/status/CommentListActivity;->access$500(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/model/status/Post;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/status/Post;->photos:Ljava/util/ArrayList;

    invoke-static {v0, v1, p2}, Lcom/boohee/one/ui/NineGridGalleryActivity;->comeOn(Landroid/content/Context;Ljava/util/List;I)V

    .line 238
    return-void
.end method
