.class public Lcom/mechat/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;
.super Lcom/mechat/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;
.source "RoundedVignetteBitmapDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RoundedVignetteDrawable"
.end annotation


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 0
    .parameter "bitmap"
    .parameter "cornerRadius"
    .parameter "margin"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/mechat/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    .line 58
    return-void
.end method


# virtual methods
.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 11
    .parameter "bounds"

    .prologue
    const/4 v10, 0x3

    const/high16 v9, 0x3f80

    const v8, 0x3f333333

    .line 62
    invoke-super {p0, p1}, Lcom/mechat/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer$RoundedDrawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 63
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 64
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    iget-object v2, p0, Lcom/mechat/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    mul-float/2addr v2, v9

    div-float/2addr v2, v8

    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    const v4, 0x3fa66666

    mul-float/2addr v3, v4

    .line 65
    new-array v4, v10, [I

    const/4 v5, 0x2

    const/high16 v6, 0x7f00

    aput v6, v4, v5

    new-array v5, v10, [F

    fill-array-data v5, :array_0

    .line 66
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 63
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 68
    .local v0, vignette:Landroid/graphics/RadialGradient;
    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    .line 69
    .local v7, oval:Landroid/graphics/Matrix;
    invoke-virtual {v7, v9, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 70
    invoke-virtual {v0, v7}, Landroid/graphics/RadialGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 72
    iget-object v1, p0, Lcom/mechat/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;->paint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/ComposeShader;

    iget-object v3, p0, Lcom/mechat/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;->bitmapShader:Landroid/graphics/BitmapShader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v0, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 73
    return-void

    .line 65
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x33t 0x33t 0x33t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method
