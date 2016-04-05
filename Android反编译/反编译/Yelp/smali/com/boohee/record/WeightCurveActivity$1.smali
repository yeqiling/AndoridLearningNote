.class Lcom/boohee/record/WeightCurveActivity$1;
.super Ljava/lang/Object;
.source "WeightCurveActivity.java"

# interfaces
.implements Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/WeightCurveActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
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
    .line 177
    iput-object p1, p0, Lcom/boohee/record/WeightCurveActivity$1;->this$0:Lcom/boohee/record/WeightCurveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$1;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$000(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 181
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$1;->this$0:Lcom/boohee/record/WeightCurveActivity;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$102(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$1;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$1;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/record/WeightCurveActivity;->access$100(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mEndDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$202(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$1;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F
    invoke-static {v0, v2}, Lcom/boohee/record/WeightCurveActivity;->access$302(Lcom/boohee/record/WeightCurveActivity;F)F

    .line 184
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$1;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F
    invoke-static {v0, v2}, Lcom/boohee/record/WeightCurveActivity;->access$402(Lcom/boohee/record/WeightCurveActivity;F)F

    .line 185
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$1;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$1;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v2, p0, Lcom/boohee/record/WeightCurveActivity$1;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mEndDate:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/record/WeightCurveActivity;->access$200(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/WeightCurveActivity$1;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->typeMode:I
    invoke-static {v3}, Lcom/boohee/record/WeightCurveActivity;->access$600(Lcom/boohee/record/WeightCurveActivity;)I

    move-result v3

    const/4 v4, 0x1

    #calls: Lcom/boohee/record/WeightCurveActivity;->getDateByMode(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/boohee/record/WeightCurveActivity;->access$700(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mBeginDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$502(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 186
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$1;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v0, v0, Lcom/boohee/record/WeightCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v0}, Llecho/lib/hellocharts/view/LineChartView;->getChartRenderer()Llecho/lib/hellocharts/renderer/ChartRenderer;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->resetPointIndex()V

    .line 187
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$1;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #calls: Lcom/boohee/record/WeightCurveActivity;->requestWeights()V
    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$800(Lcom/boohee/record/WeightCurveActivity;)V

    .line 188
    return-void
.end method
