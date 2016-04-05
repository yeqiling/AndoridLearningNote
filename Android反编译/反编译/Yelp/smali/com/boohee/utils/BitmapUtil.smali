.class public Lcom/boohee/utils/BitmapUtil;
.super Ljava/lang/Object;
.source "BitmapUtil.java"


# static fields
.field public static final MAX_HEIGHT:I = 0x640

.field public static final MAX_WIDTH:I = 0x320

.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/boohee/utils/BitmapUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/utils/BitmapUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method private static calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 8
    .parameter "options"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 92
    iget v2, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 93
    .local v2, height:I
    iget v4, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 94
    .local v4, width:I
    const/4 v3, 0x1

    .line 96
    .local v3, inSampleSize:I
    if-gt v2, p2, :cond_0

    if-le v4, p1, :cond_2

    .line 97
    :cond_0
    div-int/lit8 v0, v2, 0x2

    .line 98
    .local v0, halfHeight:I
    div-int/lit8 v1, v4, 0x2

    .line 99
    .local v1, halfWidth:I
    const/4 v3, 0x2

    .line 104
    :goto_0
    div-int v5, v0, v3

    if-gt v5, p2, :cond_1

    div-int v5, v1, v3

    if-le v5, p1, :cond_2

    .line 105
    :cond_1
    mul-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 109
    .end local v0           #halfHeight:I
    .end local v1           #halfWidth:I
    :cond_2
    const-string v5, "Bitmap Util:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v3
.end method

.method public static convertViewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 312
    invoke-virtual {p0}, Landroid/view/View;->willNotCacheDrawing()Z

    move-result v3

    .line 313
    .local v3, willNotCache:Z
    invoke-virtual {p0, v4}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 316
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCacheBackgroundColor()I

    move-result v2

    .line 317
    .local v2, color:I
    invoke-virtual {p0, v4}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    .line 318
    if-eqz v2, :cond_0

    .line 319
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 321
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 322
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 323
    .local v1, cacheBitmap:Landroid/graphics/Bitmap;
    if-nez v1, :cond_1

    .line 324
    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    .line 326
    :cond_1
    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 328
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 329
    invoke-virtual {p0, v3}, Landroid/view/View;->setWillNotCacheDrawing(Z)V

    .line 330
    invoke-virtual {p0, v2}, Landroid/view/View;->setDrawingCacheBackgroundColor(I)V

    goto :goto_0
.end method

.method public static decodeSampledBitmapFromResource(Landroid/content/res/Resources;IF)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "res"
    .parameter "resId"
    .parameter "ratio"

    .prologue
    const/high16 v3, 0x3f80

    .line 114
    cmpl-float v4, p2, v3

    if-gtz v4, :cond_0

    const/4 v4, 0x0

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    :cond_0
    move p2, v3

    .line 115
    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v2, v3

    .line 116
    .local v2, reqWidth:I
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    mul-float/2addr v3, p2

    float-to-int v1, v3

    .line 118
    .local v1, reqHeight:I
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 119
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x1

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 120
    invoke-static {p0, p1, v0}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 121
    invoke-static {v0, v2, v1}, Lcom/boohee/utils/BitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v3

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 122
    const/4 v3, 0x0

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 123
    invoke-static {p0, p1, v0}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    return-object v3
.end method

.method public static doBlur(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "context"
    .parameter "bitmap"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x6

    invoke-static {p1, v0, v1}, Lcom/boohee/utils/BitmapUtil;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 271
    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/boohee/utils/Blur;->fastblur(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-static {p1, v0, v1}, Lcom/boohee/utils/BitmapUtil;->zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getBitmapByView(Landroid/widget/LinearLayout;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "linearLayout"

    .prologue
    .line 354
    const/4 v2, 0x0

    .line 355
    .local v2, h:I
    const/4 v0, 0x0

    .line 357
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 358
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 359
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v2, v4

    .line 357
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 363
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 365
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 366
    .local v1, canvas:Landroid/graphics/Canvas;
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 367
    return-object v0
.end method

.method public static getBitmapOptions(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 161
    .local v1, resolver:Landroid/content/ContentResolver;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 162
    .local v0, opt:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 164
    :try_start_0
    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :goto_0
    const/16 v2, 0x320

    const/16 v3, 0x640

    invoke-static {v0, v2, v3}, Lcom/boohee/utils/BitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 168
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 169
    return-object v0

    .line 165
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getBitmapWithUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .line 134
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 149
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :cond_1
    const/4 v0, 0x0

    .line 138
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 139
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 142
    .local v4, resolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    .line 144
    .local v2, inputStream:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    .line 145
    const/4 v5, 0x0

    invoke-static {p0, p1}, Lcom/boohee/utils/BitmapUtil;->getBitmapOptions(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getImageUri(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/net/Uri;
    .locals 5
    .parameter "inContext"
    .parameter "inImage"

    .prologue
    .line 173
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 174
    .local v0, bytes:Ljava/io/ByteArrayOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x46

    invoke-virtual {p1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "Title"

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method public static getResizedBitmapWithPath(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "ctx"
    .parameter "filePath"

    .prologue
    .line 53
    const/16 v0, 0x320

    const/16 v1, 0x640

    invoke-static {p0, p1, v0, v1}, Lcom/boohee/utils/BitmapUtil;->getResizedBitmapWithPath(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getResizedBitmapWithPath(Landroid/content/Context;Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "ctx"
    .parameter "filePath"
    .parameter "reqWidth"
    .parameter "reqHeight"

    .prologue
    .line 58
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 59
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 60
    invoke-static {p1, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 62
    invoke-static {v1, p2, p3}, Lcom/boohee/utils/BitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 63
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 65
    invoke-static {p1, v1}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 66
    .local v0, bmp:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static getResizedBitmapWithUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "ctx"
    .parameter "uri"

    .prologue
    .line 70
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 71
    .local v1, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 72
    invoke-static {p0, p1, v1}, Lcom/boohee/utils/MediaStoreUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 74
    const/16 v2, 0x320

    const/16 v3, 0x640

    invoke-static {v1, v2, v3}, Lcom/boohee/utils/BitmapUtil;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 75
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 77
    invoke-static {p0, p1, v1}, Lcom/boohee/utils/MediaStoreUtils;->getBitmapFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 78
    .local v0, bmp:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static loadBitmapFromView(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x2

    .line 335
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-gtz v2, :cond_0

    .line 336
    invoke-virtual {p0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 337
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 338
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 339
    .local v1, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {p0, v5, v5, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 340
    invoke-virtual {p0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 343
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #c:Landroid/graphics/Canvas;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newImageUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 188
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-object v3

    .line 190
    :cond_1
    invoke-static {p0, p1}, Lcom/boohee/utils/BitmapUtil;->getBitmapWithUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 191
    .local v0, bmp:Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    .line 193
    .local v2, fileName:Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 198
    invoke-static {v2, v0}, Lcom/boohee/utils/BitmapUtil;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 199
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 195
    :catch_0
    move-exception v1

    .line 196
    .local v1, e:Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "fileName"
    .parameter "bmp"

    .prologue
    .line 295
    const/4 v1, 0x0

    .line 297
    .local v1, out:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 298
    .end local v1           #out:Ljava/io/FileOutputStream;
    .local v2, out:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x46

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 303
    if-eqz v2, :cond_0

    .line 304
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 309
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    :cond_1
    :goto_0
    return-void

    .line 305
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 307
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 299
    :catch_1
    move-exception v0

    .line 300
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 303
    if-eqz v1, :cond_1

    .line 304
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 305
    :catch_2
    move-exception v3

    goto :goto_0

    .line 302
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 303
    :goto_2
    if-eqz v1, :cond_2

    .line 304
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    .line 306
    :cond_2
    :goto_3
    throw v3

    .line 305
    :catch_3
    move-exception v4

    goto :goto_3

    .line 302
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 299
    .end local v1           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v1       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static takeScreenShot(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "pActivity"
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 233
    const/4 v0, 0x0

    .line 234
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    .line 236
    .local v7, view:Landroid/view/View;
    const/4 v9, 0x1

    invoke-virtual {v7, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 238
    invoke-virtual {v7}, Landroid/view/View;->buildDrawingCache()V

    .line 240
    invoke-virtual {v7}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 243
    .local v2, frame:Landroid/graphics/Rect;
    invoke-virtual {v7, v2}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 244
    iget v5, v2, Landroid/graphics/Rect;->top:I

    .line 246
    .local v5, stautsHeight:I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 247
    .local v4, size:Landroid/graphics/Point;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 248
    .local v1, display:Landroid/view/Display;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xd

    if-ge v9, v10, :cond_0

    .line 249
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v10

    invoke-virtual {v4, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 254
    :goto_0
    iget v8, v4, Landroid/graphics/Point;->x:I

    .line 255
    .local v8, width:I
    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 258
    .local v3, height:I
    const/4 v9, 0x0

    sub-int v10, v3, v5

    invoke-static {v0, v9, v5, v8, v10}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 260
    .local v6, tempbitmap:Landroid/graphics/Bitmap;
    return-object v6

    .line 251
    .end local v3           #height:I
    .end local v6           #tempbitmap:Landroid/graphics/Bitmap;
    .end local v8           #width:I
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method public static viewToBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 5
    .parameter "v"

    .prologue
    .line 280
    if-nez p0, :cond_0

    .line 281
    const/4 v1, 0x0

    .line 288
    :goto_0
    return-object v1

    .line 284
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 285
    .local v1, screenshot:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 286
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 287
    invoke-virtual {p0, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private static zoomBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bitmap"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v1, 0x0

    .line 211
    const/4 v7, 0x0

    .line 212
    .local v7, newbmp:Landroid/graphics/Bitmap;
    if-eqz p0, :cond_0

    .line 213
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 214
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 215
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 216
    .local v5, matrix:Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 217
    .local v9, scaleWidht:F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 218
    .local v8, scaleHeight:F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 219
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 221
    .end local v3           #width:I
    .end local v4           #height:I
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v8           #scaleHeight:F
    .end local v9           #scaleWidht:F
    :cond_0
    return-object v7
.end method
