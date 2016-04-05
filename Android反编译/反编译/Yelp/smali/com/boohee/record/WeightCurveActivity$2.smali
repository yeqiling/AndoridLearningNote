.class Lcom/boohee/record/WeightCurveActivity$2;
.super Ljava/lang/Object;
.source "WeightCurveActivity.java"

# interfaces
.implements Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;


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
    .line 198
    iput-object p1, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 6
    .parameter "lineIndex"
    .parameter "pointIndex"
    .parameter "value"

    .prologue
    .line 231
    iget-object v2, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/record/WeightCurveActivity;->access$000(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/record/WeightCurveActivity;->access$000(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mIsLandscape:Z
    invoke-static {v2}, Lcom/boohee/record/WeightCurveActivity;->access$900(Lcom/boohee/record/WeightCurveActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    iget-object v2, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/record/WeightCurveActivity;->access$000(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/mine/WeightRecord;

    .line 234
    .local v1, weightRecord:Lcom/boohee/model/mine/WeightRecord;
    if-eqz v1, :cond_0

    .line 235
    iget-object v0, v1, Lcom/boohee/model/mine/WeightRecord;->photos:Ljava/util/List;

    .line 236
    .local v0, photos:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/WeightPhoto;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 237
    iget-object v2, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->ctx:Landroid/content/Context;
    invoke-static {v4}, Lcom/boohee/record/WeightCurveActivity;->access$1100(Lcom/boohee/record/WeightCurveActivity;)Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/boohee/record/WeightGalleryActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "key_weight_record"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boohee/record/WeightCurveActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPopSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 4
    .parameter "lineIndex"
    .parameter "pointIndex"
    .parameter "value"

    .prologue
    .line 205
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/record/WeightCurveActivity;->access$000(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/record/WeightCurveActivity;->access$000(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->typeMode:I
    invoke-static {v1}, Lcom/boohee/record/WeightCurveActivity;->access$600(Lcom/boohee/record/WeightCurveActivity;)I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mIsLandscape:Z
    invoke-static {v1}, Lcom/boohee/record/WeightCurveActivity;->access$900(Lcom/boohee/record/WeightCurveActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/record/WeightCurveActivity;->access$000(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/List;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/mine/WeightRecord;

    .line 211
    .local v0, weightRecord:Lcom/boohee/model/mine/WeightRecord;
    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v2, v0, Lcom/boohee/model/mine/WeightRecord;->record_on:Ljava/lang/String;

    invoke-static {v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/AddWeightFragment;

    move-result-object v2

    #setter for: Lcom/boohee/record/WeightCurveActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;
    invoke-static {v1, v2}, Lcom/boohee/record/WeightCurveActivity;->access$1002(Lcom/boohee/record/WeightCurveActivity;Lcom/boohee/one/ui/fragment/AddWeightFragment;)Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .line 212
    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;
    invoke-static {v1}, Lcom/boohee/record/WeightCurveActivity;->access$1000(Lcom/boohee/record/WeightCurveActivity;)Lcom/boohee/one/ui/fragment/AddWeightFragment;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    invoke-virtual {v2}, Lcom/boohee/record/WeightCurveActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "addWeightFragment"

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 213
    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$2;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;
    invoke-static {v1}, Lcom/boohee/record/WeightCurveActivity;->access$1000(Lcom/boohee/record/WeightCurveActivity;)Lcom/boohee/one/ui/fragment/AddWeightFragment;

    move-result-object v1

    new-instance v2, Lcom/boohee/record/WeightCurveActivity$2$1;

    invoke-direct {v2, p0}, Lcom/boohee/record/WeightCurveActivity$2$1;-><init>(Lcom/boohee/record/WeightCurveActivity$2;)V

    invoke-virtual {v1, v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->setChangeListener(Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;)V

    goto :goto_0
.end method

.method public onValueDeselected()V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public onValueSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 0
    .parameter "lineIndex"
    .parameter "pointIndex"
    .parameter "value"

    .prologue
    .line 201
    return-void
.end method
