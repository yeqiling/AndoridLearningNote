.class public abstract Lcom/boohee/widgets/MaskedImage;
.super Landroid/widget/ImageView;
.source "MaskedImage.java"


# static fields
.field private static final MASK_XFERMODE:Landroid/graphics/Xfermode;


# instance fields
.field private mask:Landroid/graphics/Bitmap;

.field private paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    .line 24
    .local v0, localMode:Landroid/graphics/PorterDuff$Mode;
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    sput-object v1, Lcom/boohee/widgets/MaskedImage;->MASK_XFERMODE:Landroid/graphics/Xfermode;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "paramContext"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "paramContext"
    .parameter "paramAttributeSet"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "paramContext"
    .parameter "paramAttributeSet"
    .parameter "paramInt"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public abstract createMask()Landroid/graphics/Bitmap;
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21
    .parameter "paramCanvas"

    .prologue
    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/boohee/widgets/MaskedImage;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 43
    .local v14, localDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v14, :cond_0

    .line 75
    :goto_0
    return-void

    .line 46
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/widgets/MaskedImage;->paint:Landroid/graphics/Paint;

    if-nez v2, :cond_1

    .line 47
    new-instance v16, Landroid/graphics/Paint;

    invoke-direct/range {v16 .. v16}, Landroid/graphics/Paint;-><init>()V

    .line 48
    .local v16, localPaint1:Landroid/graphics/Paint;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/boohee/widgets/MaskedImage;->paint:Landroid/graphics/Paint;

    .line 49
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/widgets/MaskedImage;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/widgets/MaskedImage;->paint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 51
    .local v17, localPaint2:Landroid/graphics/Paint;
    sget-object v20, Lcom/boohee/widgets/MaskedImage;->MASK_XFERMODE:Landroid/graphics/Xfermode;

    .line 52
    .local v20, localXfermode1:Landroid/graphics/Xfermode;
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 54
    .end local v16           #localPaint1:Landroid/graphics/Paint;
    .end local v17           #localPaint2:Landroid/graphics/Paint;
    .end local v20           #localXfermode1:Landroid/graphics/Xfermode;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/boohee/widgets/MaskedImage;->getWidth()I

    move-result v2

    int-to-float v5, v2

    .line 55
    .local v5, f1:F
    invoke-virtual/range {p0 .. p0}, Lcom/boohee/widgets/MaskedImage;->getHeight()I

    move-result v2

    int-to-float v6, v2

    .line 56
    .local v6, f2:F
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1f

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v9

    .line 57
    .local v9, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/boohee/widgets/MaskedImage;->getWidth()I

    move-result v10

    .line 58
    .local v10, j:I
    invoke-virtual/range {p0 .. p0}, Lcom/boohee/widgets/MaskedImage;->getHeight()I

    move-result v11

    .line 59
    .local v11, k:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3, v10, v11}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 60
    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 61
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/widgets/MaskedImage;->mask:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/boohee/widgets/MaskedImage;->mask:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/boohee/widgets/MaskedImage;->createMask()Landroid/graphics/Bitmap;

    move-result-object v12

    .line 63
    .local v12, localBitmap1:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/boohee/widgets/MaskedImage;->mask:Landroid/graphics/Bitmap;

    .line 65
    .end local v12           #localBitmap1:Landroid/graphics/Bitmap;
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boohee/widgets/MaskedImage;->mask:Landroid/graphics/Bitmap;

    .line 66
    .local v13, localBitmap2:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/boohee/widgets/MaskedImage;->paint:Landroid/graphics/Paint;

    move-object/from16 v18, v0

    .line 67
    .local v18, localPaint3:Landroid/graphics/Paint;
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v13, v2, v3, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 68
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 70
    .end local v5           #f1:F
    .end local v6           #f2:F
    .end local v9           #i:I
    .end local v10           #j:I
    .end local v11           #k:I
    .end local v13           #localBitmap2:Landroid/graphics/Bitmap;
    .end local v18           #localPaint3:Landroid/graphics/Paint;
    :catch_0
    move-exception v15

    .line 71
    .local v15, localException:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to draw with recycled bitmap. View ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 73
    .local v19, localStringBuilder:Ljava/lang/StringBuilder;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "localStringBuilder=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
