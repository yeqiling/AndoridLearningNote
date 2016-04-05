.class Lcom/mechat/photoview/PhotoViewAttacher$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhotoViewAttacher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mechat/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mechat/photoview/PhotoViewAttacher;


# direct methods
.method constructor <init>(Lcom/mechat/photoview/PhotoViewAttacher;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mechat/photoview/PhotoViewAttacher$1;->this$0:Lcom/mechat/photoview/PhotoViewAttacher;

    .line 169
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "e"

    .prologue
    .line 174
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher$1;->this$0:Lcom/mechat/photoview/PhotoViewAttacher;

    #getter for: Lcom/mechat/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->access$5(Lcom/mechat/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/mechat/photoview/PhotoViewAttacher$1;->this$0:Lcom/mechat/photoview/PhotoViewAttacher;

    #getter for: Lcom/mechat/photoview/PhotoViewAttacher;->mLongClickListener:Landroid/view/View$OnLongClickListener;
    invoke-static {v0}, Lcom/mechat/photoview/PhotoViewAttacher;->access$5(Lcom/mechat/photoview/PhotoViewAttacher;)Landroid/view/View$OnLongClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mechat/photoview/PhotoViewAttacher$1;->this$0:Lcom/mechat/photoview/PhotoViewAttacher;

    invoke-virtual {v1}, Lcom/mechat/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 177
    :cond_0
    return-void
.end method
