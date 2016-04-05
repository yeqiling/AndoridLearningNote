.class Lcom/boohee/record/DietChartActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "DietChartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/DietChartActivity;->getDietRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/DietChartActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/DietChartActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 8
    .parameter "object"

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 123
    const-class v0, Lcom/boohee/model/mine/DietHistory;

    invoke-static {p1, v0}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/boohee/model/mine/DietHistory;

    .line 124
    .local v6, dietHistory:Lcom/boohee/model/mine/DietHistory;
    iget-object v0, v6, Lcom/boohee/model/mine/DietHistory;->data:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/boohee/model/mine/DietHistory;->data:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 125
    iget-object v0, v6, Lcom/boohee/model/mine/DietHistory;->data:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 126
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    iget-object v1, v6, Lcom/boohee/model/mine/DietHistory;->data:Ljava/util/List;

    #calls: Lcom/boohee/record/DietChartActivity;->filterDate(Ljava/util/List;)Ljava/util/List;
    invoke-static {v0, v1}, Lcom/boohee/record/DietChartActivity;->access$400(Lcom/boohee/record/DietChartActivity;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 128
    .local v7, list:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/DietRecord;>;"
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    #getter for: Lcom/boohee/record/DietChartActivity;->dietRecordList:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/record/DietChartActivity;->access$500(Lcom/boohee/record/DietChartActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1, v7}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 129
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    iget v1, v6, Lcom/boohee/model/mine/DietHistory;->total_pages:I

    #setter for: Lcom/boohee/record/DietChartActivity;->totalPage:I
    invoke-static {v0, v1}, Lcom/boohee/record/DietChartActivity;->access$102(Lcom/boohee/record/DietChartActivity;I)I

    .line 130
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    iget-object v1, v6, Lcom/boohee/model/mine/DietHistory;->data:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    #setter for: Lcom/boohee/record/DietChartActivity;->currentCount:I
    invoke-static {v0, v1}, Lcom/boohee/record/DietChartActivity;->access$602(Lcom/boohee/record/DietChartActivity;I)I

    .line 132
    iget v0, v6, Lcom/boohee/model/mine/DietHistory;->page:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    iget-object v1, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    #getter for: Lcom/boohee/record/DietChartActivity;->currentCount:I
    invoke-static {v1}, Lcom/boohee/record/DietChartActivity;->access$600(Lcom/boohee/record/DietChartActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    #setter for: Lcom/boohee/record/DietChartActivity;->viewportLeft:F
    invoke-static {v0, v1}, Lcom/boohee/record/DietChartActivity;->access$702(Lcom/boohee/record/DietChartActivity;F)F

    .line 134
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    iget-object v1, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    #getter for: Lcom/boohee/record/DietChartActivity;->viewportLeft:F
    invoke-static {v1}, Lcom/boohee/record/DietChartActivity;->access$700(Lcom/boohee/record/DietChartActivity;)F

    move-result v1

    const/high16 v2, 0x4110

    add-float/2addr v1, v2

    #setter for: Lcom/boohee/record/DietChartActivity;->viewportRight:F
    invoke-static {v0, v1}, Lcom/boohee/record/DietChartActivity;->access$802(Lcom/boohee/record/DietChartActivity;F)F

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    iget v1, v6, Lcom/boohee/model/mine/DietHistory;->page:I

    add-int/lit8 v1, v1, 0x1

    #setter for: Lcom/boohee/record/DietChartActivity;->currentPage:I
    invoke-static {v0, v1}, Lcom/boohee/record/DietChartActivity;->access$002(Lcom/boohee/record/DietChartActivity;I)I

    .line 139
    .end local v7           #list:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/DietRecord;>;"
    :cond_1
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    #getter for: Lcom/boohee/record/DietChartActivity;->chartHelper:Lcom/boohee/utils/DietChartHelper;
    invoke-static {v0}, Lcom/boohee/record/DietChartActivity;->access$1000(Lcom/boohee/record/DietChartActivity;)Lcom/boohee/utils/DietChartHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    #getter for: Lcom/boohee/record/DietChartActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v1}, Lcom/boohee/record/DietChartActivity;->access$900(Lcom/boohee/record/DietChartActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    iget-object v2, v2, Lcom/boohee/record/DietChartActivity;->chart:Llecho/lib/hellocharts/view/ColumnChartView;

    iget-object v3, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    #getter for: Lcom/boohee/record/DietChartActivity;->dietRecordList:Ljava/util/List;
    invoke-static {v3}, Lcom/boohee/record/DietChartActivity;->access$500(Lcom/boohee/record/DietChartActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    #getter for: Lcom/boohee/record/DietChartActivity;->viewportLeft:F
    invoke-static {v4}, Lcom/boohee/record/DietChartActivity;->access$700(Lcom/boohee/record/DietChartActivity;)F

    move-result v4

    iget-object v5, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    #getter for: Lcom/boohee/record/DietChartActivity;->viewportRight:F
    invoke-static {v5}, Lcom/boohee/record/DietChartActivity;->access$800(Lcom/boohee/record/DietChartActivity;)F

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/boohee/utils/DietChartHelper;->initLine(Landroid/content/Context;Llecho/lib/hellocharts/view/ColumnChartView;Ljava/util/List;FF)V

    .line 140
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 144
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    invoke-virtual {v0}, Lcom/boohee/record/DietChartActivity;->dismissLoading()V

    .line 146
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity$2;->this$0:Lcom/boohee/record/DietChartActivity;

    const/4 v1, 0x1

    #setter for: Lcom/boohee/record/DietChartActivity;->canLoad:Z
    invoke-static {v0, v1}, Lcom/boohee/record/DietChartActivity;->access$202(Lcom/boohee/record/DietChartActivity;Z)Z

    .line 147
    return-void
.end method
