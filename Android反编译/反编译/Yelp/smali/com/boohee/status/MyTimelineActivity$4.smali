.class Lcom/boohee/status/MyTimelineActivity$4;
.super Ljava/lang/Object;
.source "MyTimelineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/MyTimelineActivity;->initHeader(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/MyTimelineActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/MyTimelineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/boohee/status/MyTimelineActivity$4;->this$0:Lcom/boohee/status/MyTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 151
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity$4;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v2}, Lcom/boohee/status/MyTimelineActivity;->access$800(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v2

    const-class v3, Lcom/boohee/status/LargeImageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity$4;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v2}, Lcom/boohee/status/MyTimelineActivity;->access$500(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity$4;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v2}, Lcom/boohee/status/MyTimelineActivity;->access$500(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity$4;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v2}, Lcom/boohee/status/MyTimelineActivity;->access$500(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/boohee/status/MyTimelineActivity$4;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v4}, Lcom/boohee/status/MyTimelineActivity;->access$500(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v4

    iget-object v4, v4, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, image_url:Ljava/lang/String;
    const-string v2, "image_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity$4;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v2}, Lcom/boohee/status/MyTimelineActivity;->access$900(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/boohee/one/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 163
    .end local v0           #image_url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v2, "image_url"

    iget-object v3, p0, Lcom/boohee/status/MyTimelineActivity$4;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v3}, Lcom/boohee/status/MyTimelineActivity;->access$500(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v3

    iget-object v3, v3, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    iget-object v2, p0, Lcom/boohee/status/MyTimelineActivity$4;->this$0:Lcom/boohee/status/MyTimelineActivity;

    #getter for: Lcom/boohee/status/MyTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v2}, Lcom/boohee/status/MyTimelineActivity;->access$1000(Lcom/boohee/status/MyTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/boohee/one/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
