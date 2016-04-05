.class Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;
.super Lcom/prolificinteractive/materialcalendarview/AnimatorListener;
.source "TitleChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/prolificinteractive/materialcalendarview/TitleChanger;->doChange(JLcom/prolificinteractive/materialcalendarview/CalendarDay;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

.field final synthetic val$newTitle:Ljava/lang/CharSequence;

.field final synthetic val$yTranslation:I


# direct methods
.method constructor <init>(Lcom/prolificinteractive/materialcalendarview/TitleChanger;Ljava/lang/CharSequence;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    iput-object p2, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->val$newTitle:Ljava/lang/CharSequence;

    iput p3, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->val$yTranslation:I

    invoke-direct {p0}, Lcom/prolificinteractive/materialcalendarview/AnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animator"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    #getter for: Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$000(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 86
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    #getter for: Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$000(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 87
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animator"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    #getter for: Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$000(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->val$newTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    #getter for: Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$000(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->val$yTranslation:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 93
    iget-object v0, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    #getter for: Lcom/prolificinteractive/materialcalendarview/TitleChanger;->title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$000(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    #getter for: Lcom/prolificinteractive/materialcalendarview/TitleChanger;->animDuration:I
    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$200(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/prolificinteractive/materialcalendarview/TitleChanger$1;->this$0:Lcom/prolificinteractive/materialcalendarview/TitleChanger;

    #getter for: Lcom/prolificinteractive/materialcalendarview/TitleChanger;->interpolator:Landroid/view/animation/Interpolator;
    invoke-static {v1}, Lcom/prolificinteractive/materialcalendarview/TitleChanger;->access$100(Lcom/prolificinteractive/materialcalendarview/TitleChanger;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/prolificinteractive/materialcalendarview/AnimatorListener;

    invoke-direct {v1}, Lcom/prolificinteractive/materialcalendarview/AnimatorListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 100
    return-void
.end method
