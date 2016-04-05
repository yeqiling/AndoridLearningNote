.class public Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;
.super Llecho/lib/hellocharts/renderer/ComboChartRenderer;
.source "ComboLineColumnChartRenderer.java"


# instance fields
.field private columnChartRenderer:Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

.field private lineChartRenderer:Llecho/lib/hellocharts/renderer/LineChartRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V
    .locals 2
    .parameter "context"
    .parameter "chart"
    .parameter "columnChartDataProvider"
    .parameter "lineChartDataProvider"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Llecho/lib/hellocharts/renderer/ComboChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;)V

    .line 18
    new-instance v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    invoke-direct {v0, p1, p2, p3}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/ColumnChartDataProvider;)V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;->columnChartRenderer:Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    .line 19
    new-instance v0, Llecho/lib/hellocharts/renderer/LineChartRenderer;

    invoke-direct {v0, p1, p2, p4}, Llecho/lib/hellocharts/renderer/LineChartRenderer;-><init>(Landroid/content/Context;Llecho/lib/hellocharts/view/Chart;Llecho/lib/hellocharts/provider/LineChartDataProvider;)V

    iput-object v0, p0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;->lineChartRenderer:Llecho/lib/hellocharts/renderer/LineChartRenderer;

    .line 21
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;->renderers:Ljava/util/List;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;->columnChartRenderer:Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v0, p0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;->renderers:Ljava/util/List;

    iget-object v1, p0, Llecho/lib/hellocharts/renderer/ComboLineColumnChartRenderer;->lineChartRenderer:Llecho/lib/hellocharts/renderer/LineChartRenderer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    return-void
.end method
