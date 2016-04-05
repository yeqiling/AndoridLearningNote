.class public Lcom/boohee/record/DietChartActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "DietChartActivity.java"


# static fields
.field public static final PER_PAGE:I = 0x9

.field public static final maxCaloryLimit:F = 2500.0f


# instance fields
.field private canLoad:Z

.field chart:Llecho/lib/hellocharts/view/ColumnChartView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e027d
    .end annotation
.end field

.field private chartHelper:Lcom/boohee/utils/DietChartHelper;

.field private currentCount:I

.field private currentPage:I

.field private dietRecordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/DietRecord;",
            ">;"
        }
    .end annotation
.end field

.field private totalPage:I

.field private viewportLeft:F

.field private viewportRight:F


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 47
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 53
    iput v1, p0, Lcom/boohee/record/DietChartActivity;->currentPage:I

    .line 54
    iput v1, p0, Lcom/boohee/record/DietChartActivity;->totalPage:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/record/DietChartActivity;->currentCount:I

    .line 56
    iput v2, p0, Lcom/boohee/record/DietChartActivity;->viewportLeft:F

    .line 57
    iput v2, p0, Lcom/boohee/record/DietChartActivity;->viewportRight:F

    .line 58
    iput-boolean v1, p0, Lcom/boohee/record/DietChartActivity;->canLoad:Z

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietChartActivity;->dietRecordList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/record/DietChartActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/boohee/record/DietChartActivity;->currentPage:I

    return v0
.end method

.method static synthetic access$002(Lcom/boohee/record/DietChartActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/boohee/record/DietChartActivity;->currentPage:I

    return p1
.end method

.method static synthetic access$100(Lcom/boohee/record/DietChartActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/boohee/record/DietChartActivity;->totalPage:I

    return v0
.end method

.method static synthetic access$1000(Lcom/boohee/record/DietChartActivity;)Lcom/boohee/utils/DietChartHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity;->chartHelper:Lcom/boohee/utils/DietChartHelper;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/record/DietChartActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/boohee/record/DietChartActivity;->totalPage:I

    return p1
.end method

.method static synthetic access$200(Lcom/boohee/record/DietChartActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/boohee/record/DietChartActivity;->canLoad:Z

    return v0
.end method

.method static synthetic access$202(Lcom/boohee/record/DietChartActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/boohee/record/DietChartActivity;->canLoad:Z

    return p1
.end method

.method static synthetic access$300(Lcom/boohee/record/DietChartActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/boohee/record/DietChartActivity;->getDietRecord()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/record/DietChartActivity;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/boohee/record/DietChartActivity;->filterDate(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/record/DietChartActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity;->dietRecordList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/boohee/record/DietChartActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/boohee/record/DietChartActivity;->currentCount:I

    return v0
.end method

.method static synthetic access$602(Lcom/boohee/record/DietChartActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/boohee/record/DietChartActivity;->currentCount:I

    return p1
.end method

.method static synthetic access$700(Lcom/boohee/record/DietChartActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/boohee/record/DietChartActivity;->viewportLeft:F

    return v0
.end method

.method static synthetic access$702(Lcom/boohee/record/DietChartActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/boohee/record/DietChartActivity;->viewportLeft:F

    return p1
.end method

.method static synthetic access$800(Lcom/boohee/record/DietChartActivity;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/boohee/record/DietChartActivity;->viewportRight:F

    return v0
.end method

.method static synthetic access$802(Lcom/boohee/record/DietChartActivity;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput p1, p0, Lcom/boohee/record/DietChartActivity;->viewportRight:F

    return p1
.end method

.method static synthetic access$900(Lcom/boohee/record/DietChartActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity;->chart:Llecho/lib/hellocharts/view/ColumnChartView;

    new-instance v1, Lcom/boohee/record/DietChartActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/record/DietChartActivity$1;-><init>(Lcom/boohee/record/DietChartActivity;)V

    invoke-virtual {v0, v1}, Llecho/lib/hellocharts/view/ColumnChartView;->setViewportChangeListener(Llecho/lib/hellocharts/listener/ViewportChangeListener;)V

    .line 82
    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 110
    if-eqz p0, :cond_0

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/record/DietChartActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private filterDate(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/DietRecord;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/DietRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/boohee/model/mine/DietRecord;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/boohee/model/mine/DietRecord;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/mine/DietRecord;

    .line 155
    .local v1, record:Lcom/boohee/model/mine/DietRecord;
    iget-object v2, v1, Lcom/boohee/model/mine/DietRecord;->record_on:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 156
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 159
    .end local v1           #record:Lcom/boohee/model/mine/DietRecord;
    :cond_1
    return-object p1
.end method

.method private getDietRecord()V
    .locals 5

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/boohee/record/DietChartActivity;->showLoading()V

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/record/DietChartActivity;->canLoad:Z

    .line 119
    iget-object v0, p0, Lcom/boohee/record/DietChartActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v1, p0, Lcom/boohee/record/DietChartActivity;->currentPage:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/boohee/record/DietChartActivity$2;

    iget-object v4, p0, Lcom/boohee/record/DietChartActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4}, Lcom/boohee/record/DietChartActivity$2;-><init>(Lcom/boohee/record/DietChartActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/api/RecordApi;->getGetCanRecordsHistory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    .line 149
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/boohee/utils/DietChartHelper;

    invoke-direct {v0}, Lcom/boohee/utils/DietChartHelper;-><init>()V

    iput-object v0, p0, Lcom/boohee/record/DietChartActivity;->chartHelper:Lcom/boohee/utils/DietChartHelper;

    .line 86
    invoke-direct {p0}, Lcom/boohee/record/DietChartActivity;->getDietRecord()V

    .line 87
    return-void
.end method

.method private initActionbar()V
    .locals 5

    .prologue
    .line 101
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0300b8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 102
    .local v0, actionBar:Landroid/view/View;
    new-instance v1, Landroid/support/v7/app/ActionBar$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/support/v7/app/ActionBar$LayoutParams;-><init>(II)V

    .line 103
    .local v1, layoutParams:Landroid/support/v7/app/ActionBar$LayoutParams;
    const v2, 0x800005

    iput v2, v1, Landroid/support/v7/app/ActionBar$LayoutParams;->gravity:I

    .line 104
    invoke-virtual {p0}, Lcom/boohee/record/DietChartActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/boohee/record/DietChartActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/support/v7/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/support/v7/app/ActionBar$LayoutParams;)V

    .line 107
    return-void
.end method

.method private initTargetCalory()V
    .locals 4

    .prologue
    .line 90
    new-instance v2, Lcom/boohee/modeldao/UserDao;

    iget-object v3, p0, Lcom/boohee/record/DietChartActivity;->ctx:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/boohee/modeldao/UserDao;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/boohee/record/DietChartActivity;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boohee/modeldao/UserDao;->queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v1

    .line 91
    .local v1, user:Lcom/boohee/model/User;
    iget-object v2, p0, Lcom/boohee/record/DietChartActivity;->chart:Llecho/lib/hellocharts/view/ColumnChartView;

    invoke-virtual {v2}, Llecho/lib/hellocharts/view/ColumnChartView;->getChartRenderer()Llecho/lib/hellocharts/renderer/ChartRenderer;

    move-result-object v0

    check-cast v0, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;

    .line 92
    .local v0, renderer:Llecho/lib/hellocharts/renderer/ColumnChartRenderer;
    if-eqz v0, :cond_1

    .line 94
    iget v2, v1, Lcom/boohee/model/User;->target_calory:I

    if-lez v2, :cond_0

    iget v2, v1, Lcom/boohee/model/User;->target_calory:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->setTargetCalory(F)V

    .line 96
    :cond_0
    const v2, 0x451c4000

    invoke-virtual {v0, v2}, Llecho/lib/hellocharts/renderer/ColumnChartRenderer;->setMaxCaloryLimit(F)V

    .line 98
    :cond_1
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f030095

    invoke-virtual {p0, v0}, Lcom/boohee/record/DietChartActivity;->setContentView(I)V

    .line 66
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 67
    invoke-direct {p0}, Lcom/boohee/record/DietChartActivity;->initActionbar()V

    .line 68
    invoke-direct {p0}, Lcom/boohee/record/DietChartActivity;->init()V

    .line 69
    invoke-direct {p0}, Lcom/boohee/record/DietChartActivity;->initTargetCalory()V

    .line 70
    invoke-direct {p0}, Lcom/boohee/record/DietChartActivity;->addListener()V

    .line 71
    return-void
.end method
