.class Lcom/boohee/uchoice/GoodsDetailActivity$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GoodsDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/GoodsDetailActivity;->setTranslateAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field runnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/GoodsDetailActivity;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iput p2, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->val$total:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 423
    new-instance v0, Lcom/boohee/uchoice/GoodsDetailActivity$8$1;

    invoke-direct {v0, p0}, Lcom/boohee/uchoice/GoodsDetailActivity$8$1;-><init>(Lcom/boohee/uchoice/GoodsDetailActivity$8;)V

    iput-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 450
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->iv_shopping_cart:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->iv_shopping_cart:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 452
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->viewBuy:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 453
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #getter for: Lcom/boohee/uchoice/GoodsDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$1000(Lcom/boohee/uchoice/GoodsDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 454
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .parameter "animation"

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 458
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->iv_shopping_cart:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->iv_shopping_cart:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    .line 461
    iget v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->val$total:I

    if-lez v0, :cond_1

    .line 462
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->tvCartBadge:Landroid/widget/TextView;

    iget v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->val$total:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->tvCartBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    :goto_0
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->viewBuy:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->viewBuy:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->viewBuy:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #getter for: Lcom/boohee/uchoice/GoodsDetailActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v1}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$1100(Lcom/boohee/uchoice/GoodsDetailActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v1

    const v2, 0x7f040012

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 472
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    #getter for: Lcom/boohee/uchoice/GoodsDetailActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/boohee/uchoice/GoodsDetailActivity;->access$1000(Lcom/boohee/uchoice/GoodsDetailActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 474
    :cond_0
    return-void

    .line 465
    :cond_1
    iget-object v0, p0, Lcom/boohee/uchoice/GoodsDetailActivity$8;->this$0:Lcom/boohee/uchoice/GoodsDetailActivity;

    iget-object v0, v0, Lcom/boohee/uchoice/GoodsDetailActivity;->tvCartBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
