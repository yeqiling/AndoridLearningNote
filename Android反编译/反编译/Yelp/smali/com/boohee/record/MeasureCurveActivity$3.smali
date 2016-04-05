.class Lcom/boohee/record/MeasureCurveActivity$3;
.super Ljava/lang/Object;
.source "MeasureCurveActivity.java"

# interfaces
.implements Llecho/lib/hellocharts/listener/ViewportChangeListener;


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
    .line 297
    iput-object p1, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewportChanged(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 5
    .parameter "viewport"

    .prologue
    .line 300
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->left:F

    const/high16 v1, -0x4080

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    invoke-static {v0}, Lcom/boohee/record/MeasureCurveActivity;->access$1304(Lcom/boohee/record/MeasureCurveActivity;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mBeginDate:Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/record/MeasureCurveActivity;->access$700(Lcom/boohee/record/MeasureCurveActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->upperLimit:Ljava/util/Date;
    invoke-static {v1}, Lcom/boohee/record/MeasureCurveActivity;->access$1400(Lcom/boohee/record/MeasureCurveActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mBeginDate:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/record/MeasureCurveActivity;->access$700(Lcom/boohee/record/MeasureCurveActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->getDay(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mEndDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$602(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 303
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    iget-object v2, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->mEndDate:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/record/MeasureCurveActivity;->access$600(Lcom/boohee/record/MeasureCurveActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->typeMode:I
    invoke-static {v3}, Lcom/boohee/record/MeasureCurveActivity;->access$800(Lcom/boohee/record/MeasureCurveActivity;)I

    move-result v3

    const/4 v4, 0x0

    #calls: Lcom/boohee/record/MeasureCurveActivity;->getDateByMode(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/boohee/record/MeasureCurveActivity;->access$900(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mBeginDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$702(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 304
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #getter for: Lcom/boohee/record/MeasureCurveActivity;->typeMode:I
    invoke-static {v0}, Lcom/boohee/record/MeasureCurveActivity;->access$800(Lcom/boohee/record/MeasureCurveActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 316
    :goto_0
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    #calls: Lcom/boohee/record/MeasureCurveActivity;->requestMeasure()V
    invoke-static {v0}, Lcom/boohee/record/MeasureCurveActivity;->access$1200(Lcom/boohee/record/MeasureCurveActivity;)V

    .line 318
    :cond_0
    :pswitch_0
    return-void

    .line 306
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    const/high16 v1, 0x40e0

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$1002(Lcom/boohee/record/MeasureCurveActivity;F)F

    .line 307
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    const/high16 v1, 0x4160

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$1102(Lcom/boohee/record/MeasureCurveActivity;F)F

    goto :goto_0

    .line 310
    :pswitch_2
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    const/high16 v1, 0x41f0

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$1002(Lcom/boohee/record/MeasureCurveActivity;F)F

    .line 311
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity$3;->this$0:Lcom/boohee/record/MeasureCurveActivity;

    const/high16 v1, 0x4270

    #setter for: Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F
    invoke-static {v0, v1}, Lcom/boohee/record/MeasureCurveActivity;->access$1102(Lcom/boohee/record/MeasureCurveActivity;F)F

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
