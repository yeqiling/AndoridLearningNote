.class public Llecho/lib/hellocharts/view/PieChartView;
.super Llecho/lib/hellocharts/view/AbstractChartView;
.source "PieChartView.java"

# interfaces
.implements Llecho/lib/hellocharts/provider/PieChartDataProvider;


# static fields
.field private static final TAG:Ljava/lang/String; = "PieChartView"


# instance fields
.field protected data:Llecho/lib/hellocharts/model/PieChartData;

.field protected onValueTouchListener:Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;

.field protected pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

.field protected rotationAnimator:Llecho/lib/hellocharts/animation/PieChartRotationAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 40
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/view/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llecho/lib/hellocharts/view/PieChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/AbstractChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v0, Llecho/lib/hellocharts/listener/DummyPieChartOnValueSelectListener;

    invoke-direct {v0}, Llecho/lib/hellocharts/listener/DummyPieChartOnValueSelectListener;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;

    .line 49
    new-instance v0, Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-direct {v0, p1, p0, p0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/PieChartDataProvider;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    .line 50
    new-instance v0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    invoke-direct {v0, p1, p0}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/PieChartView;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    .line 51
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/PieChartView;->setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 53
    new-instance v0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;

    invoke-direct {v0, p0}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV8;-><init>(Llecho/lib/hellocharts/view/PieChartView;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->rotationAnimator:Llecho/lib/hellocharts/animation/PieChartRotationAnimator;

    .line 57
    :goto_0
    invoke-static {}, Llecho/lib/hellocharts/model/PieChartData;->generateDummyData()Llecho/lib/hellocharts/model/PieChartData;

    move-result-object v0

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/PieChartView;->setPieChartData(Llecho/lib/hellocharts/model/PieChartData;)V

    .line 58
    return-void

    .line 55
    :cond_0
    new-instance v0, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;

    invoke-direct {v0, p0}, Llecho/lib/hellocharts/animation/PieChartRotationAnimatorV14;-><init>(Llecho/lib/hellocharts/view/PieChartView;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->rotationAnimator:Llecho/lib/hellocharts/animation/PieChartRotationAnimator;

    goto :goto_0
.end method


# virtual methods
.method public callTouchListener()V
    .locals 4

    .prologue
    .line 87
    iget-object v2, p0, Llecho/lib/hellocharts/view/PieChartView;->chartRenderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v2}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object v0

    .line 89
    .local v0, selectedValue:Llecho/lib/hellocharts/model/SelectedValue;
    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    iget-object v2, p0, Llecho/lib/hellocharts/view/PieChartView;->data:Llecho/lib/hellocharts/model/PieChartData;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/PieChartData;->getValues()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SliceValue;

    .line 91
    .local v1, sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    iget-object v2, p0, Llecho/lib/hellocharts/view/PieChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->getFirstIndex()I

    move-result v3

    invoke-interface {v2, v3, v1}, Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;->onValueSelected(ILlecho/lib/hellocharts/model/SliceValue;)V

    .line 95
    .end local v1           #sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v2, p0, Llecho/lib/hellocharts/view/PieChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;

    invoke-interface {v2}, Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;->onValueDeselected()V

    goto :goto_0
.end method

.method public getChartData()Llecho/lib/hellocharts/model/ChartData;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->data:Llecho/lib/hellocharts/model/PieChartData;

    return-object v0
.end method

.method public getChartRotation()I
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->getChartRotation()I

    move-result v0

    return v0
.end method

.method public getCircleFillRatio()F
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->getCircleFillRatio()F

    move-result v0

    return v0
.end method

.method public getCircleOval()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->getCircleOval()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getOnValueTouchListener()Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;

    return-object v0
.end method

.method public getPieChartData()Llecho/lib/hellocharts/model/PieChartData;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->data:Llecho/lib/hellocharts/model/PieChartData;

    return-object v0
.end method

.method public getValueForAngle(ILlecho/lib/hellocharts/model/SelectedValue;)Llecho/lib/hellocharts/model/SliceValue;
    .locals 1
    .parameter "angle"
    .parameter "selectedValue"

    .prologue
    .line 173
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0, p1, p2}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->getValueForAngle(ILlecho/lib/hellocharts/model/SelectedValue;)Llecho/lib/hellocharts/model/SliceValue;

    move-result-object v0

    return-object v0
.end method

.method public isChartRotationEnabled()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    instance-of v0, v0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    check-cast v0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->isRotationEnabled()Z

    move-result v0

    .line 154
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setChartRotation(IZ)V
    .locals 3
    .parameter "rotation"
    .parameter "isAnimated"

    .prologue
    .line 141
    if-eqz p2, :cond_0

    .line 142
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->rotationAnimator:Llecho/lib/hellocharts/animation/PieChartRotationAnimator;

    invoke-interface {v0}, Llecho/lib/hellocharts/animation/PieChartRotationAnimator;->cancelAnimation()V

    .line 143
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->rotationAnimator:Llecho/lib/hellocharts/animation/PieChartRotationAnimator;

    iget-object v1, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v1}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->getChartRotation()I

    move-result v1

    int-to-float v1, v1

    int-to-float v2, p1

    invoke-interface {v0, v1, v2}, Llecho/lib/hellocharts/animation/PieChartRotationAnimator;->startAnimation(FF)V

    .line 147
    :goto_0
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 148
    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->setChartRotation(I)V

    goto :goto_0
.end method

.method public setChartRotationEnabled(Z)V
    .locals 1
    .parameter "isRotationEnabled"

    .prologue
    .line 164
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    instance-of v0, v0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    check-cast v0, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/PieChartTouchHandler;->setRotationEnabled(Z)V

    .line 167
    :cond_0
    return-void
.end method

.method public setCircleFillRatio(F)V
    .locals 1
    .parameter "fillRatio"

    .prologue
    .line 188
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->setCircleFillRatio(F)V

    .line 189
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 190
    return-void
.end method

.method public setCircleOval(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "orginCircleOval"

    .prologue
    .line 120
    iget-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->pieChartRenderer:Llecho/lib/hellocharts/renderer/PieChartRenderer;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/renderer/PieChartRenderer;->setCircleOval(Landroid/graphics/RectF;)V

    .line 121
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 122
    return-void
.end method

.method public setOnValueTouchListener(Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;)V
    .locals 0
    .parameter "touchListener"

    .prologue
    .line 102
    if-eqz p1, :cond_0

    .line 103
    iput-object p1, p0, Llecho/lib/hellocharts/view/PieChartView;->onValueTouchListener:Llecho/lib/hellocharts/listener/PieChartOnValueSelectListener;

    .line 105
    :cond_0
    return-void
.end method

.method public setPieChartData(Llecho/lib/hellocharts/model/PieChartData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 68
    const-string v0, "PieChartView"

    const-string v1, "Setting data for ColumnChartView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    if-nez p1, :cond_0

    .line 72
    invoke-static {}, Llecho/lib/hellocharts/model/PieChartData;->generateDummyData()Llecho/lib/hellocharts/model/PieChartData;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/view/PieChartView;->data:Llecho/lib/hellocharts/model/PieChartData;

    .line 77
    :goto_0
    invoke-super {p0}, Llecho/lib/hellocharts/view/AbstractChartView;->onChartDataChange()V

    .line 78
    return-void

    .line 74
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/view/PieChartView;->data:Llecho/lib/hellocharts/model/PieChartData;

    goto :goto_0
.end method
