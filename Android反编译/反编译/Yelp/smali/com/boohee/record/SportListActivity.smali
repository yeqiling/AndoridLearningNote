.class public Lcom/boohee/record/SportListActivity;
.super Lcom/boohee/main/GestureActivity;
.source "SportListActivity.java"


# static fields
.field private static final KEY_SPORT_LIST:Ljava/lang/String; = "key_sport_list"

.field static final TAG:Ljava/lang/String;


# instance fields
.field ll_food_list:Landroid/widget/LinearLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0146
    .end annotation
.end field

.field private mRecordSports:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;"
        }
    .end annotation
.end field

.field tv_total:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0145
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/boohee/record/SportListActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/record/SportListActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/record/SportListActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/boohee/record/SportListActivity;->deleteActivity(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/boohee/record/SportListActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/boohee/record/SportListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/boohee/record/SportListActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/boohee/record/SportListActivity;->mRecordSports:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/record/SportListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/boohee/record/SportListActivity;->initView()V

    return-void
.end method

.method static synthetic access$400(Lcom/boohee/record/SportListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/boohee/record/SportListActivity;->refreshTotal()V

    return-void
.end method

.method private deleteActivity(II)V
    .locals 1
    .parameter "activity_id"
    .parameter "position"

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/boohee/record/SportListActivity;->showLoading()V

    .line 113
    new-instance v0, Lcom/boohee/record/SportListActivity$2;

    invoke-direct {v0, p0, p0, p2}, Lcom/boohee/record/SportListActivity$2;-><init>(Lcom/boohee/record/SportListActivity;Landroid/content/Context;I)V

    invoke-static {p1, p0, v0}, Lcom/boohee/api/RecordApi;->deleteActivity(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 129
    return-void
.end method

.method private getRecordView(Lcom/boohee/model/RecordSport;I)Landroid/view/View;
    .locals 8
    .parameter "recordSport"
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 75
    if-nez p1, :cond_0

    .line 95
    :goto_0
    return-object v0

    .line 76
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030134

    invoke-virtual {v5, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 77
    .local v0, itemView:Landroid/view/View;
    const v5, 0x7f0e03eb

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 78
    .local v1, rl_del:Landroid/widget/RelativeLayout;
    const v5, 0x7f0e00d3

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 79
    .local v4, tv_name:Landroid/widget/TextView;
    const v5, 0x7f0e00d6

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 80
    .local v2, tv_calory:Landroid/widget/TextView;
    const v5, 0x7f0e03ed

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 81
    .local v3, tv_count:Landroid/widget/TextView;
    iget-object v5, p1, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p1, Lcom/boohee/model/RecordSport;->calory:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u5343\u5361"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p1, Lcom/boohee/model/RecordSport;->activity_id:I

    if-nez v5, :cond_1

    iget-object v5, p1, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    invoke-static {v5}, Lcom/boohee/utils/FoodUtils;->isKM(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/boohee/model/RecordSport;->duration:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v5, Lcom/boohee/record/SportListActivity$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/boohee/record/SportListActivity$1;-><init>(Lcom/boohee/record/SportListActivity;Lcom/boohee/model/RecordSport;I)V

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 83
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p1, Lcom/boohee/model/RecordSport;->duration:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method

.method private handleIntent()V
    .locals 2

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/boohee/record/SportListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_sport_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/record/SportListActivity;->mRecordSports:Ljava/util/ArrayList;

    .line 59
    return-void
.end method

.method private initView()V
    .locals 3

    .prologue
    .line 62
    iget-object v2, p0, Lcom/boohee/record/SportListActivity;->ll_food_list:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 63
    iget-object v2, p0, Lcom/boohee/record/SportListActivity;->mRecordSports:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/boohee/record/SportListActivity;->mRecordSports:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 64
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/boohee/record/SportListActivity;->mRecordSports:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 65
    iget-object v2, p0, Lcom/boohee/record/SportListActivity;->mRecordSports:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordSport;

    invoke-direct {p0, v2, v0}, Lcom/boohee/record/SportListActivity;->getRecordView(Lcom/boohee/model/RecordSport;I)Landroid/view/View;

    move-result-object v1

    .line 66
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 67
    iget-object v2, p0, Lcom/boohee/record/SportListActivity;->ll_food_list:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 64
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v0           #i:I
    .end local v1           #view:Landroid/view/View;
    :cond_1
    return-void
.end method

.method private refreshTotal()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 99
    const/4 v1, 0x0

    .line 100
    .local v1, total:F
    iget-object v2, p0, Lcom/boohee/record/SportListActivity;->mRecordSports:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move v2, v3

    :goto_0
    iget-object v5, p0, Lcom/boohee/record/SportListActivity;->mRecordSports:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    move v5, v3

    :goto_1
    and-int/2addr v2, v5

    if-eqz v2, :cond_2

    .line 101
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lcom/boohee/record/SportListActivity;->mRecordSports:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/boohee/record/SportListActivity;->mRecordSports:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/RecordSport;

    iget v2, v2, Lcom/boohee/model/RecordSport;->calory:F

    add-float/2addr v1, v2

    .line 101
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    :cond_0
    move v2, v4

    .line 100
    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_1

    .line 105
    :cond_2
    iget-object v2, p0, Lcom/boohee/record/SportListActivity;->tv_total:Landroid/widget/TextView;

    const-string v5, "\u5c0f\u8ba1: %d\u5343\u5361"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, recordFoods:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/boohee/model/RecordSport;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/record/SportListActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 42
    .local v0, starter:Landroid/content/Intent;
    const-string v1, "key_sport_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 43
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 44
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "saveState"

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f03003d

    invoke-virtual {p0, v0}, Lcom/boohee/record/SportListActivity;->setContentView(I)V

    .line 50
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 51
    const-string v0, "\u8fd0\u52a8"

    invoke-virtual {p0, v0}, Lcom/boohee/record/SportListActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 52
    invoke-direct {p0}, Lcom/boohee/record/SportListActivity;->handleIntent()V

    .line 53
    invoke-direct {p0}, Lcom/boohee/record/SportListActivity;->initView()V

    .line 54
    invoke-direct {p0}, Lcom/boohee/record/SportListActivity;->refreshTotal()V

    .line 55
    return-void
.end method
