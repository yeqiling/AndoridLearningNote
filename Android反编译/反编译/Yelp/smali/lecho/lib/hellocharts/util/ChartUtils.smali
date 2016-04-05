.class public abstract Llecho/lib/hellocharts/util/ChartUtils;
.super Ljava/lang/Object;
.source "ChartUtils.java"


# static fields
.field public static final COLORS:[I = null

#the value of this static final field might be set in the static constructor
.field public static final COLOR_BACKGROUND:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final COLOR_BLUE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final COLOR_GREEN:I = 0x0

.field private static COLOR_INDEX:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final COLOR_ORANGE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final COLOR_RED:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final COLOR_VIOLET:I = 0x0

.field private static final DARKEN_INTENSITY:F = 0.9f

.field private static final DARKEN_SATURATION:F = 1.1f

.field public static final DEFAULT_AREA_COLOR:I

.field public static final DEFAULT_COLOR:I

.field public static final DEFAULT_DARKEN_COLOR:I

.field public static final DEFAULT_TARGET_COLOR:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 12
    const-string v0, "#00aef0"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_COLOR:I

    .line 13
    const-string v0, "#DDDDDD"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_DARKEN_COLOR:I

    .line 17
    const-string v0, "#1953d769"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_AREA_COLOR:I

    .line 21
    const-string v0, "#53d769"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->DEFAULT_TARGET_COLOR:I

    .line 22
    const-string v0, "#33B5E5"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_BLUE:I

    .line 23
    const-string v0, "#AA66CC"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_VIOLET:I

    .line 24
    const-string v0, "#99CC00"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_GREEN:I

    .line 25
    const-string v0, "#FFBB33"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_ORANGE:I

    .line 26
    const-string v0, "#FF4444"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_RED:I

    .line 27
    const-string v0, "#f4f4f4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_BACKGROUND:I

    .line 28
    const/4 v0, 0x5

    new-array v0, v0, [I

    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_BLUE:I

    aput v1, v0, v3

    const/4 v1, 0x1

    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_VIOLET:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_GREEN:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_ORANGE:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_RED:I

    aput v2, v0, v1

    sput-object v0, Llecho/lib/hellocharts/util/ChartUtils;->COLORS:[I

    .line 31
    sput v3, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_INDEX:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static darkenColor(I)I
    .locals 7
    .parameter "color"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 88
    const/4 v3, 0x3

    new-array v1, v3, [F

    .line 89
    .local v1, hsv:[F
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 90
    .local v0, alpha:I
    invoke-static {p0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 91
    aget v3, v1, v5

    const v4, 0x3f8ccccd

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f80

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    aput v3, v1, v5

    .line 92
    aget v3, v1, v6

    const v4, 0x3f666666

    mul-float/2addr v3, v4

    aput v3, v1, v6

    .line 93
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    .line 94
    .local v2, tempColor:I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    return v3
.end method

.method public static dp2px(FF)I
    .locals 2
    .parameter "density"
    .parameter "dp"

    .prologue
    .line 60
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x1

    .line 63
    :goto_0
    return v0

    :cond_0
    mul-float v0, p1, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static dp2px(FI)I
    .locals 2
    .parameter "density"
    .parameter "dp"

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    const/4 v0, 0x0

    .line 48
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static getBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 103
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static mm2px(Landroid/content/Context;I)I
    .locals 3
    .parameter "context"
    .parameter "mm"

    .prologue
    .line 83
    const/4 v0, 0x5

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static final nextColor()I
    .locals 3

    .prologue
    .line 38
    sget v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_INDEX:I

    sget-object v1, Llecho/lib/hellocharts/util/ChartUtils;->COLORS:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 39
    const/4 v0, 0x0

    sput v0, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_INDEX:I

    .line 41
    :cond_0
    sget-object v0, Llecho/lib/hellocharts/util/ChartUtils;->COLORS:[I

    sget v1, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_INDEX:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Llecho/lib/hellocharts/util/ChartUtils;->COLOR_INDEX:I

    aget v0, v0, v1

    return v0
.end method

.method public static final pickColor()I
    .locals 6

    .prologue
    .line 34
    sget-object v0, Llecho/lib/hellocharts/util/ChartUtils;->COLORS:[I

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    sget-object v1, Llecho/lib/hellocharts/util/ChartUtils;->COLORS:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v1, v2

    aget v0, v0, v1

    return v0
.end method

.method public static px2dp(FI)I
    .locals 2
    .parameter "density"
    .parameter "px"

    .prologue
    .line 68
    int-to-float v0, p1

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static px2sp(FI)I
    .locals 2
    .parameter "scaledDensity"
    .parameter "px"

    .prologue
    .line 79
    int-to-float v0, p1

    div-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static sp2px(FI)I
    .locals 2
    .parameter "scaledDensity"
    .parameter "sp"

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    const/4 v0, 0x0

    .line 75
    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method
