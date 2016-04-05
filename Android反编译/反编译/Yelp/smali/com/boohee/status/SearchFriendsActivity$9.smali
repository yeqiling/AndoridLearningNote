.class Lcom/boohee/status/SearchFriendsActivity$9;
.super Lcom/boohee/one/http/JsonCallback;
.source "SearchFriendsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/SearchFriendsActivity;->searchNext()V
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
    .line 245
    iput-object p1, p0, Lcom/boohee/status/SearchFriendsActivity$9;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 248
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 250
    :try_start_0
    const-string v2, "users"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 251
    .local v1, usersArray:Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/boohee/status/SearchFriendsActivity$9;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->mSearchUsers:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/status/SearchFriendsActivity;->access$1100(Lcom/boohee/status/SearchFriendsActivity;)Ljava/util/List;

    move-result-object v3

    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1           #usersArray:Lorg/json/JSONArray;
    :goto_0
    invoke-static {v2}, Lcom/boohee/model/status/StatusUser;->parseUsers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 252
    iget-object v2, p0, Lcom/boohee/status/SearchFriendsActivity$9;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->mSearchAdapter:Lcom/boohee/status/FriendsAdapter;
    invoke-static {v2}, Lcom/boohee/status/SearchFriendsActivity;->access$1300(Lcom/boohee/status/SearchFriendsActivity;)Lcom/boohee/status/FriendsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/status/FriendsAdapter;->notifyDataSetChanged()V

    .line 253
    iget-object v2, p0, Lcom/boohee/status/SearchFriendsActivity$9;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    const/4 v3, 0x0

    #setter for: Lcom/boohee/status/SearchFriendsActivity;->isLastVisible:Z
    invoke-static {v2, v3}, Lcom/boohee/status/SearchFriendsActivity;->access$902(Lcom/boohee/status/SearchFriendsActivity;Z)Z

    .line 257
    :goto_1
    return-void

    .line 251
    .restart local v1       #usersArray:Lorg/json/JSONArray;
    :cond_0
    check-cast v1, Lorg/json/JSONArray;

    .end local v1           #usersArray:Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 262
    iget-object v0, p0, Lcom/boohee/status/SearchFriendsActivity$9;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/status/SearchFriendsActivity;->access$1700(Lcom/boohee/status/SearchFriendsActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/status/SearchFriendsActivity$9;->this$0:Lcom/boohee/status/SearchFriendsActivity;

    #getter for: Lcom/boohee/status/SearchFriendsActivity;->searchText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/boohee/status/SearchFriendsActivity;->access$000(Lcom/boohee/status/SearchFriendsActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/KeyBoardUtils;->closeKeybord(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 263
    return-void
.end method
