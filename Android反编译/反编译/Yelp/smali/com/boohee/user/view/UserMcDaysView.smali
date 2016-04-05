.class public Lcom/boohee/user/view/UserMcDaysView;
.super Landroid/widget/FrameLayout;
.source "UserMcDaysView.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field ctx:Landroid/content/Context;

.field day:I

.field wheelView:Lcom/boohee/myview/IntWheelView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/boohee/user/view/UserMcDaysView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/user/view/UserMcDaysView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "day"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput p2, p0, Lcom/boohee/user/view/UserMcDaysView;->day:I

    .line 31
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcDaysView;->init()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcDaysView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcDaysView;->init()V

    .line 37
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/boohee/user/view/UserMcDaysView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/user/view/UserMcDaysView;->ctx:Landroid/content/Context;

    .line 46
    iget-object v1, p0, Lcom/boohee/user/view/UserMcDaysView;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030213

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/boohee/user/view/UserMcDaysView;->addView(Landroid/view/View;)V

    .line 48
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcDaysView;->setUserProperty()V

    .line 49
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcDaysView;->setBottomPicker()V

    .line 50
    return-void
.end method

.method private setBottomPicker()V
    .locals 6

    .prologue
    const/16 v5, 0x1e

    const/4 v4, 0x1

    .line 58
    const v1, 0x7f0e04e1

    invoke-virtual {p0, v1}, Lcom/boohee/user/view/UserMcDaysView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 59
    .local v0, picker_layout:Landroid/widget/LinearLayout;
    iget v1, p0, Lcom/boohee/user/view/UserMcDaysView;->day:I

    if-nez v1, :cond_0

    .line 60
    new-instance v1, Lcom/boohee/myview/IntWheelView;

    iget-object v2, p0, Lcom/boohee/user/view/UserMcDaysView;->ctx:Landroid/content/Context;

    const/4 v3, 0x5

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/boohee/myview/IntWheelView;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/boohee/user/view/UserMcDaysView;->wheelView:Lcom/boohee/myview/IntWheelView;

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/boohee/user/view/UserMcDaysView;->wheelView:Lcom/boohee/myview/IntWheelView;

    invoke-virtual {v1}, Lcom/boohee/myview/IntWheelView;->getCurrentNum()I

    move-result v1

    sput v1, Lcom/boohee/one/mine/McInitActivity;->defaultMcdays:I

    .line 64
    iget-object v1, p0, Lcom/boohee/user/view/UserMcDaysView;->wheelView:Lcom/boohee/myview/IntWheelView;

    new-instance v2, Lcom/boohee/user/view/UserMcDaysView$1;

    invoke-direct {v2, p0}, Lcom/boohee/user/view/UserMcDaysView$1;-><init>(Lcom/boohee/user/view/UserMcDaysView;)V

    invoke-virtual {v1, v2}, Lcom/boohee/myview/IntWheelView;->setPickNumListener(Lcom/boohee/record/PickerScrollListener;)V

    .line 70
    iget-object v1, p0, Lcom/boohee/user/view/UserMcDaysView;->wheelView:Lcom/boohee/myview/IntWheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 71
    return-void

    .line 62
    :cond_0
    new-instance v1, Lcom/boohee/myview/IntWheelView;

    iget-object v2, p0, Lcom/boohee/user/view/UserMcDaysView;->ctx:Landroid/content/Context;

    iget v3, p0, Lcom/boohee/user/view/UserMcDaysView;->day:I

    invoke-direct {v1, v2, v5, v4, v3}, Lcom/boohee/myview/IntWheelView;-><init>(Landroid/content/Context;III)V

    iput-object v1, p0, Lcom/boohee/user/view/UserMcDaysView;->wheelView:Lcom/boohee/myview/IntWheelView;

    goto :goto_0
.end method

.method private setUserProperty()V
    .locals 3

    .prologue
    .line 53
    const v1, 0x7f0e0658

    invoke-virtual {p0, v1}, Lcom/boohee/user/view/UserMcDaysView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 54
    .local v0, text:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/boohee/user/view/UserMcDaysView;->ctx:Landroid/content/Context;

    const v2, 0x7f070322

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method


# virtual methods
.method public getMcDays()I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/user/view/UserMcDaysView;->wheelView:Lcom/boohee/myview/IntWheelView;

    invoke-virtual {v0}, Lcom/boohee/myview/IntWheelView;->getCurrentNum()I

    move-result v0

    return v0
.end method
