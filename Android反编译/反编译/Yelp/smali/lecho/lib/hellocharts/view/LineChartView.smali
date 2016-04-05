.class public Llecho/lib/hellocharts/view/LineChartView;
.super Llecho/lib/hellocharts/view/AbstractChartView;
.source "LineChartView.java"

# interfaces
.implements Llecho/lib/hellocharts/provider/LineChartDataProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "LineChartView"


# instance fields
.field protected data:Llecho/lib/hellocharts/model/LineChartData;

.field protected onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;

.field protected targetWeight:F

.field protected unit:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/view/LineChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llecho/lib/hellocharts/view/LineChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/AbstractChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Llecho/lib/hellocharts/listener/DummyLineChartOnValueSelectListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/listener/DummyLineChartOnValueSelectListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/view/LineChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;

    .line 47
    new-instance v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;

    invoke-direct {v0, p1, p0, p0, p0}, Llecho/lib/hellocharts/renderer/LineChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;Llecho/lib/hellocharts/view/LineChartView;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/LineChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 48
    invoke-virtual {p0}, Llecho/lib/hellocharts/view/LineChartView;->resetRendererAndTouchHandler()V

    .line 49
    invoke-static {}, Llecho/lib/hellocharts/model/LineChartData;->generateDummyData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/LineChartView;->setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V

    .line 50
    return-void
.end method


# virtual methods
.method public callTouchListener()V
    .locals 5

    .prologue
    .line 80
    iget-object v2, p0, Llecho/lib/hellocharts/view/LineChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v2}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object v1

    .line 81
    .local v1, selectedValue:Llecho/lib/hellocharts/model/SelectedValue;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 82
    iget-object v2, p0, Llecho/lib/hellocharts/view/LineChartView;->data:Llecho/lib/hellocharts/model/LineChartData;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/LineChartData;->getLines()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llecho/lib/hellocharts/model/Line;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/Line;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/model/PointValue;

    .line 84
    .local v0, point:Llecho/lib/hellocharts/model/PointValue;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getSelectedType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 99
    .end local v0           #point:Llecho/lib/hellocharts/model/PointValue;
    :goto_0
    return-void

    .line 86
    .restart local v0       #point:Llecho/lib/hellocharts/model/PointValue;
    :pswitch_0
    iget-object v2, p0, Llecho/lib/hellocharts/view/LineChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v4

    invoke-interface {v2, v3, v4, v0}, Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;->onValueSelected(IILlecho/lib/hellocharts/model/PointValue;)V

    goto :goto_0

    .line 89
    :pswitch_1
    iget-object v2, p0, Llecho/lib/hellocharts/view/LineChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v4

    invoke-interface {v2, v3, v4, v0}, Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;->onImageSelected(IILlecho/lib/hellocharts/model/PointValue;)V

    goto :goto_0

    .line 92
    :pswitch_2
    iget-object v2, p0, Llecho/lib/hellocharts/view/LineChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SelectedValue;->getSecondIndex()I

    move-result v4

    invoke-interface {v2, v3, v4, v0}, Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;->onPopSelected(IILlecho/lib/hellocharts/model/PointValue;)V

    goto :goto_0

    .line 97
    .end local v0           #point:Llecho/lib/hellocharts/model/PointValue;
    :cond_0
    iget-object v2, p0, Llecho/lib/hellocharts/view/LineChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;

    invoke-interface {v2}, Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;->onValueDeselected()V

    goto :goto_0

    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getChartData()Llecho/lib/hellocharts/model/ChartData;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Llecho/lib/hellocharts/view/LineChartView;->data:Llecho/lib/hellocharts/model/LineChartData;

    return-object v0
.end method

.method public getLineChartData()Llecho/lib/hellocharts/model/LineChartData;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Llecho/lib/hellocharts/view/LineChartView;->data:Llecho/lib/hellocharts/model/LineChartData;

    return-object v0
.end method

.method public getOnValueTouchListener()Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Llecho/lib/hellocharts/view/LineChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;

    return-object v0
.end method

.method public getTargetWeight()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Llecho/lib/hellocharts/view/LineChartView;->targetWeight:F

    return v0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Llecho/lib/hellocharts/view/LineChartView;->unit:Ljava/lang/String;

    return-object v0
.end method

.method public setLineChartData(Llecho/lib/hellocharts/model/LineChartData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 59
    if-nez p1, :cond_0

    .line 60
    invoke-static {}, Llecho/lib/hellocharts/model/LineChartData;->generateDummyData()Llecho/lib/hellocharts/model/LineChartData;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/view/LineChartView;->data:Llecho/lib/hellocharts/model/LineChartData;

    .line 65
    :goto_0
    invoke-super {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->onChartDataChange()V

    .line 66
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/view/LineChartView;->data:Llecho/lib/hellocharts/model/LineChartData;

    goto :goto_0
.end method

.method public setOnValueTouchListener(Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;)V
    .locals 0
    .parameter "touchListener"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iput-object p1, p0, Llecho/lib/hellocharts/view/LineChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;

    .line 109
    :cond_0
    return-void
.end method

.method public setTargetWeight(F)V
    .locals 0
    .parameter "targetWeight"

    .prologue
    .line 120
    iput p1, p0, Llecho/lib/hellocharts/view/LineChartView;->targetWeight:F

    .line 121
    return-void
.end method

.method public setUnit(Ljava/lang/String;)V
    .locals 0
    .parameter "unit"

    .prologue
    .line 116
    iput-object p1, p0, Llecho/lib/hellocharts/view/LineChartView;->unit:Ljava/lang/String;

    .line 117
    return-void
.end method
