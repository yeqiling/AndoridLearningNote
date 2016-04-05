.class public Lcom/boohee/widgets/CircularImage;
.super Lcom/boohee/widgets/MaskedImage;
.source "CircularImage.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "paramContext"

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/boohee/widgets/MaskedImage;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "paramContext"
    .parameter "paramAttributeSet"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/boohee/widgets/MaskedImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "paramContext"
    .parameter "paramAttributeSet"
    .parameter "paramInt"

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/boohee/widgets/MaskedImage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method


# virtual methods
.method public createMask()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 24
    invoke-virtual {p0}, Lcom/boohee/widgets/CircularImage;->getWidth()I

    move-result v2

    .line 25
    .local v2, i:I
    invoke-virtual {p0}, Lcom/boohee/widgets/CircularImage;->getHeight()I

    move-result v3

    .line 26
    .local v3, j:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 27
    .local v6, localConfig:Landroid/graphics/Bitmap$Config;
    invoke-static {v2, v3, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 28
    .local v4, localBitmap:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 29
    .local v5, localCanvas:Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    const/4 v9, 0x1

    invoke-direct {v7, v9}, Landroid/graphics/Paint;-><init>(I)V

    .line 30
    .local v7, localPaint:Landroid/graphics/Paint;
    const/high16 v9, -0x100

    invoke-virtual {v7, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    invoke-virtual {p0}, Lcom/boohee/widgets/CircularImage;->getWidth()I

    move-result v9

    int-to-float v0, v9

    .line 32
    .local v0, f1:F
    invoke-virtual {p0}, Lcom/boohee/widgets/CircularImage;->getHeight()I

    move-result v9

    int-to-float v1, v9

    .line 33
    .local v1, f2:F
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v10, v10, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 34
    .local v8, localRectF:Landroid/graphics/RectF;
    invoke-virtual {v5, v8, v7}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 35
    return-object v4
.end method
