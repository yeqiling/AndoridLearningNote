.class public Llecho/lib/hellocharts/view/ComboLineColumnChartView;
.super Llecho/lib/hellocharts/view/AbstractChartView;
.source "ComboLineColumnChartView.java"

# interfaces
.implements Llecho/lib/hellocharts/provider/ComboLineColumnChartDataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llecho/lib/hellocharts/view/ComboLineColumnChartView$1;,
        Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboColumnChartDataProvider;,
        Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboLineChartDataProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ComboLineColumnChartView"


# instance fields
.field protected columnChartDataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

.field protected data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

.field protected lineChartDataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

.field protected onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/view/ComboLineColumnChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llecho/lib/hellocharts/view/ComboLineColumnChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/AbstractChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance v0, Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboColumnChartDataProvider;

    invoke-direct {v0, p0, v1}, Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboColumnChartDataProvider;-><init>(Llecho/lib/hellocharts/view/ComboLineColumnChartView;Llecho/lib/hellocharts/view/ComboLineColumnChartView$1;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->columnChartDataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    .line 32
    new-instance v0, Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboLineChartDataProvider;

    invoke-direct {v0, p0, v1}, Llecho/lib/hellocharts/view/ComboLineColumnChartView$ComboLineChartDataProvider;-><init>(Llecho/lib/hellocharts/view/ComboLineColumnChartView;Llecho/lib/hellocharts/view/ComboLineColumnChartView$1;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->lineChartDataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    .line 33
    new-instance v0, Llecho/lib/hellocharts/listener/DummyCompoLineColumnChartOnValueSelectListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/listener/DummyCompoLineColumnChartOnValueSelectListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;

    .line 46
    new-instance v0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;

    iget-object v1, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->columnChartDataProvider:Llecho/lib/hellocharts/provider/ColumnChartDataProvider;

    iget-object v2, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->lineChartDataProvider:Llecho/lib/hellocharts/provider/LineChartDataProvider;

    invoke-direct {v0, p1, p0, v1, v2}, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V

    .line 48
    invoke-static {}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->generateDummyData()Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    move-result-object v0

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->setComboLineColumnChartData(Llecho/lib/hellocharts/model/ComboLineColumnChartData;)V

    .line 49
    return-void
.end method


# virtual methods
.method public callTouchListener()V
    .locals 5

    .prologue
    .line 78
    iget-object v2, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v2}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object v0

    .line 80
    .local v0, selectedValue:Llecho/lib/hellocharts/model/SelectedValue;
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    sget-object v2, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->COLUMN:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getType()Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    move-result-object v3

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    iget-object v2, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v2

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/ColumnChartData;->getColumns()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Column;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Column;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SubcolumnValue;

    .line 86
    .local v1, value:Llecho/lib/hellocharts/model/SubcolumnValue;
    iget-object v2, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;->onColumnValueSelected(IILlecho/lib/hellocharts/model/SubcolumnValue;)V

    .line 102
    .end local v1           #value:Llecho/lib/hellocharts/model/SubcolumnValue;
    :goto_0
    return-void

    .line 89
    :cond_0
    sget-object v2, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->LINE:Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getType()Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    move-result-object v3

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/ComboLineColumnChartData;->getLineChartData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v2

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Line;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/PointValue;

    .line 93
    .local v1, value:Llecho/lib/hellocharts/model/PointValue;
    iget-object v2, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;->onPointValueSelected(IILlecho/lib/hellocharts/model/PointValue;)V

    goto :goto_0

    .line 97
    .end local v1           #value:Llecho/lib/hellocharts/model/PointValue;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid selected value type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getType()Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;

    move-result-object v4

    invoke-virtual {v4}, Llecho/lib/hellocharts/model/SelectedValue$SelectedValueType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 100
    :cond_2
    iget-object v2, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;

    invoke-interface {v2}, Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;->onValueDeselected()V

    goto :goto_0
.end method

.method public getChartData()Llecho/lib/hellocharts/model/ChartData;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    return-object v0
.end method

.method public getComboLineColumnChartData()Llecho/lib/hellocharts/model/ComboLineColumnChartData;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    return-object v0
.end method

.method public getOnValueTouchListener()Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;

    return-object v0
.end method

.method public setComboLineColumnChartData(Llecho/lib/hellocharts/model/ComboLineColumnChartData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 62
    if-nez p1, :cond_0

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    .line 68
    :goto_0
    invoke-super {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->onChartDataChange()V

    .line 69
    return-void

    .line 65
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->data:Llecho/lib/hellocharts/model/ComboLineColumnChartData;

    goto :goto_0
.end method

.method public setOnValueTouchListener(Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;)V
    .locals 0
    .parameter "touchListener"

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Llecho/lib/hellocharts/view/ComboLineColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;

    .line 112
    :cond_0
    return-void
.end method
