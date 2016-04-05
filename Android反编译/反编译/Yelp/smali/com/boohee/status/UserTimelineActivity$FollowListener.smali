.class Lcom/boohee/status/UserTimelineActivity$FollowListener;
.super Ljava/lang/Object;
.source "UserTimelineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/status/UserTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FollowListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/UserTimelineActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/status/UserTimelineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 233
    iput-object p1, p0, Lcom/boohee/status/UserTimelineActivity$FollowListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/status/UserTimelineActivity;Lcom/boohee/status/UserTimelineActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 233
    invoke-direct {p0, p1}, Lcom/boohee/status/UserTimelineActivity$FollowListener;-><init>(Lcom/boohee/status/UserTimelineActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity$FollowListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v0}, Lcom/boohee/status/UserTimelineActivity;->access$800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v0

    if-nez v0, :cond_0

    .line 258
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity$FollowListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v0}, Lcom/boohee/status/UserTimelineActivity;->access$800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v0

    iget-boolean v0, v0, Lcom/boohee/model/status/StatusUser;->following:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity$FollowListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/status/UserTimelineActivity;->access$900(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity$FollowListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v1}, Lcom/boohee/status/UserTimelineActivity;->access$800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v1

    iget v1, v1, Lcom/boohee/model/status/StatusUser;->id:I

    new-instance v2, Lcom/boohee/status/UserTimelineActivity$FollowListener$1;

    iget-object v3, p0, Lcom/boohee/status/UserTimelineActivity$FollowListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v3}, Lcom/boohee/status/UserTimelineActivity;->access$1000(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/UserTimelineActivity$FollowListener$1;-><init>(Lcom/boohee/status/UserTimelineActivity$FollowListener;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->deleteFriendships(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0

    .line 248
    :cond_1
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity$FollowListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/status/UserTimelineActivity;->access$1300(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity$FollowListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v1}, Lcom/boohee/status/UserTimelineActivity;->access$800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v1

    iget v1, v1, Lcom/boohee/model/status/StatusUser;->id:I

    new-instance v2, Lcom/boohee/status/UserTimelineActivity$FollowListener$2;

    iget-object v3, p0, Lcom/boohee/status/UserTimelineActivity$FollowListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v3}, Lcom/boohee/status/UserTimelineActivity;->access$1400(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/UserTimelineActivity$FollowListener$2;-><init>(Lcom/boohee/status/UserTimelineActivity$FollowListener;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->createFriendships(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method
