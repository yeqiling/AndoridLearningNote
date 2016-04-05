.class Lcom/boohee/status/PunchCommentListActivity$2;
.super Ljava/lang/Object;
.source "PunchCommentListActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/PunchCommentListActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener",
        "<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/PunchCommentListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/PunchCommentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 139
    iput-object p1, p0, Lcom/boohee/status/PunchCommentListActivity$2;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/handmark/pulltorefresh/library/PullToRefreshBase",
            "<",
            "Landroid/widget/ListView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, refreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    const/4 v2, 0x1

    .line 142
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$2;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #setter for: Lcom/boohee/status/PunchCommentListActivity;->mPage:I
    invoke-static {v0, v2}, Lcom/boohee/status/PunchCommentListActivity;->access$102(Lcom/boohee/status/PunchCommentListActivity;I)I

    .line 143
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$2;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity$2;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #getter for: Lcom/boohee/status/PunchCommentListActivity;->mPage:I
    invoke-static {v1}, Lcom/boohee/status/PunchCommentListActivity;->access$100(Lcom/boohee/status/PunchCommentListActivity;)I

    move-result v1

    #setter for: Lcom/boohee/status/PunchCommentListActivity;->mCurrentPage:I
    invoke-static {v0, v1}, Lcom/boohee/status/PunchCommentListActivity;->access$202(Lcom/boohee/status/PunchCommentListActivity;I)I

    .line 144
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$2;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #setter for: Lcom/boohee/status/PunchCommentListActivity;->hasMore:Z
    invoke-static {v0, v2}, Lcom/boohee/status/PunchCommentListActivity;->access$302(Lcom/boohee/status/PunchCommentListActivity;Z)Z

    .line 145
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$2;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #calls: Lcom/boohee/status/PunchCommentListActivity;->requestComments()V
    invoke-static {v0}, Lcom/boohee/status/PunchCommentListActivity;->access$400(Lcom/boohee/status/PunchCommentListActivity;)V

    .line 146
    return-void
.end method
