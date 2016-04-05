.class public abstract Llecho/lib/hellocharts/model/AbstractChartData;
.super Ljava/lang/Object;
.source "AbstractChartData.java"

# interfaces
.implements Llecho/lib/hellocharts/model/ChartData;


# static fields
.field public static final DEFAULT_TEXT_SIZE_SP:I = 0xc


# instance fields
.field protected axisXBottom:Llecho/lib/hellocharts/model/Axis;

.field protected axisXTop:Llecho/lib/hellocharts/model/Axis;

.field protected axisYLeft:Llecho/lib/hellocharts/model/Axis;

.field protected axisYRight:Llecho/lib/hellocharts/model/Axis;

.field protected isValueLabelBackgroundEnabled:Z

.field protected isValueLabelBackgrountAuto:Z

.field protected valueLabelBackgroundColor:I

.field protected valueLabelTextColor:I

.field protected valueLabelTextSize:I

.field protected valueLabelTypeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    .line 18
    const/16 v0, 0xc

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    .line 24
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgroundEnabled:Z

    .line 30
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgrountAuto:Z

    .line 37
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    invoke-static {v0}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelBackgroundColor:I

    .line 41
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/AbstractChartData;)V
    .locals 2
    .parameter "data"

    .prologue
    const/4 v1, 0x1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    .line 18
    const/16 v0, 0xc

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    .line 24
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgroundEnabled:Z

    .line 30
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgrountAuto:Z

    .line 37
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    invoke-static {v0}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelBackgroundColor:I

    .line 49
    iget-object v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    iget-object v1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/Axis;-><init>(Llecho/lib/hellocharts/model/Axis;)V

    iput-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    .line 52
    :cond_0
    iget-object v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    if-eqz v0, :cond_1

    .line 53
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    iget-object v1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/Axis;-><init>(Llecho/lib/hellocharts/model/Axis;)V

    iput-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    .line 55
    :cond_1
    iget-object v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    iget-object v1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/Axis;-><init>(Llecho/lib/hellocharts/model/Axis;)V

    iput-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    .line 58
    :cond_2
    iget-object v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    if-eqz v0, :cond_3

    .line 59
    new-instance v0, Llecho/lib/hellocharts/model/Axis;

    iget-object v1, p1, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    invoke-direct {v0, v1}, Llecho/lib/hellocharts/model/Axis;-><init>(Llecho/lib/hellocharts/model/Axis;)V

    iput-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    .line 61
    :cond_3
    iget v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    .line 62
    iget v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    iput v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    .line 63
    iget-object v0, p1, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTypeface:Landroid/graphics/Typeface;

    .line 64
    return-void
.end method


# virtual methods
.method public getAxisXBottom()Llecho/lib/hellocharts/model/Axis;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    return-object v0
.end method

.method public getAxisXTop()Llecho/lib/hellocharts/model/Axis;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    return-object v0
.end method

.method public getAxisYLeft()Llecho/lib/hellocharts/model/Axis;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    return-object v0
.end method

.method public getAxisYRight()Llecho/lib/hellocharts/model/Axis;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    return-object v0
.end method

.method public getValueLabelBackgroundColor()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelBackgroundColor:I

    return v0
.end method

.method public getValueLabelTextColor()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    return v0
.end method

.method public getValueLabelTextSize()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    return v0
.end method

.method public getValueLabelTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isValueLabelBackgroundAuto()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgrountAuto:Z

    return v0
.end method

.method public isValueLabelBackgroundEnabled()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgroundEnabled:Z

    return v0
.end method

.method public setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0
    .parameter "axisX"

    .prologue
    .line 73
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXBottom:Llecho/lib/hellocharts/model/Axis;

    .line 74
    return-void
.end method

.method public setAxisXTop(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0
    .parameter "axisX"

    .prologue
    .line 93
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisXTop:Llecho/lib/hellocharts/model/Axis;

    .line 94
    return-void
.end method

.method public setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0
    .parameter "axisY"

    .prologue
    .line 83
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYLeft:Llecho/lib/hellocharts/model/Axis;

    .line 84
    return-void
.end method

.method public setAxisYRight(Llecho/lib/hellocharts/model/Axis;)V
    .locals 0
    .parameter "axisY"

    .prologue
    .line 103
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->axisYRight:Llecho/lib/hellocharts/model/Axis;

    .line 104
    return-void
.end method

.method public setValueLabelBackgroundAuto(Z)V
    .locals 0
    .parameter "isValueLabelBackgrountAuto"

    .prologue
    .line 153
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgrountAuto:Z

    .line 154
    return-void
.end method

.method public setValueLabelBackgroundColor(I)V
    .locals 0
    .parameter "valueLabelBackgroundColor"

    .prologue
    .line 163
    iput p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelBackgroundColor:I

    .line 164
    return-void
.end method

.method public setValueLabelBackgroundEnabled(Z)V
    .locals 0
    .parameter "isValueLabelBackgroundEnabled"

    .prologue
    .line 143
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->isValueLabelBackgroundEnabled:Z

    .line 144
    return-void
.end method

.method public setValueLabelTextSize(I)V
    .locals 0
    .parameter "valueLabelTextSize"

    .prologue
    .line 123
    iput p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextSize:I

    .line 124
    return-void
.end method

.method public setValueLabelTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .parameter "typeface"

    .prologue
    .line 133
    iput-object p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTypeface:Landroid/graphics/Typeface;

    .line 134
    return-void
.end method

.method public setValueLabelsTextColor(I)V
    .locals 0
    .parameter "valueLabelTextColor"

    .prologue
    .line 113
    iput p1, p0, Llecho/lib/hellocharts/model/AbstractChartData;->valueLabelTextColor:I

    .line 114
    return-void
.end method
