.class public Llecho/lib/hellocharts/gesture/ChartTouchHandler;
.super Ljava/lang/Object;
.source "ChartTouchHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;,
        Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartScaleGestureListener;
    }
.end annotation


# instance fields
.field protected chart:Llecho/lib/hellocharts/view/Chart;

.field protected chartScroller:Llecho/lib/hellocharts/gesture/ChartScroller;

.field protected chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

.field protected computator:Llecho/lib/hellocharts/computator/ChartComputator;

.field protected containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

.field protected gestureDetector:Landroid/view/GestureDetector;

.field protected isScrollEnabled:Z

.field protected isValueSelectionEnabled:Z

.field protected isValueTouchEnabled:Z

.field protected isZoomEnabled:Z

.field protected oldSelectedValue:Llecho/lib/hellocharts/model/SelectedValue;

.field protected renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

.field protected scaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field protected selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

.field protected selectionModeOldValue:Llecho/lib/hellocharts/model/SelectedValue;

.field protected viewParent:Landroid/view/ViewParent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V
    .locals 2
    .parameter "context"
    .parameter "chart"

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled:Z

    .line 28
    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    .line 29
    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueTouchEnabled:Z

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueSelectionEnabled:Z

    .line 36
    new-instance v0, Llecho/lib/hellocharts/model/SelectedValue;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/SelectedValue;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectionModeOldValue:Llecho/lib/hellocharts/model/SelectedValue;

    .line 38
    new-instance v0, Llecho/lib/hellocharts/model/SelectedValue;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/SelectedValue;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    .line 39
    new-instance v0, Llecho/lib/hellocharts/model/SelectedValue;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/SelectedValue;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->oldSelectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    .line 52
    iput-object p2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chart:Llecho/lib/hellocharts/view/Chart;

    .line 53
    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 54
    invoke-interface {p2}, Llecho/lib/hellocharts/view/Chart;->getChartRenderer()Llecho/lib/hellocharts/renderer/ChartRenderer;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 55
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;

    invoke-direct {v1, p0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartGestureListener;-><init>(Llecho/lib/hellocharts/gesture/ChartTouchHandler;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->gestureDetector:Landroid/view/GestureDetector;

    .line 56
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartScaleGestureListener;

    invoke-direct {v1, p0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler$ChartScaleGestureListener;-><init>(Llecho/lib/hellocharts/gesture/ChartTouchHandler;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 57
    new-instance v0, Llecho/lib/hellocharts/gesture/ChartScroller;

    invoke-direct {v0, p1}, Llecho/lib/hellocharts/gesture/ChartScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartScroller:Llecho/lib/hellocharts/gesture/ChartScroller;

    .line 58
    new-instance v0, Llecho/lib/hellocharts/gesture/ChartZoomer;

    sget-object v1, Llecho/lib/hellocharts/gesture/ZoomType;->HORIZONTAL_AND_VERTICAL:Llecho/lib/hellocharts/gesture/ZoomType;

    invoke-direct {v0, p1, v1}, Llecho/lib/hellocharts/gesture/ChartZoomer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/gesture/ZoomType;)V

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

    .line 59
    return-void
.end method

.method static synthetic access$000(Llecho/lib/hellocharts/gesture/ChartTouchHandler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-direct {p0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->disallowParentInterceptTouchEvent()V

    return-void
.end method

.method static synthetic access$100(Llecho/lib/hellocharts/gesture/ChartTouchHandler;Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->allowParentInterceptTouchEvent(Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;)V

    return-void
.end method

.method private allowParentInterceptTouchEvent(Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;)V
    .locals 3
    .parameter "scrollResult"

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->viewParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Llecho/lib/hellocharts/gesture/ContainerScrollType;->HORIZONTAL:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    if-ne v0, v1, :cond_1

    iget-boolean v0, p1, Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;->canScrollX:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->viewParent:Landroid/view/ViewParent;

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    sget-object v0, Llecho/lib/hellocharts/gesture/ContainerScrollType;->VERTICAL:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p1, Llecho/lib/hellocharts/gesture/ChartScroller$ScrollResult;->canScrollY:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->viewParent:Landroid/view/ViewParent;

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0
.end method

.method private checkTouch(FF)Z
    .locals 2
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 209
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->oldSelectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/SelectedValue;->set(Llecho/lib/hellocharts/model/SelectedValue;)V

    .line 210
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 212
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0, p1, p2}, Llecho/lib/hellocharts/renderer/ChartRenderer;->checkTouch(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v1}, Llecho/lib/hellocharts/renderer/ChartRenderer;->getSelectedValue()Llecho/lib/hellocharts/model/SelectedValue;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/SelectedValue;->set(Llecho/lib/hellocharts/model/SelectedValue;)V

    .line 217
    :cond_0
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->oldSelectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0}, Llecho/lib/hellocharts/model/SelectedValue;->isSet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->oldSelectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/model/SelectedValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    const/4 v0, 0x0

    .line 220
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v0}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isTouched()Z

    move-result v0

    goto :goto_0
.end method

.method private computeTouch(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 150
    const/4 v1, 0x0

    .line 151
    .local v1, needInvalidate:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 205
    :cond_0
    :goto_0
    return v1

    .line 153
    :pswitch_0
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v3}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isTouched()Z

    move-result v2

    .line 154
    .local v2, wasTouched:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->checkTouch(FF)Z

    move-result v0

    .line 155
    .local v0, isTouched:Z
    if-eq v2, v0, :cond_0

    .line 156
    const/4 v1, 0x1

    .line 158
    iget-boolean v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueSelectionEnabled:Z

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectionModeOldValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v3}, Llecho/lib/hellocharts/model/SelectedValue;->clear()V

    .line 160
    if-eqz v2, :cond_0

    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v3}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isTouched()Z

    move-result v3

    if-nez v3, :cond_0

    .line 161
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v3}, Llecho/lib/hellocharts/view/Chart;->callTouchListener()V

    goto :goto_0

    .line 167
    .end local v0           #isTouched:Z
    .end local v2           #wasTouched:Z
    :pswitch_1
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v3}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isTouched()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->checkTouch(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    iget-boolean v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueSelectionEnabled:Z

    if-eqz v3, :cond_2

    .line 173
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectionModeOldValue:Llecho/lib/hellocharts/model/SelectedValue;

    iget-object v4, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/model/SelectedValue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 174
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectionModeOldValue:Llecho/lib/hellocharts/model/SelectedValue;

    iget-object v4, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->selectedValue:Llecho/lib/hellocharts/model/SelectedValue;

    invoke-virtual {v3, v4}, Llecho/lib/hellocharts/model/SelectedValue;->set(Llecho/lib/hellocharts/model/SelectedValue;)V

    .line 175
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v3}, Llecho/lib/hellocharts/view/Chart;->callTouchListener()V

    .line 184
    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 178
    :cond_2
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v3}, Llecho/lib/hellocharts/view/Chart;->callTouchListener()V

    .line 179
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v3}, Llecho/lib/hellocharts/renderer/ChartRenderer;->clearTouch()V

    goto :goto_1

    .line 182
    :cond_3
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v3}, Llecho/lib/hellocharts/renderer/ChartRenderer;->clearTouch()V

    goto :goto_1

    .line 190
    :pswitch_2
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v3}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isTouched()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->checkTouch(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 192
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v3}, Llecho/lib/hellocharts/renderer/ChartRenderer;->clearTouch()V

    .line 193
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 199
    :pswitch_3
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v3}, Llecho/lib/hellocharts/renderer/ChartRenderer;->isTouched()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    invoke-interface {v3}, Llecho/lib/hellocharts/renderer/ChartRenderer;->clearTouch()V

    .line 201
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 151
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private disallowParentInterceptTouchEvent()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->viewParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->viewParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 130
    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()Z
    .locals 3

    .prologue
    .line 71
    const/4 v0, 0x0

    .line 72
    .local v0, needInvalidate:Z
    iget-boolean v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartScroller:Llecho/lib/hellocharts/gesture/ChartScroller;

    iget-object v2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/gesture/ChartScroller;->computeScrollOffset(Llecho/lib/hellocharts/computator/ChartComputator;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    :cond_0
    iget-boolean v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

    iget-object v2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    invoke-virtual {v1, v2}, Llecho/lib/hellocharts/gesture/ChartZoomer;->computeZoom(Llecho/lib/hellocharts/computator/ChartComputator;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const/4 v0, 0x1

    .line 78
    :cond_1
    return v0
.end method

.method public getZoomType()Llecho/lib/hellocharts/gesture/ZoomType;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/gesture/ChartZoomer;->getZoomType()Llecho/lib/hellocharts/gesture/ZoomType;

    move-result-object v0

    return-object v0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    const/4 v0, 0x0

    .line 90
    .local v0, needInvalidate:Z
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 92
    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_4

    :cond_0
    move v0, v2

    .line 94
    :goto_0
    iget-boolean v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->scaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    invoke-direct {p0}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->disallowParentInterceptTouchEvent()V

    .line 100
    :cond_1
    iget-boolean v3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueTouchEnabled:Z

    if-eqz v3, :cond_3

    .line 101
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computeTouch(Landroid/view/MotionEvent;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_5

    :cond_2
    move v0, v2

    .line 104
    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v1

    .line 92
    goto :goto_0

    :cond_5
    move v0, v1

    .line 101
    goto :goto_1
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/ViewParent;Llecho/lib/hellocharts/gesture/ContainerScrollType;)Z
    .locals 1
    .parameter "event"
    .parameter "viewParent"
    .parameter "containerScrollType"

    .prologue
    .line 116
    iput-object p2, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->viewParent:Landroid/view/ViewParent;

    .line 117
    iput-object p3, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->containerScrollType:Llecho/lib/hellocharts/gesture/ContainerScrollType;

    .line 119
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    return v0
.end method

.method public isValueSelectionEnabled()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueSelectionEnabled:Z

    return v0
.end method

.method public isValueTouchEnabled()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueTouchEnabled:Z

    return v0
.end method

.method public isZoomEnabled()Z
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled:Z

    return v0
.end method

.method public resetTouchHandler()V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartComputator()Llecho/lib/hellocharts/computator/ChartComputator;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->computator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 63
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chart:Llecho/lib/hellocharts/view/Chart;

    invoke-interface {v0}, Llecho/lib/hellocharts/view/Chart;->getChartRenderer()Llecho/lib/hellocharts/renderer/ChartRenderer;

    move-result-object v0

    iput-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->renderer:Llecho/lib/hellocharts/renderer/ChartRenderer;

    .line 64
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0
    .parameter "isScrollEnabled"

    .prologue
    .line 238
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isScrollEnabled:Z

    .line 239
    return-void
.end method

.method public setValueSelectionEnabled(Z)V
    .locals 0
    .parameter "isValueSelectionEnabled"

    .prologue
    .line 262
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueSelectionEnabled:Z

    .line 263
    return-void
.end method

.method public setValueTouchEnabled(Z)V
    .locals 0
    .parameter "isValueTouchEnabled"

    .prologue
    .line 254
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isValueTouchEnabled:Z

    .line 255
    return-void
.end method

.method public setZoomEnabled(Z)V
    .locals 0
    .parameter "isZoomEnabled"

    .prologue
    .line 229
    iput-boolean p1, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->isZoomEnabled:Z

    .line 231
    return-void
.end method

.method public setZoomType(Llecho/lib/hellocharts/gesture/ZoomType;)V
    .locals 1
    .parameter "zoomType"

    .prologue
    .line 246
    iget-object v0, p0, Llecho/lib/hellocharts/gesture/ChartTouchHandler;->chartZoomer:Llecho/lib/hellocharts/gesture/ChartZoomer;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/gesture/ChartZoomer;->setZoomType(Llecho/lib/hellocharts/gesture/ZoomType;)V

    .line 247
    return-void
.end method
