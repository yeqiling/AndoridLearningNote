.class Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;
.super Ljava/lang/Object;
.source "MeasureCurveActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/record/MeasureCurveActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpinnerItemSelectedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/MeasureCurveActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/record/MeasureCurveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/record/MeasureCurveActivity;Lcom/boohee/record/MeasureCurveActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;-><init>(Lcom/boohee/record/MeasureCurveActivity;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x0

    .line 151
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #calls: Lcom/boohee/record/MeasureCurveActivity;->setSpinnerText(Landroid/view/View;)V
    invoke-static {v0, p2}, Lcom/boohee/record/MeasureCurveActivity;->access$100(Lcom/boohee/record/MeasureCurveActivity;Landroid/view/View;)V

    .line 152
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #calls: Lcom/boohee/record/MeasureCurveActivity;->getMeasureType(I)Ljava/lang/String;
    invoke-static {v1, p3}, Lcom/boohee/record/MeasureCurveActivity;->access$300(Lcom/boohee/record/MeasureCurveActivity;I)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$202(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mMeasure:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/record/MeasureCurveActivity;->access$400(Lcom/boohee/record/MeasureCurveActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mCurrentDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$502(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mCurrentDate:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/record/MeasureCurveActivity;->access$500(Lcom/boohee/record/MeasureCurveActivity;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mEndDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$602(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v2, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mEndDate:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/record/MeasureCurveActivity;->access$600(Lcom/boohee/record/MeasureCurveActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->typeMode:I
    invoke-static {v3}, Lcom/boohee/record/MeasureCurveActivity;->access$800(Lcom/boohee/record/MeasureCurveActivity;)I

    move-result v3

    const/4 v4, 0x1

    #calls: Lcom/boohee/record/MeasureCurveActivity;->getDateByMode(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/boohee/record/MeasureCurveActivity;->access$900(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mBeginDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$702(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F
    invoke-static {v0, v5}, Lcom/boohee/record/MeasureCurveActivity;->access$1002(Lcom/boohee/record/MeasureCurveActivity;F)F

    .line 158
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F
    invoke-static {v0, v5}, Lcom/boohee/record/MeasureCurveActivity;->access$1102(Lcom/boohee/record/MeasureCurveActivity;F)F

    .line 159
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v0, v0, Lcom/boohee/record/MeasureCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v0}, Llecho/lib/hellocharts/view/LineChartView;->getChartRenderer()Llecho/lib/hellocharts/renderer/ChartRenderer;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->resetPointIndex()V

    .line 160
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #calls: Lcom/boohee/record/MeasureCurveActivity;->requestMeasure()V
    invoke-static {v0}, Lcom/boohee/record/MeasureCurveActivity;->access$1200(Lcom/boohee/record/MeasureCurveActivity;)V

    .line 161
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
