.class Lcom/boohee/record/SportListActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "SportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/SportListActivity;->deleteActivity(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/SportListActivity;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/boohee/record/SportListActivity;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/boohee/record/SportListActivity$2;->this$0:Lcom/boohee/record/SportListActivity;

    iput p3, p0, Lcom/boohee/record/SportListActivity$2;->val$position:I

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 117
    iget-object v0, p0, Lcom/boohee/record/SportListActivity$2;->this$0:Lcom/boohee/record/SportListActivity;

    #getter for: Lcom/boohee/record/SportListActivity;->mRecordSports:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/record/SportListActivity;->access$200(Lcom/boohee/record/SportListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/boohee/record/SportListActivity$2;->val$position:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 118
    iget-object v0, p0, Lcom/boohee/record/SportListActivity$2;->this$0:Lcom/boohee/record/SportListActivity;

    #calls: Lcom/boohee/record/SportListActivity;->initView()V
    invoke-static {v0}, Lcom/boohee/record/SportListActivity;->access$300(Lcom/boohee/record/SportListActivity;)V

    .line 119
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/SportEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/SportEvent;-><init>()V

    iget v2, p0, Lcom/boohee/record/SportListActivity$2;->val$position:I

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/SportEvent;->setIndex(I)Lcom/boohee/one/event/SportEvent;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/SportEvent;->setEditType(I)Lcom/boohee/one/event/SportEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/boohee/record/SportListActivity$2;->this$0:Lcom/boohee/record/SportListActivity;

    #calls: Lcom/boohee/record/SportListActivity;->refreshTotal()V
    invoke-static {v0}, Lcom/boohee/record/SportListActivity;->access$400(Lcom/boohee/record/SportListActivity;)V

    .line 121
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 126
    iget-object v0, p0, Lcom/boohee/record/SportListActivity$2;->this$0:Lcom/boohee/record/SportListActivity;

    invoke-virtual {v0}, Lcom/boohee/record/SportListActivity;->dismissLoading()V

    .line 127
    return-void
.end method
