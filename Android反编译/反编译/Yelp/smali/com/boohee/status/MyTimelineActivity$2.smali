.class Lcom/boohee/status/MyTimelineActivity$2;
.super Ljava/lang/Object;
.source "MyTimelineActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/MyTimelineActivity;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/MyTimelineActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/MyTimelineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/boohee/status/MyTimelineActivity$2;->this$0:Lcom/boohee/status/MyTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity$2;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->mPosts:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/MyTimelineActivity;->access$100(Lcom/boohee/status/MyTimelineActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/boohee/status/MyTimelineActivity$2;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #calls: Lcom/boohee/status/MyTimelineActivity;->getPreviousStatus()V
    invoke-static {v0}, Lcom/boohee/status/MyTimelineActivity;->access$200(Lcom/boohee/status/MyTimelineActivity;)V

    .line 90
    :cond_0
    return-void
.end method
