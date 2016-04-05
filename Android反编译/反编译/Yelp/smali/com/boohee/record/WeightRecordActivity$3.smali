.class Lcom/boohee/record/WeightRecordActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "WeightRecordActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/WeightRecordActivity;->requestWeightsLatest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/WeightRecordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/WeightRecordActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 247
    iput-object p1, p0, Lcom/boohee/record/WeightRecordActivity$3;->this$0:Lcom/boohee/record/WeightRecordActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 259
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "object"

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 251
    const-string v1, "record"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/mine/WeightRecord;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/mine/WeightRecord;

    .line 252
    .local v0, weightRecord:Lcom/boohee/model/mine/WeightRecord;
    if-eqz v0, :cond_0

    .line 253
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity$3;->this$0:Lcom/boohee/record/WeightRecordActivity;

    iget-object v2, v0, Lcom/boohee/model/mine/WeightRecord;->record_on:Ljava/lang/String;

    #setter for: Lcom/boohee/record/WeightRecordActivity;->latest_on:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boohee/record/WeightRecordActivity;->access$502(Lcom/boohee/record/WeightRecordActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 255
    :cond_0
    return-void
.end method
