.class Lcom/boohee/status/PunchCommentListActivity$3;
.super Ljava/lang/Object;
.source "PunchCommentListActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/PunchCommentListActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/PunchCommentListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/PunchCommentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/boohee/status/PunchCommentListActivity$3;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$3;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #getter for: Lcom/boohee/status/PunchCommentListActivity;->mPage:I
    invoke-static {v0}, Lcom/boohee/status/PunchCommentListActivity;->access$100(Lcom/boohee/status/PunchCommentListActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity$3;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #getter for: Lcom/boohee/status/PunchCommentListActivity;->mCurrentPage:I
    invoke-static {v1}, Lcom/boohee/status/PunchCommentListActivity;->access$200(Lcom/boohee/status/PunchCommentListActivity;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$3;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity$3;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #getter for: Lcom/boohee/status/PunchCommentListActivity;->mPage:I
    invoke-static {v1}, Lcom/boohee/status/PunchCommentListActivity;->access$100(Lcom/boohee/status/PunchCommentListActivity;)I

    move-result v1

    #setter for: Lcom/boohee/status/PunchCommentListActivity;->mCurrentPage:I
    invoke-static {v0, v1}, Lcom/boohee/status/PunchCommentListActivity;->access$202(Lcom/boohee/status/PunchCommentListActivity;I)I

    .line 154
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$3;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #calls: Lcom/boohee/status/PunchCommentListActivity;->requestComments()V
    invoke-static {v0}, Lcom/boohee/status/PunchCommentListActivity;->access$400(Lcom/boohee/status/PunchCommentListActivity;)V

    .line 156
    :cond_0
    return-void
.end method
