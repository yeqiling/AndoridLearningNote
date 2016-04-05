.class Lcom/boohee/record/WeightCurveActivity$3;
.super Ljava/lang/Object;
.source "WeightCurveActivity.java"

# interfaces
.implements Llecho/lib/hellocharts/listener/ViewportChangeListener;


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
    .line 243
    iput-object p1, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewportChanged(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 6
    .parameter "viewport"

    .prologue
    const/high16 v5, 0x40e0

    .line 246
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->left:F

    const/high16 v1, -0x4080

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$1204(Lcom/boohee/record/WeightCurveActivity;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mBeginDate:Ljava/lang/String;
    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$500(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "yyyy-MM-dd"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->upperLimit:Ljava/util/Date;
    invoke-static {v1}, Lcom/boohee/record/WeightCurveActivity;->access$1300(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mBeginDate:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/record/WeightCurveActivity;->access$500(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->getDay(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mEndDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$202(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    iget-object v2, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mEndDate:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/record/WeightCurveActivity;->access$200(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->typeMode:I
    invoke-static {v3}, Lcom/boohee/record/WeightCurveActivity;->access$600(Lcom/boohee/record/WeightCurveActivity;)I

    move-result v3

    const/4 v4, 0x0

    #calls: Lcom/boohee/record/WeightCurveActivity;->getDateByMode(Ljava/lang/String;IZ)Ljava/lang/String;
    invoke-static {v1, v2, v3, v4}, Lcom/boohee/record/WeightCurveActivity;->access$700(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mBeginDate:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$502(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 250
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->typeMode:I
    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$600(Lcom/boohee/record/WeightCurveActivity;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 267
    :goto_0
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #calls: Lcom/boohee/record/WeightCurveActivity;->requestWeights()V
    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$800(Lcom/boohee/record/WeightCurveActivity;)V

    .line 269
    :cond_0
    :pswitch_0
    return-void

    .line 252
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #getter for: Lcom/boohee/record/WeightCurveActivity;->mIsLandscape:Z
    invoke-static {v0}, Lcom/boohee/record/WeightCurveActivity;->access$900(Lcom/boohee/record/WeightCurveActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F
    invoke-static {v0, v5}, Lcom/boohee/record/WeightCurveActivity;->access$302(Lcom/boohee/record/WeightCurveActivity;F)F

    .line 254
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    const/high16 v1, 0x41a8

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$402(Lcom/boohee/record/WeightCurveActivity;F)F

    goto :goto_0

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F
    invoke-static {v0, v5}, Lcom/boohee/record/WeightCurveActivity;->access$302(Lcom/boohee/record/WeightCurveActivity;F)F

    .line 257
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    const/high16 v1, 0x4160

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$402(Lcom/boohee/record/WeightCurveActivity;F)F

    goto :goto_0

    .line 261
    :pswitch_2
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    const/high16 v1, 0x41f0

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$302(Lcom/boohee/record/WeightCurveActivity;F)F

    .line 262
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity$3;->this$0:Lcom/boohee/record/WeightCurveActivity;

    const/high16 v1, 0x4270

    #setter for: Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F
    invoke-static {v0, v1}, Lcom/boohee/record/WeightCurveActivity;->access$402(Lcom/boohee/record/WeightCurveActivity;F)F

    goto :goto_0

    .line 250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
