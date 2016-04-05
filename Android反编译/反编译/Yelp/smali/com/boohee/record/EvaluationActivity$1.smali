.class Lcom/boohee/record/EvaluationActivity$1;
.super Ljava/lang/Object;
.source "EvaluationActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/record/EvaluationActivity;->setBmi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/record/EvaluationActivity;


# direct methods
.method constructor <init>(Lcom/boohee/record/EvaluationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/boohee/record/EvaluationActivity$1;->this$0:Lcom/boohee/record/EvaluationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 134
    iget-object v0, p0, Lcom/boohee/record/EvaluationActivity$1;->this$0:Lcom/boohee/record/EvaluationActivity;

    #getter for: Lcom/boohee/record/EvaluationActivity;->lastUpdatedText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/record/EvaluationActivity;->access$000(Lcom/boohee/record/EvaluationActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 130
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 126
    return-void
.end method
