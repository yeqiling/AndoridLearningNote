.class Lcom/boohee/status/NotificationActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "NotificationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/NotificationActivity;->getPreviousNotifications()V
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
    .line 128
    iput-object p1, p0, Lcom/boohee/status/NotificationActivity$4;->this$0:Lcom/boohee/status/NotificationActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 132
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity$4;->this$0:Lcom/boohee/status/NotificationActivity;

    #getter for: Lcom/boohee/status/NotificationActivity;->mNotifications:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/NotificationActivity;->access$200(Lcom/boohee/status/NotificationActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1}, Lcom/boohee/model/status/Notification;->parseNotifications(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 133
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity$4;->this$0:Lcom/boohee/status/NotificationActivity;

    #getter for: Lcom/boohee/status/NotificationActivity;->mAdapter:Lcom/boohee/status/NotificationAdapter;
    invoke-static {v0}, Lcom/boohee/status/NotificationActivity;->access$300(Lcom/boohee/status/NotificationActivity;)Lcom/boohee/status/NotificationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/status/NotificationAdapter;->notifyDataSetChanged()V

    .line 134
    iget-object v0, p0, Lcom/boohee/status/NotificationActivity$4;->this$0:Lcom/boohee/status/NotificationActivity;

    iget v1, v0, Lcom/boohee/status/NotificationActivity;->page:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/boohee/status/NotificationActivity;->page:I

    .line 135
    return-void
.end method
