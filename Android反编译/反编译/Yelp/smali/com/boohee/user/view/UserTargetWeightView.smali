.class public Lcom/boohee/user/view/UserTargetWeightView;
.super Landroid/widget/FrameLayout;
.source "UserTargetWeightView.java"


# instance fields
.field ctx:Landroid/content/Context;

.field private user:Lcom/boohee/model/User;

.field wheelView:Lcom/boohee/myview/IntFloatWheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 21
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetWeightView;->init()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetWeightView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetWeightView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/boohee/model/User;)V
    .locals 0
    .parameter "context"
    .parameter "user"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    iput-object p2, p0, Lcom/boohee/user/view/UserTargetWeightView;->user:Lcom/boohee/model/User;

    .line 28
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetWeightView;->init()V

    .line 29
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/boohee/user/view/UserTargetWeightView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/user/view/UserTargetWeightView;->ctx:Landroid/content/Context;

    .line 43
    iget-object v1, p0, Lcom/boohee/user/view/UserTargetWeightView;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030213

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/boohee/user/view/UserTargetWeightView;->addView(Landroid/view/View;)V

    .line 46
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetWeightView;->setUserProperty()V

    .line 47
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetWeightView;->setBottomPicker()V

    .line 48
    return-void
.end method

.method private setBottomPicker()V
    .locals 4

    .prologue
    .line 56
    const v1, 0x7f0e04e1

    invoke-virtual {p0, v1}, Lcom/boohee/user/view/UserTargetWeightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 57
    .local v0, picker_layout:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/boohee/user/view/UserTargetWeightView;->user:Lcom/boohee/model/User;

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Lcom/boohee/myview/IntFloatWheelView;

    iget-object v2, p0, Lcom/boohee/user/view/UserTargetWeightView;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/user/view/UserTargetWeightView;->user:Lcom/boohee/model/User;

    iget v3, v3, Lcom/boohee/model/User;->target_weight:F

    invoke-direct {v1, v2, v3}, Lcom/boohee/myview/IntFloatWheelView;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/boohee/user/view/UserTargetWeightView;->wheelView:Lcom/boohee/myview/IntFloatWheelView;

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/boohee/user/view/UserTargetWeightView;->wheelView:Lcom/boohee/myview/IntFloatWheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    return-void

    .line 60
    :cond_0
    new-instance v1, Lcom/boohee/myview/IntFloatWheelView;

    iget-object v2, p0, Lcom/boohee/user/view/UserTargetWeightView;->ctx:Landroid/content/Context;

    const/high16 v3, 0x4240

    invoke-direct {v1, v2, v3}, Lcom/boohee/myview/IntFloatWheelView;-><init>(Landroid/content/Context;F)V

    iput-object v1, p0, Lcom/boohee/user/view/UserTargetWeightView;->wheelView:Lcom/boohee/myview/IntFloatWheelView;

    goto :goto_0
.end method

.method private setUserProperty()V
    .locals 4

    .prologue
    .line 51
    const v1, 0x7f0e0658

    invoke-virtual {p0, v1}, Lcom/boohee/user/view/UserTargetWeightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 52
    .local v0, text:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/user/view/UserTargetWeightView;->ctx:Landroid/content/Context;

    const v3, 0x7f07052a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(Kg)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method


# virtual methods
.method public getUserTargetWeight()F
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/user/view/UserTargetWeightView;->wheelView:Lcom/boohee/myview/IntFloatWheelView;

    invoke-virtual {v0}, Lcom/boohee/myview/IntFloatWheelView;->getCurrentFloat()F

    move-result v0

    return v0
.end method
