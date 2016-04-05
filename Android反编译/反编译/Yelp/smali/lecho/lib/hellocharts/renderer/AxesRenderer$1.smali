.class Llecho/lib/hellocharts/renderer/AxesRenderer$1;
.super Ljava/lang/Object;
.source "AxesRenderer.java"

# interfaces
.implements Lcom/squareup/picasso/Target;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llecho/lib/hellocharts/renderer/AxesRenderer;->drawThumbPhoto(Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Llecho/lib/hellocharts/renderer/AxesRenderer;

.field final synthetic val$canvas:Landroid/graphics/Canvas;

.field final synthetic val$paint:Landroid/graphics/Paint;

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(Llecho/lib/hellocharts/renderer/AxesRenderer;FLandroid/graphics/Canvas;FLandroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer$1;->this$0:Llecho/lib/hellocharts/renderer/AxesRenderer;

    iput p2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer$1;->val$y:F

    iput-object p3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer$1;->val$canvas:Landroid/graphics/Canvas;

    iput p4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer$1;->val$x:F

    iput-object p5, p0, Llecho/lib/hellocharts/renderer/AxesRenderer$1;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBitmapFailed(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "errorDrawable"

    .prologue
    .line 748
    return-void
.end method

.method public onBitmapLoaded(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 5
    .parameter "bitmap"
    .parameter "from"

    .prologue
    .line 738
    :try_start_0
    iget v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer$1;->val$y:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 743
    :goto_0
    return-void

    .line 739
    :cond_0
    iget-object v1, p0, Llecho/lib/hellocharts/renderer/AxesRenderer$1;->val$canvas:Landroid/graphics/Canvas;

    iget v2, p0, Llecho/lib/hellocharts/renderer/AxesRenderer$1;->val$x:F

    iget v3, p0, Llecho/lib/hellocharts/renderer/AxesRenderer$1;->val$y:F

    iget-object v4, p0, Llecho/lib/hellocharts/renderer/AxesRenderer$1;->val$paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 740
    :catch_0
    move-exception v0

    .line 741
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPrepareLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "placeHolderDrawable"

    .prologue
    .line 753
    return-void
.end method
