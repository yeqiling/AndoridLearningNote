.class Lcom/boohee/record/MeasureCurveActivity$1;
.super Ljava/lang/Object;
.source "MeasureCurveActivity.java"

# interfaces
.implements Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/MeasureCurveActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/MeasureCurveActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/MeasureCurveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/boohee/record/MeasureCurveActivity$1;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$1;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity$1;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v1, v1, Lcom/boohee/record/MeasureCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/LineChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->left:F

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$1002(Lcom/boohee/record/MeasureCurveActivity;F)F

    .line 247
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$1;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity$1;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v1, v1, Lcom/boohee/record/MeasureCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v1}, Llecho/lib/hellocharts/view/LineChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v1

    iget v1, v1, Llecho/lib/hellocharts/model/Viewport;->right:F

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$1102(Lcom/boohee/record/MeasureCurveActivity;F)F

    .line 248
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$1;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #calls: Lcom/boohee/record/MeasureCurveActivity;->requestMeasure()V
    invoke-static {v0}, Lcom/boohee/record/MeasureCurveActivity;->access$1200(Lcom/boohee/record/MeasureCurveActivity;)V

    .line 249
    return-void
.end method
