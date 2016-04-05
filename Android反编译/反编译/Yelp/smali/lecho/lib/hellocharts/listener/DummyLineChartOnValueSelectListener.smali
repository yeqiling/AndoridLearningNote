.class public Llecho/lib/hellocharts/listener/DummyLineChartOnValueSelectListener;
.super Ljava/lang/Object;
.source "DummyLineChartOnValueSelectListener.java"

# interfaces
.implements Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 0
    .parameter "lineIndex"
    .parameter "pointIndex"
    .parameter "value"

    .prologue
    .line 21
    return-void
.end method

.method public onPopSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 0
    .parameter "lineIndex"
    .parameter "pointIndex"
    .parameter "value"

    .prologue
    .line 26
    return-void
.end method

.method public onValueDeselected()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public onValueSelected(IILlecho/lib/hellocharts/model/PointValue;)V
    .locals 0
    .parameter "lineIndex"
    .parameter "pointIndex"
    .parameter "value"

    .prologue
    .line 11
    return-void
.end method
