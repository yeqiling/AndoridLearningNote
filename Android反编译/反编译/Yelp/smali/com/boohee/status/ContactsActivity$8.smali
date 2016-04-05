.class Lcom/boohee/status/ContactsActivity$8;
.super Lcom/boohee/one/http/JsonCallback;
.source "ContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/ContactsActivity;->getNextFriends()V
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
    .line 176
    iput-object p1, p0, Lcom/boohee/status/ContactsActivity$8;->this$0:Lcom/boohee/status/ContactsActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .parameter "object"

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 181
    :try_start_0
    const-string v2, "followings"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 182
    .local v1, usersArray:Lorg/json/JSONArray;
    iget-object v2, p0, Lcom/boohee/status/ContactsActivity$8;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    .end local v1           #usersArray:Lorg/json/JSONArray;
    :goto_0
    invoke-static {v2}, Lcom/boohee/model/status/StatusUser;->parseUsers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 183
    iget-object v2, p0, Lcom/boohee/status/ContactsActivity$8;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    invoke-static {v2}, Lcom/boohee/status/ContactsActivity;->access$000(Lcom/boohee/status/ContactsActivity;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    .line 184
    iget-object v2, p0, Lcom/boohee/status/ContactsActivity$8;->this$0:Lcom/boohee/status/ContactsActivity;

    const/4 v3, 0x0

    #setter for: Lcom/boohee/status/ContactsActivity;->isLastVisible:Z
    invoke-static {v2, v3}, Lcom/boohee/status/ContactsActivity;->access$202(Lcom/boohee/status/ContactsActivity;Z)Z

    .line 185
    iget-object v2, p0, Lcom/boohee/status/ContactsActivity$8;->this$0:Lcom/boohee/status/ContactsActivity;

    invoke-static {v2}, Lcom/boohee/status/ContactsActivity;->access$708(Lcom/boohee/status/ContactsActivity;)I

    .line 189
    :goto_1
    return-void

    .line 182
    .restart local v1       #usersArray:Lorg/json/JSONArray;
    :cond_0
    check-cast v1, Lorg/json/JSONArray;

    .end local v1           #usersArray:Lorg/json/JSONArray;
    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method
