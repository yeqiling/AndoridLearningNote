.class public Llecho/lib/hellocharts/view/ColumnChartView;
.super Llecho/lib/hellocharts/view/AbstractChartView;
.source "ColumnChartView.java"

# interfaces
.implements Llecho/lib/hellocharts/provider/ColumnChartDataProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "ColumnChartView"


# instance fields
.field private data:Llecho/lib/hellocharts/model/ColumnChartData;

.field private onValueTouchListener:Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/view/ColumnChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llecho/lib/hellocharts/view/ColumnChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/AbstractChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    new-instance v0, Llecho/lib/hellocharts/listener/DummyColumnChartOnValueSelectListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/listener/DummyColumnChartOnValueSelectListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/view/ColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;

    .line 37
    new-instance v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    invoke-direct {v0, p1, p0, p0}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;)V

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V

    .line 38
    invoke-static {}, Llecho/lib/hellocharts/model/ColumnChartData;->generateDummyData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/ColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 39
    return-void
.end method


# virtual methods
.method public callTouchListener()V
    .locals 5

    .prologue
    .line 69
    iget-object v2, p0, Llecho/lib/hellocharts/view/ColumnChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v2}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object v0

    .line 71
    .local v0, selectedValue:Llecho/lib/hellocharts/model/SelectedValue;
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    iget-object v2, p0, Llecho/lib/hellocharts/view/ColumnChartView;->data:Llecho/lib/hellocharts/model/ColumnChartData;

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

    .line 74
    .local v1, value:Llecho/lib/hellocharts/model/SubcolumnValue;
    iget-object v2, p0, Llecho/lib/hellocharts/view/ColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v4

    invoke-interface {v2, v3, v4, v1}, Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;->onValueSelected(IILlecho/lib/hellocharts/model/SubcolumnValue;)V

    .line 78
    .end local v1           #value:Llecho/lib/hellocharts/model/SubcolumnValue;
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v2, p0, Llecho/lib/hellocharts/view/ColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;

    invoke-interface {v2}, Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;->onValueDeselected()V

    goto :goto_0
.end method

.method public bridge synthetic getChartData()Llecho/lib/hellocharts/model/ChartData;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/ColumnChartView;->getChartData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    return-object v0
.end method

.method public getChartData()Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Llecho/lib/hellocharts/view/ColumnChartView;->data:Llecho/lib/hellocharts/model/ColumnChartData;

    return-object v0
.end method

.method public getColumnChartData()Llecho/lib/hellocharts/model/ColumnChartData;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Llecho/lib/hellocharts/view/ColumnChartView;->data:Llecho/lib/hellocharts/model/ColumnChartData;

    return-object v0
.end method

.method public getOnValueTouchListener()Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Llecho/lib/hellocharts/view/ColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;

    return-object v0
.end method

.method public setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    invoke-static {}, Llecho/lib/hellocharts/model/ColumnChartData;->generateDummyData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/view/ColumnChartView;->data:Llecho/lib/hellocharts/model/ColumnChartData;

    .line 58
    :goto_0
    invoke-super {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->onChartDataChange()V

    .line 60
    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/view/ColumnChartView;->data:Llecho/lib/hellocharts/model/ColumnChartData;

    goto :goto_0
.end method

.method public setOnValueTouchListener(Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;)V
    .locals 0
    .parameter "touchListener"

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    iput-object p1, p0, Llecho/lib/hellocharts/view/ColumnChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/ColumnChartOnValueSelectListener;

    .line 88
    :cond_0
    return-void
.end method
