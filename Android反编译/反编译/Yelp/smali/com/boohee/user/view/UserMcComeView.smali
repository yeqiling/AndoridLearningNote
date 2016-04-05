.class public Lcom/boohee/user/view/UserMcComeView;
.super Landroid/widget/FrameLayout;
.source "UserMcComeView.java"


# instance fields
.field ctx:Landroid/content/Context;

.field wheelView:Lcom/boohee/myview/DatePickerWheelView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcComeView;->init()V

    .line 44
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
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcComeView;->init()V

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
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcComeView;->init()V

    .line 34
    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/boohee/user/view/UserMcComeView;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/user/view/UserMcComeView;->ctx:Landroid/content/Context;

    .line 48
    iget-object v1, p0, Lcom/boohee/user/view/UserMcComeView;->ctx:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030213

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 49
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/boohee/user/view/UserMcComeView;->addView(Landroid/view/View;)V

    .line 50
    invoke-direct {p0}, Lcom/boohee/user/view/UserMcComeView;->setUserProperty()V

    .line 51
    invoke-virtual {p0}, Lcom/boohee/user/view/UserMcComeView;->setBottomPicker()V

    .line 52
    return-void
.end method

.method private setUserProperty()V
    .locals 2

    .prologue
    .line 55
    const v1, 0x7f0e0658

    invoke-virtual {p0, v1}, Lcom/boohee/user/view/UserMcComeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 56
    .local v0, text:Landroid/widget/TextView;
    const v1, 0x7f070329

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    return-void
.end method


# virtual methods
.method public getLastCome()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/boohee/user/view/UserMcComeView;->wheelView:Lcom/boohee/myview/DatePickerWheelView;

    invoke-virtual {v0}, Lcom/boohee/myview/DatePickerWheelView;->getDateString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBottomPicker()V
    .locals 7

    .prologue
    .line 60
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 61
    .local v2, formatter:Ljava/text/SimpleDateFormat;
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 62
    .local v0, curDate:Ljava/util/Date;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, curTime:Ljava/lang/String;
    new-instance v4, Lcom/boohee/myview/DatePickerWheelView;

    iget-object v5, p0, Lcom/boohee/user/view/UserMcComeView;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/boohee/myview/DatePickerWheelView;-><init>(Landroid/content/Context;Ljava/util/Date;)V

    iput-object v4, p0, Lcom/boohee/user/view/UserMcComeView;->wheelView:Lcom/boohee/myview/DatePickerWheelView;

    .line 64
    iget-object v4, p0, Lcom/boohee/user/view/UserMcComeView;->wheelView:Lcom/boohee/myview/DatePickerWheelView;

    invoke-virtual {v4}, Lcom/boohee/myview/DatePickerWheelView;->getYear()I

    move-result v4

    sput v4, Lcom/boohee/one/mine/McInitActivity;->defaultMcCome:I

    .line 65
    iget-object v4, p0, Lcom/boohee/user/view/UserMcComeView;->wheelView:Lcom/boohee/myview/DatePickerWheelView;

    new-instance v5, Lcom/boohee/user/view/UserMcComeView$1;

    invoke-direct {v5, p0}, Lcom/boohee/user/view/UserMcComeView$1;-><init>(Lcom/boohee/user/view/UserMcComeView;)V

    invoke-virtual {v4, v5}, Lcom/boohee/myview/DatePickerWheelView;->setPickNumListener(Lcom/boohee/record/PickerScrollListener;)V

    .line 71
    const v4, 0x7f0e04e1

    invoke-virtual {p0, v4}, Lcom/boohee/user/view/UserMcComeView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 72
    .local v3, picker_layout:Landroid/widget/LinearLayout;
    iget-object v4, p0, Lcom/boohee/user/view/UserMcComeView;->wheelView:Lcom/boohee/myview/DatePickerWheelView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    return-void
.end method
