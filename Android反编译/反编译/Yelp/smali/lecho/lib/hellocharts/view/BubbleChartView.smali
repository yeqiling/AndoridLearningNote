.class public Llecho/lib/hellocharts/view/BubbleChartView;
.super Llecho/lib/hellocharts/view/AbstractChartView;
.source "BubbleChartView.java"

# interfaces
.implements Llecho/lib/hellocharts/provider/BubbleChartDataProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "BubbleChartView"


# instance fields
.field protected bubbleChartRenderer:Llecho/lib/hellocharts/renderer/BubbleChartRenderer;

.field protected data:Llecho/lib/hellocharts/model/BubbleChartData;

.field protected onValueTouchListener:Llecho/lib/hellocharts/listener/BubbleChartOnValueSelectListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/view/BubbleChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llecho/lib/hellocharts/view/BubbleChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/AbstractChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    new-instance v0, Llecho/lib/hellocharts/listener/DummyBubbleChartOnValueSelectListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/listener/DummyBubbleChartOnValueSelectListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/view/BubbleChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/BubbleChartOnValueSelectListener;

    .line 40
    new-instance v0, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;

    invoke-direct {v0, p1, p0, p0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/BubbleChartDataProvider;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/BubbleChartView;->bubbleChartRenderer:Llecho/lib/hellocharts/renderer/BubbleChartRenderer;

    .line 41
    iget-object v0, p0, Llecho/lib/hellocharts/view/BubbleChartView;->bubbleChartRenderer:Llecho/lib/hellocharts/renderer/BubbleChartRenderer;

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/BubbleChartView;->setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V

    .line 42
    invoke-static {}, Llecho/lib/hellocharts/model/BubbleChartData;->generateDummyData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v0

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/BubbleChartView;->setBubbleChartData(Llecho/lib/hellocharts/model/BubbleChartData;)V

    .line 43
    return-void
.end method


# virtual methods
.method public callTouchListener()V
    .locals 4

    .prologue
    .line 72
    iget-object v2, p0, Llecho/lib/hellocharts/view/BubbleChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v2}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object v0

    .line 74
    .local v0, selectedValue:Llecho/lib/hellocharts/model/SelectedValue;
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 75
    iget-object v2, p0, Llecho/lib/hellocharts/view/BubbleChartView;->data:Llecho/lib/hellocharts/model/BubbleChartData;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/BubbleChartData;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/BubbleValue;

    .line 76
    .local v1, value:Llecho/lib/hellocharts/model/BubbleValue;
    iget-object v2, p0, Llecho/lib/hellocharts/view/BubbleChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/BubbleChartOnValueSelectListener;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-interface {v2, v3, v1}, Llecho/lib/hellocharts/listener/BubbleChartOnValueSelectListener;->onValueSelected(ILlecho/lib/hellocharts/model/BubbleValue;)V

    .line 80
    .end local v1           #value:Llecho/lib/hellocharts/model/BubbleValue;
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v2, p0, Llecho/lib/hellocharts/view/BubbleChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/BubbleChartOnValueSelectListener;

    invoke-interface {v2}, Llecho/lib/hellocharts/listener/BubbleChartOnValueSelectListener;->onValueDeselected()V

    goto :goto_0
.end method

.method public getBubbleChartData()Llecho/lib/hellocharts/model/BubbleChartData;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Llecho/lib/hellocharts/view/BubbleChartView;->data:Llecho/lib/hellocharts/model/BubbleChartData;

    return-object v0
.end method

.method public getChartData()Llecho/lib/hellocharts/model/ChartData;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Llecho/lib/hellocharts/view/BubbleChartView;->data:Llecho/lib/hellocharts/model/BubbleChartData;

    return-object v0
.end method

.method public getOnValueTouchListener()Llecho/lib/hellocharts/listener/BubbleChartOnValueSelectListener;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Llecho/lib/hellocharts/view/BubbleChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/BubbleChartOnValueSelectListener;

    return-object v0
.end method

.method public removeMargins()V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Llecho/lib/hellocharts/view/BubbleChartView;->bubbleChartRenderer:Llecho/lib/hellocharts/renderer/BubbleChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/BubbleChartRenderer;->removeMargins()V

    .line 100
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 101
    return-void
.end method

.method public setBubbleChartData(Llecho/lib/hellocharts/model/BubbleChartData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 56
    if-nez p1, :cond_0

    .line 57
    invoke-static {}, Llecho/lib/hellocharts/model/BubbleChartData;->generateDummyData()Llecho/lib/hellocharts/model/BubbleChartData;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/view/BubbleChartView;->data:Llecho/lib/hellocharts/model/BubbleChartData;

    .line 62
    :goto_0
    invoke-super {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->onChartDataChange()V

    .line 63
    return-void

    .line 59
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/view/BubbleChartView;->data:Llecho/lib/hellocharts/model/BubbleChartData;

    goto :goto_0
.end method

.method public setOnValueTouchListener(Llecho/lib/hellocharts/listener/BubbleChartOnValueSelectListener;)V
    .locals 0
    .parameter "touchListener"

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    iput-object p1, p0, Llecho/lib/hellocharts/view/BubbleChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/BubbleChartOnValueSelectListener;

    .line 90
    :cond_0
    return-void
.end method
