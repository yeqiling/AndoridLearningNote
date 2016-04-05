.class Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3$1;
.super Ljava/lang/Object;
.source "ZoomImageActivity.java"

# interfaces
.implements Lcom/mechat/photoview/PhotoViewAttacher$OnViewTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;->onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;


# direct methods
.method constructor <init>(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3$1;->this$1:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewTap(Landroid/view/View;FF)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3$1;->this$1:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;

    #getter for: Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;->this$0:Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;
    invoke-static {v0}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;->access$0(Lcom/mechat/mechatlibrary/ui/ZoomImageActivity$3;)Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mechat/mechatlibrary/ui/ZoomImageActivity;->finish()V

    .line 91
    return-void
.end method
