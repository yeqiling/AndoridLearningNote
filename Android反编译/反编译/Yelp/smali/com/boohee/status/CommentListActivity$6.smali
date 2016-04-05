.class Lcom/boohee/status/CommentListActivity$6;
.super Ljava/lang/Object;
.source "CommentListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/CommentListActivity;->initHeader()V
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
    .line 212
    iput-object p1, p0, Lcom/boohee/status/CommentListActivity$6;->this$0:Lcom/boohee/status/CommentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 215
    new-instance v0, Lcom/boohee/utility/BuilderIntent;

    iget-object v1, p0, Lcom/boohee/status/CommentListActivity$6;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/status/CommentListActivity;->access$1300(Lcom/boohee/status/CommentListActivity;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/boohee/status/UserTimelineActivity;

    invoke-direct {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "nickname"

    iget-object v2, p0, Lcom/boohee/status/CommentListActivity$6;->this$0:Lcom/boohee/status/CommentListActivity;

    #getter for: Lcom/boohee/status/CommentListActivity;->mPost:Lcom/boohee/model/status/Post;
    invoke-static {v2}, Lcom/boohee/status/CommentListActivity;->access$500(Lcom/boohee/status/CommentListActivity;)Lcom/boohee/model/status/Post;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/model/status/Post;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v2, v2, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    .line 217
    return-void
.end method
