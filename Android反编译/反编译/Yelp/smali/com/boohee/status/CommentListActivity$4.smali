.class Lcom/boohee/status/CommentListActivity$4;
.super Ljava/lang/Object;
.source "CommentListActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/CommentListActivity;->init()V
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
    .line 160
    iput-object p1, p0, Lcom/boohee/status/CommentListActivity$4;->this$0:Lcom/boohee/status/CommentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$4;->this$0:Lcom/boohee/status/CommentListActivity;

    #calls: Lcom/boohee/status/CommentListActivity;->getNextComments()V
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$400(Lcom/boohee/status/CommentListActivity;)V

    .line 164
    return-void
.end method
