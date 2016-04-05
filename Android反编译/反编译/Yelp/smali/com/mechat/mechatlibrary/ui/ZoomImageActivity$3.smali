.class Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;
.super Lcom/mechat/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "ZoomImageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    .line 81
    invoke-direct {p0}, Lcom/mechat/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;)Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    return-object v0
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "imageUri"
    .parameter "view"
    .parameter "loadedImage"

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/mechat/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V

    .line 85
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    new-instance v1, Lcom/mechat/photoview/PhotoViewAttacher;

    iget-object v2, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->picIv:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->access$0(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mechat/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    #setter for: Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;
    invoke-static {v0, v1}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->access$3(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;Lcom/mechat/photoview/PhotoViewAttacher;)V

    .line 86
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    #getter for: Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->mAttacher:Lcom/mechat/photoview/PhotoViewAttacher;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->access$4(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;)Lcom/mechat/photoview/PhotoViewAttacher;

    move-result-object v0

    new-instance v1, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3$1;

    invoke-direct {v1, p0}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3$1;-><init>(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;)V

    invoke-virtual {v0, v1}, Lcom/mechat/photoview/PhotoViewAttacher;->setOnViewTapListener(Lcom/mechat/photoview/PhotoViewAttacher$OnViewTapListener;)V

    .line 93
    return-void
.end method
