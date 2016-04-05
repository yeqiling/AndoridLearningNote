.class Lcom/boohee/status/PunchCommentListActivity$1;
.super Ljava/lang/Object;
.source "PunchCommentListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/PunchCommentListActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/PunchCommentListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/PunchCommentListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput-object p1, p0, Lcom/boohee/status/PunchCommentListActivity$1;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/boohee/status/PunchCommentListActivity$1;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #getter for: Lcom/boohee/status/PunchCommentListActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/status/PunchCommentListActivity;->access$000(Lcom/boohee/status/PunchCommentListActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/PunchCommentListActivity$1;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    iget-object v1, v1, Lcom/boohee/status/PunchCommentListActivity;->et_comment:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/boohee/utils/Keyboard;->close(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 135
    const/4 v0, 0x0

    return v0
.end method
