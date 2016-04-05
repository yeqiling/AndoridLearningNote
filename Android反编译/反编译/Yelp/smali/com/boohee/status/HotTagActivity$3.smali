.class Lcom/boohee/status/HotTagActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "HotTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/HotTagActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/HotTagActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/HotTagActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 6
    .parameter "object"

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 86
    const-string v1, "topic"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 87
    .local v0, jsonObject:Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    .line 88
    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    invoke-static {v0}, Lcom/boohee/model/HotTag;->parseHotTagFromJson(Lorg/json/JSONObject;)Lcom/boohee/model/HotTag;

    move-result-object v2

    #setter for: Lcom/boohee/status/HotTagActivity;->hotTag:Lcom/boohee/model/HotTag;
    invoke-static {v1, v2}, Lcom/boohee/status/HotTagActivity;->access$202(Lcom/boohee/status/HotTagActivity;Lcom/boohee/model/HotTag;)Lcom/boohee/model/HotTag;

    .line 89
    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->hotTag:Lcom/boohee/model/HotTag;
    invoke-static {v1}, Lcom/boohee/status/HotTagActivity;->access$200(Lcom/boohee/status/HotTagActivity;)Lcom/boohee/model/HotTag;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 90
    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    iget-object v2, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->hotTag:Lcom/boohee/model/HotTag;
    invoke-static {v2}, Lcom/boohee/status/HotTagActivity;->access$200(Lcom/boohee/status/HotTagActivity;)Lcom/boohee/model/HotTag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/model/HotTag;->getHot()Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/boohee/status/HotTagActivity;->hotTags:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/boohee/status/HotTagActivity;->access$102(Lcom/boohee/status/HotTagActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 91
    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->hotTags:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/HotTagActivity;->access$100(Lcom/boohee/status/HotTagActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->hotTags:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/HotTagActivity;->access$100(Lcom/boohee/status/HotTagActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->lv_hot_tag:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/boohee/status/HotTagActivity;->access$400(Lcom/boohee/status/HotTagActivity;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/boohee/status/HotTagActivity$TagAdapter;

    iget-object v3, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    iget-object v4, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/boohee/status/HotTagActivity;->access$300(Lcom/boohee/status/HotTagActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->hotTags:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/boohee/status/HotTagActivity;->access$100(Lcom/boohee/status/HotTagActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/boohee/status/HotTagActivity$TagAdapter;-><init>(Lcom/boohee/status/HotTagActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    iget-object v2, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->hotTag:Lcom/boohee/model/HotTag;
    invoke-static {v2}, Lcom/boohee/status/HotTagActivity;->access$200(Lcom/boohee/status/HotTagActivity;)Lcom/boohee/model/HotTag;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/model/HotTag;->getRecent()Ljava/util/ArrayList;

    move-result-object v2

    #setter for: Lcom/boohee/status/HotTagActivity;->recentTags:Ljava/util/ArrayList;
    invoke-static {v1, v2}, Lcom/boohee/status/HotTagActivity;->access$002(Lcom/boohee/status/HotTagActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 95
    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->recentTags:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/HotTagActivity;->access$000(Lcom/boohee/status/HotTagActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->recentTags:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/status/HotTagActivity;->access$000(Lcom/boohee/status/HotTagActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->lv_recent_tag:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/boohee/status/HotTagActivity;->access$600(Lcom/boohee/status/HotTagActivity;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/boohee/status/HotTagActivity$TagAdapter;

    iget-object v3, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    iget-object v4, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/boohee/status/HotTagActivity;->access$500(Lcom/boohee/status/HotTagActivity;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->recentTags:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/boohee/status/HotTagActivity;->access$000(Lcom/boohee/status/HotTagActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/boohee/status/HotTagActivity$TagAdapter;-><init>(Lcom/boohee/status/HotTagActivity;Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->txt_none_recent:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/status/HotTagActivity;->access$700(Lcom/boohee/status/HotTagActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_1
    :goto_0
    return-void

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/boohee/status/HotTagActivity$3;->this$0:Lcom/boohee/status/HotTagActivity;

    #getter for: Lcom/boohee/status/HotTagActivity;->txt_none_recent:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/status/HotTagActivity;->access$700(Lcom/boohee/status/HotTagActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
