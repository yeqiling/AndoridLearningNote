.class public Llecho/lib/hellocharts/renderer/ComboChartRenderer;
.super Llecho/lib/hellocharts/renderer/AbstractChartRenderer;
.source "ComboChartRenderer.java"


# instance fields
.field protected renderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/renderer/ChartRenderer;",
            ">;"
        }
    .end annotation
.end field

.field protected unionViewport:Llecho/lib/hellocharts/model/Viewport;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V
    .locals 1
    .parameter "context"
    .parameter "chart"

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    .line 15
    new-instance v0, Llecho/lib/hellocharts/model/Viewport;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/Viewport;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->unionViewport:Llecho/lib/hellocharts/model/Viewport;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->renderers:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public checkTouch(FF)Z
    .locals 4
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 72
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 73
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->renderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .line 74
    .local v1, rendererIndex:I
    :goto_0
    if-ltz v1, :cond_0

    .line 75
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->renderers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 76
    .local v0, renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    invoke-interface {v0, p1, p2}, Llecho/lib/hellocharts/renderer/ChartRenderer;->checkTouch(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 77
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Llecho/lib/hellocharts/model/SelectedValue;->set(Llecho/lib/hellocharts/model/SelectedValue;)V

    .line 84
    .end local v0           #renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_2

    .line 85
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->renderers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 86
    .restart local v0       #renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->clearTouch()V

    .line 84
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 74
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 89
    .end local v0           #renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    :cond_2
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->isTouched()Z

    move-result v2

    return v2
.end method

.method public clearTouch()V
    .locals 3

    .prologue
    .line 94
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->renderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 95
    .local v1, renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    invoke-interface {v1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->clearTouch()V

    goto :goto_0

    .line 97
    .end local v1           #renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    :cond_0
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v2}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 98
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 59
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->renderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 60
    .local v1, renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    invoke-interface {v1, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 62
    .end local v1           #renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    :cond_0
    return-void
.end method

.method public drawUnclipped(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 66
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->renderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 67
    .local v1, renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    invoke-interface {v1, p1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->drawUnclipped(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 69
    .end local v1           #renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    :cond_0
    return-void
.end method

.method public onChartDataChanged()V
    .locals 3

    .prologue
    .line 31
    invoke-super {p0}, Llecho/lib/hellocharts/renderer/AbstractChartRenderer;->onChartDataChanged()V

    .line 32
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->renderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 33
    .local v1, renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    invoke-interface {v1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->onChartDataChanged()V

    goto :goto_0

    .line 35
    .end local v1           #renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    :cond_0
    invoke-virtual {p0}, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->onChartViewportChanged()V

    .line 36
    return-void
.end method

.method public onChartSizeChanged()V
    .locals 3

    .prologue
    .line 24
    iget-object v2, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->renderers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 25
    .local v1, renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    invoke-interface {v1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->onChartSizeChanged()V

    goto :goto_0

    .line 27
    .end local v1           #renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    :cond_0
    return-void
.end method

.method public onChartViewportChanged()V
    .locals 5

    .prologue
    .line 40
    iget-boolean v3, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->isViewportCalculationEnabled:Z

    if-eqz v3, :cond_2

    .line 41
    const/4 v2, 0x0

    .line 42
    .local v2, rendererIndex:I
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->renderers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 43
    .local v1, renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    invoke-interface {v1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->onChartViewportChanged()V

    .line 44
    if-nez v2, :cond_0

    .line 45
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->unionViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-interface {v1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v4

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/model/Viewport;->set(Llecho/lib/hellocharts/model/Viewport;)V

    .line 49
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 50
    goto :goto_0

    .line 47
    :cond_0
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->unionViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-interface {v1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getMaximumViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v4

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/model/Viewport;->union(Llecho/lib/hellocharts/model/Viewport;)V

    goto :goto_1

    .line 51
    .end local v1           #renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;
    :cond_1
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->unionViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->setMaxViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 52
    iget-object v3, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/ComboChartRenderer;->unionViewport:Llecho/lib/hellocharts/model/Viewport;

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/computator/ChartComputator;->setCurrentViewport(Llecho/lib/hellocharts/model/Viewport;)V

    .line 56
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #rendererIndex:I
    :cond_2
    return-void
.end method
