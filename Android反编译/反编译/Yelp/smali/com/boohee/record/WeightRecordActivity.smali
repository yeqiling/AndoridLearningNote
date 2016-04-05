.class public Lcom/boohee/record/WeightRecordActivity;
.super Lcom/boohee/main/GestureActivity;
.source "WeightRecordActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_RECORD_TYPE:Ljava/lang/String; = "key_record_type"

.field static final TAG:Ljava/lang/String;


# instance fields
.field private adapter:Lcom/boohee/calendar/WeightCalendarAdapter;

.field private addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

.field calendarGrid:Landroid/widget/GridView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01f0
    .end annotation
.end field

.field flipper:Landroid/widget/ViewFlipper;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01ef
    .end annotation
.end field

.field private latest_on:Ljava/lang/String;

.field private mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/BaseRecord;",
            ">;"
        }
    .end annotation
.end field

.field rbtn_record_arm:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0278
    .end annotation
.end field

.field rbtn_record_brass:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0276
    .end annotation
.end field

.field rbtn_record_hip:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0277
    .end annotation
.end field

.field rbtn_record_shank:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e027a
    .end annotation
.end field

.field rbtn_record_thigh:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0279
    .end annotation
.end field

.field rbtn_record_waist:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0275
    .end annotation
.end field

.field rbtn_record_weight:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0274
    .end annotation
.end field

.field private record_on:Ljava/lang/String;

.field private record_type:Ljava/lang/String;

.field txt_date:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/boohee/record/WeightRecordActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/record/WeightRecordActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->mRecords:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/record/WeightRecordActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->mRecords:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/record/WeightRecordActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/record/WeightRecordActivity;)Lcom/boohee/calendar/WeightCalendarAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->adapter:Lcom/boohee/calendar/WeightCalendarAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/record/WeightRecordActivity;Lcom/boohee/calendar/WeightCalendarAdapter;)Lcom/boohee/calendar/WeightCalendarAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/boohee/record/WeightRecordActivity;->adapter:Lcom/boohee/calendar/WeightCalendarAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/boohee/record/WeightRecordActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/record/WeightRecordActivity;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$502(Lcom/boohee/record/WeightRecordActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/boohee/record/WeightRecordActivity;->latest_on:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/boohee/record/WeightRecordActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/boohee/record/WeightRecordActivity;->requestRecords()V

    return-void
.end method

.method private findView()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->calendarGrid:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 179
    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 158
    invoke-virtual {p0}, Lcom/boohee/record/WeightRecordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_record_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    .line 159
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    if-nez v0, :cond_1

    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->WEIGHT:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->WEIGHT:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->rbtn_record_weight:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 175
    :cond_0
    :goto_1
    return-void

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    goto :goto_0

    .line 162
    :cond_2
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->rbtn_record_waist:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 164
    :cond_3
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->BRASS:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->rbtn_record_brass:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 166
    :cond_4
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->ARM:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->rbtn_record_arm:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 168
    :cond_5
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->HIP:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->rbtn_record_hip:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 170
    :cond_6
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->THIGH:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 171
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->rbtn_record_thigh:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 172
    :cond_7
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->SHANK:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->rbtn_record_shank:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method private initDate()V
    .locals 3

    .prologue
    .line 104
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const-string v1, "yyyyMM"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->txt_date:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy\u5e74M\u6708"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method private initToolsBar()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 109
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03022e

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 110
    .local v1, view_date_top:Landroid/view/View;
    const v2, 0x7f0e031c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/boohee/record/WeightRecordActivity;->txt_date:Landroid/widget/TextView;

    .line 111
    const v2, 0x7f0e06b3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v2, 0x7f0e06b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {p0}, Lcom/boohee/record/WeightRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 114
    new-instance v0, Landroid/support/v7/app/ActionBar$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 115
    .local v0, layoutParams:Landroid/support/v7/app/ActionBar$LayoutParams;
    invoke-virtual {p0}, Lcom/boohee/record/WeightRecordActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 116
    return-void
.end method

.method private requestRecords()V
    .locals 6

    .prologue
    .line 186
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->WEIGHT:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 187
    invoke-static {p0}, Lcom/boohee/utils/HttpUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/record/WeightRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v3, Lcom/boohee/record/WeightRecordActivity$1;

    iget-object v4, p0, Lcom/boohee/record/WeightRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4}, Lcom/boohee/record/WeightRecordActivity$1;-><init>(Lcom/boohee/record/WeightRecordActivity;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, Lcom/boohee/api/RecordApi;->getWeightsList(Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->mRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 210
    new-instance v1, Lcom/boohee/modeldao/WeightRecordDao;

    invoke-direct {v1, p0}, Lcom/boohee/modeldao/WeightRecordDao;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    const-string v3, "yyyyMM"

    invoke-static {v2, v3}, Lcom/boohee/utils/DateHelper;->parseFromString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/boohee/modeldao/WeightRecordDao;->getMonthLists(Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    .line 211
    .local v0, records:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/WeightRecord;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 212
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->mRecords:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    new-instance v1, Lcom/boohee/calendar/WeightCalendarAdapter;

    iget-object v2, p0, Lcom/boohee/record/WeightRecordActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    const-string v4, "yyyyMM"

    invoke-static {v3, v4}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/record/WeightRecordActivity;->mRecords:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Lcom/boohee/calendar/WeightCalendarAdapter;-><init>(Landroid/content/Context;Ljava/util/Date;Ljava/util/List;)V

    iput-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->adapter:Lcom/boohee/calendar/WeightCalendarAdapter;

    .line 216
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->calendarGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/boohee/record/WeightRecordActivity;->adapter:Lcom/boohee/calendar/WeightCalendarAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 221
    .end local v0           #records:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/WeightRecord;>;"
    :cond_3
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/record/WeightRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v4, Lcom/boohee/record/WeightRecordActivity$2;

    iget-object v5, p0, Lcom/boohee/record/WeightRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v4, p0, v5}, Lcom/boohee/record/WeightRecordActivity$2;-><init>(Lcom/boohee/record/WeightRecordActivity;Landroid/content/Context;)V

    invoke-static {v1, v2, v3, v4}, Lcom/boohee/api/RecordApi;->getMeasureMonthList(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private requestWeightsLatest()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/record/WeightRecordActivity$3;

    invoke-direct {v1, p0, p0}, Lcom/boohee/record/WeightRecordActivity$3;-><init>(Lcom/boohee/record/WeightRecordActivity;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/boohee/api/RecordApi;->getWeightsLatest(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 261
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 342
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/main/GestureActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 343
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->WEIGHT:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 345
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0274,
            0x7f0e0275,
            0x7f0e0276,
            0x7f0e0277,
            0x7f0e0278,
            0x7f0e0279,
            0x7f0e027a
        }
    .end annotation

    .prologue
    .line 266
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 305
    :goto_0
    invoke-direct {p0}, Lcom/boohee/record/WeightRecordActivity;->requestRecords()V

    .line 306
    return-void

    .line 268
    :sswitch_0
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->getYM(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    const-string v1, "yyyyMM"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->txt_date:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy\u5e74M\u6708"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showPrevious()V

    goto :goto_0

    .line 273
    :sswitch_1
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->getYM(Ljava/lang/String;I)Ljava/util/Date;

    move-result-object v0

    const-string v1, "yyyyMM"

    invoke-static {v0, v1}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->txt_date:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->record_on:Ljava/lang/String;

    const-string v2, "yyyyMM"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->string2date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    const-string v2, "yyyy\u5e74M\u6708"

    invoke-static {v1, v2}, Lcom/boohee/utils/DateFormatUtils;->date2string(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->flipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    goto :goto_0

    .line 278
    :sswitch_2
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->WEIGHT:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    goto :goto_0

    .line 281
    :sswitch_3
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_circumference_waist"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->WAIST:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    goto :goto_0

    .line 285
    :sswitch_4
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_circumference_chest"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 286
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->BRASS:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    goto :goto_0

    .line 289
    :sswitch_5
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_circumference_ass"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->HIP:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    goto/16 :goto_0

    .line 293
    :sswitch_6
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_circumference_arm"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 294
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->ARM:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    goto/16 :goto_0

    .line 297
    :sswitch_7
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_circumference_leg"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->THIGH:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    goto/16 :goto_0

    .line 301
    :sswitch_8
    iget-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->ctx:Landroid/content/Context;

    const-string v1, "tool_circumference_shank"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 302
    sget-object v0, Lcom/boohee/model/mine/Measure$MeasureType;->SHANK:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v0}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    goto/16 :goto_0

    .line 266
    :sswitch_data_0
    .sparse-switch
        0x7f0e0274 -> :sswitch_2
        0x7f0e0275 -> :sswitch_3
        0x7f0e0276 -> :sswitch_4
        0x7f0e0277 -> :sswitch_5
        0x7f0e0278 -> :sswitch_6
        0x7f0e0279 -> :sswitch_7
        0x7f0e027a -> :sswitch_8
        0x7f0e06b3 -> :sswitch_0
        0x7f0e06b4 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->register(Ljava/lang/Object;)V

    .line 94
    const v0, 0x7f030093

    invoke-virtual {p0, v0}, Lcom/boohee/record/WeightRecordActivity;->setContentView(I)V

    .line 95
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 96
    invoke-direct {p0}, Lcom/boohee/record/WeightRecordActivity;->findView()V

    .line 97
    invoke-direct {p0}, Lcom/boohee/record/WeightRecordActivity;->handleIntent()V

    .line 98
    invoke-direct {p0}, Lcom/boohee/record/WeightRecordActivity;->initToolsBar()V

    .line 99
    invoke-direct {p0}, Lcom/boohee/record/WeightRecordActivity;->initDate()V

    .line 101
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/boohee/record/WeightRecordActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 134
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 349
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onDestroy()V

    .line 350
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->unregister(Ljava/lang/Object;)V

    .line 351
    return-void
.end method

.method public onEventMainThread(Lcom/boohee/one/event/RefreshWeightEvent;)V
    .locals 0
    .parameter "event"

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/boohee/record/WeightRecordActivity;->requestRecords()V

    .line 128
    invoke-direct {p0}, Lcom/boohee/record/WeightRecordActivity;->requestWeightsLatest()V

    .line 129
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "position"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->adapter:Lcom/boohee/calendar/WeightCalendarAdapter;

    invoke-virtual {v1}, Lcom/boohee/calendar/WeightCalendarAdapter;->startPosition()I

    move-result v1

    if-lt p3, v1, :cond_0

    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->adapter:Lcom/boohee/calendar/WeightCalendarAdapter;

    invoke-virtual {v1}, Lcom/boohee/calendar/WeightCalendarAdapter;->endPosition()I

    move-result v1

    if-ge p3, v1, :cond_0

    .line 311
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->adapter:Lcom/boohee/calendar/WeightCalendarAdapter;

    invoke-virtual {v1, p3}, Lcom/boohee/calendar/WeightCalendarAdapter;->getDate(I)Ljava/util/Date;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const v1, 0x7f07013a

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 338
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->WEIGHT:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->adapter:Lcom/boohee/calendar/WeightCalendarAdapter;

    invoke-virtual {v1, p3}, Lcom/boohee/calendar/WeightCalendarAdapter;->getDate(I)Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/AddWeightFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    .line 317
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    invoke-virtual {p0}, Lcom/boohee/record/WeightRecordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "addWeightFragment"

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->addWeightFragment:Lcom/boohee/one/ui/fragment/AddWeightFragment;

    new-instance v2, Lcom/boohee/record/WeightRecordActivity$4;

    invoke-direct {v2, p0}, Lcom/boohee/record/WeightRecordActivity$4;-><init>(Lcom/boohee/record/WeightRecordActivity;)V

    invoke-virtual {v1, v2}, Lcom/boohee/one/ui/fragment/AddWeightFragment;->setChangeListener(Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;)V

    goto :goto_0

    .line 326
    :cond_2
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->adapter:Lcom/boohee/calendar/WeightCalendarAdapter;

    invoke-virtual {v1, p3}, Lcom/boohee/calendar/WeightCalendarAdapter;->getDate(I)Ljava/util/Date;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/AddMeasureFragment;

    move-result-object v0

    .line 327
    .local v0, addMeasureFragment:Lcom/boohee/one/ui/fragment/AddMeasureFragment;
    invoke-virtual {p0}, Lcom/boohee/record/WeightRecordActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "addMeasureFragment"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 328
    new-instance v1, Lcom/boohee/record/WeightRecordActivity$5;

    invoke-direct {v1, p0}, Lcom/boohee/record/WeightRecordActivity$5;-><init>(Lcom/boohee/record/WeightRecordActivity;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/fragment/AddMeasureFragment;->setChangeListener(Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 139
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    :goto_0
    return v0

    .line 142
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 152
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 144
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->ctx:Landroid/content/Context;

    const-string v2, "tool_weight_curve"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 145
    sget-object v1, Lcom/boohee/model/mine/Measure$MeasureType;->WEIGHT:Lcom/boohee/model/mine/Measure$MeasureType;

    invoke-virtual {v1}, Lcom/boohee/model/mine/Measure$MeasureType;->getType()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v2, p0, Lcom/boohee/record/WeightRecordActivity;->latest_on:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/boohee/record/WeightCurveActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/boohee/record/WeightRecordActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v2, p0, Lcom/boohee/record/WeightRecordActivity;->record_type:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/boohee/record/MeasureCurveActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e07da
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 121
    invoke-super {p0}, Lcom/boohee/main/GestureActivity;->onResume()V

    .line 122
    invoke-direct {p0}, Lcom/boohee/record/WeightRecordActivity;->requestRecords()V

    .line 123
    invoke-direct {p0}, Lcom/boohee/record/WeightRecordActivity;->requestWeightsLatest()V

    .line 124
    return-void
.end method
