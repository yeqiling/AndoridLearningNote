.class Lcom/boohee/status/UserTimelineActivity$2;
.super Ljava/lang/Object;
.source "UserTimelineActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/UserTimelineActivity;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/UserTimelineActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/UserTimelineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/boohee/status/UserTimelineActivity$2;->this$0:Lcom/boohee/status/UserTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity$2;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->isLastVisible:Z
    invoke-static {v0}, Lcom/boohee/status/UserTimelineActivity;->access$100(Lcom/boohee/status/UserTimelineActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity$2;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #calls: Lcom/boohee/status/UserTimelineActivity;->getPreviousStatus()V
    invoke-static {v0}, Lcom/boohee/status/UserTimelineActivity;->access$200(Lcom/boohee/status/UserTimelineActivity;)V

    .line 96
    :cond_0
    return-void
.end method
