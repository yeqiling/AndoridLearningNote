.class public Lcom/mechat/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer;
.super Lcom/mechat/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;
.source "RoundedVignetteBitmapDisplayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mechat/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;
    }
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "cornerRadiusPixels"
    .parameter "marginPixels"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lcom/mechat/nostra13/universalimageloader/core/display/RoundedBitmapDisplayer;-><init>(II)V

    .line 43
    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 3
    .parameter "bitmap"
    .parameter "imageAware"
    .parameter "loadedFrom"

    .prologue
    .line 47
    instance-of v0, p2, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageViewAware;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageAware should wrap ImageView. ImageViewAware is expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    new-instance v0, Lcom/mechat/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;

    iget v1, p0, Lcom/mechat/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer;->cornerRadius:I

    iget v2, p0, Lcom/mechat/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer;->margin:I

    invoke-direct {v0, p1, v1, v2}, Lcom/mechat/nostra13/universalimageloader/core/display/RoundedVignetteBitmapDisplayer$RoundedVignetteDrawable;-><init>(Landroid/graphics/Bitmap;II)V

    invoke-interface {p2, v0}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 52
    return-void
.end method
