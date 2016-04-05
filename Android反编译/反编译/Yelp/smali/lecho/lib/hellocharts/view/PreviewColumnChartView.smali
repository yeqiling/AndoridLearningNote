.class public Llecho/lib/hellocharts/view/PreviewColumnChartView;
.super Llecho/lib/hellocharts/view/ColumnChartView;
.source "PreviewColumnChartView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ColumnChartView"


# instance fields
.field protected previewChartRenderer:Llecho/lib/hellocharts/renderer/PreviewColumnChartRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 27
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Llecho/lib/hellocharts/view/PreviewColumnChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Llecho/lib/hellocharts/view/PreviewColumnChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Llecho/lib/hellocharts/view/ColumnChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    new-instance v0, Llecho/lib/hellocharts/computator/PreviewChartComputator;

    invoke-direct {v0}, Llecho/lib/hellocharts/computator/PreviewChartComputator;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/view/PreviewColumnChartView;->chartComputator:Llecho/lib/hellocharts/computator/ChartComputator;

    .line 37
    new-instance v0, Llecho/lib/hellocharts/renderer/PreviewColumnChartRenderer;

    invoke-direct {v0, p1, p0, p0}, Llecho/lib/hellocharts/renderer/PreviewColumnChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/PreviewColumnChartView;->previewChartRenderer:Llecho/lib/hellocharts/renderer/PreviewColumnChartRenderer;

    .line 38
    new-instance v0, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;

    invoke-direct {v0, p1, p0}, Llecho/lib/hellocharts/gesture/PreviewChartTouchHandler;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    iput-object v0, p0, Llecho/lib/hellocharts/view/PreviewColumnChartView;->touchHandler:Llecho/lib/hellocharts/gesture/ChartTouchHandler;

    .line 39
    iget-object v0, p0, Llecho/lib/hellocharts/view/PreviewColumnChartView;->previewChartRenderer:Llecho/lib/hellocharts/renderer/PreviewColumnChartRenderer;

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/PreviewColumnChartView;->setChartRenderer(Llecho/lib/hellocharts/renderer/ChartRenderer;)V

    .line 40
    invoke-static {}, Llecho/lib/hellocharts/model/ColumnChartData;->generateDummyData()Llecho/lib/hellocharts/model/ColumnChartData;

    move-result-object v0

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/view/PreviewColumnChartView;->setColumnChartData(Llecho/lib/hellocharts/model/ColumnChartData;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getPreviewColor()I
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Llecho/lib/hellocharts/view/PreviewColumnChartView;->previewChartRenderer:Llecho/lib/hellocharts/renderer/PreviewColumnChartRenderer;

    invoke-virtual {v0}, Llecho/lib/hellocharts/renderer/PreviewColumnChartRenderer;->getPreviewColor()I

    move-result v0

    return v0
.end method

.method public setPreviewColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 52
    iget-object v0, p0, Llecho/lib/hellocharts/view/PreviewColumnChartView;->previewChartRenderer:Llecho/lib/hellocharts/renderer/PreviewColumnChartRenderer;

    invoke-virtual {v0, p1}, Llecho/lib/hellocharts/renderer/PreviewColumnChartRenderer;->setPreviewColor(I)V

    .line 53
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 54
    return-void
.end method
