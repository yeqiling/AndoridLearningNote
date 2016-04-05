.class public Lcom/boohee/utils/ChartAnalysisHelper;
.super Ljava/lang/Object;
.source "ChartAnalysisHelper.java"


# static fields
.field public static final MEALS_COLORS:[I

.field public static final NUTRIENTS_COLORS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-array v0, v5, [I

    const-string v1, "#06AAF6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    const-string v1, "#1BD1A4"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const-string v1, "#FE7502"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/boohee/utils/ChartAnalysisHelper;->MEALS_COLORS:[I

    .line 26
    new-array v0, v5, [I

    const-string v1, "#4CD963"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v2

    const-string v1, "#FE7502"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v3

    const-string v1, "#FECB02"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v4

    sput-object v0, Lcom/boohee/utils/ChartAnalysisHelper;->NUTRIENTS_COLORS:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initMealsPie(Llecho/lib/hellocharts/view/PieChartView;Lcom/boohee/model/TodayDiets;)V
    .locals 9
    .parameter "pieChartView"
    .parameter "todayDiets"

    .prologue
    const/high16 v8, 0x42c8

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 30
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v1, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/SliceValue;>;"
    iget-object v2, p1, Lcom/boohee/model/TodayDiets;->breakfast:Lcom/boohee/model/TodayItem;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/boohee/model/TodayDiets;->breakfast:Lcom/boohee/model/TodayItem;

    iget v2, v2, Lcom/boohee/model/TodayItem;->percentage:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    .line 32
    new-instance v2, Llecho/lib/hellocharts/model/SliceValue;

    iget-object v3, p1, Lcom/boohee/model/TodayDiets;->breakfast:Lcom/boohee/model/TodayItem;

    iget v3, v3, Lcom/boohee/model/TodayItem;->percentage:F

    sget-object v4, Lcom/boohee/utils/ChartAnalysisHelper;->MEALS_COLORS:[I

    aget v4, v4, v6

    invoke-direct {v2, v3, v4}, Llecho/lib/hellocharts/model/SliceValue;-><init>(FI)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/boohee/model/TodayDiets;->breakfast:Lcom/boohee/model/TodayItem;

    iget v4, v4, Lcom/boohee/model/TodayItem;->percentage:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\u65e9\u9910"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/model/SliceValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SliceValue;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    iget-object v2, p1, Lcom/boohee/model/TodayDiets;->lunch:Lcom/boohee/model/TodayItem;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/boohee/model/TodayDiets;->lunch:Lcom/boohee/model/TodayItem;

    iget v2, v2, Lcom/boohee/model/TodayItem;->percentage:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 36
    new-instance v2, Llecho/lib/hellocharts/model/SliceValue;

    iget-object v3, p1, Lcom/boohee/model/TodayDiets;->lunch:Lcom/boohee/model/TodayItem;

    iget v3, v3, Lcom/boohee/model/TodayItem;->percentage:F

    sget-object v4, Lcom/boohee/utils/ChartAnalysisHelper;->MEALS_COLORS:[I

    aget v4, v4, v7

    invoke-direct {v2, v3, v4}, Llecho/lib/hellocharts/model/SliceValue;-><init>(FI)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/boohee/model/TodayDiets;->lunch:Lcom/boohee/model/TodayItem;

    iget v4, v4, Lcom/boohee/model/TodayItem;->percentage:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\u5348\u9910"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/model/SliceValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SliceValue;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_1
    iget-object v2, p1, Lcom/boohee/model/TodayDiets;->dinner:Lcom/boohee/model/TodayItem;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/boohee/model/TodayDiets;->dinner:Lcom/boohee/model/TodayItem;

    iget v2, v2, Lcom/boohee/model/TodayItem;->percentage:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_2

    .line 39
    new-instance v2, Llecho/lib/hellocharts/model/SliceValue;

    iget-object v3, p1, Lcom/boohee/model/TodayDiets;->dinner:Lcom/boohee/model/TodayItem;

    iget v3, v3, Lcom/boohee/model/TodayItem;->percentage:F

    sget-object v4, Lcom/boohee/utils/ChartAnalysisHelper;->MEALS_COLORS:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-direct {v2, v3, v4}, Llecho/lib/hellocharts/model/SliceValue;-><init>(FI)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/boohee/model/TodayDiets;->dinner:Lcom/boohee/model/TodayItem;

    iget v4, v4, Lcom/boohee/model/TodayItem;->percentage:F

    mul-float/2addr v4, v8

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%\u665a\u9910"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/model/SliceValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SliceValue;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_2
    new-instance v0, Llecho/lib/hellocharts/model/PieChartData;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/PieChartData;-><init>(Ljava/util/List;)V

    .line 42
    .local v0, data:Llecho/lib/hellocharts/model/PieChartData;
    invoke-virtual {v0, v7}, Llecho/lib/hellocharts/model/PieChartData;->setHasLabels(Z)Llecho/lib/hellocharts/model/PieChartData;

    .line 43
    invoke-virtual {v0, v6}, Llecho/lib/hellocharts/model/PieChartData;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/PieChartData;

    .line 44
    invoke-virtual {v0, v6}, Llecho/lib/hellocharts/model/PieChartData;->setHasLabelsOutside(Z)Llecho/lib/hellocharts/model/PieChartData;

    .line 45
    invoke-virtual {v0, v6}, Llecho/lib/hellocharts/model/PieChartData;->setHasCenterCircle(Z)Llecho/lib/hellocharts/model/PieChartData;

    .line 46
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/PieChartData;->setSlicesSpacing(I)Llecho/lib/hellocharts/model/PieChartData;

    .line 47
    invoke-virtual {v0, v6}, Llecho/lib/hellocharts/model/PieChartData;->setValueLabelBackgroundColor(I)V

    .line 48
    invoke-virtual {v0, v7}, Llecho/lib/hellocharts/model/PieChartData;->setValueLabelBackgroundEnabled(Z)V

    .line 49
    invoke-virtual {p0, v7}, Llecho/lib/hellocharts/view/PieChartView;->setValueSelectionEnabled(Z)V

    .line 50
    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/PieChartView;->setPieChartData(Llecho/lib/hellocharts/model/PieChartData;)V

    .line 51
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/PieChartView;->startDataAnimation()V

    .line 52
    return-void
.end method

.method public static initNutrientsPie(Llecho/lib/hellocharts/view/PieChartView;Lcom/boohee/model/TodayNutrients;)V
    .locals 10
    .parameter "pieChartView"
    .parameter "todayNutrients"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v1, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/SliceValue;>;"
    iget-object v2, p1, Lcom/boohee/model/TodayNutrients;->carbohydrate:Lcom/boohee/model/TodayItem;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/boohee/model/TodayNutrients;->carbohydrate:Lcom/boohee/model/TodayItem;

    iget v2, v2, Lcom/boohee/model/TodayItem;->percentage:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_0

    .line 57
    new-instance v3, Llecho/lib/hellocharts/model/SliceValue;

    iget-object v2, p1, Lcom/boohee/model/TodayNutrients;->carbohydrate:Lcom/boohee/model/TodayItem;

    iget v2, v2, Lcom/boohee/model/TodayItem;->percentage:F

    sget-object v4, Lcom/boohee/utils/ChartAnalysisHelper;->NUTRIENTS_COLORS:[I

    aget v4, v4, v7

    invoke-direct {v3, v2, v4}, Llecho/lib/hellocharts/model/SliceValue;-><init>(FI)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/boohee/model/TodayNutrients;->carbohydrate:Lcom/boohee/model/TodayItem;

    iget v2, v2, Lcom/boohee/model/TodayItem;->weight:F

    cmpg-float v2, v2, v8

    if-gez v2, :cond_3

    const-string v2, "0"

    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u514b"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Llecho/lib/hellocharts/model/SliceValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SliceValue;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_0
    iget-object v2, p1, Lcom/boohee/model/TodayNutrients;->fat:Lcom/boohee/model/TodayItem;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/boohee/model/TodayNutrients;->fat:Lcom/boohee/model/TodayItem;

    iget v2, v2, Lcom/boohee/model/TodayItem;->percentage:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_1

    .line 60
    new-instance v3, Llecho/lib/hellocharts/model/SliceValue;

    iget-object v2, p1, Lcom/boohee/model/TodayNutrients;->fat:Lcom/boohee/model/TodayItem;

    iget v2, v2, Lcom/boohee/model/TodayItem;->percentage:F

    sget-object v4, Lcom/boohee/utils/ChartAnalysisHelper;->NUTRIENTS_COLORS:[I

    aget v4, v4, v9

    invoke-direct {v3, v2, v4}, Llecho/lib/hellocharts/model/SliceValue;-><init>(FI)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/boohee/model/TodayNutrients;->fat:Lcom/boohee/model/TodayItem;

    iget v2, v2, Lcom/boohee/model/TodayItem;->weight:F

    cmpg-float v2, v2, v8

    if-gez v2, :cond_4

    const-string v2, "0"

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u514b"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Llecho/lib/hellocharts/model/SliceValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SliceValue;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_1
    iget-object v2, p1, Lcom/boohee/model/TodayNutrients;->protein:Lcom/boohee/model/TodayItem;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/boohee/model/TodayNutrients;->protein:Lcom/boohee/model/TodayItem;

    iget v2, v2, Lcom/boohee/model/TodayItem;->percentage:F

    cmpl-float v2, v2, v8

    if-lez v2, :cond_2

    .line 63
    new-instance v3, Llecho/lib/hellocharts/model/SliceValue;

    iget-object v2, p1, Lcom/boohee/model/TodayNutrients;->protein:Lcom/boohee/model/TodayItem;

    iget v2, v2, Lcom/boohee/model/TodayItem;->percentage:F

    sget-object v4, Lcom/boohee/utils/ChartAnalysisHelper;->NUTRIENTS_COLORS:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-direct {v3, v2, v4}, Llecho/lib/hellocharts/model/SliceValue;-><init>(FI)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/boohee/model/TodayNutrients;->protein:Lcom/boohee/model/TodayItem;

    iget v2, v2, Lcom/boohee/model/TodayItem;->weight:F

    cmpg-float v2, v2, v8

    if-gez v2, :cond_5

    const-string v2, "0"

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\u514b"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Llecho/lib/hellocharts/model/SliceValue;->setLabel(Ljava/lang/String;)Llecho/lib/hellocharts/model/SliceValue;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    :cond_2
    new-instance v0, Llecho/lib/hellocharts/model/PieChartData;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/PieChartData;-><init>(Ljava/util/List;)V

    .line 66
    .local v0, data:Llecho/lib/hellocharts/model/PieChartData;
    invoke-virtual {v0, v9}, Llecho/lib/hellocharts/model/PieChartData;->setHasLabels(Z)Llecho/lib/hellocharts/model/PieChartData;

    .line 67
    invoke-virtual {v0, v7}, Llecho/lib/hellocharts/model/PieChartData;->setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/PieChartData;

    .line 68
    invoke-virtual {v0, v7}, Llecho/lib/hellocharts/model/PieChartData;->setHasLabelsOutside(Z)Llecho/lib/hellocharts/model/PieChartData;

    .line 69
    invoke-virtual {v0, v7}, Llecho/lib/hellocharts/model/PieChartData;->setHasCenterCircle(Z)Llecho/lib/hellocharts/model/PieChartData;

    .line 70
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/PieChartData;->setSlicesSpacing(I)Llecho/lib/hellocharts/model/PieChartData;

    .line 71
    invoke-virtual {p0, v9}, Llecho/lib/hellocharts/view/PieChartView;->setValueSelectionEnabled(Z)V

    .line 72
    invoke-virtual {v0, v7}, Llecho/lib/hellocharts/model/PieChartData;->setValueLabelBackgroundColor(I)V

    .line 73
    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/PieChartView;->setPieChartData(Llecho/lib/hellocharts/model/PieChartData;)V

    .line 74
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/PieChartView;->startDataAnimation()V

    .line 75
    return-void

    .line 57
    .end local v0           #data:Llecho/lib/hellocharts/model/PieChartData;
    :cond_3
    const-string v2, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/boohee/model/TodayNutrients;->carbohydrate:Lcom/boohee/model/TodayItem;

    iget v6, v6, Lcom/boohee/model/TodayItem;->weight:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 60
    :cond_4
    const-string v2, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/boohee/model/TodayNutrients;->fat:Lcom/boohee/model/TodayItem;

    iget v6, v6, Lcom/boohee/model/TodayItem;->weight:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 63
    :cond_5
    const-string v2, "%.1f"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/boohee/model/TodayNutrients;->protein:Lcom/boohee/model/TodayItem;

    iget v6, v6, Lcom/boohee/model/TodayItem;->weight:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2
.end method
