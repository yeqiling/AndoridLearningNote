.class public Llecho/lib/hellocharts/listener/DummyCompoLineColumnChartOnValueSelectListener;
.super Ljava/lang/Object;
.source "DummyCompoLineColumnChartOnValueSelectListener.java"

# interfaces
.implements Llecho/lib/hellocharts/listener/ComboLineColumnChartOnValueSelectListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColumnValueSelected(IILlecho/lib/hellocharts/model/SubcolumnValue;)V
    .locals 0
    .parameter "columnIndex"
    .parameter "subcolumnIndex"
    .parameter "value"

    .prologue
    .line 12
    return-void
.end method

.method public onPointValueSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 0
    .parameter "lineIndex"
    .parameter "pointIndex"
    .parameter "value"

    .prologue
    .line 17
    return-void
.end method

.method public onValueDeselected()V
    .locals 0

    .prologue
    .line 22
    return-void
.end method
