.class Lcom/boohee/status/RecommendTimelineActivity$2;
.super Ljava/lang/Object;
.source "RecommendTimelineActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/RecommendTimelineActivity;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/RecommendTimelineActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/RecommendTimelineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/boohee/status/RecommendTimelineActivity$2;->this$0:Lcom/boohee/status/RecommendTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity$2;->this$0:Lcom/boohee/status/RecommendTimelineActivity;

    #getter for: Lcom/boohee/status/RecommendTimelineActivity;->isLastVisible:Z
    invoke-static {v0}, Lcom/boohee/status/RecommendTimelineActivity;->access$100(Lcom/boohee/status/RecommendTimelineActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/boohee/status/RecommendTimelineActivity$2;->this$0:Lcom/boohee/status/RecommendTimelineActivity;

    #calls: Lcom/boohee/status/RecommendTimelineActivity;->getNextTopic()V
    invoke-static {v0}, Lcom/boohee/status/RecommendTimelineActivity;->access$200(Lcom/boohee/status/RecommendTimelineActivity;)V

    .line 61
    :cond_0
    return-void
.end method
