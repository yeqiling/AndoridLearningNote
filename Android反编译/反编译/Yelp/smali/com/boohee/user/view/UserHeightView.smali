.class public Lcom/boohee/user/view/UserHeightView;
.super Landroid/widget/FrameLayout;
.source "UserHeightView.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field ctx:Landroid/content/Context;

.field private user:Lcom/boohee/model/User;

.field wheelView:Lcom/boohee/myview/IntWheelView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/boohee/user/view/UserHeightView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/user/view/UserHeightView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-direct {p0}, Lcom/boohee/user/view/UserHeightView;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    invoke-direct {p0}, Lcom/boohee/user/view/UserHeightView;->init()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    invoke-direct {p0}, Lcom/boohee/user/view/UserHeightView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/boohee/model/User;)V
    .locals 0
    .parameter "context"
    .parameter "user"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    iput-object p2, p0, Lcom/boohee/user/view/UserHeightView;->user:Lcom/boohee/model/User;

    .line 33
    invoke-direct {p0}, Lcom/boohee/user/view/UserHeightView;->init()V

    .line 34
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/boohee/user/view/UserHeightView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/user/view/UserHeightView;->ctx:Landroid/content/Context;

    .line 48
    iget-object v1, p0, Lcom/boohee/user/view/UserHeightView;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030213

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/boohee/user/view/UserHeightView;->addView(Landroid/view/View;)V

    .line 51
    invoke-direct {p0}, Lcom/boohee/user/view/UserHeightView;->setUserProperty()V

    .line 52
    invoke-direct {p0}, Lcom/boohee/user/view/UserHeightView;->setBottomPicker()V

    .line 53
    return-void
.end method

.method private setBottomPicker()V
    .locals 4

    .prologue
    .line 61
    const v1, 0x7f0e04e1

    invoke-virtual {p0, v1}, Lcom/boohee/user/view/UserHeightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 62
    .local v0, picker_layout:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/boohee/user/view/UserHeightView;->user:Lcom/boohee/model/User;

    if-eqz v1, :cond_0

    .line 63
    new-instance v1, Lcom/boohee/myview/IntWheelView;

    iget-object v2, p0, Lcom/boohee/user/view/UserHeightView;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/user/view/UserHeightView;->user:Lcom/boohee/model/User;

    iget v3, v3, Lcom/boohee/model/User;->height:F

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/myview/IntWheelView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/boohee/user/view/UserHeightView;->wheelView:Lcom/boohee/myview/IntWheelView;

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/boohee/user/view/UserHeightView;->wheelView:Lcom/boohee/myview/IntWheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    return-void

    .line 65
    :cond_0
    new-instance v1, Lcom/boohee/myview/IntWheelView;

    iget-object v2, p0, Lcom/boohee/user/view/UserHeightView;->ctx:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/boohee/myview/IntWheelView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/boohee/user/view/UserHeightView;->wheelView:Lcom/boohee/myview/IntWheelView;

    goto :goto_0
.end method

.method private setUserProperty()V
    .locals 4

    .prologue
    .line 56
    const v1, 0x7f0e0658

    invoke-virtual {p0, v1}, Lcom/boohee/user/view/UserHeightView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 57
    .local v0, text:Landroid/widget/TextView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/user/view/UserHeightView;->ctx:Landroid/content/Context;

    const v3, 0x7f070296

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(cm)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getUserHeight()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/user/view/UserHeightView;->wheelView:Lcom/boohee/myview/IntWheelView;

    invoke-virtual {v0}, Lcom/boohee/myview/IntWheelView;->getIntNum()I

    move-result v0

    return v0
.end method
