.class Lcom/boohee/record/WeightCurveActivity$6;
.super Lcom/boohee/one/http/JsonCallback;
.source "WeightCurveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/WeightCurveActivity;->requestWeights()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/WeightCurveActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/WeightCurveActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 311
    iput-object p1, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 11
    .parameter "object"

    .prologue
    .line 314
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 315
    const-string v0, "records"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/boohee/model/mine/WeightRecord;

    invoke-static {v0, v1}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    .line 316
    .local v10, weightRecords:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/WeightRecord;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$000(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 318
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 319
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$000(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v10}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->chartHelper:Lcom/boohee/utils/ChartHelper;
    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$1600(Lcom/boohee/record/WeightCurveActivity;)Lcom/boohee/utils/ChartHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/record/WeightCurveActivity;->access$1500(Lcom/boohee/record/WeightCurveActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v2, v2, Lcom/boohee/record/WeightCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    iget-object v3, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mBeginDate:Ljava/lang/String;
    invoke-static {v3}, Lcom/boohee/record/WeightCurveActivity;->access$500(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;
    invoke-static {v4}, Lcom/boohee/record/WeightCurveActivity;->access$100(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;
    invoke-static {v5}, Lcom/boohee/record/WeightCurveActivity;->access$000(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F
    invoke-static {v6}, Lcom/boohee/record/WeightCurveActivity;->access$300(Lcom/boohee/record/WeightCurveActivity;)F

    move-result v6

    iget-object v7, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F
    invoke-static {v7}, Lcom/boohee/record/WeightCurveActivity;->access$400(Lcom/boohee/record/WeightCurveActivity;)F

    move-result v7

    iget-object v8, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->typeMode:I
    invoke-static {v8}, Lcom/boohee/record/WeightCurveActivity;->access$600(Lcom/boohee/record/WeightCurveActivity;)I

    move-result v8

    iget-object v9, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mIsLandscape:Z
    invoke-static {v9}, Lcom/boohee/record/WeightCurveActivity;->access$900(Lcom/boohee/record/WeightCurveActivity;)Z

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/boohee/utils/ChartHelper;->initLine(Landroid/content/Context;Llecho/lib/hellocharts/view/LineChartView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;FFIZ)V

    .line 322
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 326
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 327
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    invoke-virtual {v0}, Lcom/boohee/record/WeightCurveActivity;->dismissLoading()V

    .line 328
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$6;->this$0:Lcom/boohee/record/WeightCurveActivity;

    const/4 v1, 0x0

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mRightCount:I
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$1202(Lcom/boohee/record/WeightCurveActivity;I)I

    .line 329
    return-void
.end method
