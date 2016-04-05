.class Lcom/boohee/status/ContactsActivity$7;
.super Lcom/boohee/one/http/JsonCallback;
.source "ContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/ContactsActivity;->getFollowings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/ContactsActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/ContactsActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/boohee/status/ContactsActivity$7;->this$0:Lcom/boohee/status/ContactsActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "object"

    .prologue
    .line 153
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 155
    :try_start_0
    const-string v3, "followings"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 156
    .local v2, usersArray:Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/boohee/status/ContactsActivity$7;->this$0:Lcom/boohee/status/ContactsActivity;

    instance-of v3, v2, Lorg/json/JSONArray;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-static {v3}, Lcom/boohee/model/status/StatusUser;->parseUsers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v4, v3}, Lcom/boohee/status/ContactsActivity;->access$402(Lcom/boohee/status/ContactsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 157
    iget-object v4, p0, Lcom/boohee/status/ContactsActivity$7;->this$0:Lcom/boohee/status/ContactsActivity;

    instance-of v3, v2, Lorg/json/JSONArray;

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v2           #usersArray:Lorg/json/JSONArray;
    :goto_1
    invoke-static {v3}, Lcom/boohee/model/status/StatusUser;->parseUsers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    #setter for: Lcom/boohee/status/ContactsActivity;->temps:Ljava/util/ArrayList;
    invoke-static {v4, v3}, Lcom/boohee/status/ContactsActivity;->access$502(Lcom/boohee/status/ContactsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 158
    iget-object v3, p0, Lcom/boohee/status/ContactsActivity$7;->this$0:Lcom/boohee/status/ContactsActivity;

    new-instance v4, Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    iget-object v5, p0, Lcom/boohee/status/ContactsActivity$7;->this$0:Lcom/boohee/status/ContactsActivity;

    invoke-direct {v4, v5}, Lcom/boohee/status/ContactsActivity$ContactsAdapter;-><init>(Lcom/boohee/status/ContactsActivity;)V

    #setter for: Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    invoke-static {v3, v4}, Lcom/boohee/status/ContactsActivity;->access$002(Lcom/boohee/status/ContactsActivity;Lcom/boohee/status/ContactsActivity$ContactsAdapter;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    .line 159
    iget-object v3, p0, Lcom/boohee/status/ContactsActivity$7;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v3}, Lcom/boohee/status/ContactsActivity;->access$600(Lcom/boohee/status/ContactsActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/status/ContactsActivity$7;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    invoke-static {v4}, Lcom/boohee/status/ContactsActivity;->access$000(Lcom/boohee/status/ContactsActivity;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    iget-object v3, p0, Lcom/boohee/status/ContactsActivity$7;->this$0:Lcom/boohee/status/ContactsActivity;

    invoke-static {v3}, Lcom/boohee/status/ContactsActivity;->access$708(Lcom/boohee/status/ContactsActivity;)I

    .line 164
    :goto_2
    return-void

    .line 156
    .restart local v2       #usersArray:Lorg/json/JSONArray;
    :cond_0
    move-object v0, v2

    check-cast v0, Lorg/json/JSONArray;

    move-object v3, v0

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 157
    :cond_1
    check-cast v2, Lorg/json/JSONArray;

    .end local v2           #usersArray:Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_1

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 168
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 169
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$7;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$600(Lcom/boohee/status/ContactsActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 170
    return-void
.end method
