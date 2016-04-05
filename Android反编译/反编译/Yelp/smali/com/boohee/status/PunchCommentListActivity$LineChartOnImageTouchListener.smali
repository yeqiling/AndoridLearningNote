.class Lcom/boohee/status/PunchCommentListActivity$LineChartOnImageTouchListener;
.super Ljava/lang/Object;
.source "PunchCommentListActivity.java"

# interfaces
.implements Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/status/PunchCommentListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LineChartOnImageTouchListener"
.end annotation


# instance fields
.field private clockOutRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/ClockOutRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/boohee/status/PunchCommentListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/status/PunchCommentListActivity;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/chanllenge/ClockOutRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p2, clockOutRecords:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/chanllenge/ClockOutRecord;>;"
    iput-object p1, p0, Lcom/boohee/status/PunchCommentListActivity$LineChartOnImageTouchListener;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p2, p0, Lcom/boohee/status/PunchCommentListActivity$LineChartOnImageTouchListener;->clockOutRecords:Ljava/util/List;

    .line 216
    return-void
.end method


# virtual methods
.method public onImageSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 6
    .parameter "lineIndex"
    .parameter "pointIndex"
    .parameter "value"

    .prologue
    .line 225
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/boohee/status/PunchCommentListActivity$LineChartOnImageTouchListener;->clockOutRecords:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/chanllenge/ClockOutRecord;

    .line 229
    .local v0, clockOutRecord:Lcom/boohee/model/chanllenge/ClockOutRecord;
    if-eqz v0, :cond_0

    .line 230
    iget-object v1, v0, Lcom/boohee/model/chanllenge/ClockOutRecord;->photos:Ljava/util/List;

    .line 231
    .local v1, photos:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/status/Photo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 232
    iget-object v3, p0, Lcom/boohee/status/PunchCommentListActivity$LineChartOnImageTouchListener;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    new-instance v4, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/status/PunchCommentListActivity$LineChartOnImageTouchListener;->this$0:Lcom/boohee/status/PunchCommentListActivity;

    #getter for: Lcom/boohee/status/PunchCommentListActivity;->ctx:Landroid/content/Context;
    invoke-static {v2}, Lcom/boohee/status/PunchCommentListActivity;->access$700(Lcom/boohee/status/PunchCommentListActivity;)Landroid/content/Context;

    move-result-object v2

    const-class v5, Lcom/boohee/status/LargeImageActivity;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "image_url"

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/status/Photo;

    iget-object v2, v2, Lcom/boohee/model/status/Photo;->big_url:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/boohee/status/PunchCommentListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPopSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 0
    .parameter "lineIndex"
    .parameter "pointIndex"
    .parameter "value"

    .prologue
    .line 239
    return-void
.end method

.method public onValueDeselected()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public onValueSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 0
    .parameter "lineIndex"
    .parameter "pointIndex"
    .parameter "value"

    .prologue
    .line 221
    return-void
.end method
