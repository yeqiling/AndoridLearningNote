.class public Lcom/boohee/widgets/RoundedCornersImage;
.super Lcom/boohee/widgets/MaskedImage;
.source "RoundedCornersImage.java"


# static fields
.field private static final DEFAULT_CORNER_RADIUS:I = 0x6


# instance fields
.field private cornerRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "paramContext"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/boohee/widgets/MaskedImage;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, 0x6

    iput v0, p0, Lcom/boohee/widgets/RoundedCornersImage;->cornerRadius:I

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "paramContext"
    .parameter "paramAttributeSet"

    .prologue
    const/4 v4, 0x6

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/boohee/widgets/MaskedImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    iput v4, p0, Lcom/boohee/widgets/RoundedCornersImage;->cornerRadius:I

    .line 26
    sget-object v1, Lcom/boohee/one/R$styleable;->RoundedCornersImage:[I

    .line 27
    .local v1, arrayOfInt:[I
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 29
    .local v2, i:I
    iput v2, p0, Lcom/boohee/widgets/RoundedCornersImage;->cornerRadius:I

    .line 30
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    return-void
.end method


# virtual methods
.method public createMask()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 34
    invoke-virtual {p0}, Lcom/boohee/widgets/RoundedCornersImage;->getWidth()I

    move-result v4

    .line 35
    .local v4, i:I
    invoke-virtual {p0}, Lcom/boohee/widgets/RoundedCornersImage;->getHeight()I

    move-result v5

    .line 36
    .local v5, j:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 37
    .local v8, localConfig:Landroid/graphics/Bitmap$Config;
    invoke-static {v4, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 38
    .local v6, localBitmap:Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 39
    .local v7, localCanvas:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    const/4 v11, 0x1

    invoke-direct {v9, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 40
    .local v9, localPaint:Landroid/graphics/Paint;
    const/high16 v11, -0x100

    invoke-virtual {v9, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    invoke-virtual {p0}, Lcom/boohee/widgets/RoundedCornersImage;->getWidth()I

    move-result v11

    int-to-float v0, v11

    .line 42
    .local v0, f1:F
    invoke-virtual {p0}, Lcom/boohee/widgets/RoundedCornersImage;->getHeight()I

    move-result v11

    int-to-float v1, v11

    .line 43
    .local v1, f2:F
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10, v12, v12, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 44
    .local v10, localRectF:Landroid/graphics/RectF;
    iget v11, p0, Lcom/boohee/widgets/RoundedCornersImage;->cornerRadius:I

    int-to-float v2, v11

    .line 45
    .local v2, f3:F
    iget v11, p0, Lcom/boohee/widgets/RoundedCornersImage;->cornerRadius:I

    int-to-float v3, v11

    .line 46
    .local v3, f4:F
    invoke-virtual {v7, v10, v2, v3, v9}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 47
    return-object v6
.end method
