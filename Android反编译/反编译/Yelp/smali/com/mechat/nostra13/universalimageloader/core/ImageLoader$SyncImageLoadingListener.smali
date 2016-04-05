.class Lcom/mechat/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;
.super Lcom/mechat/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mechat/nostra13/universalimageloader/core/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SyncImageLoadingListener"
.end annotation


# instance fields
.field private loadedImage:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mechat/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;)V
    .locals 0
    .parameter

    .prologue
    .line 751
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadedBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 761
    iget-object v0, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;->loadedImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "imageUri"
    .parameter "view"
    .parameter "loadedImage"

    .prologue
    .line 757
    iput-object p3, p0, Lcom/mechat/nostra13/universalimageloader/core/ImageLoader$SyncImageLoadingListener;->loadedImage:Landroid/graphics/Bitmap;

    .line 758
    return-void
.end method
