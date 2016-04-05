.class Lcom/boohee/uchoice/OrderEditActivity$8;
.super Ljava/lang/Object;
.source "OrderEditActivity.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/uchoice/OrderEditActivity;->setTranslateAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/uchoice/OrderEditActivity;

.field final synthetic val$isOpen:Z


# direct methods
.method constructor <init>(Lcom/boohee/uchoice/OrderEditActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/boohee/uchoice/OrderEditActivity$8;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    iput-boolean p2, p0, Lcom/boohee/uchoice/OrderEditActivity$8;->val$isOpen:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 441
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/boohee/uchoice/OrderEditActivity$8;->val$isOpen:Z

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$8;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->rl_order_postage:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$2900(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 436
    :goto_0
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/boohee/uchoice/OrderEditActivity$8;->this$0:Lcom/boohee/uchoice/OrderEditActivity;

    #getter for: Lcom/boohee/uchoice/OrderEditActivity;->rl_order_postage:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lcom/boohee/uchoice/OrderEditActivity;->access$2900(Lcom/boohee/uchoice/OrderEditActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 427
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 422
    return-void
.end method
