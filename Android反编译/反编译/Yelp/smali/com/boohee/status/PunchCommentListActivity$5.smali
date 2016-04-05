.class Lcom/boohee/status/PunchCommentListActivity$5;
.super Ljava/lang/Object;
.source "PunchCommentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/PunchCommentListActivity;->refreshHeaderView(Lcom/boohee/model/chanllenge/ClockOutPost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/PunchCommentListActivity;

.field final synthetic val$post:Lcom/boohee/model/chanllenge/ClockOutPost;


# direct methods
.method constructor <init>(Lcom/boohee/status/PunchCommentListActivity;Lcom/boohee/model/chanllenge/ClockOutPost;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 199
    iput-object p1, p0, Lcom/boohee/status/PunchCommentListActivity$5;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    iput-object p2, p0, Lcom/boohee/status/PunchCommentListActivity$5;->val$post:Lcom/boohee/model/chanllenge/ClockOutPost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 202
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity$5;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #getter for: Lcom/boohee/status/PunchCommentListActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/status/PunchCommentListActivity;->access$600(Lcom/boohee/status/PunchCommentListActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/boohee/status/UserTimelineActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "nickname"

    iget-object v2, p0, Lcom/boohee/status/PunchCommentListActivity$5;->val$post:Lcom/boohee/model/chanllenge/ClockOutPost;

    iget-object v2, v2, Lcom/boohee/model/chanllenge/ClockOutPost;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v2, v2, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    .line 204
    return-void
.end method
