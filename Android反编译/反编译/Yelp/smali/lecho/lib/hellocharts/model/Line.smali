.class public Llecho/lib/hellocharts/model/Line;
.super Ljava/lang/Object;
.source "Line.java"


# static fields
.field private static final DEFAULT_AREA_TRANSPARENCY:I = 0x40

.field private static final DEFAULT_LINE_STROKE_WIDTH_DP:F = 1.5f

.field private static final DEFAULT_POINT_RADIUS_DP:I = 0x6


# instance fields
.field private AreaColor:I

.field private areaTransparency:I

.field private color:I

.field private darkenColor:I

.field private formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private hasLines:Z

.field private hasPoints:Z

.field private isCubic:Z

.field private isFilled:Z

.field private isSquare:Z

.field private labelColor:I

.field private pathEffect:Landroid/graphics/PathEffect;

.field private pointRadius:I

.field private shape:Llecho/lib/hellocharts/model/ValueShape;

.field private strokeWidth:F

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->color:I

    .line 22
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->labelColor:I

    .line 23
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    .line 24
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_AREA_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->AreaColor:I

    .line 26
    const/16 v0, 0x40

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    .line 27
    const/high16 v0, 0x3fc0

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->strokeWidth:F

    .line 28
    const/4 v0, 0x6

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    .line 29
    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    .line 30
    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    .line 31
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    .line 32
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    .line 33
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    .line 34
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    .line 35
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    .line 36
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 38
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/PointValue;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->color:I

    .line 22
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->labelColor:I

    .line 23
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    .line 24
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_AREA_COLOR:I

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->AreaColor:I

    .line 26
    const/16 v0, 0x40

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    .line 27
    const/high16 v0, 0x3fc0

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->strokeWidth:F

    .line 28
    const/4 v0, 0x6

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    .line 29
    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    .line 30
    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    .line 31
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    .line 32
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    .line 33
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    .line 34
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    .line 35
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    .line 36
    sget-object v0, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 38
    new-instance v0, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    .line 46
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/Line;->setValues(Ljava/util/List;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/Line;)V
    .locals 5
    .parameter "line"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v2, p0, Llecho/lib/hellocharts/model/Line;->color:I

    .line 22
    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    iput v2, p0, Llecho/lib/hellocharts/model/Line;->labelColor:I

    .line 23
    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    iput v2, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    .line 24
    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_AREA_COLOR:I

    iput v2, p0, Llecho/lib/hellocharts/model/Line;->AreaColor:I

    .line 26
    const/16 v2, 0x40

    iput v2, p0, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    .line 27
    const/high16 v2, 0x3fc0

    iput v2, p0, Llecho/lib/hellocharts/model/Line;->strokeWidth:F

    .line 28
    const/4 v2, 0x6

    iput v2, p0, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    .line 29
    iput-boolean v4, p0, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    .line 30
    iput-boolean v4, p0, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    .line 31
    iput-boolean v3, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    .line 32
    iput-boolean v3, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    .line 33
    iput-boolean v3, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    .line 34
    iput-boolean v3, p0, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    .line 35
    iput-boolean v3, p0, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    .line 36
    sget-object v2, Llecho/lib/hellocharts/model/ValueShape;->CIRCLE:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v2, p0, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 38
    new-instance v2, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;

    invoke-direct {v2}, Llecho/lib/hellocharts/formatter/SimpleLineChartValueFormatter;-><init>()V

    iput-object v2, p0, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    .line 50
    iget v2, p1, Llecho/lib/hellocharts/model/Line;->color:I

    iput v2, p0, Llecho/lib/hellocharts/model/Line;->color:I

    .line 51
    iget v2, p1, Llecho/lib/hellocharts/model/Line;->color:I

    iput v2, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    .line 52
    iget v2, p1, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    iput v2, p0, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    .line 53
    iget v2, p1, Llecho/lib/hellocharts/model/Line;->strokeWidth:F

    iput v2, p0, Llecho/lib/hellocharts/model/Line;->strokeWidth:F

    .line 54
    iget v2, p1, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    iput v2, p0, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    .line 55
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    .line 56
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    .line 57
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    .line 58
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    .line 59
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    .line 60
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    .line 61
    iget-object v2, p1, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    iput-object v2, p0, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 62
    iget-object v2, p1, Llecho/lib/hellocharts/model/Line;->pathEffect:Landroid/graphics/PathEffect;

    iput-object v2, p0, Llecho/lib/hellocharts/model/Line;->pathEffect:Landroid/graphics/PathEffect;

    .line 63
    iget-object v2, p1, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    iput-object v2, p0, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    .line 65
    iget-object v2, p1, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/PointValue;

    .line 66
    .local v1, pointValue:Llecho/lib/hellocharts/model/PointValue;
    iget-object v2, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    new-instance v3, Llecho/lib/hellocharts/model/PointValue;

    invoke-direct {v3, v1}, Llecho/lib/hellocharts/model/PointValue;-><init>(Llecho/lib/hellocharts/model/PointValue;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 68
    .end local v1           #pointValue:Llecho/lib/hellocharts/model/PointValue;
    :cond_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 77
    iget-object v2, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/PointValue;

    .line 78
    .local v1, value:Llecho/lib/hellocharts/model/PointValue;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/PointValue;->finish()V

    goto :goto_0

    .line 80
    .end local v1           #value:Llecho/lib/hellocharts/model/PointValue;
    :cond_0
    return-void
.end method

.method public getAreaColor()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->AreaColor:I

    return v0
.end method

.method public getAreaTransparency()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->color:I

    return v0
.end method

.method public getDarkenColor()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    return v0
.end method

.method public getFormatter()Llecho/lib/hellocharts/formatter/LineChartValueFormatter;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    return-object v0
.end method

.method public getLabelColor()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->labelColor:I

    return v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Llecho/lib/hellocharts/model/Line;->pathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getPointRadius()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    return v0
.end method

.method public getShape()Llecho/lib/hellocharts/model/ValueShape;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Llecho/lib/hellocharts/model/Line;->strokeWidth:F

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    return-object v0
.end method

.method public hasLabels()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    return v0
.end method

.method public hasLabelsOnlyForSelected()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    return v0
.end method

.method public hasLines()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    return v0
.end method

.method public hasPoints()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    return v0
.end method

.method public isCubic()Z
    .locals 1

    .prologue
    .line 213
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    return v0
.end method

.method public isFilled()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    return v0
.end method

.method public isSquare()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    return v0
.end method

.method public setAreaTransparency(I)Llecho/lib/hellocharts/model/Line;
    .locals 0
    .parameter "areaTransparency"

    .prologue
    .line 135
    iput p1, p0, Llecho/lib/hellocharts/model/Line;->areaTransparency:I

    .line 136
    return-object p0
.end method

.method public setColor(I)Llecho/lib/hellocharts/model/Line;
    .locals 1
    .parameter "color"

    .prologue
    .line 99
    iput p1, p0, Llecho/lib/hellocharts/model/Line;->color:I

    .line 100
    invoke-static {p1}, Llecho/lib/hellocharts/util/ChartUtils;->darkenColor(I)I

    move-result v0

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->darkenColor:I

    .line 101
    return-object p0
.end method

.method public setCubic(Z)Llecho/lib/hellocharts/model/Line;
    .locals 1
    .parameter "isCubic"

    .prologue
    .line 217
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    .line 218
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    if-eqz v0, :cond_0

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/Line;->setSquare(Z)Llecho/lib/hellocharts/model/Line;

    .line 220
    :cond_0
    return-object p0
.end method

.method public setFilled(Z)Llecho/lib/hellocharts/model/Line;
    .locals 0
    .parameter "isFilled"

    .prologue
    .line 239
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->isFilled:Z

    .line 240
    return-object p0
.end method

.method public setFormatter(Llecho/lib/hellocharts/formatter/LineChartValueFormatter;)Llecho/lib/hellocharts/model/Line;
    .locals 0
    .parameter "formatter"

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 281
    iput-object p1, p0, Llecho/lib/hellocharts/model/Line;->formatter:Llecho/lib/hellocharts/formatter/LineChartValueFormatter;

    .line 283
    :cond_0
    return-object p0
.end method

.method public setHasLabels(Z)Llecho/lib/hellocharts/model/Line;
    .locals 1
    .parameter "hasLabels"

    .prologue
    .line 171
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    .line 172
    if-eqz p1, :cond_0

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    .line 175
    :cond_0
    return-object p0
.end method

.method public setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/Line;
    .locals 1
    .parameter "hasLabelsOnlyForSelected"

    .prologue
    .line 190
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->hasLabelsOnlyForSelected:Z

    .line 191
    if-eqz p1, :cond_0

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->hasLabels:Z

    .line 194
    :cond_0
    return-object p0
.end method

.method public setHasLines(Z)Llecho/lib/hellocharts/model/Line;
    .locals 0
    .parameter "hasLines"

    .prologue
    .line 162
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->hasLines:Z

    .line 163
    return-object p0
.end method

.method public setHasPoints(Z)Llecho/lib/hellocharts/model/Line;
    .locals 0
    .parameter "hasPoints"

    .prologue
    .line 153
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->hasPoints:Z

    .line 154
    return-object p0
.end method

.method public setLabelColor(I)V
    .locals 0
    .parameter "labelColor"

    .prologue
    .line 110
    iput p1, p0, Llecho/lib/hellocharts/model/Line;->labelColor:I

    .line 111
    return-void
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)V
    .locals 0
    .parameter "pathEffect"

    .prologue
    .line 272
    iput-object p1, p0, Llecho/lib/hellocharts/model/Line;->pathEffect:Landroid/graphics/PathEffect;

    .line 273
    return-void
.end method

.method public setPointRadius(I)Llecho/lib/hellocharts/model/Line;
    .locals 0
    .parameter "pointRadius"

    .prologue
    .line 208
    iput p1, p0, Llecho/lib/hellocharts/model/Line;->pointRadius:I

    .line 209
    return-object p0
.end method

.method public setShape(Llecho/lib/hellocharts/model/ValueShape;)Llecho/lib/hellocharts/model/Line;
    .locals 0
    .parameter "shape"

    .prologue
    .line 257
    iput-object p1, p0, Llecho/lib/hellocharts/model/Line;->shape:Llecho/lib/hellocharts/model/ValueShape;

    .line 258
    return-object p0
.end method

.method public setSquare(Z)Llecho/lib/hellocharts/model/Line;
    .locals 1
    .parameter "isSquare"

    .prologue
    .line 228
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/Line;->isSquare:Z

    .line 229
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/Line;->isCubic:Z

    if-eqz v0, :cond_0

    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Llecho/lib/hellocharts/model/Line;->setCubic(Z)Llecho/lib/hellocharts/model/Line;

    .line 231
    :cond_0
    return-object p0
.end method

.method public setStrokeWidth(I)Llecho/lib/hellocharts/model/Line;
    .locals 1
    .parameter "strokeWidth"

    .prologue
    .line 144
    int-to-float v0, p1

    iput v0, p0, Llecho/lib/hellocharts/model/Line;->strokeWidth:F

    .line 145
    return-object p0
.end method

.method public setValues(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/PointValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/PointValue;>;"
    if-nez p1, :cond_0

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    .line 92
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    goto :goto_0
.end method

.method public update(F)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 71
    iget-object v2, p0, Llecho/lib/hellocharts/model/Line;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/PointValue;

    .line 72
    .local v1, value:Llecho/lib/hellocharts/model/PointValue;
    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/model/PointValue;->update(F)V

    goto :goto_0

    .line 74
    .end local v1           #value:Llecho/lib/hellocharts/model/PointValue;
    :cond_0
    return-void
.end method
