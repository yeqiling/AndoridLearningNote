.class public final Lcom/mechat/nostra13/universalimageloader/core/display/SimpleBitmapDisplayer;
.super Ljava/lang/Object;
.source "SimpleBitmapDisplayer.java"

# interfaces
.implements Lcom/mechat/nostra13/universalimageloader/core/display/BitmapDisplayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public display(Landroid/graphics/Bitmap;Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;Lcom/mechat/nostra13/universalimageloader/core/assist/LoadedFrom;)V
    .locals 0
    .parameter "bitmap"
    .parameter "imageAware"
    .parameter "loadedFrom"

    .prologue
    .line 32
    invoke-interface {p2, p1}, Lcom/mechat/nostra13/universalimageloader/core/imageaware/ImageAware;->setImageBitmap(Landroid/graphics/Bitmap;)Z

    .line 33
    return-void
.end method
