.class Lcom/boohee/record/MeasureCurveActivity$4;
.super Ljava/lang/Object;
.source "MeasureCurveActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/MeasureCurveActivity;->addListener()V
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
    .line 321
    iput-object p1, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

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

    .line 324
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mMeasure:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/record/MeasureCurveActivity;->access$400(Lcom/boohee/record/MeasureCurveActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 325
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v1}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mCurrentDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$502(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mCurrentDate:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/record/MeasureCurveActivity;->access$500(Lcom/boohee/record/MeasureCurveActivity;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mEndDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$602(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F
    invoke-static {v0, v2}, Lcom/boohee/record/MeasureCurveActivity;->access$1002(Lcom/boohee/record/MeasureCurveActivity;F)F

    .line 328
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F
    invoke-static {v0, v2}, Lcom/boohee/record/MeasureCurveActivity;->access$1102(Lcom/boohee/record/MeasureCurveActivity;F)F

    .line 329
    packed-switch p2, :pswitch_data_0

    .line 342
    :goto_0
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v2, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mEndDate:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/record/MeasureCurveActivity;->access$600(Lcom/boohee/record/MeasureCurveActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->typeMode:I
    invoke-static {v3}, Lcom/boohee/record/MeasureCurveActivity;->access$800(Lcom/boohee/record/MeasureCurveActivity;)I

    move-result v3

    #calls: Lcom/boohee/record/MeasureCurveActivity;->getDateByMode(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/boohee/record/MeasureCurveActivity;->access$900(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mBeginDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$702(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v0, v0, Lcom/boohee/record/MeasureCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v0}, Llecho/lib/hellocharts/view/LineChartView;->getChartRenderer()Llecho/lib/hellocharts/renderer/ChartRenderer;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;->resetPointIndex()V

    .line 344
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #calls: Lcom/boohee/record/MeasureCurveActivity;->requestMeasure()V
    invoke-static {v0}, Lcom/boohee/record/MeasureCurveActivity;->access$1200(Lcom/boohee/record/MeasureCurveActivity;)V

    .line 346
    return-void

    .line 331
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    const/4 v1, 0x0

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->typeMode:I
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$802(Lcom/boohee/record/MeasureCurveActivity;I)I

    goto :goto_0

    .line 335
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->typeMode:I
    invoke-static {v0, v4}, Lcom/boohee/record/MeasureCurveActivity;->access$802(Lcom/boohee/record/MeasureCurveActivity;I)I

    goto :goto_0

    .line 339
    :pswitch_2
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$4;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    const/4 v1, 0x2

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->typeMode:I
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$802(Lcom/boohee/record/MeasureCurveActivity;I)I

    goto :goto_0

    .line 329
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e079d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
