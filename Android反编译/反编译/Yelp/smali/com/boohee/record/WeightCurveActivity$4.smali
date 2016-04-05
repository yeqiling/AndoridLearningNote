.class Lcom/boohee/record/WeightCurveActivity$4;
.super Ljava/lang/Object;
.source "WeightCurveActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/WeightCurveActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/WeightCurveActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/WeightCurveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .parameter "group"
    .parameter "checkedId"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 275
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$000(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 276
    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$100(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    #setter for: Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/boohee/record/WeightCurveActivity;->access$102(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/record/WeightCurveActivity;->access$100(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mEndDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$202(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F
    invoke-static {v0, v2}, Lcom/boohee/record/WeightCurveActivity;->access$302(Lcom/boohee/record/WeightCurveActivity;F)F

    .line 279
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F
    invoke-static {v0, v2}, Lcom/boohee/record/WeightCurveActivity;->access$402(Lcom/boohee/record/WeightCurveActivity;F)F

    .line 280
    packed-switch p2, :pswitch_data_0

    .line 291
    :goto_1
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v2, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mEndDate:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/record/WeightCurveActivity;->access$200(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->typeMode:I
    invoke-static {v3}, Lcom/boohee/record/WeightCurveActivity;->access$600(Lcom/boohee/record/WeightCurveActivity;)I

    move-result v3

    #calls: Lcom/boohee/record/WeightCurveActivity;->getDateByMode(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/boohee/record/WeightCurveActivity;->access$700(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mBeginDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$502(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 292
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v0, v0, Lcom/boohee/record/WeightCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v0}, Llecho/lib/hellocharts/view/LineChartView;->getChartRenderer()Llecho/lib/hellocharts/renderer/ChartRenderer;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->resetPointIndex()V

    .line 293
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #calls: Lcom/boohee/record/WeightCurveActivity;->requestWeights()V
    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$800(Lcom/boohee/record/WeightCurveActivity;)V

    .line 294
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$100(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 282
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    const/4 v1, 0x0

    #setter for: Lcom/boohee/record/WeightCurveActivity;->typeMode:I
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$602(Lcom/boohee/record/WeightCurveActivity;I)I

    goto :goto_1

    .line 285
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #setter for: Lcom/boohee/record/WeightCurveActivity;->typeMode:I
    invoke-static {v0, v4}, Lcom/boohee/record/WeightCurveActivity;->access$602(Lcom/boohee/record/WeightCurveActivity;I)I

    goto :goto_1

    .line 288
    :pswitch_2
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$4;->this$0:Lcom/boohee/record/WeightCurveActivity;

    const/4 v1, 0x2

    #setter for: Lcom/boohee/record/WeightCurveActivity;->typeMode:I
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$602(Lcom/boohee/record/WeightCurveActivity;I)I

    goto :goto_1

    .line 280
    :pswitch_data_0
    .packed-switch 0x7f0e079d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
