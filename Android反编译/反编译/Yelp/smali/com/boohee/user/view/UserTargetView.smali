.class public Lcom/boohee/user/view/UserTargetView;
.super Landroid/widget/FrameLayout;
.source "UserTargetView.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field ctx:Landroid/content/Context;

.field private defaultWeight:F

.field private fromProfile:Z

.field handler:Landroid/os/Handler;

.field public targetWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/boohee/user/view/UserTargetView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/user/view/UserTargetView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/user/view/UserTargetView;->fromProfile:Z

    .line 44
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetView;->init()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/user/view/UserTargetView;->fromProfile:Z

    .line 49
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetView;->init()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .parameter "context"
    .parameter "fromProfile"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/user/view/UserTargetView;->fromProfile:Z

    .line 34
    iput-boolean p2, p0, Lcom/boohee/user/view/UserTargetView;->fromProfile:Z

    .line 35
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/boohee/account/UserProfileActivity;->user:Lcom/boohee/model/User;

    iget v0, v0, Lcom/boohee/model/User;->target_weight:F

    iput v0, p0, Lcom/boohee/user/view/UserTargetView;->defaultWeight:F

    .line 39
    :goto_0
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetView;->init()V

    .line 40
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/user/view/UserTargetView;->defaultWeight:F

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/boohee/user/view/UserTargetView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/boohee/user/view/UserTargetView;->fromProfile:Z

    return v0
.end method

.method static synthetic access$100(Lcom/boohee/user/view/UserTargetView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/boohee/user/view/UserTargetView;->defaultWeight:F

    return v0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 57
    invoke-virtual {p0}, Lcom/boohee/user/view/UserTargetView;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/user/view/UserTargetView;->ctx:Landroid/content/Context;

    .line 58
    iget v3, p0, Lcom/boohee/user/view/UserTargetView;->defaultWeight:F

    iput v3, p0, Lcom/boohee/user/view/UserTargetView;->targetWeight:F

    .line 59
    iget-object v3, p0, Lcom/boohee/user/view/UserTargetView;->ctx:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030217

    invoke-virtual {v3, v4, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    const v3, 0x7f0e0682

    invoke-virtual {p0, v3}, Lcom/boohee/user/view/UserTargetView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioGroup;

    .line 61
    .local v2, radioGroup:Landroid/widget/RadioGroup;
    const v3, 0x7f0e0683

    invoke-virtual {p0, v3}, Lcom/boohee/user/view/UserTargetView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 62
    .local v1, lose_weight:Landroid/widget/RadioButton;
    const v3, 0x7f0e0684

    invoke-virtual {p0, v3}, Lcom/boohee/user/view/UserTargetView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 63
    .local v0, keep_weight:Landroid/widget/RadioButton;
    new-instance v3, Lcom/boohee/user/view/UserTargetView$1;

    invoke-direct {v3, p0}, Lcom/boohee/user/view/UserTargetView$1;-><init>(Lcom/boohee/user/view/UserTargetView;)V

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 100
    iget v3, p0, Lcom/boohee/user/view/UserTargetView;->targetWeight:F

    const/high16 v4, -0x4080

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    .line 101
    invoke-virtual {v0, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 106
    :goto_0
    return-void

    .line 103
    :cond_0
    iget v3, p0, Lcom/boohee/user/view/UserTargetView;->defaultWeight:F

    iput v3, p0, Lcom/boohee/user/view/UserTargetView;->targetWeight:F

    .line 104
    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getUserTargetWeight()F
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/boohee/user/view/UserTargetView;->targetWeight:F

    return v0
.end method

.method public setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/boohee/user/view/UserTargetView;->handler:Landroid/os/Handler;

    .line 54
    return-void
.end method
