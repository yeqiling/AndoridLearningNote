.class public final Lcom/mechat/nostra13/universalimageloader/utils/ImageSizeUtils;
.super Ljava/lang/Object;
.source "ImageSizeUtils.java"


# static fields
.field private static synthetic $SWITCH_TABLE$com$mechat$nostra13$universalimageloader$core$assist$ViewScaleType:[I = null

.field private static final DEFAULT_MAX_BITMAP_DIMENSION:I = 0x800

.field private static maxBitmapSize:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;


# direct methods
.method static synthetic $SWITCH_TABLE$com$mechat$nostra13$universalimageloader$core$assist$ViewScaleType()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/mechat/nostra13/universalimageloader/utils/ImageSizeUtils;->$SWITCH_TABLE$com$mechat$nostra13$universalimageloader$core$assist$ViewScaleType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;->values()[Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    :try_start_1
    sget-object v1, Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;

    invoke-virtual {v1}, Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    sput-object v0, Lcom/mechat/nostra13/universalimageloader/utils/ImageSizeUtils;->$SWITCH_TABLE$com$mechat$nostra13$universalimageloader$core$assist$ViewScaleType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 40
    const/4 v2, 0x1

    new-array v1, v2, [I

    .line 41
    .local v1, maxTextureSize:[I
    const/16 v2, 0xd33

    invoke-static {v2, v1, v3}, Landroid/opengl/GLES10;->glGetIntegerv(I[II)V

    .line 42
    aget v2, v1, v3

    const/16 v3, 0x800

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 43
    .local v0, maxBitmapDimension:I
    new-instance v2, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v2, v0, v0}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    sput-object v2, Lcom/mechat/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

    .line 44
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static computeImageSampleSize(Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;Z)I
    .locals 9
    .parameter "srcSize"
    .parameter "targetSize"
    .parameter "viewScaleType"
    .parameter "powerOf2Scale"

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v4

    .line 94
    .local v4, srcWidth:I
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    .line 95
    .local v3, srcHeight:I
    invoke-virtual {p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v6

    .line 96
    .local v6, targetWidth:I
    invoke-virtual {p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v5

    .line 98
    .local v5, targetHeight:I
    const/4 v2, 0x1

    .line 100
    .local v2, scale:I
    invoke-static {}, Lcom/mechat/nostra13/universalimageloader/utils/ImageSizeUtils;->$SWITCH_TABLE$com$mechat$nostra13$universalimageloader$core$assist$ViewScaleType()[I

    move-result-object v7

    invoke-virtual {p2}, Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 125
    :cond_0
    :goto_0
    const/4 v7, 0x1

    if-ge v2, v7, :cond_1

    .line 126
    const/4 v2, 0x1

    .line 128
    :cond_1
    invoke-static {v4, v3, v2, p3}, Lcom/mechat/nostra13/universalimageloader/utils/ImageSizeUtils;->considerMaxTextureSize(IIIZ)I

    move-result v2

    .line 130
    return v2

    .line 102
    :pswitch_0
    if-eqz p3, :cond_3

    .line 103
    div-int/lit8 v1, v4, 0x2

    .line 104
    .local v1, halfWidth:I
    div-int/lit8 v0, v3, 0x2

    .line 105
    .local v0, halfHeight:I
    :goto_1
    div-int v7, v1, v2

    if-gt v7, v6, :cond_2

    div-int v7, v0, v2

    if-le v7, v5, :cond_0

    .line 106
    :cond_2
    mul-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 109
    .end local v0           #halfHeight:I
    .end local v1           #halfWidth:I
    :cond_3
    div-int v7, v4, v6

    div-int v8, v3, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 111
    goto :goto_0

    .line 113
    :pswitch_1
    if-eqz p3, :cond_4

    .line 114
    div-int/lit8 v1, v4, 0x2

    .line 115
    .restart local v1       #halfWidth:I
    div-int/lit8 v0, v3, 0x2

    .line 116
    .restart local v0       #halfHeight:I
    :goto_2
    div-int v7, v1, v2

    if-le v7, v6, :cond_0

    div-int v7, v0, v2

    if-le v7, v5, :cond_0

    .line 117
    mul-int/lit8 v2, v2, 0x2

    goto :goto_2

    .line 120
    .end local v0           #halfHeight:I
    .end local v1           #halfWidth:I
    :cond_4
    div-int v7, v4, v6

    div-int v8, v3, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    .line 100
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static computeImageScale(Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;Z)F
    .locals 11
    .parameter "srcSize"
    .parameter "targetSize"
    .parameter "viewScaleType"
    .parameter "stretch"

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v5

    .line 192
    .local v5, srcWidth:I
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v4

    .line 193
    .local v4, srcHeight:I
    invoke-virtual {p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v7

    .line 194
    .local v7, targetWidth:I
    invoke-virtual {p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v6

    .line 196
    .local v6, targetHeight:I
    int-to-float v9, v5

    int-to-float v10, v7

    div-float v8, v9, v10

    .line 197
    .local v8, widthScale:F
    int-to-float v9, v4

    int-to-float v10, v6

    div-float v2, v9, v10

    .line 201
    .local v2, heightScale:F
    sget-object v9, Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;->FIT_INSIDE:Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v9, :cond_0

    cmpl-float v9, v8, v2

    if-gez v9, :cond_1

    :cond_0
    sget-object v9, Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;->CROP:Lcom/mechat/nostra13/universalimageloader/core/assist/ViewScaleType;

    if-ne p2, v9, :cond_5

    cmpg-float v9, v8, v2

    if-gez v9, :cond_5

    .line 202
    :cond_1
    move v1, v7

    .line 203
    .local v1, destWidth:I
    int-to-float v9, v4

    div-float/2addr v9, v8

    float-to-int v0, v9

    .line 209
    .local v0, destHeight:I
    :goto_0
    const/high16 v3, 0x3f80

    .line 210
    .local v3, scale:F
    if-nez p3, :cond_2

    if-ge v1, v5, :cond_2

    if-lt v0, v4, :cond_3

    :cond_2
    if-eqz p3, :cond_4

    if-eq v1, v5, :cond_4

    if-eq v0, v4, :cond_4

    .line 211
    :cond_3
    int-to-float v9, v1

    int-to-float v10, v5

    div-float v3, v9, v10

    .line 214
    :cond_4
    return v3

    .line 205
    .end local v0           #destHeight:I
    .end local v1           #destWidth:I
    .end local v3           #scale:F
    :cond_5
    int-to-float v9, v5

    div-float/2addr v9, v2

    float-to-int v1, v9

    .line 206
    .restart local v1       #destWidth:I
    move v0, v6

    .restart local v0       #destHeight:I
    goto :goto_0
.end method

.method public static computeMinImageSampleSize(Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;)I
    .locals 8
    .parameter "srcSize"

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v2

    .line 157
    .local v2, srcWidth:I
    invoke-virtual {p0}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v1

    .line 158
    .local v1, srcHeight:I
    sget-object v6, Lcom/mechat/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v6}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v4

    .line 159
    .local v4, targetWidth:I
    sget-object v6, Lcom/mechat/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v6}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v3

    .line 161
    .local v3, targetHeight:I
    int-to-float v6, v2

    int-to-float v7, v4

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v5, v6

    .line 162
    .local v5, widthScale:I
    int-to-float v6, v1

    int-to-float v7, v3

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v0, v6

    .line 164
    .local v0, heightScale:I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v6

    return v6
.end method

.method private static considerMaxTextureSize(IIIZ)I
    .locals 3
    .parameter "srcWidth"
    .parameter "srcHeight"
    .parameter "scale"
    .parameter "powerOf2"

    .prologue
    .line 134
    sget-object v2, Lcom/mechat/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v2}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    .line 135
    .local v1, maxWidth:I
    sget-object v2, Lcom/mechat/nostra13/universalimageloader/utils/ImageSizeUtils;->maxBitmapSize:Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-virtual {v2}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    .line 136
    .local v0, maxHeight:I
    :goto_0
    div-int v2, p0, p2

    if-gt v2, v1, :cond_0

    div-int v2, p1, p2

    if-gt v2, v0, :cond_0

    .line 143
    return p2

    .line 137
    :cond_0
    if-eqz p3, :cond_1

    .line 138
    mul-int/lit8 p2, p2, 0x2

    .line 139
    goto :goto_0

    .line 140
    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static defineTargetSizeForView(Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;)Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;
    .locals 3
    .parameter "imageAware"
    .parameter "maxImageSize"

    .prologue
    .line 55
    invoke-interface {p0}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->getWidth()I

    move-result v1

    .line 56
    .local v1, width:I
    if-gtz v1, :cond_0

    invoke-virtual {p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getWidth()I

    move-result v1

    .line 58
    :cond_0
    invoke-interface {p0}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->getHeight()I

    move-result v0

    .line 59
    .local v0, height:I
    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;->getHeight()I

    move-result v0

    .line 61
    :cond_1
    new-instance v2, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;

    invoke-direct {v2, v1, v0}, Lcom/mechat/nostra13/universalimageloader/core/assist/ImageSize;-><init>(II)V

    return-object v2
.end method
