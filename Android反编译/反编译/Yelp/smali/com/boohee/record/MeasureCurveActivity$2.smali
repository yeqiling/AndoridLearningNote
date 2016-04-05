.class Lcom/boohee/record/MeasureCurveActivity$2;
.super Ljava/lang/Object;
.source "MeasureCurveActivity.java"

# interfaces
.implements Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;


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
    .line 259
    iput-object p1, p0, Lcom/boohee/record/MeasureCurveActivity$2;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 0
    .parameter "lineIndex"
    .parameter "pointIndex"
    .parameter "value"

    .prologue
    .line 272
    return-void
.end method

.method public onPopSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 4
    .parameter "lineIndex"
    .parameter "pointIndex"
    .parameter "value"

    .prologue
    .line 276
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v2, p0, Lcom/boohee/record/MeasureCurveActivity$2;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mMeasure:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/record/MeasureCurveActivity;->access$400(Lcom/boohee/record/MeasureCurveActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/record/MeasureCurveActivity$2;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mMeasure:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/record/MeasureCurveActivity;->access$400(Lcom/boohee/record/MeasureCurveActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/record/MeasureCurveActivity$2;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->typeMode:I
    invoke-static {v2}, Lcom/boohee/record/MeasureCurveActivity;->access$800(Lcom/boohee/record/MeasureCurveActivity;)I

    move-result v2

    if-gtz v2, :cond_0

    .line 281
    iget-object v2, p0, Lcom/boohee/record/MeasureCurveActivity$2;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mMeasure:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/record/MeasureCurveActivity;->access$400(Lcom/boohee/record/MeasureCurveActivity;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/mine/Measure;

    .line 282
    .local v1, measure:Lcom/boohee/model/mine/Measure;
    iget-object v2, v1, Lcom/boohee/model/mine/Measure;->record_on:Ljava/lang/String;

    invoke-static {v2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/AddMeasureFragment;

    move-result-object v0

    .line 283
    .local v0, addMeasureFragment:Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    iget-object v2, p0, Lcom/boohee/record/MeasureCurveActivity$2;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    invoke-virtual {v2}, Lcom/boohee/record/MeasureCurveActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "addMeasureFragment"

    invoke-virtual {v0, v2, v3}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 284
    new-instance v2, Lcom/boohee/record/MeasureCurveActivity$2$1;

    invoke-direct {v2, p0}, Lcom/boohee/record/MeasureCurveActivity$2$1;-><init>(Lcom/boohee/record/MeasureCurveActivity$2;)V

    invoke-virtual {v0, v2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->setChangeListener(Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;)V

    goto :goto_0
.end method

.method public onValueDeselected()V
    .locals 0

    .prologue
    .line 267
    return-void
.end method

.method public onValueSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 0
    .parameter "lineIndex"
    .parameter "pointIndex"
    .parameter "value"

    .prologue
    .line 263
    return-void
.end method
