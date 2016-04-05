.class Lcom/boohee/record/MeasureCurveActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "MeasureCurveActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/MeasureCurveActivity;->requestMeasure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/MeasureCurveActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/MeasureCurveActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 356
    iput-object p1, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 11
    .parameter "object"

    .prologue
    .line 359
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 360
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/boohee/model/mine/Measure;

    invoke-static {v0, v1}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v10

    .line 361
    .local v10, measures:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/Measure;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mMeasure:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/record/MeasureCurveActivity;->access$400(Lcom/boohee/record/MeasureCurveActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 363
    invoke-static {v10}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 364
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mMeasure:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/record/MeasureCurveActivity;->access$400(Lcom/boohee/record/MeasureCurveActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v10}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->chartHelper:Lcom/boohee/utils/ChartMeasureHelper;
    invoke-static {v0}, Lcom/boohee/record/MeasureCurveActivity;->access$1700(Lcom/boohee/record/MeasureCurveActivity;)Lcom/boohee/utils/ChartMeasureHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/record/MeasureCurveActivity;->access$1500(Lcom/boohee/record/MeasureCurveActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v2, v2, Lcom/boohee/record/MeasureCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    iget-object v3, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mBeginDate:Ljava/lang/String;
    invoke-static {v3}, Lcom/boohee/record/MeasureCurveActivity;->access$700(Lcom/boohee/record/MeasureCurveActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mCurrentDate:Ljava/lang/String;
    invoke-static {v4}, Lcom/boohee/record/MeasureCurveActivity;->access$500(Lcom/boohee/record/MeasureCurveActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mMeasure:Ljava/util/List;
    invoke-static {v5}, Lcom/boohee/record/MeasureCurveActivity;->access$400(Lcom/boohee/record/MeasureCurveActivity;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F
    invoke-static {v6}, Lcom/boohee/record/MeasureCurveActivity;->access$1000(Lcom/boohee/record/MeasureCurveActivity;)F

    move-result v6

    iget-object v7, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F
    invoke-static {v7}, Lcom/boohee/record/MeasureCurveActivity;->access$1100(Lcom/boohee/record/MeasureCurveActivity;)F

    move-result v7

    iget-object v8, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->typeMode:I
    invoke-static {v8}, Lcom/boohee/record/MeasureCurveActivity;->access$800(Lcom/boohee/record/MeasureCurveActivity;)I

    move-result v8

    iget-object v9, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mIsLandscape:Z
    invoke-static {v9}, Lcom/boohee/record/MeasureCurveActivity;->access$1600(Lcom/boohee/record/MeasureCurveActivity;)Z

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/boohee/utils/ChartMeasureHelper;->initLine(Landroid/content/Context;Llecho/lib/hellocharts/view/LineChartView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;FFIZ)V

    .line 367
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 371
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 372
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    invoke-virtual {v0}, Lcom/boohee/record/MeasureCurveActivity;->dismissLoading()V

    .line 373
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$5;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    const/4 v1, 0x0

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mRightCount:I
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$1302(Lcom/boohee/record/MeasureCurveActivity;I)I

    .line 374
    return-void
.end method
