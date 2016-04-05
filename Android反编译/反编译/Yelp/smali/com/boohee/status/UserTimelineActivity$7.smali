.class Lcom/boohee/status/UserTimelineActivity$7;
.super Ljava/lang/Object;
.source "UserTimelineActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/UserTimelineActivity;->showBlock()V
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
    .line 292
    iput-object p1, p0, Lcom/boohee/status/UserTimelineActivity$7;->this$0:Lcom/boohee/status/UserTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity$7;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v0}, Lcom/boohee/status/UserTimelineActivity;->access$800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v0

    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/UserTimelineActivity$7;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/status/UserTimelineActivity;->access$1500(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/UserTimelineActivity$7;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v1}, Lcom/boohee/status/UserTimelineActivity;->access$800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v1

    iget v1, v1, Lcom/boohee/model/status/StatusUser;->id:I

    new-instance v2, Lcom/boohee/status/UserTimelineActivity$7$1;

    iget-object v3, p0, Lcom/boohee/status/UserTimelineActivity$7;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v3}, Lcom/boohee/status/UserTimelineActivity;->access$1600(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/boohee/status/UserTimelineActivity$7$1;-><init>(Lcom/boohee/status/UserTimelineActivity$7;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/OneApi;->createBlocks(Landroid/content/Context;ILcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method
