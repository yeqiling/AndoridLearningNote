.class Lcom/boohee/status/ContactsActivity$9;
.super Lcom/boohee/one/http/JsonCallback;
.source "ContactsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/ContactsActivity;->searchFollowings(Ljava/lang/String;)V
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
    .line 195
    iput-object p1, p0, Lcom/boohee/status/ContactsActivity$9;->this$0:Lcom/boohee/status/ContactsActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 198
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 199
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$9;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$9;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 201
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$9;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mUsers:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$400(Lcom/boohee/status/ContactsActivity;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, "followings"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/StatusUser;->parseUsers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$9;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$000(Lcom/boohee/status/ContactsActivity;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$9;->this$0:Lcom/boohee/status/ContactsActivity;

    #getter for: Lcom/boohee/status/ContactsActivity;->mAdapter:Lcom/boohee/status/ContactsActivity$ContactsAdapter;
    invoke-static {v0}, Lcom/boohee/status/ContactsActivity;->access$000(Lcom/boohee/status/ContactsActivity;)Lcom/boohee/status/ContactsActivity$ContactsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/status/ContactsActivity$ContactsAdapter;->notifyDataSetChanged()V

    .line 206
    :cond_1
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 211
    iget-object v0, p0, Lcom/boohee/status/ContactsActivity$9;->this$0:Lcom/boohee/status/ContactsActivity;

    invoke-virtual {v0}, Lcom/boohee/status/ContactsActivity;->dismissLoading()V

    .line 212
    return-void
.end method
