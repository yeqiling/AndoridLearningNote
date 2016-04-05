.class public Lcom/boohee/user/view/UserTargetDateView;
.super Landroid/widget/FrameLayout;
.source "UserTargetDateView.java"


# instance fields
.field ctx:Landroid/content/Context;

.field private user:Lcom/boohee/model/User;

.field wheelView:Lcom/boohee/myview/DatePickerWheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetDateView;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetDateView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetDateView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/boohee/model/User;)V
    .locals 0
    .parameter "context"
    .parameter "user"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p2, p0, Lcom/boohee/user/view/UserTargetDateView;->user:Lcom/boohee/model/User;

    .line 29
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetDateView;->init()V

    .line 30
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/boohee/user/view/UserTargetDateView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/user/view/UserTargetDateView;->ctx:Landroid/content/Context;

    .line 44
    iget-object v1, p0, Lcom/boohee/user/view/UserTargetDateView;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030213

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/boohee/user/view/UserTargetDateView;->addView(Landroid/view/View;)V

    .line 47
    invoke-direct {p0}, Lcom/boohee/user/view/UserTargetDateView;->setUserProperty()V

    .line 48
    invoke-virtual {p0}, Lcom/boohee/user/view/UserTargetDateView;->setBottomPicker()V

    .line 49
    return-void
.end method

.method private setUserProperty()V
    .locals 2

    .prologue
    .line 52
    const v1, 0x7f0e0658

    invoke-virtual {p0, v1}, Lcom/boohee/user/view/UserTargetDateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 53
    .local v0, text:Landroid/widget/TextView;
    const v1, 0x7f070529

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    return-void
.end method


# virtual methods
.method public getTargetDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/boohee/user/view/UserTargetDateView;->wheelView:Lcom/boohee/myview/DatePickerWheelView;

    invoke-virtual {v0}, Lcom/boohee/myview/DatePickerWheelView;->getDateString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBottomPicker()V
    .locals 4

    .prologue
    .line 57
    iget-object v1, p0, Lcom/boohee/user/view/UserTargetDateView;->user:Lcom/boohee/model/User;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/user/view/UserTargetDateView;->user:Lcom/boohee/model/User;

    iget-object v1, v1, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 58
    new-instance v1, Lcom/boohee/myview/DatePickerWheelView;

    iget-object v2, p0, Lcom/boohee/user/view/UserTargetDateView;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/user/view/UserTargetDateView;->user:Lcom/boohee/model/User;

    iget-object v3, v3, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    invoke-static {v3}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/myview/DatePickerWheelView;-><init>(Landroid/content/Context;Ljava/util/Date;)V

    iput-object v1, p0, Lcom/boohee/user/view/UserTargetDateView;->wheelView:Lcom/boohee/myview/DatePickerWheelView;

    .line 62
    :goto_0
    const v1, 0x7f0e04e1

    invoke-virtual {p0, v1}, Lcom/boohee/user/view/UserTargetDateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 63
    .local v0, picker_layout:Landroid/widget/LinearLayout;
    iget-object v1, p0, Lcom/boohee/user/view/UserTargetDateView;->wheelView:Lcom/boohee/myview/DatePickerWheelView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    return-void

    .line 60
    .end local v0           #picker_layout:Landroid/widget/LinearLayout;
    :cond_0
    new-instance v1, Lcom/boohee/myview/DatePickerWheelView;

    iget-object v2, p0, Lcom/boohee/user/view/UserTargetDateView;->ctx:Landroid/content/Context;

    invoke-static {}, Lcom/boohee/utils/DateHelper;->defaultTargetDate()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/myview/DatePickerWheelView;-><init>(Landroid/content/Context;Ljava/util/Date;)V

    iput-object v1, p0, Lcom/boohee/user/view/UserTargetDateView;->wheelView:Lcom/boohee/myview/DatePickerWheelView;

    goto :goto_0
.end method
