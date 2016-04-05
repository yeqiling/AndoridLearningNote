.class Lcom/boohee/status/UserTimelineActivity$AvatarListener;
.super Ljava/lang/Object;
.source "UserTimelineActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/status/UserTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvatarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/UserTimelineActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/status/UserTimelineActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 307
    iput-object p1, p0, Lcom/boohee/status/UserTimelineActivity$AvatarListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/status/UserTimelineActivity;Lcom/boohee/status/UserTimelineActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 307
    invoke-direct {p0, p1}, Lcom/boohee/status/UserTimelineActivity$AvatarListener;-><init>(Lcom/boohee/status/UserTimelineActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 310
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity$AvatarListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v2}, Lcom/boohee/status/UserTimelineActivity;->access$1700(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v2

    const-class v3, Lcom/boohee/status/LargeImageActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 311
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity$AvatarListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v2}, Lcom/boohee/status/UserTimelineActivity;->access$800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity$AvatarListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v2}, Lcom/boohee/status/UserTimelineActivity;->access$800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity$AvatarListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v2}, Lcom/boohee/status/UserTimelineActivity;->access$800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/boohee/status/UserTimelineActivity$AvatarListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v4}, Lcom/boohee/status/UserTimelineActivity;->access$800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v4

    iget-object v4, v4, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, image_url:Ljava/lang/String;
    const-string v2, "image_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity$AvatarListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v2}, Lcom/boohee/status/UserTimelineActivity;->access$1800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/boohee/one/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 322
    .end local v0           #image_url:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    const-string v2, "image_url"

    iget-object v3, p0, Lcom/boohee/status/UserTimelineActivity$AvatarListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->mUser:Lcom/boohee/model/status/StatusUser;
    invoke-static {v3}, Lcom/boohee/status/UserTimelineActivity;->access$800(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/model/status/StatusUser;

    move-result-object v3

    iget-object v3, v3, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    iget-object v2, p0, Lcom/boohee/status/UserTimelineActivity$AvatarListener;->this$0:Lcom/boohee/status/UserTimelineActivity;

    #getter for: Lcom/boohee/status/UserTimelineActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v2}, Lcom/boohee/status/UserTimelineActivity;->access$1900(Lcom/boohee/status/UserTimelineActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/boohee/one/ui/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
