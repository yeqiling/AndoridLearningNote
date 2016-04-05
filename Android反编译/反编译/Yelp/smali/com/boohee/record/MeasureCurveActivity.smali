.class public Lcom/boohee/record/MeasureCurveActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "MeasureCurveActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;
    }
.end annotation


# static fields
.field public static final KEY_RECORD_TYPE:Ljava/lang/String; = "key_record_type"

.field public static final MEASURE_SEARCH:Ljava/lang/String; = "/api/v2/graph_data/region?data_type=%s&start_on=%s&end_on=%s&token=%s"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private chartHelper:Lcom/boohee/utils/ChartMeasureHelper;

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

.field private mMeasure:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/Measure;",
            ">;"
        }
    .end annotation
.end field

.field private mRightCount:I

.field private mViewportLeft:F

.field private mViewportRight:F

.field private measureType:Ljava/lang/String;

.field rg_weight:Landroid/widget/RadioGroup;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e079c
    .end annotation
.end field

.field spinner:Landroid/widget/Spinner;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01ab
    .end annotation
.end field

.field private typeMode:I

.field private upperLimit:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lcom/boohee/record/MeasureCurveActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/record/MeasureCurveActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mMeasure:Ljava/util/List;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mRightCount:I

    .line 77
    iput v1, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F

    .line 78
    iput v1, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F

    .line 81
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/record/MeasureCurveActivity;->typeMode:I

    .line 82
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;

    .line 147
    return-void
.end method

.method static synthetic access$100(Lcom/boohee/record/MeasureCurveActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/boohee/record/MeasureCurveActivity;->setSpinnerText(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/boohee/record/MeasureCurveActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F

    return v0
.end method

.method static synthetic access$1002(Lcom/boohee/record/MeasureCurveActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F

    return p1
.end method

.method static synthetic access$1100(Lcom/boohee/record/MeasureCurveActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F

    return v0
.end method

.method static synthetic access$1102(Lcom/boohee/record/MeasureCurveActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F

    return p1
.end method

.method static synthetic access$1200(Lcom/boohee/record/MeasureCurveActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/boohee/record/MeasureCurveActivity;->requestMeasure()V

    return-void
.end method

.method static synthetic access$1302(Lcom/boohee/record/MeasureCurveActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/boohee/record/MeasureCurveActivity;->mRightCount:I

    return p1
.end method

.method static synthetic access$1304(Lcom/boohee/record/MeasureCurveActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mRightCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mRightCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/boohee/record/MeasureCurveActivity;)Ljava/util/Date;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->upperLimit:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/boohee/record/MeasureCurveActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/boohee/record/MeasureCurveActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/boohee/record/MeasureCurveActivity;)Lcom/boohee/utils/ChartMeasureHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->chartHelper:Lcom/boohee/utils/ChartMeasureHelper;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/record/MeasureCurveActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/boohee/record/MeasureCurveActivity;->getMeasureType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/record/MeasureCurveActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mMeasure:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/record/MeasureCurveActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mCurrentDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/boohee/record/MeasureCurveActivity;->mCurrentDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/boohee/record/MeasureCurveActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mEndDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/boohee/record/MeasureCurveActivity;->mEndDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/boohee/record/MeasureCurveActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mBeginDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/boohee/record/MeasureCurveActivity;->mBeginDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/boohee/record/MeasureCurveActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/boohee/record/MeasureCurveActivity;->typeMode:I

    return v0
.end method

.method static synthetic access$802(Lcom/boohee/record/MeasureCurveActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/boohee/record/MeasureCurveActivity;->typeMode:I

    return p1
.end method

.method static synthetic access$900(Lcom/boohee/record/MeasureCurveActivity;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/boohee/record/MeasureCurveActivity;->getDateByMode(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    new-instance v1, Lcom/boohee/record/MeasureCurveActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/record/MeasureCurveActivity$2;-><init>(Lcom/boohee/record/MeasureCurveActivity;)V

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/LineChartView;->setOnValueTouchListener(Llecho/lib/hellocharts/listener/LineChartOnValueSelectListener;)V

    .line 297
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    new-instance v1, Lcom/boohee/record/MeasureCurveActivity$3;

    invoke-direct {v1, p0}, Lcom/boohee/record/MeasureCurveActivity$3;-><init>(Lcom/boohee/record/MeasureCurveActivity;)V

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/LineChartView;->setViewportChangeListener(Llecho/lib/hellocharts/listener/ViewportChangeListener;)V

    .line 321
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->rg_weight:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/boohee/record/MeasureCurveActivity$4;

    invoke-direct {v1, p0}, Lcom/boohee/record/MeasureCurveActivity$4;-><init>(Lcom/boohee/record/MeasureCurveActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 348
    return-void
.end method

.method private getDateByMode(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 3
    .parameter "endDate"
    .parameter "typeMode"
    .parameter "isFirst"

    .prologue
    const/4 v1, -0x1

    .line 213
    const-string v0, ""

    .line 214
    .local v0, end:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 225
    :goto_0
    return-object v0

    .line 216
    :pswitch_0
    if-eqz p3, :cond_0

    const/16 v1, -0xc

    :cond_0
    invoke-static {p1, v1}, Lcom/boohee/utils/DateFormatUtils;->getWeek(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    goto :goto_0

    .line 219
    :pswitch_1
    if-eqz p3, :cond_1

    const/4 v1, -0x6

    :cond_1
    invoke-static {p1, v1}, Lcom/boohee/utils/DateFormatUtils;->getMonth(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    goto :goto_0

    .line 222
    :pswitch_2
    invoke-static {p1, v1}, Lcom/boohee/utils/DateFormatUtils;->getYear(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getMeasureType(I)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 183
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, type:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 204
    :goto_0
    return-object v0

    .line 186
    :pswitch_0
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    .line 187
    goto :goto_0

    .line 189
    :pswitch_1
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->BRASS:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    .line 190
    goto :goto_0

    .line 192
    :pswitch_2
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->HIP:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    .line 193
    goto :goto_0

    .line 195
    :pswitch_3
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->ARM:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    .line 196
    goto :goto_0

    .line 198
    :pswitch_4
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->THIGH:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    .line 199
    goto :goto_0

    .line 201
    :pswitch_5
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->SHANK:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 184
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/boohee/record/MeasureCurveActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_record_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;

    .line 105
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 118
    :cond_0
    :goto_1
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;

    goto :goto_0

    .line 107
    :cond_2
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->BRASS:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->spinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 109
    :cond_3
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->HIP:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->spinner:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 111
    :cond_4
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->ARM:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->spinner:Landroid/widget/Spinner;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 113
    :cond_5
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->THIGH:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->spinner:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1

    .line 115
    :cond_6
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->SHANK:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->spinner:Landroid/widget/Spinner;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lcom/boohee/utils/ChartMeasureHelper;

    invoke-direct {v0}, Lcom/boohee/utils/ChartMeasureHelper;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->chartHelper:Lcom/boohee/utils/ChartMeasureHelper;

    .line 129
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mCurrentDate:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mCurrentDate:Ljava/lang/String;

    iput-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mEndDate:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mEndDate:Ljava/lang/String;

    iget v1, p0, Lcom/boohee/record/MeasureCurveActivity;->typeMode:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/boohee/record/MeasureCurveActivity;->getDateByMode(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mBeginDate:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mCurrentDate:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->getYear(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->upperLimit:Ljava/util/Date;

    .line 133
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    const v1, 0x7f0705da

    invoke-virtual {p0, v1}, Lcom/boohee/record/MeasureCurveActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/LineChartView;->setUnit(Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Lcom/boohee/record/MeasureCurveActivity;->requestMeasure()V

    .line 135
    return-void
.end method

.method private intSpinner()V
    .locals 4

    .prologue
    .line 139
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->spinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090009

    invoke-static {}, Lcom/boohee/model/mine/Measure;->getMeasureList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 141
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->spinner:Landroid/widget/Spinner;

    new-instance v1, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/boohee/record/MeasureCurveActivity$SpinnerItemSelectedListener;-><init>(Lcom/boohee/record/MeasureCurveActivity;Lcom/boohee/record/MeasureCurveActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 142
    return-void
.end method

.method private openRotation()V
    .locals 1

    .prologue
    .line 124
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/boohee/record/MeasureCurveActivity;->setRequestedOrientation(I)V

    .line 125
    return-void
.end method

.method private requestMeasure()V
    .locals 4

    .prologue
    .line 354
    invoke-virtual {p0}, Lcom/boohee/record/MeasureCurveActivity;->showLoading()V

    .line 355
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mBeginDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mCurrentDate:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 356
    :cond_1
    const-string v0, "/api/v2/graph_data/region?data_type=%s&start_on=%s&end_on=%s&token=%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/boohee/record/MeasureCurveActivity;->measureType:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/boohee/record/MeasureCurveActivity;->mBeginDate:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/boohee/record/MeasureCurveActivity;->mCurrentDate:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/boohee/record/MeasureCurveActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/boohee/record/MeasureCurveActivity$5;

    invoke-direct {v1, p0, p0}, Lcom/boohee/record/MeasureCurveActivity$5;-><init>(Lcom/boohee/record/MeasureCurveActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, p0}, Lcom/boohee/one/http/client/RecordClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private setSpinnerText(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/boohee/record/MeasureCurveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0102

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundColor(I)V

    move-object v0, p1

    .line 176
    check-cast v0, Landroid/widget/TextView;

    .line 177
    .local v0, textView:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/boohee/record/MeasureCurveActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 178
    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 179
    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 180
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "record_type"

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/record/MeasureCurveActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .local v0, starter:Landroid/content/Intent;
    const-string v1, "key_record_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 380
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 381
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 382
    iput-boolean v3, p0, Lcom/boohee/record/MeasureCurveActivity;->mIsLandscape:Z

    .line 383
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->ll_content:Landroid/widget/LinearLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    .line 384
    invoke-virtual {p0}, Lcom/boohee/record/MeasureCurveActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->hide()V

    .line 390
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    invoke-virtual {v0}, Llecho/lib/hellocharts/view/LineChartView;->getCurrentViewport()Llecho/lib/hellocharts/model/Viewport;

    move-result-object v0

    iget v0, v0, Llecho/lib/hellocharts/model/Viewport;->right:F

    iput v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F

    .line 391
    iget v0, p0, Lcom/boohee/record/MeasureCurveActivity;->typeMode:I

    packed-switch v0, :pswitch_data_0

    .line 407
    :goto_1
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->chartHelper:Lcom/boohee/utils/ChartMeasureHelper;

    iget-object v1, p0, Lcom/boohee/record/MeasureCurveActivity;->ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/boohee/record/MeasureCurveActivity;->lineChart:Llecho/lib/hellocharts/view/LineChartView;

    iget-object v3, p0, Lcom/boohee/record/MeasureCurveActivity;->mBeginDate:Ljava/lang/String;

    iget-object v4, p0, Lcom/boohee/record/MeasureCurveActivity;->mCurrentDate:Ljava/lang/String;

    iget-object v5, p0, Lcom/boohee/record/MeasureCurveActivity;->mMeasure:Ljava/util/List;

    iget v6, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F

    iget v7, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F

    iget v8, p0, Lcom/boohee/record/MeasureCurveActivity;->typeMode:I

    iget-boolean v9, p0, Lcom/boohee/record/MeasureCurveActivity;->mIsLandscape:Z

    invoke-virtual/range {v0 .. v9}, Lcom/boohee/utils/ChartMeasureHelper;->initLine(Landroid/content/Context;Llecho/lib/hellocharts/view/LineChartView;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;FFIZ)V

    .line 409
    :goto_2
    return-void

    .line 385
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    .line 386
    iput-boolean v2, p0, Lcom/boohee/record/MeasureCurveActivity;->mIsLandscape:Z

    .line 387
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->ll_content:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setSystemUiVisibility(I)V

    .line 388
    invoke-virtual {p0}, Lcom/boohee/record/MeasureCurveActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->show()V

    goto :goto_0

    .line 393
    :pswitch_0
    iget-boolean v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mIsLandscape:Z

    if-eqz v0, :cond_2

    .line 394
    iget v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F

    const/high16 v1, 0x4160

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F

    goto :goto_1

    .line 396
    :cond_2
    iget v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F

    const/high16 v1, 0x40e0

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F

    goto :goto_1

    .line 400
    :pswitch_1
    iget v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F

    const/high16 v1, 0x41f0

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F

    goto :goto_1

    .line 403
    :pswitch_2
    const/high16 v0, 0x4336

    iput v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportLeft:F

    .line 404
    const v0, 0x43b68000

    iput v0, p0, Lcom/boohee/record/MeasureCurveActivity;->mViewportRight:F

    goto :goto_2

    .line 391
    nop

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
    .line 92
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    const v0, 0x7f030055

    invoke-virtual {p0, v0}, Lcom/boohee/record/MeasureCurveActivity;->setContentView(I)V

    .line 94
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 95
    invoke-direct {p0}, Lcom/boohee/record/MeasureCurveActivity;->intSpinner()V

    .line 96
    invoke-direct {p0}, Lcom/boohee/record/MeasureCurveActivity;->addListener()V

    .line 97
    invoke-direct {p0}, Lcom/boohee/record/MeasureCurveActivity;->handleIntent()V

    .line 98
    invoke-direct {p0}, Lcom/boohee/record/MeasureCurveActivity;->init()V

    .line 99
    invoke-direct {p0}, Lcom/boohee/record/MeasureCurveActivity;->openRotation()V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 230
    invoke-virtual {p0}, Lcom/boohee/record/MeasureCurveActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 231
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 413
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onDestroy()V

    .line 414
    iget-object v0, p0, Lcom/boohee/record/MeasureCurveActivity;->chartHelper:Lcom/boohee/utils/ChartMeasureHelper;

    invoke-virtual {v0}, Lcom/boohee/utils/ChartMeasureHelper;->clear()V

    .line 415
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 236
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    :goto_0
    return v1

    .line 239
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 253
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 241
    :pswitch_0
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/AddMeasureFragment;

    move-result-object v0

    .line 242
    .local v0, addMeasureFragment:Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    invoke-virtual {p0}, Lcom/boohee/record/MeasureCurveActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "addMeasureFragment"

    invoke-virtual {v0, v2, v3}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 243
    new-instance v2, Lcom/boohee/record/MeasureCurveActivity$1;

    invoke-direct {v2, p0}, Lcom/boohee/record/MeasureCurveActivity$1;-><init>(Lcom/boohee/record/MeasureCurveActivity;)V

    invoke-virtual {v0, v2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->setChangeListener(Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;)V

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e07cc
        :pswitch_0
    .end packed-switch
.end method
