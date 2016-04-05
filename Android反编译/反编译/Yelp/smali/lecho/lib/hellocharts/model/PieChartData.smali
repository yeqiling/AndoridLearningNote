.class public Llecho/lib/hellocharts/model/PieChartData;
.super Llecho/lib/hellocharts/model/AbstractChartData;
.source "PieChartData.java"


# static fields
.field public static final DEFAULT_CENTER_CIRCLE_SCALE:F = 0.6f

.field public static final DEFAULT_CENTER_TEXT1_SIZE_SP:I = 0x2a

.field public static final DEFAULT_CENTER_TEXT2_SIZE_SP:I = 0x10

.field private static final DEFAULT_SLICE_SPACING_DP:I = 0x2


# instance fields
.field private centerCircleColor:I

.field private centerCircleScale:F

.field private centerText1:Ljava/lang/String;

.field private centerText1Color:I

.field private centerText1FontSize:I

.field private centerText1Typeface:Landroid/graphics/Typeface;

.field private centerText2:Ljava/lang/String;

.field private centerText2Color:I

.field private centerText2FontSize:I

.field private centerText2Typeface:Landroid/graphics/Typeface;

.field private formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

.field private hasCenterCircle:Z

.field private hasLabels:Z

.field private hasLabelsOnlyForSelected:Z

.field private hasLabelsOutside:Z

.field private slicesSpacing:I

.field private values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/SliceValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, -0x100

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    .line 22
    const/16 v0, 0x2a

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    .line 23
    const/16 v0, 0x10

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    .line 24
    const v0, 0x3f19999a

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->slicesSpacing:I

    .line 26
    new-instance v0, Llecho/lib/hellocharts/formatter/SimplePieChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimplePieChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    .line 27
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    .line 28
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    .line 29
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    .line 30
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    .line 31
    iput v1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    .line 32
    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    .line 35
    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    .line 42
    invoke-virtual {p0, v3}, Llecho/lib/hellocharts/model/PieChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 43
    invoke-virtual {p0, v3}, Llecho/lib/hellocharts/model/PieChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/SliceValue;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/SliceValue;>;"
    const/4 v3, 0x0

    const/high16 v2, -0x100

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>()V

    .line 22
    const/16 v0, 0x2a

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    .line 23
    const/16 v0, 0x10

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    .line 24
    const v0, 0x3f19999a

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    .line 25
    const/4 v0, 0x2

    iput v0, p0, Llecho/lib/hellocharts/model/PieChartData;->slicesSpacing:I

    .line 26
    new-instance v0, Llecho/lib/hellocharts/formatter/SimplePieChartValueFormatter;

    invoke-direct {v0}, Llecho/lib/hellocharts/formatter/SimplePieChartValueFormatter;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    .line 27
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    .line 28
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    .line 29
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    .line 30
    iput-boolean v1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    .line 31
    iput v1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    .line 32
    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    .line 35
    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    .line 47
    invoke-virtual {p0, p1}, Llecho/lib/hellocharts/model/PieChartData;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/PieChartData;

    .line 49
    invoke-virtual {p0, v3}, Llecho/lib/hellocharts/model/PieChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 50
    invoke-virtual {p0, v3}, Llecho/lib/hellocharts/model/PieChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Llecho/lib/hellocharts/model/PieChartData;)V
    .locals 5
    .parameter "data"

    .prologue
    const/high16 v4, -0x100

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0, p1}, Llecho/lib/hellocharts/model/AbstractChartData;-><init>(Llecho/lib/hellocharts/model/AbstractChartData;)V

    .line 22
    const/16 v2, 0x2a

    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    .line 23
    const/16 v2, 0x10

    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    .line 24
    const v2, 0x3f19999a

    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    .line 25
    const/4 v2, 0x2

    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->slicesSpacing:I

    .line 26
    new-instance v2, Llecho/lib/hellocharts/formatter/SimplePieChartValueFormatter;

    invoke-direct {v2}, Llecho/lib/hellocharts/formatter/SimplePieChartValueFormatter;-><init>()V

    iput-object v2, p0, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    .line 27
    iput-boolean v3, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    .line 28
    iput-boolean v3, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    .line 29
    iput-boolean v3, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    .line 30
    iput-boolean v3, p0, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    .line 31
    iput v3, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    .line 32
    iput v4, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    .line 35
    iput v4, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    .line 39
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    .line 55
    iget-object v2, p1, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    iput-object v2, p0, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    .line 56
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    .line 57
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    .line 58
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    .line 60
    iget-boolean v2, p1, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    iput-boolean v2, p0, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    .line 61
    iget v2, p1, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    .line 62
    iget v2, p1, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    .line 64
    iget v2, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    .line 65
    iget v2, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    .line 66
    iget-object v2, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText1Typeface:Landroid/graphics/Typeface;

    iput-object v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Typeface:Landroid/graphics/Typeface;

    .line 67
    iget-object v2, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText1:Ljava/lang/String;

    iput-object v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1:Ljava/lang/String;

    .line 69
    iget v2, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    .line 70
    iget v2, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    iput v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    .line 71
    iget-object v2, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText2Typeface:Landroid/graphics/Typeface;

    iput-object v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Typeface:Landroid/graphics/Typeface;

    .line 72
    iget-object v2, p1, Llecho/lib/hellocharts/model/PieChartData;->centerText2:Ljava/lang/String;

    iput-object v2, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2:Ljava/lang/String;

    .line 74
    iget-object v2, p1, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SliceValue;

    .line 75
    .local v1, sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    iget-object v2, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    new-instance v3, Llecho/lib/hellocharts/model/SliceValue;

    invoke-direct {v3, v1}, Llecho/lib/hellocharts/model/SliceValue;-><init>(Llecho/lib/hellocharts/model/SliceValue;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 77
    .end local v1           #sliceValue:Llecho/lib/hellocharts/model/SliceValue;
    :cond_0
    return-void
.end method

.method public static generateDummyData()Llecho/lib/hellocharts/model/PieChartData;
    .locals 5

    .prologue
    .line 80
    const/4 v1, 0x4

    .line 81
    .local v1, numValues:I
    new-instance v0, Llecho/lib/hellocharts/model/PieChartData;

    invoke-direct {v0}, Llecho/lib/hellocharts/model/PieChartData;-><init>()V

    .line 82
    .local v0, data:Llecho/lib/hellocharts/model/PieChartData;
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .local v2, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/SliceValue;>;"
    new-instance v3, Llecho/lib/hellocharts/model/SliceValue;

    const/high16 v4, 0x4220

    invoke-direct {v3, v4}, Llecho/lib/hellocharts/model/SliceValue;-><init>(F)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v3, Llecho/lib/hellocharts/model/SliceValue;

    const/high16 v4, 0x41a0

    invoke-direct {v3, v4}, Llecho/lib/hellocharts/model/SliceValue;-><init>(F)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    new-instance v3, Llecho/lib/hellocharts/model/SliceValue;

    const/high16 v4, 0x41f0

    invoke-direct {v3, v4}, Llecho/lib/hellocharts/model/SliceValue;-><init>(F)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v3, Llecho/lib/hellocharts/model/SliceValue;

    const/high16 v4, 0x4248

    invoke-direct {v3, v4}, Llecho/lib/hellocharts/model/SliceValue;-><init>(F)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/model/PieChartData;->setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/PieChartData;

    .line 88
    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 100
    iget-object v2, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SliceValue;

    .line 101
    .local v1, value:Llecho/lib/hellocharts/model/SliceValue;
    invoke-virtual {v1}, Llecho/lib/hellocharts/model/SliceValue;->finish()V

    goto :goto_0

    .line 103
    .end local v1           #value:Llecho/lib/hellocharts/model/SliceValue;
    :cond_0
    return-void
.end method

.method public getCenterCircleColor()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    return v0
.end method

.method public getCenterCircleScale()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    return v0
.end method

.method public getCenterText1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1:Ljava/lang/String;

    return-object v0
.end method

.method public getCenterText1Color()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    return v0
.end method

.method public getCenterText1FontSize()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    return v0
.end method

.method public getCenterText1Typeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getCenterText2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2:Ljava/lang/String;

    return-object v0
.end method

.method public getCenterText2Color()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    return v0
.end method

.method public getCenterText2FontSize()I
    .locals 1

    .prologue
    .line 264
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    return v0
.end method

.method public getCenterText2Typeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Typeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getFormatter()Llecho/lib/hellocharts/formatter/PieChartValueFormatter;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    return-object v0
.end method

.method public getSlicesSpacing()I
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Llecho/lib/hellocharts/model/PieChartData;->slicesSpacing:I

    return v0
.end method

.method public getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/SliceValue;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    return-object v0
.end method

.method public hasCenterCircle()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    return v0
.end method

.method public hasLabels()Z
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    return v0
.end method

.method public hasLabelsOnlyForSelected()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    return v0
.end method

.method public hasLabelsOutside()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    return v0
.end method

.method public setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V
    .locals 1
    .parameter "axisX"

    .prologue
    .line 110
    const/4 v0, 0x0

    invoke-super {p0, v0}, Llecho/lib/hellocharts/model/AbstractChartData;->setAxisXBottom(Llecho/lib/hellocharts/model/Axis;)V

    .line 111
    return-void
.end method

.method public setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V
    .locals 1
    .parameter "axisY"

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-super {p0, v0}, Llecho/lib/hellocharts/model/AbstractChartData;->setAxisYLeft(Llecho/lib/hellocharts/model/Axis;)V

    .line 119
    return-void
.end method

.method public setCenterCircleColor(I)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "centerCircleColor"

    .prologue
    .line 193
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleColor:I

    .line 194
    return-object p0
.end method

.method public setCenterCircleScale(F)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "centerCircleScale"

    .prologue
    .line 202
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerCircleScale:F

    .line 203
    return-object p0
.end method

.method public setCenterText1(Ljava/lang/String;)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "centerText1"

    .prologue
    .line 238
    iput-object p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1:Ljava/lang/String;

    .line 239
    return-object p0
.end method

.method public setCenterText1Color(I)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "centerText1Color"

    .prologue
    .line 211
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Color:I

    .line 212
    return-object p0
.end method

.method public setCenterText1FontSize(I)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "centerText1FontSize"

    .prologue
    .line 220
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1FontSize:I

    .line 221
    return-object p0
.end method

.method public setCenterText1Typeface(Landroid/graphics/Typeface;)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "text1Typeface"

    .prologue
    .line 229
    iput-object p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText1Typeface:Landroid/graphics/Typeface;

    .line 230
    return-object p0
.end method

.method public setCenterText2(Ljava/lang/String;)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "centerText2"

    .prologue
    .line 250
    iput-object p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2:Ljava/lang/String;

    .line 251
    return-object p0
.end method

.method public setCenterText2Color(I)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "centerText2Color"

    .prologue
    .line 259
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Color:I

    .line 260
    return-object p0
.end method

.method public setCenterText2FontSize(I)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "centerText2FontSize"

    .prologue
    .line 268
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2FontSize:I

    .line 269
    return-object p0
.end method

.method public setCenterText2Typeface(Landroid/graphics/Typeface;)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "text2Typeface"

    .prologue
    .line 277
    iput-object p1, p0, Llecho/lib/hellocharts/model/PieChartData;->centerText2Typeface:Landroid/graphics/Typeface;

    .line 278
    return-object p0
.end method

.method public setFormatter(Llecho/lib/hellocharts/formatter/PieChartValueFormatter;)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "formatter"

    .prologue
    .line 295
    if-eqz p1, :cond_0

    .line 296
    iput-object p1, p0, Llecho/lib/hellocharts/model/PieChartData;->formatter:Llecho/lib/hellocharts/formatter/PieChartValueFormatter;

    .line 298
    :cond_0
    return-object p0
.end method

.method public setHasCenterCircle(Z)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "hasCenterCircle"

    .prologue
    .line 184
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasCenterCircle:Z

    .line 185
    return-object p0
.end method

.method public setHasLabels(Z)Llecho/lib/hellocharts/model/PieChartData;
    .locals 1
    .parameter "hasLabels"

    .prologue
    .line 139
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    .line 140
    if-eqz p1, :cond_0

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    .line 143
    :cond_0
    return-object p0
.end method

.method public setHasLabelsOnlyForSelected(Z)Llecho/lib/hellocharts/model/PieChartData;
    .locals 1
    .parameter "hasLabelsOnlyForSelected"

    .prologue
    .line 158
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOnlyForSelected:Z

    .line 159
    if-eqz p1, :cond_0

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabels:Z

    .line 162
    :cond_0
    return-object p0
.end method

.method public setHasLabelsOutside(Z)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "hasLabelsOutside"

    .prologue
    .line 175
    iput-boolean p1, p0, Llecho/lib/hellocharts/model/PieChartData;->hasLabelsOutside:Z

    .line 176
    return-object p0
.end method

.method public setSlicesSpacing(I)Llecho/lib/hellocharts/model/PieChartData;
    .locals 0
    .parameter "sliceSpacing"

    .prologue
    .line 286
    iput p1, p0, Llecho/lib/hellocharts/model/PieChartData;->slicesSpacing:I

    .line 287
    return-object p0
.end method

.method public setValues(Ljava/util/List;)Llecho/lib/hellocharts/model/PieChartData;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Llecho/lib/hellocharts/model/SliceValue;",
            ">;)",
            "Llecho/lib/hellocharts/model/PieChartData;"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, values:Ljava/util/List;,"Ljava/util/List<Llecho/lib/hellocharts/model/SliceValue;>;"
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    .line 131
    :goto_0
    return-object p0

    .line 129
    :cond_0
    iput-object p1, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    goto :goto_0
.end method

.method public update(F)V
    .locals 3
    .parameter "scale"

    .prologue
    .line 93
    iget-object v2, p0, Llecho/lib/hellocharts/model/PieChartData;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llecho/lib/hellocharts/model/SliceValue;

    .line 94
    .local v1, value:Llecho/lib/hellocharts/model/SliceValue;
    invoke-virtual {v1, p1}, Llecho/lib/hellocharts/model/SliceValue;->update(F)V

    goto :goto_0

    .line 96
    .end local v1           #value:Llecho/lib/hellocharts/model/SliceValue;
    :cond_0
    return-void
.end method
