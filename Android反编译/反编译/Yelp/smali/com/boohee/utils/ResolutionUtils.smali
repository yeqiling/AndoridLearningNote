.class public Lcom/boohee/utils/ResolutionUtils;
.super Ljava/lang/Object;
.source "ResolutionUtils.java"


# static fields
.field static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/boohee/utils/ResolutionUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/utils/ResolutionUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cutBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "bmp"
    .parameter "cut"
    .parameter "pos"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 101
    .local v3, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 103
    .local v8, height:I
    if-nez p2, :cond_0

    .line 104
    sub-int v4, v8, p1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object v0, p0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 109
    .local v7, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v7

    .line 107
    .end local v7           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    sub-int v4, v8, p1

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .restart local v7       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method public static getHeight(Landroid/content/Context;II)I
    .locals 2
    .parameter "context"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 27
    invoke-static {p0}, Lcom/boohee/utils/ResolutionUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 28
    .local v0, screenWidth:I
    invoke-static {p0, v0, p1, p2}, Lcom/boohee/utils/ResolutionUtils;->getHeight(Landroid/content/Context;III)I

    move-result v1

    return v1
.end method

.method public static getHeight(Landroid/content/Context;III)I
    .locals 2
    .parameter "context"
    .parameter "originWidth"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 33
    mul-int v1, p3, p1

    div-int v0, v1, p2

    .line 34
    .local v0, h:I
    return v0
.end method

.method public static getHeight(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "context"
    .parameter "height"
    .parameter "width"

    .prologue
    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 22
    .local v1, w:I
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 23
    .local v0, h:I
    invoke-static {p0, v1, v0}, Lcom/boohee/utils/ResolutionUtils;->getHeight(Landroid/content/Context;II)I

    move-result v2

    return v2
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method public static getStatusBarHeight(Landroid/app/Activity;)I
    .locals 3
    .parameter "activity"

    .prologue
    .line 90
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 91
    .local v0, frame:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 92
    iget v1, v0, Landroid/graphics/Rect;->top:I

    .line 93
    .local v1, statusBarHeight:I
    return v1
.end method

.method public static getViewBitmap(Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "v"

    .prologue
    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 80
    .local v1, view:Landroid/view/View;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 82
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method public static getWidthBasedHeight(III)I
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "baseHieght"

    .prologue
    .line 38
    div-int v0, p0, p1

    mul-int/2addr v0, p2

    return v0
.end method

.method public static zoomImage(Landroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;
    .locals 15
    .parameter "bgimage"
    .parameter "newWidth"
    .parameter "newHeight"

    .prologue
    .line 61
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v13, v2

    .line 62
    .local v13, width:F
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v10, v2

    .line 64
    .local v10, height:F
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 66
    .local v7, matrix:Landroid/graphics/Matrix;
    move-wide/from16 v0, p1

    double-to-float v2, v0

    div-float v12, v2, v13

    .line 67
    .local v12, scaleWidth:F
    move-wide/from16 v0, p3

    double-to-float v2, v0

    div-float v11, v2, v10

    .line 69
    .local v11, scaleHeight:F
    invoke-virtual {v7, v12, v11}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 70
    const/4 v3, 0x0

    const/4 v4, 0x0

    float-to-int v5, v13

    float-to-int v6, v10

    const/4 v8, 0x1

    move-object v2, p0

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 72
    .local v9, bitmap:Landroid/graphics/Bitmap;
    return-object v9
.end method
