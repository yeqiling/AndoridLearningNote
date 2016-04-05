.class public Lcom/mechat/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.super Ljava/lang/Object;
.source "SimpleImageLoadingListener.java"

# interfaces
.implements Lcom/mechat/nostra13/universalimageloader/core/listener/ImageLoadingListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingCancelled(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "imageUri"
    .parameter "view"

    .prologue
    .line 50
    return-void
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "imageUri"
    .parameter "view"
    .parameter "loadedImage"

    .prologue
    .line 45
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/mechat/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 0
    .parameter "imageUri"
    .parameter "view"
    .parameter "failReason"

    .prologue
    .line 40
    return-void
.end method

.method public onLoadingStarted(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .parameter "imageUri"
    .parameter "view"

    .prologue
    .line 35
    return-void
.end method
