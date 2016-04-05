.class public Lcom/boohee/user/view/UserMcGoView;
.super Landroid/widget/FrameLayout;
.source "UserMcGoView.java"


# instance fields
.field private ctx:Landroid/content/Context;

.field private hint:Landroid/widget/TextView;

.field private picker_layout:Landroid/widget/LinearLayout;

.field private wheelView:Lcom/boohee/myview/DatePickerWheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcGoView;->init()V

    .line 47
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
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcGoView;->init()V

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
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcGoView;->init()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/user/view/UserMcGoView;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/boohee/user/view/UserMcGoView;->setBottomVisible(Ljava/lang/Boolean;)V

    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/boohee/user/view/UserMcGoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/user/view/UserMcGoView;->ctx:Landroid/content/Context;

    .line 51
    iget-object v1, p0, Lcom/boohee/user/view/UserMcGoView;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030214

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 52
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/boohee/user/view/UserMcGoView;->addView(Landroid/view/View;)V

    .line 53
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcGoView;->setUserProperty()V

    .line 54
    return-void
.end method

.method private setBottomVisible(Ljava/lang/Boolean;)V
    .locals 3
    .parameter "displayBottom"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/boohee/user/view/UserMcGoView;->picker_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 83
    iget-object v0, p0, Lcom/boohee/user/view/UserMcGoView;->hint:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    invoke-virtual {p0}, Lcom/boohee/user/view/UserMcGoView;->setBottomPicker()V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/boohee/user/view/UserMcGoView;->picker_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/boohee/user/view/UserMcGoView;->hint:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUserProperty()V
    .locals 3

    .prologue
    .line 57
    const v2, 0x7f0e04e1

    invoke-virtual {p0, v2}, Lcom/boohee/user/view/UserMcGoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/boohee/user/view/UserMcGoView;->picker_layout:Landroid/widget/LinearLayout;

    .line 58
    const v2, 0x7f0e0658

    invoke-virtual {p0, v2}, Lcom/boohee/user/view/UserMcGoView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 59
    .local v1, text:Landroid/widget/TextView;
    const v2, 0x7f0e0664

    invoke-virtual {p0, v2}, Lcom/boohee/user/view/UserMcGoView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/boohee/user/view/UserMcGoView;->hint:Landroid/widget/TextView;

    .line 60
    const v2, 0x7f0702b5

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 61
    const v2, 0x7f0e0663

    invoke-virtual {p0, v2}, Lcom/boohee/user/view/UserMcGoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 62
    .local v0, radioGroup:Landroid/widget/RadioGroup;
    new-instance v2, Lcom/boohee/user/view/UserMcGoView$1;

    invoke-direct {v2, p0}, Lcom/boohee/user/view/UserMcGoView$1;-><init>(Lcom/boohee/user/view/UserMcGoView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 78
    return-void
.end method


# virtual methods
.method public getLastGo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/boohee/user/view/UserMcGoView;->wheelView:Lcom/boohee/myview/DatePickerWheelView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/boohee/user/view/UserMcGoView;->wheelView:Lcom/boohee/myview/DatePickerWheelView;

    invoke-virtual {v0}, Lcom/boohee/myview/DatePickerWheelView;->getDateString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public setBottomPicker()V
    .locals 7

    .prologue
    .line 92
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 93
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 94
    .local v0, curDate:Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, curTime:Ljava/lang/String;
    new-instance v3, Lcom/boohee/myview/DatePickerWheelView;

    iget-object v4, p0, Lcom/boohee/user/view/UserMcGoView;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    sget v6, Lcom/boohee/one/mine/McInitActivity;->defaultMcCome:I

    invoke-direct {v3, v4, v5, v6}, Lcom/boohee/myview/DatePickerWheelView;-><init>(Landroid/content/Context;Ljava/util/Date;I)V

    iput-object v3, p0, Lcom/boohee/user/view/UserMcGoView;->wheelView:Lcom/boohee/myview/DatePickerWheelView;

    .line 97
    iget-object v3, p0, Lcom/boohee/user/view/UserMcGoView;->picker_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 98
    iget-object v3, p0, Lcom/boohee/user/view/UserMcGoView;->picker_layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/boohee/user/view/UserMcGoView;->wheelView:Lcom/boohee/myview/DatePickerWheelView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 99
    return-void
.end method
