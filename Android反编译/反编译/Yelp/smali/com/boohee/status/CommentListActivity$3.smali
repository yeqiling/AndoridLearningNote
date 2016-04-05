.class Lcom/boohee/status/CommentListActivity$3;
.super Ljava/lang/Object;
.source "CommentListActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/CommentListActivity;->init()V
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
.field final synthetic this$0:Lcom/boohee/status/CommentListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/CommentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/boohee/status/CommentListActivity$3;->this$0:Lcom/boohee/status/CommentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)V
    .locals 1
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
    .line 156
    .local p1, refreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/boohee/status/CommentListActivity$3;->this$0:Lcom/boohee/status/CommentListActivity;

    #calls: Lcom/boohee/status/CommentListActivity;->getComments()V
    invoke-static {v0}, Lcom/boohee/status/CommentListActivity;->access$300(Lcom/boohee/status/CommentListActivity;)V

    .line 157
    return-void
.end method
