.class public Lcom/boohee/widgets/TurboLoadingFooter;
.super Ljava/lang/Object;
.source "TurboLoadingFooter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/widgets/TurboLoadingFooter$3;,
        Lcom/boohee/widgets/TurboLoadingFooter$State;
    }
.end annotation


# instance fields
.field private mAnimationDuration:J

.field protected mLoadingFooter:Landroid/view/View;

.field protected mLoadingText:Landroid/widget/TextView;

.field private mProgress:Landroid/widget/ProgressBar;

.field protected mState:Lcom/boohee/widgets/TurboLoadingFooter$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/boohee/widgets/TurboLoadingFooter$State;->Idle:Lcom/boohee/widgets/TurboLoadingFooter$State;

    iput-object v0, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mState:Lcom/boohee/widgets/TurboLoadingFooter$State;

    .line 36
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0301e5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingFooter:Landroid/view/View;

    .line 37
    iget-object v0, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingFooter:Landroid/view/View;

    new-instance v1, Lcom/boohee/widgets/TurboLoadingFooter$1;

    invoke-direct {v1, p0}, Lcom/boohee/widgets/TurboLoadingFooter$1;-><init>(Lcom/boohee/widgets/TurboLoadingFooter;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object v0, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingFooter:Landroid/view/View;

    const v1, 0x7f0e0555

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mProgress:Landroid/widget/ProgressBar;

    .line 44
    iget-object v0, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingFooter:Landroid/view/View;

    const v1, 0x7f0e059e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingText:Landroid/widget/TextView;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x10e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mAnimationDuration:J

    .line 47
    sget-object v0, Lcom/boohee/widgets/TurboLoadingFooter$State;->Idle:Lcom/boohee/widgets/TurboLoadingFooter$State;

    invoke-virtual {p0, v0}, Lcom/boohee/widgets/TurboLoadingFooter;->setState(Lcom/boohee/widgets/TurboLoadingFooter$State;)V

    .line 48
    return-void
.end method


# virtual methods
.method public getState()Lcom/boohee/widgets/TurboLoadingFooter$State;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mState:Lcom/boohee/widgets/TurboLoadingFooter$State;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingFooter:Landroid/view/View;

    return-object v0
.end method

.method public setLoadingText(Ljava/lang/String;)V
    .locals 1
    .parameter "loadingText"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    return-void
.end method

.method public setState(Lcom/boohee/widgets/TurboLoadingFooter$State;)V
    .locals 5
    .parameter "status"

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 73
    iget-object v1, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mState:Lcom/boohee/widgets/TurboLoadingFooter$State;

    if-ne v1, p1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 76
    :cond_0
    iput-object p1, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mState:Lcom/boohee/widgets/TurboLoadingFooter$State;

    .line 77
    iget-object v1, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingFooter:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 78
    sget-object v1, Lcom/boohee/widgets/TurboLoadingFooter$3;->$SwitchMap$com$boohee$widgets$TurboLoadingFooter$State:[I

    invoke-virtual {p1}, Lcom/boohee/widgets/TurboLoadingFooter$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 94
    iget-object v1, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingFooter:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 80
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v1, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v1, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 86
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    iget-wide v2, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mAnimationDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 87
    iget-object v1, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 88
    iget-object v1, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 91
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    :pswitch_2
    iget-object v1, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingFooter:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setState(Lcom/boohee/widgets/TurboLoadingFooter$State;J)V
    .locals 2
    .parameter "state"
    .parameter "delay"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/widgets/TurboLoadingFooter;->mLoadingFooter:Landroid/view/View;

    new-instance v1, Lcom/boohee/widgets/TurboLoadingFooter$2;

    invoke-direct {v1, p0, p1}, Lcom/boohee/widgets/TurboLoadingFooter$2;-><init>(Lcom/boohee/widgets/TurboLoadingFooter;Lcom/boohee/widgets/TurboLoadingFooter$State;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    return-void
.end method
