.class Lcom/boohee/status/SearchFriendsActivity$6;
.super Ljava/lang/Object;
.source "SearchFriendsActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/SearchFriendsActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/SearchFriendsActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/SearchFriendsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/boohee/status/SearchFriendsActivity$6;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$6;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->isLastVisible:Z
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$900(Lcom/boohee/status/SearchFriendsActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$6;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #calls: Lcom/boohee/status/SearchFriendsActivity;->searchNext()V
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$1000(Lcom/boohee/status/SearchFriendsActivity;)V

    .line 192
    :cond_0
    return-void
.end method
