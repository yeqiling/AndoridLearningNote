.class Lcom/boohee/record/DietChartActivity$1;
.super Ljava/lang/Object;
.source "DietChartActivity.java"

# interfaces
.implements Llecho/lib/hellocharts/listener/ViewportChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietChartActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietChartActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietChartActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/boohee/record/DietChartActivity$1;->this$0:Lcom/boohee/record/DietChartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewportChanged(Llecho/lib/hellocharts/model/Viewport;)V
    .locals 2
    .parameter "viewport"

    .prologue
    .line 77
    iget v0, p1, Llecho/lib/hellocharts/model/Viewport;->left:F

    const/high16 v1, -0x4080

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/DietChartActivity$1;->this$0:Lcom/boohee/record/DietChartActivity;

    #getter for: Lcom/boohee/record/DietChartActivity;->currentPage:I
    invoke-static {v0}, Lcom/boohee/record/DietChartActivity;->access$000(Lcom/boohee/record/DietChartActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/boohee/record/DietChartActivity$1;->this$0:Lcom/boohee/record/DietChartActivity;

    #getter for: Lcom/boohee/record/DietChartActivity;->totalPage:I
    invoke-static {v1}, Lcom/boohee/record/DietChartActivity;->access$100(Lcom/boohee/record/DietChartActivity;)I

    move-result v1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lcom/boohee/record/DietChartActivity$1;->this$0:Lcom/boohee/record/DietChartActivity;

    #getter for: Lcom/boohee/record/DietChartActivity;->canLoad:Z
    invoke-static {v0}, Lcom/boohee/record/DietChartActivity;->access$200(Lcom/boohee/record/DietChartActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity$1;->this$0:Lcom/boohee/record/DietChartActivity;

    #calls: Lcom/boohee/record/DietChartActivity;->getDietRecord()V
    invoke-static {v0}, Lcom/boohee/record/DietChartActivity;->access$300(Lcom/boohee/record/DietChartActivity;)V

    .line 80
    :cond_0
    return-void
.end method
