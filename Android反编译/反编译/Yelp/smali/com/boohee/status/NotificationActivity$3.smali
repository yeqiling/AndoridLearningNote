.class Lcom/boohee/status/NotificationActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "NotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/NotificationActivity;->getNotifications()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/NotificationActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/NotificationActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/boohee/status/NotificationActivity$3;->this$0:Lcom/boohee/status/NotificationActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .parameter "object"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 112
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity$3;->this$0:Lcom/boohee/status/NotificationActivity;

    invoke-static {p1}, Lcom/boohee/model/status/Notification;->parseNotifications(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    #setter for: Lcom/boohee/status/NotificationActivity;->mNotifications:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/boohee/status/NotificationActivity;->access$202(Lcom/boohee/status/NotificationActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 113
    sget-object v0, Lcom/boohee/status/NotificationActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/status/NotificationActivity$3;->this$0:Lcom/boohee/status/NotificationActivity;

    #getter for: Lcom/boohee/status/NotificationActivity;->mNotifications:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/status/NotificationActivity;->access$200(Lcom/boohee/status/NotificationActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity$3;->this$0:Lcom/boohee/status/NotificationActivity;

    new-instance v1, Lcom/boohee/status/NotificationAdapter;

    iget-object v2, p0, Lcom/boohee/status/NotificationActivity$3;->this$0:Lcom/boohee/status/NotificationActivity;

    #getter for: Lcom/boohee/status/NotificationActivity;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/boohee/status/NotificationActivity;->access$400(Lcom/boohee/status/NotificationActivity;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/status/NotificationActivity$3;->this$0:Lcom/boohee/status/NotificationActivity;

    #getter for: Lcom/boohee/status/NotificationActivity;->mNotifications:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/status/NotificationActivity;->access$200(Lcom/boohee/status/NotificationActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/status/NotificationActivity$3;->this$0:Lcom/boohee/status/NotificationActivity;

    iget v4, v4, Lcom/boohee/status/NotificationActivity;->mUserId:I

    invoke-direct {v1, v2, v3, v4}, Lcom/boohee/status/NotificationAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;I)V

    #setter for: Lcom/boohee/status/NotificationActivity;->mAdapter:Lcom/boohee/status/NotificationAdapter;
    invoke-static {v0, v1}, Lcom/boohee/status/NotificationActivity;->access$302(Lcom/boohee/status/NotificationActivity;Lcom/boohee/status/NotificationAdapter;)Lcom/boohee/status/NotificationAdapter;

    .line 115
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity$3;->this$0:Lcom/boohee/status/NotificationActivity;

    #getter for: Lcom/boohee/status/NotificationActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/boohee/status/NotificationActivity;->access$500(Lcom/boohee/status/NotificationActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/NotificationActivity$3;->this$0:Lcom/boohee/status/NotificationActivity;

    #getter for: Lcom/boohee/status/NotificationActivity;->mAdapter:Lcom/boohee/status/NotificationAdapter;
    invoke-static {v1}, Lcom/boohee/status/NotificationActivity;->access$300(Lcom/boohee/status/NotificationActivity;)Lcom/boohee/status/NotificationAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 116
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity$3;->this$0:Lcom/boohee/status/NotificationActivity;

    iget v1, v0, Lcom/boohee/status/NotificationActivity;->page:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/boohee/status/NotificationActivity;->page:I

    .line 117
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 122
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity$3;->this$0:Lcom/boohee/status/NotificationActivity;

    #getter for: Lcom/boohee/status/NotificationActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/boohee/status/NotificationActivity;->access$600(Lcom/boohee/status/NotificationActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 123
    return-void
.end method
