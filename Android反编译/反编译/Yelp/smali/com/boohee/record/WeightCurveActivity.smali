.class public Lcom/boohee/record/WeightCurveActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "WeightCurveActivity.java"


# static fields
.field public static final KEY_RECORD_DATE:Ljava/lang/String; = "key_record_date"

.field public static final WEIGHTS_SEARCH:Ljava/lang/String; = "/api/v2/weights/search?date_begin=%s&date_end=%s&token=%s"


# instance fields
.field private addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

.field private chartHelper:Lcom/boohee/utils/ChartHelper;

.field lineChart:Llecho/lib/hellocharts/view/LineChartView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01ac
    .end annotation
.end field

.field ll_content:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0127
    .end annotation
.end field

.field private mBeginDate:Ljava/lang/String;

.field private mCurrentDate:Ljava/lang/String;

.field private mEndDate:Ljava/lang/String;

.field private mIsLandscape:Z

.field private mRightCount:I

.field private mViewportLeft:F

.field private mViewportRight:F

.field private mWeightRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/WeightRecord;",
            ">;"
        }
    .end annotation
.end field

.field rg_weight:Landroid/widget/RadioGroup;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e079c
    .end annotation
.end field

.field private targetWeight:F

.field txt_orientation:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0272
    .end annotation
.end field

.field private typeMode:I

.field private upperLimit:Ljava/util/Date;

.field private user:Lcom/boohee/model/User;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/record/WeightCurveActivity;->mRightCount:I

    .line 79
    iput v1, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F

    .line 80
    iput v1, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F

    .line 83
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/record/WeightCurveActivity;->typeMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/boohee/record/WeightCurveActivity;)Lcom/boohee/one/ui/fragment/AddWeightFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/boohee/record/WeightCurveActivity;Lcom/boohee/one/ui/fragment/AddWeightFragment;)Lcom/boohee/one/ui/fragment/AddWeightFragment;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/boohee/record/WeightCurveActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    return-object p1
.end method

.method static synthetic access$102(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/boohee/record/WeightCurveActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/boohee/record/WeightCurveActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/boohee/record/WeightCurveActivity;->mRightCount:I

    return p1
.end method

.method static synthetic access$1204(Lcom/boohee/record/WeightCurveActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/boohee/record/WeightCurveActivity;->mRightCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/record/WeightCurveActivity;->mRightCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/boohee/record/WeightCurveActivity;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->upperLimit:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/boohee/record/WeightCurveActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/record/WeightCurveActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/boohee/record/WeightCurveActivity;)Lcom/boohee/utils/ChartHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->chartHelper:Lcom/boohee/utils/ChartHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mEndDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/boohee/record/WeightCurveActivity;->mEndDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/record/WeightCurveActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F

    return v0
.end method

.method static synthetic access$302(Lcom/boohee/record/WeightCurveActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F

    return p1
.end method

.method static synthetic access$400(Lcom/boohee/record/WeightCurveActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F

    return v0
.end method

.method static synthetic access$402(Lcom/boohee/record/WeightCurveActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F

    return p1
.end method

.method static synthetic access$500(Lcom/boohee/record/WeightCurveActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mBeginDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/boohee/record/WeightCurveActivity;->mBeginDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/boohee/record/WeightCurveActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget v0, p0, Lcom/boohee/record/WeightCurveActivity;->typeMode:I

    return v0
.end method

.method static synthetic access$602(Lcom/boohee/record/WeightCurveActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    iput p1, p0, Lcom/boohee/record/WeightCurveActivity;->typeMode:I

    return p1
.end method

.method static synthetic access$700(Lcom/boohee/record/WeightCurveActivity;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Lcom/boohee/record/WeightCurveActivity;->getDateByMode(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/boohee/record/WeightCurveActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/boohee/record/WeightCurveActivity;->requestWeights()V

    return-void
.end method

.method static synthetic access$900(Lcom/boohee/record/WeightCurveActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/boohee/record/WeightCurveActivity;->mIsLandscape:Z

    return v0
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    new-instance v1, Lcom/boohee/record/WeightCurveActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/record/WeightCurveActivity$2;-><init>(Lcom/boohee/record/WeightCurveActivity;)V

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/LineChartView;->setOnValueTouchListener(Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;)V

    .line 243
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    new-instance v1, Lcom/boohee/record/WeightCurveActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/record/WeightCurveActivity$3;-><init>(Lcom/boohee/record/WeightCurveActivity;)V

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/LineChartView;->setViewportChangeListener(Llecho/lib/hellocharts/listener/ViewportChangeListener;)V

    .line 272
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->rg_weight:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/boohee/record/WeightCurveActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/record/WeightCurveActivity$4;-><init>(Lcom/boohee/record/WeightCurveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 297
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->txt_orientation:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/record/WeightCurveActivity$5;

    invoke-direct {v1, p0}, Lcom/boohee/record/WeightCurveActivity$5;-><init>(Lcom/boohee/record/WeightCurveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 303
    return-void
.end method

.method private getDateByMode(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4
    .parameter "endDate"
    .parameter "typeMode"
    .parameter "isFirst"

    .prologue
    const/4 v1, -0x1

    .line 144
    const-string v0, ""

    .line 145
    .local v0, end:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 158
    :goto_0
    return-object v0

    .line 147
    :pswitch_0
    iget-object v2, p0, Lcom/boohee/record/WeightCurveActivity;->ctx:Landroid/content/Context;

    const-string v3, "tool_weight_curveweek"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    if-eqz p3, :cond_0

    const/16 v1, -0xc

    :cond_0
    invoke-static {p1, v1}, Lcom/boohee/utils/DateFormatUtils;->getWeek(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    goto :goto_0

    .line 151
    :pswitch_1
    if-eqz p3, :cond_1

    const/4 v1, -0x6

    :cond_1
    invoke-static {p1, v1}, Lcom/boohee/utils/DateFormatUtils;->getMonth(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    goto :goto_0

    .line 154
    :pswitch_2
    iget-object v2, p0, Lcom/boohee/record/WeightCurveActivity;->ctx:Landroid/content/Context;

    const-string v3, "tool_weight_curveyear"

    invoke-static {v2, v3}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    invoke-static {p1, v1}, Lcom/boohee/utils/DateFormatUtils;->getYear(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 145
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleIntent()V
    .locals 1

    .prologue
    .line 106
    const-string v0, "key_record_date"

    invoke-virtual {p0, v0}, Lcom/boohee/record/WeightCurveActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 129
    new-instance v0, Lcom/boohee/utils/ChartHelper;

    invoke-direct {v0}, Lcom/boohee/utils/ChartHelper;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->chartHelper:Lcom/boohee/utils/ChartHelper;

    .line 130
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mEndDate:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mEndDate:Ljava/lang/String;

    iget v1, p0, Lcom/boohee/record/WeightCurveActivity;->typeMode:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/boohee/record/WeightCurveActivity;->getDateByMode(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mBeginDate:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->getYear(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->upperLimit:Ljava/util/Date;

    .line 134
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    const v1, 0x7f0705dc

    invoke-virtual {p0, v1}, Lcom/boohee/record/WeightCurveActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/LineChartView;->setUnit(Ljava/lang/String;)V

    .line 135
    invoke-direct {p0}, Lcom/boohee/record/WeightCurveActivity;->requestWeights()V

    .line 136
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;

    goto :goto_0
.end method

.method private initTargetWeight()V
    .locals 2

    .prologue
    .line 113
    new-instance v0, Lcom/boohee/modeldao/UserDao;

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/boohee/modeldao/UserDao;->queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->user:Lcom/boohee/model/User;

    .line 114
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->user:Lcom/boohee/model/User;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->user:Lcom/boohee/model/User;

    iget v0, v0, Lcom/boohee/model/User;->target_weight:F

    iput v0, p0, Lcom/boohee/record/WeightCurveActivity;->targetWeight:F

    .line 116
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    iget v1, p0, Lcom/boohee/record/WeightCurveActivity;->targetWeight:F

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/LineChartView;->setTargetWeight(F)V

    .line 118
    :cond_0
    return-void
.end method

.method private openRotation()V
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/boohee/record/WeightCurveActivity;->setRequestedOrientation(I)V

    .line 125
    return-void
.end method

.method private requestWeights()V
    .locals 4

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/boohee/record/WeightCurveActivity;->showLoading()V

    .line 310
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mBeginDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    const-string v0, "/api/v2/weights/search?date_begin=%s&date_end=%s&token=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/boohee/record/WeightCurveActivity;->mBeginDate:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/boohee/record/WeightCurveActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/boohee/record/WeightCurveActivity$6;

    invoke-direct {v1, p0, p0}, Lcom/boohee/record/WeightCurveActivity$6;-><init>(Lcom/boohee/record/WeightCurveActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, p0}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "latest_on"

    .prologue
    .line 89
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/record/WeightCurveActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    .local v0, starter:Landroid/content/Intent;
    const-string v1, "key_record_date"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 335
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/one/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 336
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 338
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 342
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 343
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_weight_rotate"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 344
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 345
    iput-boolean v3, p0, Lcom/boohee/record/WeightCurveActivity;->mIsLandscape:Z

    .line 346
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->ll_content:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    .line 347
    invoke-virtual {p0}, Lcom/boohee/record/WeightCurveActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 353
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v0}, Llecho/lib/hellocharts/view/LineChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    iput v0, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F

    .line 354
    iget v0, p0, Lcom/boohee/record/WeightCurveActivity;->typeMode:I

    packed-switch v0, :pswitch_data_0

    .line 370
    :goto_1
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->chartHelper:Lcom/boohee/utils/ChartHelper;

    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/record/WeightCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    iget-object v3, p0, Lcom/boohee/record/WeightCurveActivity;->mBeginDate:Ljava/lang/String;

    iget-object v4, p0, Lcom/boohee/record/WeightCurveActivity;->mCurrentDate:Ljava/lang/String;

    iget-object v5, p0, Lcom/boohee/record/WeightCurveActivity;->mWeightRecords:Ljava/util/List;

    iget v6, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F

    iget v7, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F

    iget v8, p0, Lcom/boohee/record/WeightCurveActivity;->typeMode:I

    iget-boolean v9, p0, Lcom/boohee/record/WeightCurveActivity;->mIsLandscape:Z

    invoke-virtual/range {v0 .. v9}, Lcom/boohee/utils/ChartHelper;->initLine(Landroid/content/Context;Llecho/lib/hellocharts/view/LineChartView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;FFIZ)V

    .line 372
    :goto_2
    return-void

    .line 348
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    .line 349
    iput-boolean v2, p0, Lcom/boohee/record/WeightCurveActivity;->mIsLandscape:Z

    .line 350
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->ll_content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    .line 351
    invoke-virtual {p0}, Lcom/boohee/record/WeightCurveActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    goto :goto_0

    .line 356
    :pswitch_0
    iget-boolean v0, p0, Lcom/boohee/record/WeightCurveActivity;->mIsLandscape:Z

    if-eqz v0, :cond_2

    .line 357
    iget v0, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F

    const/high16 v1, 0x4160

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F

    goto :goto_1

    .line 359
    :cond_2
    iget v0, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F

    const/high16 v1, 0x40e0

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F

    goto :goto_1

    .line 363
    :pswitch_1
    iget v0, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F

    const/high16 v1, 0x41f0

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F

    goto :goto_1

    .line 366
    :pswitch_2
    const/high16 v0, 0x4336

    iput v0, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportLeft:F

    .line 367
    const v0, 0x43b68000

    iput v0, p0, Lcom/boohee/record/WeightCurveActivity;->mViewportRight:F

    goto :goto_2

    .line 354
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 96
    const v0, 0x7f030091

    invoke-virtual {p0, v0}, Lcom/boohee/record/WeightCurveActivity;->setContentView(I)V

    .line 97
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 98
    invoke-direct {p0}, Lcom/boohee/record/WeightCurveActivity;->handleIntent()V

    .line 99
    invoke-direct {p0}, Lcom/boohee/record/WeightCurveActivity;->addListener()V

    .line 100
    invoke-direct {p0}, Lcom/boohee/record/WeightCurveActivity;->init()V

    .line 101
    invoke-direct {p0}, Lcom/boohee/record/WeightCurveActivity;->initTargetWeight()V

    .line 102
    invoke-direct {p0}, Lcom/boohee/record/WeightCurveActivity;->openRotation()V

    .line 103
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 164
    invoke-virtual {p0}, Lcom/boohee/record/WeightCurveActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onDestroy()V

    .line 377
    iget-object v0, p0, Lcom/boohee/record/WeightCurveActivity;->chartHelper:Lcom/boohee/utils/ChartHelper;

    invoke-virtual {v0}, Lcom/boohee/utils/ChartHelper;->clear()V

    .line 378
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 170
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 192
    :goto_0
    return v0

    .line 173
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 192
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 175
    :pswitch_0
    invoke-static {}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->newInstance()Lcom/boohee/one/ui/fragment/AddWeightFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/record/WeightCurveActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .line 176
    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    invoke-virtual {p0}, Lcom/boohee/record/WeightCurveActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "addWeightFragment"

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/boohee/record/WeightCurveActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    new-instance v2, Lcom/boohee/record/WeightCurveActivity$1;

    invoke-direct {v2, p0}, Lcom/boohee/record/WeightCurveActivity$1;-><init>(Lcom/boohee/record/WeightCurveActivity;)V

    invoke-virtual {v1, v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->setChangeListener(Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;)V

    goto :goto_0

    .line 173
    :pswitch_data_0
    .packed-switch 0x7f0e07cc
        :pswitch_0
    .end packed-switch
.end method
