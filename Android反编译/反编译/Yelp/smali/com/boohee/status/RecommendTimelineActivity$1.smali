.class Lcom/boohee/status/RecommendTimelineActivity$1;
.super Ljava/lang/Object;
.source "RecommendTimelineActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/RecommendTimelineActivity;->findViews()V
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
.field final synthetic this$0:Lcom/boohee/status/RecommendTimelineActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/RecommendTimelineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/boohee/status/RecommendTimelineActivity$1;->this$0:Lcom/boohee/status/RecommendTimelineActivity;

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
    .line 52
    .local p1, refreshView:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;,"Lcom/handmark/pulltorefresh/library/PullToRefreshBase<Landroid/widget/ListView;>;"
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity$1;->this$0:Lcom/boohee/status/RecommendTimelineActivity;

    #calls: Lcom/boohee/status/RecommendTimelineActivity;->getCurrentTopic()V
    invoke-static {v0}, Lcom/boohee/status/RecommendTimelineActivity;->access$000(Lcom/boohee/status/RecommendTimelineActivity;)V

    .line 53
    return-void
.end method
