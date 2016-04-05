.class public Lcom/boohee/widgets/CheckView;
.super Landroid/widget/RelativeLayout;
.source "CheckView.java"


# instance fields
.field btnPos:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e068c
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;

.field txtMsg:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0689
    .end annotation
.end field

.field txtTitle:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0688
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/boohee/widgets/CheckView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/boohee/widgets/CheckView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyleAttr"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-object p1, p0, Lcom/boohee/widgets/CheckView;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/boohee/widgets/CheckView;->init()V

    .line 63
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/boohee/widgets/CheckView;->mWindowManager:Landroid/view/WindowManager;

    .line 68
    invoke-virtual {p0}, Lcom/boohee/widgets/CheckView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030226

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 69
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method private postCheckIn()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/boohee/widgets/CheckView$1;

    iget-object v2, p0, Lcom/boohee/widgets/CheckView;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/boohee/widgets/CheckView$1;-><init>(Lcom/boohee/widgets/CheckView;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/StatusApi;->checkIn(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 132
    return-void
.end method


# virtual methods
.method public attachToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/boohee/widgets/CheckView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 76
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/boohee/widgets/CheckView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 77
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 82
    :goto_1
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 83
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x28

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 85
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 86
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 87
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 88
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 89
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 90
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/boohee/widgets/CheckView;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_1
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/boohee/widgets/CheckView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 106
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e068c
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 100
    :goto_0
    return-void

    .line 97
    :pswitch_0
    invoke-direct {p0}, Lcom/boohee/widgets/CheckView;->postCheckIn()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x7f0e068c
        :pswitch_0
    .end packed-switch
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 1
    .parameter "str"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->txtMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/boohee/widgets/CheckView;->txtMsg:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    :cond_0
    return-void
.end method
