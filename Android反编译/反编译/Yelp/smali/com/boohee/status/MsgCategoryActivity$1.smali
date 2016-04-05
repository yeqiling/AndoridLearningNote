.class Lcom/boohee/status/MsgCategoryActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "MsgCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/MsgCategoryActivity;->getStatusUnread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/MsgCategoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/MsgCategoryActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/boohee/status/MsgCategoryActivity$1;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 121
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 109
    invoke-static {p1}, Lcom/boohee/model/status/UnreadCount;->parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/status/UnreadCount;

    move-result-object v0

    .line 110
    .local v0, unread:Lcom/boohee/model/status/UnreadCount;
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity$1;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    #getter for: Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/MsgCategoryActivity;->access$000(Lcom/boohee/status/MsgCategoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/MsgCategory;

    iget v2, v0, Lcom/boohee/model/status/UnreadCount;->unread_mention_notification_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/MsgCategory;->setCount(I)V

    .line 111
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity$1;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    #getter for: Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/MsgCategoryActivity;->access$000(Lcom/boohee/status/MsgCategoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/MsgCategory;

    iget v2, v0, Lcom/boohee/model/status/UnreadCount;->unread_comment_notification_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/MsgCategory;->setCount(I)V

    .line 112
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity$1;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    #getter for: Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/MsgCategoryActivity;->access$000(Lcom/boohee/status/MsgCategoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/MsgCategory;

    iget v2, v0, Lcom/boohee/model/status/UnreadCount;->unread_feedback_notification_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/MsgCategory;->setCount(I)V

    .line 113
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity$1;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    #getter for: Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/MsgCategoryActivity;->access$000(Lcom/boohee/status/MsgCategoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/MsgCategory;

    iget v2, v0, Lcom/boohee/model/status/UnreadCount;->unread_friendship_notification_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/MsgCategory;->setCount(I)V

    .line 114
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity$1;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    #getter for: Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/MsgCategoryActivity;->access$000(Lcom/boohee/status/MsgCategoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/MsgCategory;

    iget v2, v0, Lcom/boohee/model/status/UnreadCount;->unread_repost_notification_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/MsgCategory;->setCount(I)V

    .line 115
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity$1;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    #getter for: Lcom/boohee/status/MsgCategoryActivity;->mCategories:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/MsgCategoryActivity;->access$000(Lcom/boohee/status/MsgCategoryActivity;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/MsgCategory;

    iget v2, v0, Lcom/boohee/model/status/UnreadCount;->unread_broadcast_notification_count:I

    invoke-virtual {v1, v2}, Lcom/boohee/model/MsgCategory;->setCount(I)V

    .line 116
    iget-object v1, p0, Lcom/boohee/status/MsgCategoryActivity$1;->this$0:Lcom/boohee/status/MsgCategoryActivity;

    #getter for: Lcom/boohee/status/MsgCategoryActivity;->mAdapter:Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;
    invoke-static {v1}, Lcom/boohee/status/MsgCategoryActivity;->access$100(Lcom/boohee/status/MsgCategoryActivity;)Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/one/ui/adapter/MsgCategoryAdapter;->notifyDataSetChanged()V

    .line 117
    return-void
.end method
