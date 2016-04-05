.class public Lcom/mechat/mechatlibrary/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static IMAGE_MAX_HEIGHT:I = 0x0

.field private static IMAGE_MAX_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 364
    const/16 v0, 0x1e0

    sput v0, Lcom/mechat/mechatlibrary/utils/Utils;->IMAGE_MAX_WIDTH:I

    .line 365
    const/16 v0, 0x3c0

    sput v0, Lcom/mechat/mechatlibrary/utils/Utils;->IMAGE_MAX_HEIGHT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareSdkVersion(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 306
    const-string v3, "Utils"

    const-string v4, "compareSdkVersion()"

    invoke-static {v3, v4}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 308
    .local v0, currentVersion:I
    new-instance v2, Lcom/mechat/mechatlibrary/utils/SpManager;

    invoke-direct {v2, p0}, Lcom/mechat/mechatlibrary/utils/SpManager;-><init>(Landroid/content/Context;)V

    .line 309
    .local v2, spManager:Lcom/mechat/mechatlibrary/utils/SpManager;
    new-instance v1, Lcom/mechat/loopj/android/http/RequestParams;

    invoke-direct {v1}, Lcom/mechat/loopj/android/http/RequestParams;-><init>()V

    .line 310
    .local v1, params:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v3, "unitid"

    invoke-virtual {v2}, Lcom/mechat/mechatlibrary/utils/SpManager;->getUnitid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/mechat/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v3, "https://android.meiqia.com/"

    const-string v4, "android.sdkversion.json"

    new-instance v5, Lcom/mechat/mechatlibrary/utils/Utils$1;

    invoke-direct {v5, v0}, Lcom/mechat/mechatlibrary/utils/Utils$1;-><init>(I)V

    invoke-static {v3, v4, v1, v5}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->get(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 329
    return-void
.end method

.method public static compressBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    const/high16 v14, 0x4480

    .line 120
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v13, v0

    .line 121
    .local v13, width:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v8, v0

    .line 122
    .local v8, height:F
    cmpl-float v0, v13, v8

    if-lez v0, :cond_1

    move v10, v13

    .line 123
    .local v10, max:F
    :goto_1
    div-float v11, v14, v10

    .line 124
    .local v11, minSize:F
    cmpl-float v0, v13, v14

    if-gtz v0, :cond_0

    cmpl-float v0, v8, v14

    if-lez v0, :cond_2

    .line 126
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 129
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 130
    float-to-int v3, v13

    float-to-int v4, v8

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 119
    goto :goto_0

    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v10           #max:F
    .end local v11           #minSize:F
    :cond_1
    move v10, v8

    .line 122
    goto :goto_1

    .line 136
    .restart local v10       #max:F
    .restart local v11       #minSize:F
    :cond_2
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 137
    .local v7, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 138
    const/16 v12, 0x32

    .line 139
    .local v12, options:I
    :goto_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    div-int/lit16 v0, v0, 0x400

    const/16 v1, 0x96

    if-gt v0, v1, :cond_3

    .line 144
    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v9, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 145
    .local v9, isBm:Ljava/io/ByteArrayInputStream;
    invoke-static {v9}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    .line 140
    .end local v9           #isBm:Ljava/io/ByteArrayInputStream;
    :cond_3
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 141
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, v12, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 142
    add-int/lit8 v12, v12, -0x1e

    goto :goto_2
.end method

.method public static compressImage(Landroid/graphics/Bitmap;)[B
    .locals 14
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    const/high16 v13, 0x4480

    .line 89
    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v12, v0

    .line 90
    .local v12, width:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v8, v0

    .line 91
    .local v8, height:F
    cmpl-float v0, v12, v8

    if-lez v0, :cond_1

    move v9, v12

    .line 92
    .local v9, max:F
    :goto_1
    div-float v10, v13, v9

    .line 93
    .local v10, minSize:F
    cmpl-float v0, v12, v13

    if-gtz v0, :cond_0

    cmpl-float v0, v8, v13

    if-lez v0, :cond_2

    .line 95
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 98
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 99
    float-to-int v3, v12

    float-to-int v4, v8

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 88
    goto :goto_0

    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v9           #max:F
    .end local v10           #minSize:F
    :cond_1
    move v9, v8

    .line 91
    goto :goto_1

    .line 105
    .restart local v9       #max:F
    .restart local v10       #minSize:F
    :cond_2
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 106
    .local v7, bos:Ljava/io/ByteArrayOutputStream;
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 107
    const/16 v11, 0x32

    .line 108
    .local v11, options:I
    :goto_2
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v0, v0

    div-int/lit16 v0, v0, 0x400

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_3

    .line 113
    const-string v0, "pic size = "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v2, v2

    div-int/lit16 v2, v2, 0x400

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 109
    :cond_3
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 110
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v0, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 111
    add-int/lit8 v11, v11, -0x1e

    goto :goto_2
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 13
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v12, -0x1

    .line 346
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 347
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 348
    .local v0, h:D
    if-ne p2, v12, :cond_1

    move v2, v6

    .line 349
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v12, :cond_2

    const/16 v3, 0x80

    .line 350
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 360
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 348
    .end local v3           #upperBound:I
    :cond_1
    mul-double v8, v4, v0

    int-to-double v10, p2

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    goto :goto_0

    .line 349
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v8, p1

    div-double v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    int-to-double v10, p1

    div-double v10, v0, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->floor(D)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    double-to-int v3, v8

    goto :goto_1

    .line 355
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v12, :cond_4

    if-ne p1, v12, :cond_4

    move v2, v6

    .line 356
    goto :goto_2

    .line 357
    :cond_4
    if-eq p1, v12, :cond_0

    move v2, v3

    .line 360
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 332
    invoke-static {p0, p1, p2}, Lcom/mechat/mechatlibrary/utils/Utils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 334
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_1

    .line 335
    const/4 v1, 0x1

    .line 336
    .local v1, roundedSize:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 342
    :goto_1
    return v1

    .line 337
    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v1           #roundedSize:I
    :cond_1
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .restart local v1       #roundedSize:I
    goto :goto_1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "oldPath"
    .parameter "newPath"

    .prologue
    .line 221
    const/4 v5, 0x1

    .line 223
    .local v5, isok:Z
    const/4 v1, 0x0

    .line 224
    .local v1, byteread:I
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v6, oldfile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 226
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 227
    .local v4, inStream:Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 228
    .local v3, fs:Ljava/io/FileOutputStream;
    const/16 v7, 0x400

    new-array v0, v7, [B

    .line 229
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v7, -0x1

    if-ne v1, v7, :cond_0

    .line 232
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 233
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 234
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 241
    .end local v0           #buffer:[B
    .end local v3           #fs:Ljava/io/FileOutputStream;
    .end local v4           #inStream:Ljava/io/InputStream;
    .end local v6           #oldfile:Ljava/io/File;
    :goto_1
    return v5

    .line 230
    .restart local v0       #buffer:[B
    .restart local v3       #fs:Ljava/io/FileOutputStream;
    .restart local v4       #inStream:Ljava/io/InputStream;
    .restart local v6       #oldfile:Ljava/io/File;
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v3, v0, v7, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    .end local v0           #buffer:[B
    .end local v3           #fs:Ljava/io/FileOutputStream;
    .end local v4           #inStream:Ljava/io/InputStream;
    .end local v6           #oldfile:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 239
    .local v2, e:Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_1

    .line 236
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v6       #oldfile:Ljava/io/File;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static decodeImageFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "localPath"

    .prologue
    .line 491
    const/4 v2, 0x0

    .line 493
    .local v2, imageFile:Ljava/io/File;
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .end local v2           #imageFile:Ljava/io/File;
    .local v3, imageFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .local v1, image:Landroid/graphics/Bitmap;
    :goto_0
    move-object v2, v3

    .line 505
    .end local v1           #image:Landroid/graphics/Bitmap;
    .end local v3           #imageFile:Ljava/io/File;
    .restart local v2       #imageFile:Ljava/io/File;
    :goto_1
    return-object v1

    .line 494
    :catch_0
    move-exception v0

    .line 495
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_1

    .line 500
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #imageFile:Ljava/io/File;
    .restart local v3       #imageFile:Ljava/io/File;
    :catch_1
    move-exception v4

    .line 501
    .local v4, oom:Ljava/lang/OutOfMemoryError;
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 502
    .local v5, option:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mechat/mechatlibrary/utils/Utils;->getImageScale(Ljava/lang/String;)I

    move-result v6

    iput v6, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 503
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1       #image:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getAPNType(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 397
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 398
    .local v0, connMgr:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 399
    .local v2, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 400
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    .line 401
    .local v1, nType:I
    if-nez v1, :cond_0

    .line 402
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-static {v3}, Lcom/mechat/mechatlibrary/utils/NetTypeUtils;->getNetworkClass(I)Ljava/lang/String;

    move-result-object v3

    .line 409
    .end local v1           #nType:I
    :goto_0
    return-object v3

    .line 403
    .restart local v1       #nType:I
    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 404
    const-string v3, "WIFI"

    goto :goto_0

    .line 406
    :cond_1
    const-string v3, "unkonwn"

    goto :goto_0

    .line 409
    .end local v1           #nType:I
    :cond_2
    const-string v3, ""

    goto :goto_0
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .parameter "context"

    .prologue
    .line 293
    const/4 v3, 0x0

    .line 294
    .local v3, packageManager:Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 296
    .local v0, applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 297
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 301
    :goto_0
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    .local v1, applicationName:Ljava/lang/String;
    return-object v1

    .line 298
    .end local v1           #applicationName:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 299
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getDeviceInfos(Landroid/content/Context;)Ljava/util/Map;
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 414
    .local v0, deviceInfo:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "deviceBrand"

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v1, "deviceModel"

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    const-string v1, "os"

    const-string v2, "Android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v1, "osVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    const-string v1, "resolution"

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/Utils;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v1, "networkEnvironment"

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/Utils;->getAPNType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v2, "deviceToken"

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    const-string v1, "appVersion"

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    const-string v1, "SDKVersion"

    invoke-static {}, Lcom/mechat/mechatlibrary/MCClient;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v1, "osLanguage"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v1, "osTimezone"

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    return-object v0
.end method

.method public static getFileBytes(Ljava/lang/String;)[B
    .locals 8
    .parameter "filePath"

    .prologue
    .line 512
    const/4 v2, 0x0

    .line 514
    .local v2, buffer:[B
    :try_start_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    .local v4, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 516
    .local v5, fis:Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v7, 0x3e8

    invoke-direct {v1, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 517
    .local v1, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v7, 0x3e8

    new-array v0, v7, [B

    .line 519
    .local v0, b:[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    .local v6, n:I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    .line 522
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 523
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 524
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 530
    .end local v0           #b:[B
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #n:I
    :goto_1
    return-object v2

    .line 520
    .restart local v0       #b:[B
    .restart local v1       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v4       #file:Ljava/io/File;
    .restart local v5       #fis:Ljava/io/FileInputStream;
    .restart local v6       #n:I
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v1, v0, v7, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 525
    .end local v0           #b:[B
    .end local v1           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #fis:Ljava/io/FileInputStream;
    .end local v6           #n:I
    :catch_0
    move-exception v3

    .line 526
    .local v3, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 527
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 528
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public static getImageScale(Ljava/lang/String;)I
    .locals 4
    .parameter "imagePath"

    .prologue
    .line 374
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 379
    .local v0, option:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 380
    invoke-static {p0, v0}, Lcom/newrelic/agent/android/instrumentation/BitmapFactoryInstrumentation;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 382
    const/4 v1, 0x1

    .line 383
    .local v1, scale:I
    :goto_0
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v2, v1

    sget v3, Lcom/mechat/mechatlibrary/utils/Utils;->IMAGE_MAX_WIDTH:I

    if-ge v2, v3, :cond_0

    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v2, v1

    sget v3, Lcom/mechat/mechatlibrary/utils/Utils;->IMAGE_MAX_HEIGHT:I

    if-ge v2, v3, :cond_0

    .line 386
    return v1

    .line 384
    :cond_0
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 284
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 285
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 286
    :catch_0
    move-exception v0

    .line 287
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 288
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPicStorePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"

    .prologue
    .line 175
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 176
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 179
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "/mq"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, imageStoreFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 183
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "context"

    .prologue
    .line 391
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 392
    .local v0, dm:Landroid/util/DisplayMetrics;
    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, resolution:Ljava/lang/String;
    return-object v1
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .parameter "context"

    .prologue
    .line 274
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 275
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :goto_0
    return-object v2

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 278
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getVoiceStoreFile(Landroid/content/Context;Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;)Ljava/io/File;
    .locals 3
    .parameter "ctx"
    .parameter "voiceMessage"

    .prologue
    .line 551
    invoke-virtual {p1}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getId()Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, voiceId:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {p0, v1}, Lcom/mechat/mechatlibrary/utils/Utils;->getVoiceStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 553
    .local v0, voiceFile:Ljava/io/File;
    return-object v0
.end method

.method public static getVoiceStorePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "ctx"
    .parameter "voiceId"

    .prologue
    .line 194
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 195
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 198
    :cond_0
    const/4 v2, 0x0

    .line 200
    .local v2, path:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/voice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    .local v1, imageStoreFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 204
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 208
    .end local v1           #imageStoreFile:Ljava/io/File;
    .end local v2           #path:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 205
    .restart local v2       #path:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static isNetWork(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 253
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 254
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return v3

    .line 258
    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v2

    .line 259
    .local v2, infos:[Landroid/net/NetworkInfo;
    if-eqz v2, :cond_0

    .line 260
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, v2

    if-ge v1, v4, :cond_0

    .line 262
    aget-object v4, v2, v1

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    .line 263
    const/4 v3, 0x1

    goto :goto_0

    .line 260
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static isVoiceFileAvailable(Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;)Z
    .locals 4
    .parameter "voiceMessage"

    .prologue
    .line 540
    const/4 v1, 0x0

    .line 542
    .local v1, isVoiceFileAvailable:Z
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Lcom/mechat/mechatlibrary/bean/MCVoiceMessage;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 543
    .local v2, voice:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 547
    .end local v2           #voice:Ljava/io/File;
    :goto_0
    return v1

    .line 544
    :catch_0
    move-exception v0

    .line 545
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static saveBitmap(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 7
    .parameter "ctx"
    .parameter "filePath"
    .parameter "mBitmap"

    .prologue
    .line 149
    new-instance v2, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/mechat/mechatlibrary/utils/Utils;->getPicStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 151
    .local v2, f:Ljava/io/File;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_0
    const/4 v3, 0x0

    .line 157
    .local v3, fOut:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .local v4, fOut:Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 161
    .end local v4           #fOut:Ljava/io/FileOutputStream;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    :goto_1
    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x5f

    invoke-virtual {p2, v5, v6, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 163
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 168
    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 172
    :goto_3
    return-void

    .line 152
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 153
    .local v1, e1:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 158
    .end local v1           #e1:Ljava/io/IOException;
    .restart local v3       #fOut:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    .line 159
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 164
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 165
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 169
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 170
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public static stringToMD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "string"

    .prologue
    const/4 v4, 0x0

    .line 61
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/security/MessageDigest;->digest([B)[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 70
    .local v2, hash:[B
    new-instance v3, Ljava/lang/StringBuilder;

    array-length v4, v2

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 71
    .local v3, hex:Ljava/lang/StringBuilder;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v2           #hash:[B
    .end local v3           #hex:Ljava/lang/StringBuilder;
    :goto_1
    return-object v4

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1

    .line 65
    .end local v1           #e:Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 66
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 71
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    .restart local v2       #hash:[B
    .restart local v3       #hex:Ljava/lang/StringBuilder;
    :cond_0
    aget-byte v0, v2, v4

    .line 72
    .local v0, b:B
    and-int/lit16 v6, v0, 0xff

    const/16 v7, 0x10

    if-ge v6, v7, :cond_1

    .line 73
    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    and-int/lit16 v6, v0, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static visitUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;Lcom/mechat/mechatlibrary/utils/SpManager;)V
    .locals 10
    .parameter "context"
    .parameter "cookie"
    .parameter "unitid"
    .parameter "onInitCallback"
    .parameter "spManager"

    .prologue
    .line 429
    const-string v0, "Utils"

    const-string v1, "start  visit"

    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    if-eqz p2, :cond_1

    .line 431
    new-instance v7, Lcom/mechat/loopj/android/http/RequestParams;

    invoke-direct {v7}, Lcom/mechat/loopj/android/http/RequestParams;-><init>()V

    .line 432
    .local v7, params:Lcom/mechat/loopj/android/http/RequestParams;
    const-string v0, "unitid"

    invoke-virtual {v7, v0, p2}, Lcom/mechat/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v0, "cookie"

    invoke-virtual {v7, v0, p1}, Lcom/mechat/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    invoke-virtual {p4}, Lcom/mechat/mechatlibrary/utils/SpManager;->getVisitIp()Ljava/lang/String;

    move-result-object v6

    .line 435
    .local v6, ip:Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 436
    const-string v0, "ip"

    invoke-virtual {v7, v0, v6}, Lcom/mechat/loopj/android/http/RequestParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    :cond_0
    const-string v8, "https://stat.meiqia.com/sdk/"

    const-string v9, "visit"

    new-instance v0, Lcom/mechat/mechatlibrary/utils/Utils$2;

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/mechat/mechatlibrary/utils/Utils$2;-><init>(Lcom/mechat/mechatlibrary/utils/SpManager;Ljava/lang/String;Ljava/lang/String;Lcom/mechat/mechatlibrary/callback/OnInitCallback;Landroid/content/Context;)V

    invoke-static {v8, v9, v7, v0}, Lcom/mechat/mechatlibrary/utils/HttpUtils;->get(Ljava/lang/String;Ljava/lang/String;Lcom/mechat/loopj/android/http/RequestParams;Lcom/mechat/loopj/android/http/AsyncHttpResponseHandler;)V

    .line 488
    .end local v6           #ip:Ljava/lang/String;
    .end local v7           #params:Lcom/mechat/loopj/android/http/RequestParams;
    :cond_1
    return-void
.end method
