.class Lcom/boohee/status/SearchFriendsActivity$8;
.super Lcom/boohee/one/http/JsonCallback;
.source "SearchFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/SearchFriendsActivity;->searchRemote()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/SearchFriendsActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/SearchFriendsActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 7
    .parameter "object"

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 217
    :try_start_0
    const-string v2, "users"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 218
    .local v1, usersArray:Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1           #usersArray:Lorg/json/JSONArray;
    :goto_0
    invoke-static {v2}, Lcom/boohee/model/status/StatusUser;->parseUsers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/boohee/status/SearchFriendsActivity;->mSearchUsers:Ljava/util/List;
    invoke-static {v3, v2}, Lcom/boohee/status/SearchFriendsActivity;->access$1102(Lcom/boohee/status/SearchFriendsActivity;Ljava/util/List;)Ljava/util/List;

    .line 219
    iget-object v2, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->mSearchUsers:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/status/SearchFriendsActivity;->access$1100(Lcom/boohee/status/SearchFriendsActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 220
    const v2, 0x7f0703d8

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 222
    :cond_0
    iget-object v2, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    new-instance v3, Lcom/boohee/status/FriendsAdapter;

    iget-object v4, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/boohee/status/SearchFriendsActivity;->access$1400(Lcom/boohee/status/SearchFriendsActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->mSearchUsers:Ljava/util/List;
    invoke-static {v5}, Lcom/boohee/status/SearchFriendsActivity;->access$1100(Lcom/boohee/status/SearchFriendsActivity;)Ljava/util/List;

    move-result-object v5

    const-string v6, "follower"

    invoke-direct {v3, v4, v5, v6}, Lcom/boohee/status/FriendsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    #setter for: Lcom/boohee/status/SearchFriendsActivity;->mSearchAdapter:Lcom/boohee/status/FriendsAdapter;
    invoke-static {v2, v3}, Lcom/boohee/status/SearchFriendsActivity;->access$1302(Lcom/boohee/status/SearchFriendsActivity;Lcom/boohee/status/FriendsAdapter;)Lcom/boohee/status/FriendsAdapter;

    .line 223
    iget-object v2, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/boohee/status/SearchFriendsActivity;->access$1500(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/ListView;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->mSearchAdapter:Lcom/boohee/status/FriendsAdapter;
    invoke-static {v3}, Lcom/boohee/status/SearchFriendsActivity;->access$1300(Lcom/boohee/status/SearchFriendsActivity;)Lcom/boohee/status/FriendsAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 225
    iget-object v2, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->mPullRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v2}, Lcom/boohee/status/SearchFriendsActivity;->access$500(Lcom/boohee/status/SearchFriendsActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setVisibility(I)V

    .line 226
    iget-object v2, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->mainLayout:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/boohee/status/SearchFriendsActivity;->access$600(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v2, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->txt_search:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/boohee/status/SearchFriendsActivity;->access$700(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f07001c

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 228
    iget-object v2, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    const/4 v3, 0x1

    #setter for: Lcom/boohee/status/SearchFriendsActivity;->isSearchListVisible:Z
    invoke-static {v2, v3}, Lcom/boohee/status/SearchFriendsActivity;->access$402(Lcom/boohee/status/SearchFriendsActivity;Z)Z

    .line 232
    :goto_1
    return-void

    .line 218
    .restart local v1       #usersArray:Lorg/json/JSONArray;
    :cond_1
    check-cast v1, Lorg/json/JSONArray;

    .end local v1           #usersArray:Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 229
    :catch_0
    move-exception v0

    .line 230
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 236
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 237
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    invoke-virtual {v0}, Lcom/boohee/status/SearchFriendsActivity;->dismissLoading()V

    .line 238
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$1600(Lcom/boohee/status/SearchFriendsActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/SearchFriendsActivity$8;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->searchText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/boohee/status/SearchFriendsActivity;->access$000(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/KeyBoardUtils;->closeKeybord(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 239
    return-void
.end method
