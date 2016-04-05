.class Lcom/boohee/status/TopicActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "TopicActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/status/TopicActivity;->getCurrentTopic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/status/TopicActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/TopicActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/boohee/status/TopicActivity$1;->this$0:Lcom/boohee/status/TopicActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .parameter "object"

    .prologue
    .line 140
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 141
    iget-object v0, p0, Lcom/boohee/status/TopicActivity$1;->this$0:Lcom/boohee/status/TopicActivity;

    const-string v1, "topic"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/Topic;->parseSelf(Lorg/json/JSONObject;)Lcom/boohee/model/status/Topic;

    move-result-object v1

    #setter for: Lcom/boohee/status/TopicActivity;->mTopic:Lcom/boohee/model/status/Topic;
    invoke-static {v0, v1}, Lcom/boohee/status/TopicActivity;->access$002(Lcom/boohee/status/TopicActivity;Lcom/boohee/model/status/Topic;)Lcom/boohee/model/status/Topic;

    .line 142
    iget-object v0, p0, Lcom/boohee/status/TopicActivity$1;->this$0:Lcom/boohee/status/TopicActivity;

    #calls: Lcom/boohee/status/TopicActivity;->initUI()V
    invoke-static {v0}, Lcom/boohee/status/TopicActivity;->access$100(Lcom/boohee/status/TopicActivity;)V

    .line 143
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 147
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 148
    iget-object v0, p0, Lcom/boohee/status/TopicActivity$1;->this$0:Lcom/boohee/status/TopicActivity;

    invoke-virtual {v0}, Lcom/boohee/status/TopicActivity;->dismissLoading()V

    .line 149
    return-void
.end method
